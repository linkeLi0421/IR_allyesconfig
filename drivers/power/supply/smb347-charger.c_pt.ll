; ModuleID = '/llk/IR_all_yes/drivers/power/supply/smb347-charger.c_pt.bc'
source_filename = "../drivers/power/supply/smb347-charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.smb347_charger = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i8, i8, i8, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_smb347_charger__320_1640_smb347_driver_init6 = internal global ptr @smb347_driver_init, section ".initcall6.init", align 4
@smb347_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @smb347_probe, ptr @smb347_remove, ptr null, ptr @smb347_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @smb3xx_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @smb347_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_smb347_driver_exit = internal global ptr @smb347_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author321 = internal constant [71 x i8] c"smb347_charger.author=Bruce E. Robertson <bruce.e.robertson@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author322 = internal constant [72 x i8] c"smb347_charger.author=Mika Westerberg <mika.westerberg@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [57 x i8] c"smb347_charger.description=SMB347 battery charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [56 x i8] c"smb347_charger.file=drivers/power/supply/smb347-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [27 x i8] c"smb347_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smb347\00", [25 x i8] zeroinitializer }, align 32
@smb3xx_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"summit,smb345\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"summit,smb347\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"summit,smb358\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@smb347_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"smb345\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"smb347\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"smb358\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@smb347_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@smb347_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @smb347_readable_reg, ptr @smb347_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 3, ptr null, i32 63, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"smb347_charger:1552:(&smb347_regmap)->lock\00", [53 x i8] zeroinitializer }, align 32
@smb347_mains_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.13, i32 3, ptr null, i32 0, ptr @smb347_properties, i32 5, ptr @smb347_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@smb347_usb_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.14, i32 4, ptr null, i32 0, ptr @smb347_properties, i32 5, ptr @smb347_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_desc = internal constant { %struct.regulator_desc, [44 x i8] } { %struct.regulator_desc { ptr @.str.52, ptr null, ptr @.str.53, i8 0, ptr null, ptr null, i32 0, i8 0, i32 1, i32 0, ptr @smb347_usb_vbus_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 5000000, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 48, i32 16, i32 16, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"summit,fast-voltage-threshold-microvolt\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"summit,mains-current-limit-microamp\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"summit,usb-current-limit-microamp\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"summit,chip-temperature-threshold-celsius\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"summit,soft-compensation-method\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"summit,charge-current-compensation-microamp\00", [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"summit,enable-mains-charging\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"summit,enable-usb-charging\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"summit,enable-otg-charging\00", [37 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"summit,enable-charge-control\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"summit,inok-polarity\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"smb347-mains\00", [19 x i8] zeroinitializer }, align 32
@smb347_properties = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 4, i32 29, i32 31], [44 x i8] zeroinitializer }, align 32
@fcc_tbl = internal constant { [3 x [8 x i32]], [32 x i8] } { [3 x [8 x i32]] [[8 x i32] [i32 200000, i32 450000, i32 600000, i32 900000, i32 1300000, i32 1500000, i32 1800000, i32 2000000], [8 x i32] [i32 700000, i32 900000, i32 1200000, i32 1500000, i32 1800000, i32 2000000, i32 2200000, i32 2500000], [8 x i32] [i32 200000, i32 450000, i32 600000, i32 900000, i32 1300000, i32 1500000, i32 1800000, i32 2000000]], [32 x i8] zeroinitializer }, align 32
@pcc_tbl = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 150000, i32 250000, i32 350000, i32 450000], [4 x i32] [i32 100000, i32 150000, i32 200000, i32 250000], [4 x i32] [i32 150000, i32 250000, i32 350000, i32 450000]], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"smb347-usb\00", [21 x i8] zeroinitializer }, align 32
@tc_tbl = internal constant { [3 x [8 x i32]], [32 x i8] } { [3 x [8 x i32]] [[8 x i32] [i32 30000, i32 40000, i32 60000, i32 80000, i32 100000, i32 125000, i32 150000, i32 200000], [8 x i32] [i32 37500, i32 50000, i32 100000, i32 150000, i32 200000, i32 250000, i32 500000, i32 600000], [8 x i32] [i32 30000, i32 40000, i32 60000, i32 80000, i32 100000, i32 125000, i32 150000, i32 200000]], [32 x i8] zeroinitializer }, align 32
@icl_tbl = internal constant { [3 x [10 x i32]], [40 x i8] } { [3 x [10 x i32]] [[10 x i32] [i32 300000, i32 500000, i32 700000, i32 1000000, i32 1500000, i32 1800000, i32 2000000, i32 2000000, i32 2000000, i32 2000000], [10 x i32] [i32 300000, i32 500000, i32 700000, i32 900000, i32 1200000, i32 1500000, i32 1800000, i32 2000000, i32 2200000, i32 2500000], [10 x i32] [i32 300000, i32 500000, i32 700000, i32 1000000, i32 1500000, i32 1800000, i32 2000000, i32 2000000, i32 2000000, i32 2000000]], [40 x i8] zeroinitializer }, align 32
@ccc_tbl = internal constant { [3 x [4 x i32]], [48 x i8] } { [3 x [4 x i32]] [[4 x i32] [i32 200000, i32 450000, i32 600000, i32 900000], [4 x i32] [i32 250000, i32 700000, i32 900000, i32 1200000], [4 x i32] [i32 200000, i32 450000, i32 600000, i32 900000]], [48 x i8] zeroinitializer }, align 32
@smb347_start_stop_charging._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.17, i32 408, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable charging\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"smb347_start_stop_charging\00", [37 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/smb347-charger.c\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@smb347_start_stop_charging._entry_ptr = internal global ptr @smb347_start_stop_charging._entry, section ".printk_index", align 4
@smb347_start_stop_charging._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.17, i32 412, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to disable charging\0A\00", [36 x i8] zeroinitializer }, align 32
@smb347_start_stop_charging._entry_ptr.22 = internal global ptr @smb347_start_stop_charging._entry.20, section ".printk_index", align 4
@smb347_charging_set.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.17, ptr @.str.25, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"smb347_charger\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"smb347_charging_set\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"charging enable/disable in SW disabled\0A\00", [56 x i8] zeroinitializer }, align 32
@smb347_charging_set.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.17, ptr @.str.26, i8 0, i8 94, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"charging not enabled because USB is in host mode\0A\00", [46 x i8] zeroinitializer }, align 32
@smb347_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.17, i32 966, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to initialize IRQ: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smb347_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@smb347_irq_init._entry_ptr = internal global ptr @smb347_irq_init._entry, section ".printk_index", align 4
@smb347_irq_init._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.28, ptr @.str.17, i32 967, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"disabling IRQ support\0A\00", [41 x i8] zeroinitializer }, align 32
@smb347_irq_init._entry_ptr.32 = internal global ptr @smb347_irq_init._entry.30, section ".printk_index", align 4
@smb347_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.17, i32 806, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"reading STAT_C failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"smb347_interrupt\00", [47 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr = internal global ptr @smb347_interrupt._entry, section ".printk_index", align 4
@smb347_interrupt._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.17, i32 812, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading IRQSTAT_C failed\0A\00", [38 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr.37 = internal global ptr @smb347_interrupt._entry.35, section ".printk_index", align 4
@smb347_interrupt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.17, i32 818, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading IRQSTAT_D failed\0A\00", [38 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr.40 = internal global ptr @smb347_interrupt._entry.38, section ".printk_index", align 4
@smb347_interrupt._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.34, ptr @.str.17, i32 824, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"reading IRQSTAT_E failed\0A\00", [38 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr.43 = internal global ptr @smb347_interrupt._entry.41, section ".printk_index", align 4
@smb347_interrupt._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.34, ptr @.str.17, i32 833, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"charging stopped due to charger error\0A\00", [57 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr.46 = internal global ptr @smb347_interrupt._entry.44, section ".printk_index", align 4
@smb347_interrupt.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.34, ptr @.str.17, ptr @.str.47, i8 0, i8 -43, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"going to HW maintenance mode\0A\00", [34 x i8] zeroinitializer }, align 32
@smb347_interrupt.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.34, ptr @.str.17, ptr @.str.48, i8 0, i8 -41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"total Charge Timeout INT received\0A\00", [61 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.34, ptr @.str.17, i32 865, ptr @.str.29, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"charging stopped due to timeout\0A\00", [63 x i8] zeroinitializer }, align 32
@smb347_interrupt._entry_ptr.51 = internal global ptr @smb347_interrupt._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smb347-usb-vbus\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"usb-vbus\00", [23 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_ops = internal constant { %struct.regulator_ops, [48 x i8] } { %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smb347_usb_vbus_set_current_limit, ptr @smb347_usb_vbus_get_current_limit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @smb347_usb_vbus_regulator_enable, ptr @smb347_usb_vbus_regulator_disable, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_set_new_current_limit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.17, i32 1364, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to change USB current limit\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"smb347_usb_vbus_set_new_current_limit\00", [58 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_set_new_current_limit._entry_ptr = internal global ptr @smb347_usb_vbus_set_new_current_limit._entry, section ".printk_index", align 4
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"summit,needs-inok-toggle\00", [39 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.17, i32 1409, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to disable INOK\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"smb347_usb_vbus_regulator_enable\00", [63 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry_ptr = internal global ptr @smb347_usb_vbus_regulator_enable._entry, section ".printk_index", align 4
@smb347_usb_vbus_regulator_enable._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.17, i32 1416, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"failed to get USB VBUS current limit\0A\00", [58 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry_ptr.61 = internal global ptr @smb347_usb_vbus_regulator_enable._entry.59, section ".printk_index", align 4
@smb347_usb_vbus_regulator_enable._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.17, i32 1424, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to preset USB VBUS current limit\0A\00", [55 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry_ptr.64 = internal global ptr @smb347_usb_vbus_regulator_enable._entry.62, section ".printk_index", align 4
@smb347_usb_vbus_regulator_enable._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.17, i32 1430, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable USB VBUS\0A\00", [37 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry_ptr.67 = internal global ptr @smb347_usb_vbus_regulator_enable._entry.65, section ".printk_index", align 4
@smb347_usb_vbus_regulator_enable._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.17, i32 1438, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to restore USB VBUS current limit\0A\00", [54 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_enable._entry_ptr.70 = internal global ptr @smb347_usb_vbus_regulator_enable._entry.68, section ".printk_index", align 4
@smb347_usb_vbus_regulator_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.17, i32 1458, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to disable USB VBUS\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"smb347_usb_vbus_regulator_disable\00", [62 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_disable._entry_ptr = internal global ptr @smb347_usb_vbus_regulator_disable._entry, section ".printk_index", align 4
@smb347_usb_vbus_regulator_disable._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.17, i32 1473, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to enable INOK\0A\00", [41 x i8] zeroinitializer }, align 32
@smb347_usb_vbus_regulator_disable._entry_ptr.75 = internal global ptr @smb347_usb_vbus_regulator_disable._entry.73, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967277, i64 4294967290]
@__sancov_gen_cov_switch_values.76 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 1, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 48, i64 49, i64 51, i64 53, i64 55, i64 56, i64 57, i64 58, i64 59, i64 60, i64 61, i64 63]
@__sancov_gen_cov_switch_values.77 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 4, i64 29, i64 31]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.79 = private unnamed_addr constant [14 x i8] c"smb347_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1630, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1632, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"smb3xx_of_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1622, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [10 x i8] c"smb347_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1614, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [14 x i8] c"smb347_regmap\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1485, i32 35 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1552, i32 16 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"smb347_mains_desc\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1503, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"smb347_usb_desc\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1511, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"smb347_usb_vbus_regulator_desc\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1519, i32 36 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1250, i32 32 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1252, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1254, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1258, i32 32 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1260, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1262, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1266, i32 50 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1267, i32 48 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1268, i32 52 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1271, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1278, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1504, i32 11 }
@___asan_gen_.145 = private unnamed_addr constant [18 x i8] c"smb347_properties\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1183, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [8 x i8] c"fcc_tbl\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 238, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant [8 x i8] c"pcc_tbl\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 247, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1512, i32 11 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"tc_tbl\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 254, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant [8 x i8] c"icl_tbl\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 264, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant [8 x i8] c"ccc_tbl\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 274, i32 27 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 408, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 412, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 373, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 378, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 966, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 967, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 806, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 812, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 818, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 824, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 833, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 853, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 862, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 865, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1520, i32 11 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1521, i32 14 }
@___asan_gen_.271 = private unnamed_addr constant [30 x i8] c"smb347_usb_vbus_regulator_ops\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1495, i32 35 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1364, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1396, i32 44 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1409, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1416, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1424, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1430, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1438, i32 3 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1458, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.332 = private constant [41 x i8] c"../drivers/power/supply/smb347-charger.c\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.332, i32 1473, i32 4 }
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author321, ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_smb347_driver_exit, ptr @__initcall__kmod_smb347_charger__320_1640_smb347_driver_init6, ptr @smb347_driver_exit, ptr @smb347_interrupt._entry, ptr @smb347_interrupt._entry.35, ptr @smb347_interrupt._entry.38, ptr @smb347_interrupt._entry.41, ptr @smb347_interrupt._entry.44, ptr @smb347_interrupt._entry.49, ptr @smb347_interrupt._entry_ptr, ptr @smb347_interrupt._entry_ptr.37, ptr @smb347_interrupt._entry_ptr.40, ptr @smb347_interrupt._entry_ptr.43, ptr @smb347_interrupt._entry_ptr.46, ptr @smb347_interrupt._entry_ptr.51, ptr @smb347_irq_init._entry, ptr @smb347_irq_init._entry.30, ptr @smb347_irq_init._entry_ptr, ptr @smb347_irq_init._entry_ptr.32, ptr @smb347_start_stop_charging._entry, ptr @smb347_start_stop_charging._entry.20, ptr @smb347_start_stop_charging._entry_ptr, ptr @smb347_start_stop_charging._entry_ptr.22, ptr @smb347_usb_vbus_regulator_disable._entry, ptr @smb347_usb_vbus_regulator_disable._entry.73, ptr @smb347_usb_vbus_regulator_disable._entry_ptr, ptr @smb347_usb_vbus_regulator_disable._entry_ptr.75, ptr @smb347_usb_vbus_regulator_enable._entry, ptr @smb347_usb_vbus_regulator_enable._entry.59, ptr @smb347_usb_vbus_regulator_enable._entry.62, ptr @smb347_usb_vbus_regulator_enable._entry.65, ptr @smb347_usb_vbus_regulator_enable._entry.68, ptr @smb347_usb_vbus_regulator_enable._entry_ptr, ptr @smb347_usb_vbus_regulator_enable._entry_ptr.61, ptr @smb347_usb_vbus_regulator_enable._entry_ptr.64, ptr @smb347_usb_vbus_regulator_enable._entry_ptr.67, ptr @smb347_usb_vbus_regulator_enable._entry_ptr.70, ptr @smb347_usb_vbus_set_new_current_limit._entry, ptr @smb347_usb_vbus_set_new_current_limit._entry_ptr, ptr @smb347_driver, ptr @.str, ptr @smb3xx_of_match, ptr @smb347_id, ptr @smb347_probe._key, ptr @smb347_regmap, ptr @.str.1, ptr @smb347_mains_desc, ptr @smb347_usb_desc, ptr @smb347_usb_vbus_regulator_desc, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @smb347_properties, ptr @fcc_tbl, ptr @pcc_tbl, ptr @.str.14, ptr @tc_tbl, ptr @icl_tbl, ptr @ccc_tbl, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @smb347_usb_vbus_regulator_ops, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb3xx_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_mains_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_desc to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_properties to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fcc_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcc_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_tbl to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_tbl to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccc_tbl to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_start_stop_charging._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_start_stop_charging._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_irq_init._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_interrupt._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_ops to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_set_new_current_limit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_enable._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_enable._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_enable._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_enable._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smb347_usb_vbus_regulator_disable._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @smb347_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smb347_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @smb347_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %info.i = alloca ptr, align 4
  %mains_usb_cfg = alloca %struct.power_supply_config, align 4
  %usb_rdev_cfg = alloca %struct.regulator_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %mains_usb_cfg) #7
  %0 = call ptr @memset(ptr %mains_usb_cfg, i32 0, i32 24)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %usb_rdev_cfg) #7
  %1 = call ptr @memset(ptr %usb_rdev_cfg, i32 0, i32 24)
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %call.i, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %id4 = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %id4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %id4, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %soft_temp_limit_compensation.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 23
  %7 = ptrtoint ptr %soft_temp_limit_compensation.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %soft_temp_limit_compensation.i, align 4
  %soft_cold_temp_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 18
  %8 = ptrtoint ptr %soft_cold_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -273, ptr %soft_cold_temp_limit.i, align 4
  %hard_cold_temp_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 20
  %9 = ptrtoint ptr %hard_cold_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -273, ptr %hard_cold_temp_limit.i, align 4
  %soft_hot_temp_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %soft_hot_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -273, ptr %soft_hot_temp_limit.i, align 4
  %hard_hot_temp_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 21
  %11 = ptrtoint ptr %hard_hot_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -273, ptr %hard_hot_temp_limit.i, align 4
  %pre_to_fast_voltage.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 14
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %pre_to_fast_voltage.i, i32 noundef 1) #7
  %mains_current_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 15
  %call.i41.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %mains_current_limit.i, i32 noundef 1) #7
  %usb_hc_current_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 16
  %call.i42.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.4, ptr noundef %usb_hc_current_limit.i, i32 noundef 1) #7
  %chip_temp_threshold.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 17
  %call.i43.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.5, ptr noundef %chip_temp_threshold.i, i32 noundef 1) #7
  %call.i44.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.6, ptr noundef %soft_temp_limit_compensation.i, i32 noundef 1) #7
  %charge_current_compensation.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 24
  %call.i45.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %charge_current_compensation.i, i32 noundef 1) #7
  %call.i46.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  %use_mains.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 25
  %frombool.i = zext i1 %call.i46.i to i8
  %12 = ptrtoint ptr %use_mains.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %use_mains.i, align 4
  %call.i47.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.9) #7
  %use_usb.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 26
  %frombool10.i = zext i1 %call.i47.i to i8
  %13 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %frombool10.i, ptr %use_usb.i, align 1
  %call.i48.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  %use_usb_otg.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 27
  %frombool12.i = zext i1 %call.i48.i to i8
  %14 = ptrtoint ptr %use_usb_otg.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool12.i, ptr %use_usb_otg.i, align 2
  %enable_control.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 28
  %call.i49.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.11, ptr noundef %enable_control.i, i32 noundef 1) #7
  %inok_polarity.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 29
  %call.i50.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.12, ptr noundef %inok_polarity.i, i32 noundef 1) #7
  %15 = ptrtoint ptr %use_mains.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %use_mains.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool5.not = icmp eq i8 %16, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end8_crit_edge

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %17 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %use_usb.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool6.not = icmp eq i8 %18, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end8_crit_edge

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %call9 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @smb347_regmap, ptr noundef nonnull @smb347_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call9, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %mains_usb_cfg, i32 0, i32 2
  %21 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %24 = ptrtoint ptr %mains_usb_cfg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %mains_usb_cfg, align 4
  %25 = ptrtoint ptr %use_mains.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %use_mains.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not = icmp eq i8 %26, 0
  br i1 %tobool18.not, label %if.end15.if.end27_crit_edge, label %if.then19

if.end15.if.end27_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then19:                                        ; preds = %if.end15
  %call20 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @smb347_mains_desc, ptr noundef nonnull %mains_usb_cfg) #7
  %mains = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 2
  %27 = ptrtoint ptr %mains to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call20, ptr %mains, align 4
  %cmp.i107 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %if.then23, label %if.then19.if.end27_crit_edge

if.then19.if.end27_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then23:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end27:                                         ; preds = %if.then19.if.end27_crit_edge, %if.end15.if.end27_crit_edge
  %29 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %use_usb.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool29.not = icmp eq i8 %30, 0
  br i1 %tobool29.not, label %if.end27.if.end38_crit_edge, label %if.then30

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then30:                                        ; preds = %if.end27
  %call31 = call ptr @devm_power_supply_register(ptr noundef %dev1, ptr noundef nonnull @smb347_usb_desc, ptr noundef nonnull %mains_usb_cfg) #7
  %usb = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %usb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call31, ptr %usb, align 4
  %cmp.i108 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %if.then34, label %if.then30.if.end38_crit_edge

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then34:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.then30.if.end38_crit_edge, %if.end27.if.end38_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #7
  %33 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %info.i, align 4, !annotation !183
  %mains.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 2
  %34 = ptrtoint ptr %mains.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mains.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.else.i, label %if.end38.if.end.i_crit_edge

if.end38.if.end.i_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %usb.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 3
  %36 = ptrtoint ptr %usb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %usb.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.end38.if.end.i_crit_edge
  %supply.0.i = phi ptr [ %37, %if.else.i ], [ %35, %if.end38.if.end.i_crit_edge ]
  %call.i109 = call i32 @power_supply_get_battery_info(ptr noundef %supply.0.i, ptr noundef nonnull %info.i) #7
  %38 = zext i32 %call.i109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i109, label %smb347_get_battery_info.exit [
    i32 -6, label %if.end.i.if.end42_crit_edge
    i32 -19, label %if.end.i.if.end42_crit_edge148
    i32 0, label %if.end7.i
  ]

if.end.i.if.end42_crit_edge148:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end.i.if.end42_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.end7.i:                                        ; preds = %if.end.i
  %39 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %info.i, align 4
  %constant_charge_current_max_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %constant_charge_current_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %constant_charge_current_max_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %42)
  %cmp8.not.i = icmp eq i32 %42, -22
  br i1 %cmp8.not.i, label %if.end7.i.if.end11.i_crit_edge, label %if.then9.i

if.end7.i.if.end11.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then9.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_charge_current.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 10
  %43 = ptrtoint ptr %max_charge_current.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %max_charge_current.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then9.i, %if.end7.i.if.end11.i_crit_edge
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 12
  %44 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %constant_charge_voltage_max_uv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %45)
  %cmp12.not.i = icmp eq i32 %45, -22
  br i1 %cmp12.not.i, label %if.end11.i.if.end15.i_crit_edge, label %if.then13.i

if.end11.i.if.end15.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %max_charge_voltage.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 11
  %46 = ptrtoint ptr %max_charge_voltage.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %max_charge_voltage.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end11.i.if.end15.i_crit_edge
  %precharge_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 6
  %47 = ptrtoint ptr %precharge_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %precharge_current_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %48)
  %cmp16.not.i = icmp eq i32 %48, -22
  br i1 %cmp16.not.i, label %if.end15.i.if.end19.i_crit_edge, label %if.then17.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %pre_charge_current.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 12
  %49 = ptrtoint ptr %pre_charge_current.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %pre_charge_current.i, align 4
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end15.i.if.end19.i_crit_edge
  %charge_term_current_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 8
  %50 = ptrtoint ptr %charge_term_current_ua.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %charge_term_current_ua.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %51)
  %cmp20.not.i = icmp eq i32 %51, -22
  br i1 %cmp20.not.i, label %if.end19.i.if.end23.i_crit_edge, label %if.then21.i

if.end19.i.if.end23.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %termination_current.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 13
  %52 = ptrtoint ptr %termination_current.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %termination_current.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.end19.i.if.end23.i_crit_edge
  %temp_alert_min.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 17
  %53 = ptrtoint ptr %temp_alert_min.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %temp_alert_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %54)
  %cmp24.not.i = icmp eq i32 %54, -2147483648
  br i1 %cmp24.not.i, label %if.end23.i.if.end27.i_crit_edge, label %if.then25.i

if.end23.i.if.end27.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %soft_cold_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %soft_cold_temp_limit.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end23.i.if.end27.i_crit_edge
  %temp_alert_max.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 18
  %56 = ptrtoint ptr %temp_alert_max.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %temp_alert_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %57)
  %cmp28.not.i = icmp eq i32 %57, 2147483647
  br i1 %cmp28.not.i, label %if.end27.i.if.end31.i_crit_edge, label %if.then29.i

if.end27.i.if.end31.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then29.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %soft_hot_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %soft_hot_temp_limit.i, align 4
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %if.end27.i.if.end31.i_crit_edge
  %temp_min.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 19
  %59 = ptrtoint ptr %temp_min.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %temp_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2147483648, i32 %60)
  %cmp32.not.i = icmp eq i32 %60, -2147483648
  br i1 %cmp32.not.i, label %if.end31.i.if.end35.i_crit_edge, label %if.then33.i

if.end31.i.if.end35.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

if.then33.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %hard_cold_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %hard_cold_temp_limit.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then33.i, %if.end31.i.if.end35.i_crit_edge
  %temp_max.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %40, i32 0, i32 20
  %62 = ptrtoint ptr %temp_max.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %temp_max.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %63)
  %cmp36.not.i = icmp eq i32 %63, 2147483647
  br i1 %cmp36.not.i, label %if.end35.i.if.end39.i_crit_edge, label %if.then37.i

if.end35.i.if.end39.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then37.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %hard_hot_temp_limit.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %hard_hot_temp_limit.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.then37.i, %if.end35.i.if.end39.i_crit_edge
  %65 = ptrtoint ptr %hard_cold_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %hard_cold_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %66)
  %cmp41.not.i = icmp eq i32 %66, -273
  br i1 %cmp41.not.i, label %lor.lhs.false42.i, label %if.end39.i.if.then45.i_crit_edge

if.end39.i.if.then45.i_crit_edge:                 ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

lor.lhs.false42.i:                                ; preds = %if.end39.i
  %67 = ptrtoint ptr %hard_hot_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hard_hot_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %68)
  %cmp44.not.i = icmp eq i32 %68, -273
  br i1 %cmp44.not.i, label %lor.lhs.false42.i.if.end42_crit_edge, label %lor.lhs.false42.i.if.then45.i_crit_edge

lor.lhs.false42.i.if.then45.i_crit_edge:          ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then45.i

lor.lhs.false42.i.if.end42_crit_edge:             ; preds = %lor.lhs.false42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.then45.i:                                      ; preds = %lor.lhs.false42.i.if.then45.i_crit_edge, %if.end39.i.if.then45.i_crit_edge
  %suspend_on_hard_temp_limit.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 22
  %69 = ptrtoint ptr %suspend_on_hard_temp_limit.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %suspend_on_hard_temp_limit.i, align 4
  br label %if.end42

smb347_get_battery_info.exit:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  br label %cleanup

if.end42:                                         ; preds = %if.then45.i, %lor.lhs.false42.i.if.end42_crit_edge, %if.end.i.if.end42_crit_edge, %if.end.i.if.end42_crit_edge148
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i114 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i114, label %if.end42.cleanup_crit_edge, label %if.end.i115

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i115:                                      ; preds = %if.end42
  %72 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id4, align 4
  %max_charge_current.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 10
  %74 = ptrtoint ptr %max_charge_current.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %max_charge_current.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i, label %if.end.i115.if.end8.i.i_crit_edge, label %if.then.i.i

if.end.i115.if.end8.i.i_crit_edge:                ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i:                                      ; preds = %if.end.i115
  %arrayidx.i.i = getelementptr [3 x [8 x i32]], ptr @fcc_tbl, i32 0, i32 %73
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %77, i32 %75)
  %cmp1.i.i.i = icmp ugt i32 %77, %75
  br i1 %cmp1.i.i.i, label %if.then.i.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i.i.i

if.then.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i.i.i:                                    ; preds = %if.then.i.i
  %arrayidx.i.1.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 1
  %78 = ptrtoint ptr %arrayidx.i.1.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %75)
  %cmp1.i.1.i.i = icmp ugt i32 %79, %75
  br i1 %cmp1.i.1.i.i, label %for.inc.i.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.1.i.i

for.inc.i.i.i.current_to_hw.exit.i.i_crit_edge:   ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.1.i.i:                                  ; preds = %for.inc.i.i.i
  %arrayidx.i.2.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 2
  %80 = ptrtoint ptr %arrayidx.i.2.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %75)
  %cmp1.i.2.i.i = icmp ugt i32 %81, %75
  br i1 %cmp1.i.2.i.i, label %for.inc.i.1.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.2.i.i

for.inc.i.1.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.2.i.i:                                  ; preds = %for.inc.i.1.i.i
  %arrayidx.i.3.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 3
  %82 = ptrtoint ptr %arrayidx.i.3.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %83, i32 %75)
  %cmp1.i.3.i.i = icmp ugt i32 %83, %75
  br i1 %cmp1.i.3.i.i, label %for.inc.i.2.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.3.i.i

for.inc.i.2.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.3.i.i:                                  ; preds = %for.inc.i.2.i.i
  %arrayidx.i.4.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 4
  %84 = ptrtoint ptr %arrayidx.i.4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %75)
  %cmp1.i.4.i.i = icmp ugt i32 %85, %75
  br i1 %cmp1.i.4.i.i, label %for.inc.i.3.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.4.i.i

for.inc.i.3.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.4.i.i:                                  ; preds = %for.inc.i.3.i.i
  %arrayidx.i.5.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 5
  %86 = ptrtoint ptr %arrayidx.i.5.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %87, i32 %75)
  %cmp1.i.5.i.i = icmp ugt i32 %87, %75
  br i1 %cmp1.i.5.i.i, label %for.inc.i.4.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.5.i.i

for.inc.i.4.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.5.i.i:                                  ; preds = %for.inc.i.4.i.i
  %arrayidx.i.6.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 6
  %88 = ptrtoint ptr %arrayidx.i.6.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %89, i32 %75)
  %cmp1.i.6.i.i = icmp ugt i32 %89, %75
  br i1 %cmp1.i.6.i.i, label %for.inc.i.5.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.6.i.i

for.inc.i.5.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

for.inc.i.6.i.i:                                  ; preds = %for.inc.i.5.i.i
  %arrayidx.i.7.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 7
  %90 = ptrtoint ptr %arrayidx.i.7.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx.i.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %91, i32 %75)
  %cmp1.i.7.i.i = icmp ugt i32 %91, %75
  br i1 %cmp1.i.7.i.i, label %for.inc.i.6.i.i.current_to_hw.exit.i.i_crit_edge, label %for.inc.i.6.i.i.if.end.i.i_crit_edge

for.inc.i.6.i.i.if.end.i.i_crit_edge:             ; preds = %for.inc.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

for.inc.i.6.i.i.current_to_hw.exit.i.i_crit_edge: ; preds = %for.inc.i.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i.i

current_to_hw.exit.i.i:                           ; preds = %for.inc.i.6.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.5.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.4.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.3.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.2.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.1.i.i.current_to_hw.exit.i.i_crit_edge, %for.inc.i.i.i.current_to_hw.exit.i.i_crit_edge
  %i.08.i.lcssa.ph.i.i = phi i32 [ 192, %for.inc.i.6.i.i.current_to_hw.exit.i.i_crit_edge ], [ 160, %for.inc.i.5.i.i.current_to_hw.exit.i.i_crit_edge ], [ 128, %for.inc.i.4.i.i.current_to_hw.exit.i.i_crit_edge ], [ 96, %for.inc.i.3.i.i.current_to_hw.exit.i.i_crit_edge ], [ 64, %for.inc.i.2.i.i.current_to_hw.exit.i.i_crit_edge ], [ 32, %for.inc.i.1.i.i.current_to_hw.exit.i.i_crit_edge ], [ 0, %for.inc.i.i.i.current_to_hw.exit.i.i_crit_edge ]
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %current_to_hw.exit.i.i, %for.inc.i.6.i.i.if.end.i.i_crit_edge
  %92 = phi i32 [ %i.08.i.lcssa.ph.i.i, %current_to_hw.exit.i.i ], [ 224, %for.inc.i.6.i.i.if.end.i.i_crit_edge ]
  %93 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap, align 4
  %call.i.i86.i = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 0, i32 noundef 224, i32 noundef %92, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i86.i)
  %cmp5.i.i = icmp slt i32 %call.i.i86.i, 0
  br i1 %cmp5.i.i, label %if.end.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.end.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end8.i.i:                                      ; preds = %if.end.i.i.if.end8.i.i_crit_edge, %if.end.i115.if.end8.i.i_crit_edge
  %pre_charge_current.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 12
  %95 = ptrtoint ptr %pre_charge_current.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pre_charge_current.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool9.not.i.i = icmp eq i32 %96, 0
  br i1 %tobool9.not.i.i, label %if.end8.i.i.if.end24.i.i_crit_edge, label %if.then10.i.i

if.end8.i.i.if.end24.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.then10.i.i:                                    ; preds = %if.end8.i.i
  %arrayidx11.i.i = getelementptr [3 x [4 x i32]], ptr @pcc_tbl, i32 0, i32 %73
  %97 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx11.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %96)
  %cmp1.i70.i.i = icmp ugt i32 %98, %96
  br i1 %cmp1.i70.i.i, label %if.then10.i.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i74.i.i

if.then10.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i74.i.i:                                  ; preds = %if.then10.i.i
  %arrayidx.i69.1.i.i = getelementptr i32, ptr %arrayidx11.i.i, i32 1
  %99 = ptrtoint ptr %arrayidx.i69.1.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.i69.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %96)
  %cmp1.i70.1.i.i = icmp ugt i32 %100, %96
  br i1 %cmp1.i70.1.i.i, label %for.inc.i74.i.i.current_to_hw.exit80.i.i_crit_edge, label %for.inc.i74.1.i.i

for.inc.i74.i.i.current_to_hw.exit80.i.i_crit_edge: ; preds = %for.inc.i74.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit80.i.i

for.inc.i74.1.i.i:                                ; preds = %for.inc.i74.i.i
  %arrayidx.i69.2.i.i = getelementptr i32, ptr %arrayidx11.i.i, i32 2
  %101 = ptrtoint ptr %arrayidx.i69.2.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i69.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %102, i32 %96)
  %cmp1.i70.2.i.i = icmp ugt i32 %102, %96
  br i1 %cmp1.i70.2.i.i, label %for.inc.i74.1.i.i.current_to_hw.exit80.i.i_crit_edge, label %for.inc.i74.2.i.i

for.inc.i74.1.i.i.current_to_hw.exit80.i.i_crit_edge: ; preds = %for.inc.i74.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit80.i.i

for.inc.i74.2.i.i:                                ; preds = %for.inc.i74.1.i.i
  %arrayidx.i69.3.i.i = getelementptr i32, ptr %arrayidx11.i.i, i32 3
  %103 = ptrtoint ptr %arrayidx.i69.3.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i69.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %104, i32 %96)
  %cmp1.i70.3.i.i = icmp ugt i32 %104, %96
  br i1 %cmp1.i70.3.i.i, label %for.inc.i74.2.i.i.current_to_hw.exit80.i.i_crit_edge, label %for.inc.i74.2.i.i.if.end17.i.i_crit_edge

for.inc.i74.2.i.i.if.end17.i.i_crit_edge:         ; preds = %for.inc.i74.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i.i

for.inc.i74.2.i.i.current_to_hw.exit80.i.i_crit_edge: ; preds = %for.inc.i74.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit80.i.i

current_to_hw.exit80.i.i:                         ; preds = %for.inc.i74.2.i.i.current_to_hw.exit80.i.i_crit_edge, %for.inc.i74.1.i.i.current_to_hw.exit80.i.i_crit_edge, %for.inc.i74.i.i.current_to_hw.exit80.i.i_crit_edge
  %i.08.i68.lcssa.ph.i.i = phi i32 [ 16, %for.inc.i74.2.i.i.current_to_hw.exit80.i.i_crit_edge ], [ 8, %for.inc.i74.1.i.i.current_to_hw.exit80.i.i_crit_edge ], [ 0, %for.inc.i74.i.i.current_to_hw.exit80.i.i_crit_edge ]
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %current_to_hw.exit80.i.i, %for.inc.i74.2.i.i.if.end17.i.i_crit_edge
  %105 = phi i32 [ %i.08.i68.lcssa.ph.i.i, %current_to_hw.exit80.i.i ], [ 24, %for.inc.i74.2.i.i.if.end17.i.i_crit_edge ]
  %106 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap, align 4
  %call.i81.i.i = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 0, i32 noundef 24, i32 noundef %105, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i)
  %cmp21.i.i = icmp slt i32 %call.i81.i.i, 0
  br i1 %cmp21.i.i, label %if.end17.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end17.i.i.if.end24.i.i_crit_edge

if.end17.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i.i

if.end17.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end24.i.i:                                     ; preds = %if.end17.i.i.if.end24.i.i_crit_edge, %if.end8.i.i.if.end24.i.i_crit_edge
  %termination_current.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 13
  %108 = ptrtoint ptr %termination_current.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %termination_current.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool25.not.i.i = icmp eq i32 %109, 0
  br i1 %tobool25.not.i.i, label %if.end24.i.i.if.end4.i_crit_edge, label %if.then26.i.i

if.end24.i.i.if.end4.i_crit_edge:                 ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.then26.i.i:                                    ; preds = %if.end24.i.i
  %arrayidx27.i.i = getelementptr [3 x [8 x i32]], ptr @tc_tbl, i32 0, i32 %73
  %110 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx27.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %109)
  %cmp1.i84.i.i = icmp ugt i32 %111, %109
  br i1 %cmp1.i84.i.i, label %if.then26.i.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i88.i.i

if.then26.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i88.i.i:                                  ; preds = %if.then26.i.i
  %arrayidx.i83.1.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 1
  %112 = ptrtoint ptr %arrayidx.i83.1.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i83.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %113, i32 %109)
  %cmp1.i84.1.i.i = icmp ugt i32 %113, %109
  br i1 %cmp1.i84.1.i.i, label %for.inc.i88.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.1.i.i

for.inc.i88.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.1.i.i:                                ; preds = %for.inc.i88.i.i
  %arrayidx.i83.2.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 2
  %114 = ptrtoint ptr %arrayidx.i83.2.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i83.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %109)
  %cmp1.i84.2.i.i = icmp ugt i32 %115, %109
  br i1 %cmp1.i84.2.i.i, label %for.inc.i88.1.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.2.i.i

for.inc.i88.1.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.2.i.i:                                ; preds = %for.inc.i88.1.i.i
  %arrayidx.i83.3.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 3
  %116 = ptrtoint ptr %arrayidx.i83.3.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx.i83.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %109)
  %cmp1.i84.3.i.i = icmp ugt i32 %117, %109
  br i1 %cmp1.i84.3.i.i, label %for.inc.i88.2.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.3.i.i

for.inc.i88.2.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.3.i.i:                                ; preds = %for.inc.i88.2.i.i
  %arrayidx.i83.4.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 4
  %118 = ptrtoint ptr %arrayidx.i83.4.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i83.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %109)
  %cmp1.i84.4.i.i = icmp ugt i32 %119, %109
  br i1 %cmp1.i84.4.i.i, label %for.inc.i88.3.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.4.i.i

for.inc.i88.3.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.4.i.i:                                ; preds = %for.inc.i88.3.i.i
  %arrayidx.i83.5.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 5
  %120 = ptrtoint ptr %arrayidx.i83.5.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %arrayidx.i83.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %109)
  %cmp1.i84.5.i.i = icmp ugt i32 %121, %109
  br i1 %cmp1.i84.5.i.i, label %for.inc.i88.4.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.5.i.i

for.inc.i88.4.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.5.i.i:                                ; preds = %for.inc.i88.4.i.i
  %arrayidx.i83.6.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 6
  %122 = ptrtoint ptr %arrayidx.i83.6.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i83.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %123, i32 %109)
  %cmp1.i84.6.i.i = icmp ugt i32 %123, %109
  br i1 %cmp1.i84.6.i.i, label %for.inc.i88.5.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.6.i.i

for.inc.i88.5.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

for.inc.i88.6.i.i:                                ; preds = %for.inc.i88.5.i.i
  %arrayidx.i83.7.i.i = getelementptr i32, ptr %arrayidx27.i.i, i32 7
  %124 = ptrtoint ptr %arrayidx.i83.7.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i83.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %109)
  %cmp1.i84.7.i.i = icmp ugt i32 %125, %109
  br i1 %cmp1.i84.7.i.i, label %for.inc.i88.6.i.i.current_to_hw.exit94.i.i_crit_edge, label %for.inc.i88.6.i.i.if.end33.i.i_crit_edge

for.inc.i88.6.i.i.if.end33.i.i_crit_edge:         ; preds = %for.inc.i88.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

for.inc.i88.6.i.i.current_to_hw.exit94.i.i_crit_edge: ; preds = %for.inc.i88.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit94.i.i

current_to_hw.exit94.i.i:                         ; preds = %for.inc.i88.6.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.5.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.4.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.3.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.2.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.1.i.i.current_to_hw.exit94.i.i_crit_edge, %for.inc.i88.i.i.current_to_hw.exit94.i.i_crit_edge
  %i.08.i82.lcssa.ph.i.i = phi i32 [ 6, %for.inc.i88.6.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 5, %for.inc.i88.5.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 4, %for.inc.i88.4.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 3, %for.inc.i88.3.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 2, %for.inc.i88.2.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 1, %for.inc.i88.1.i.i.current_to_hw.exit94.i.i_crit_edge ], [ 0, %for.inc.i88.i.i.current_to_hw.exit94.i.i_crit_edge ]
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %current_to_hw.exit94.i.i, %for.inc.i88.6.i.i.if.end33.i.i_crit_edge
  %126 = phi i32 [ %i.08.i82.lcssa.ph.i.i, %current_to_hw.exit94.i.i ], [ 7, %for.inc.i88.6.i.i.if.end33.i.i_crit_edge ]
  %127 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap, align 4
  %call.i95.i.i = call i32 @regmap_update_bits_base(ptr noundef %128, i32 noundef 0, i32 noundef 7, i32 noundef %126, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i.i)
  %cmp36.i.i = icmp slt i32 %call.i95.i.i, 0
  br i1 %cmp36.i.i, label %if.end33.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end33.i.i.if.end4.i_crit_edge

if.end33.i.i.if.end4.i_crit_edge:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.i

if.end33.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end4.i:                                        ; preds = %if.end33.i.i.if.end4.i_crit_edge, %if.end24.i.i.if.end4.i_crit_edge
  %129 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id4, align 4
  %131 = ptrtoint ptr %mains_current_limit.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %mains_current_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i88.i = icmp eq i32 %132, 0
  br i1 %tobool.not.i88.i, label %if.end4.i.if.end8.i120.i_crit_edge, label %if.then.i91.i

if.end4.i.if.end8.i120.i_crit_edge:               ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i120.i

if.then.i91.i:                                    ; preds = %if.end4.i
  %arrayidx.i89.i = getelementptr [3 x [10 x i32]], ptr @icl_tbl, i32 0, i32 %130
  %133 = ptrtoint ptr %arrayidx.i89.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx.i89.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %134, i32 %132)
  %cmp1.i.i90.i = icmp ugt i32 %134, %132
  br i1 %cmp1.i.i90.i, label %if.then.i91.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i.i94.i

if.then.i91.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then.i91.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i.i94.i:                                  ; preds = %if.then.i91.i
  %arrayidx.i.1.i92.i = getelementptr i32, ptr %arrayidx.i89.i, i32 1
  %135 = ptrtoint ptr %arrayidx.i.1.i92.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.1.i92.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %136, i32 %132)
  %cmp1.i.1.i93.i = icmp ugt i32 %136, %132
  br i1 %cmp1.i.1.i93.i, label %for.inc.i.i94.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.1.i97.i

for.inc.i.i94.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.1.i97.i:                                ; preds = %for.inc.i.i94.i
  %arrayidx.i.2.i95.i = getelementptr i32, ptr %arrayidx.i89.i, i32 2
  %137 = ptrtoint ptr %arrayidx.i.2.i95.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx.i.2.i95.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %132)
  %cmp1.i.2.i96.i = icmp ugt i32 %138, %132
  br i1 %cmp1.i.2.i96.i, label %for.inc.i.1.i97.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.2.i100.i

for.inc.i.1.i97.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.1.i97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.2.i100.i:                               ; preds = %for.inc.i.1.i97.i
  %arrayidx.i.3.i98.i = getelementptr i32, ptr %arrayidx.i89.i, i32 3
  %139 = ptrtoint ptr %arrayidx.i.3.i98.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %arrayidx.i.3.i98.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %132)
  %cmp1.i.3.i99.i = icmp ugt i32 %140, %132
  br i1 %cmp1.i.3.i99.i, label %for.inc.i.2.i100.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.3.i103.i

for.inc.i.2.i100.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.2.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.3.i103.i:                               ; preds = %for.inc.i.2.i100.i
  %arrayidx.i.4.i101.i = getelementptr i32, ptr %arrayidx.i89.i, i32 4
  %141 = ptrtoint ptr %arrayidx.i.4.i101.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %arrayidx.i.4.i101.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %132)
  %cmp1.i.4.i102.i = icmp ugt i32 %142, %132
  br i1 %cmp1.i.4.i102.i, label %for.inc.i.3.i103.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.4.i106.i

for.inc.i.3.i103.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.3.i103.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.4.i106.i:                               ; preds = %for.inc.i.3.i103.i
  %arrayidx.i.5.i104.i = getelementptr i32, ptr %arrayidx.i89.i, i32 5
  %143 = ptrtoint ptr %arrayidx.i.5.i104.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx.i.5.i104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %144, i32 %132)
  %cmp1.i.5.i105.i = icmp ugt i32 %144, %132
  br i1 %cmp1.i.5.i105.i, label %for.inc.i.4.i106.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.5.i109.i

for.inc.i.4.i106.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.4.i106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.5.i109.i:                               ; preds = %for.inc.i.4.i106.i
  %arrayidx.i.6.i107.i = getelementptr i32, ptr %arrayidx.i89.i, i32 6
  %145 = ptrtoint ptr %arrayidx.i.6.i107.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i.6.i107.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %146, i32 %132)
  %cmp1.i.6.i108.i = icmp ugt i32 %146, %132
  br i1 %cmp1.i.6.i108.i, label %for.inc.i.5.i109.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.6.i112.i

for.inc.i.5.i109.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.5.i109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.6.i112.i:                               ; preds = %for.inc.i.5.i109.i
  %arrayidx.i.7.i110.i = getelementptr i32, ptr %arrayidx.i89.i, i32 7
  %147 = ptrtoint ptr %arrayidx.i.7.i110.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx.i.7.i110.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %148, i32 %132)
  %cmp1.i.7.i111.i = icmp ugt i32 %148, %132
  br i1 %cmp1.i.7.i111.i, label %for.inc.i.6.i112.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.7.i.i

for.inc.i.6.i112.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.6.i112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.7.i.i:                                  ; preds = %for.inc.i.6.i112.i
  %arrayidx.i.8.i.i = getelementptr i32, ptr %arrayidx.i89.i, i32 8
  %149 = ptrtoint ptr %arrayidx.i.8.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx.i.8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %150, i32 %132)
  %cmp1.i.8.i.i = icmp ugt i32 %150, %132
  br i1 %cmp1.i.8.i.i, label %for.inc.i.7.i.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.8.i.i

for.inc.i.7.i.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

for.inc.i.8.i.i:                                  ; preds = %for.inc.i.7.i.i
  %arrayidx.i.9.i.i = getelementptr i32, ptr %arrayidx.i89.i, i32 9
  %151 = ptrtoint ptr %arrayidx.i.9.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %arrayidx.i.9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %152, i32 %132)
  %cmp1.i.9.i.i = icmp ugt i32 %152, %132
  br i1 %cmp1.i.9.i.i, label %for.inc.i.8.i.i.current_to_hw.exit.i114.i_crit_edge, label %for.inc.i.8.i.i.if.end.i118.i_crit_edge

for.inc.i.8.i.i.if.end.i118.i_crit_edge:          ; preds = %for.inc.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i118.i

for.inc.i.8.i.i.current_to_hw.exit.i114.i_crit_edge: ; preds = %for.inc.i.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i114.i

current_to_hw.exit.i114.i:                        ; preds = %for.inc.i.8.i.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.7.i.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.6.i112.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.5.i109.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.4.i106.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.3.i103.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.2.i100.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.1.i97.i.current_to_hw.exit.i114.i_crit_edge, %for.inc.i.i94.i.current_to_hw.exit.i114.i_crit_edge
  %i.08.i.lcssa.ph.i113.i = phi i32 [ 128, %for.inc.i.8.i.i.current_to_hw.exit.i114.i_crit_edge ], [ 112, %for.inc.i.7.i.i.current_to_hw.exit.i114.i_crit_edge ], [ 96, %for.inc.i.6.i112.i.current_to_hw.exit.i114.i_crit_edge ], [ 80, %for.inc.i.5.i109.i.current_to_hw.exit.i114.i_crit_edge ], [ 64, %for.inc.i.4.i106.i.current_to_hw.exit.i114.i_crit_edge ], [ 48, %for.inc.i.3.i103.i.current_to_hw.exit.i114.i_crit_edge ], [ 32, %for.inc.i.2.i100.i.current_to_hw.exit.i114.i_crit_edge ], [ 16, %for.inc.i.1.i97.i.current_to_hw.exit.i114.i_crit_edge ], [ 0, %for.inc.i.i94.i.current_to_hw.exit.i114.i_crit_edge ]
  br label %if.end.i118.i

if.end.i118.i:                                    ; preds = %current_to_hw.exit.i114.i, %for.inc.i.8.i.i.if.end.i118.i_crit_edge
  %153 = phi i32 [ %i.08.i.lcssa.ph.i113.i, %current_to_hw.exit.i114.i ], [ 144, %for.inc.i.8.i.i.if.end.i118.i_crit_edge ]
  %154 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regmap, align 4
  %call.i.i116.i = call i32 @regmap_update_bits_base(ptr noundef %155, i32 noundef 1, i32 noundef 240, i32 noundef %153, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i116.i)
  %cmp5.i117.i = icmp slt i32 %call.i.i116.i, 0
  br i1 %cmp5.i117.i, label %if.end.i118.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end.i118.i.if.end8.i120.i_crit_edge

if.end.i118.i.if.end8.i120.i_crit_edge:           ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i120.i

if.end.i118.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end.i118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end8.i120.i:                                   ; preds = %if.end.i118.i.if.end8.i120.i_crit_edge, %if.end4.i.if.end8.i120.i_crit_edge
  %156 = ptrtoint ptr %usb_hc_current_limit.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %usb_hc_current_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool9.not.i119.i = icmp eq i32 %157, 0
  br i1 %tobool9.not.i119.i, label %if.end8.i120.i.if.end8.i_crit_edge, label %if.then10.i122.i

if.end8.i120.i.if.end8.i_crit_edge:               ; preds = %if.end8.i120.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.then10.i122.i:                                 ; preds = %if.end8.i120.i
  %arrayidx11.i121.i = getelementptr [3 x [10 x i32]], ptr @icl_tbl, i32 0, i32 %130
  %158 = ptrtoint ptr %arrayidx11.i121.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx11.i121.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %159, i32 %157)
  %cmp1.i44.i.i = icmp ugt i32 %159, %157
  br i1 %cmp1.i44.i.i, label %if.then10.i122.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i48.i.i

if.then10.i122.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then10.i122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i48.i.i:                                  ; preds = %if.then10.i122.i
  %arrayidx.i43.1.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 1
  %160 = ptrtoint ptr %arrayidx.i43.1.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i43.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %161, i32 %157)
  %cmp1.i44.1.i.i = icmp ugt i32 %161, %157
  br i1 %cmp1.i44.1.i.i, label %for.inc.i48.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.1.i.i

for.inc.i48.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.1.i.i:                                ; preds = %for.inc.i48.i.i
  %arrayidx.i43.2.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 2
  %162 = ptrtoint ptr %arrayidx.i43.2.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i43.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %157)
  %cmp1.i44.2.i.i = icmp ugt i32 %163, %157
  br i1 %cmp1.i44.2.i.i, label %for.inc.i48.1.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.2.i.i

for.inc.i48.1.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.2.i.i:                                ; preds = %for.inc.i48.1.i.i
  %arrayidx.i43.3.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 3
  %164 = ptrtoint ptr %arrayidx.i43.3.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i43.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %165, i32 %157)
  %cmp1.i44.3.i.i = icmp ugt i32 %165, %157
  br i1 %cmp1.i44.3.i.i, label %for.inc.i48.2.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.3.i.i

for.inc.i48.2.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.3.i.i:                                ; preds = %for.inc.i48.2.i.i
  %arrayidx.i43.4.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 4
  %166 = ptrtoint ptr %arrayidx.i43.4.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx.i43.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %167, i32 %157)
  %cmp1.i44.4.i.i = icmp ugt i32 %167, %157
  br i1 %cmp1.i44.4.i.i, label %for.inc.i48.3.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.4.i.i

for.inc.i48.3.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.4.i.i:                                ; preds = %for.inc.i48.3.i.i
  %arrayidx.i43.5.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 5
  %168 = ptrtoint ptr %arrayidx.i43.5.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx.i43.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %169, i32 %157)
  %cmp1.i44.5.i.i = icmp ugt i32 %169, %157
  br i1 %cmp1.i44.5.i.i, label %for.inc.i48.4.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.5.i.i

for.inc.i48.4.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.5.i.i:                                ; preds = %for.inc.i48.4.i.i
  %arrayidx.i43.6.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 6
  %170 = ptrtoint ptr %arrayidx.i43.6.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx.i43.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %171, i32 %157)
  %cmp1.i44.6.i.i = icmp ugt i32 %171, %157
  br i1 %cmp1.i44.6.i.i, label %for.inc.i48.5.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.6.i.i

for.inc.i48.5.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.6.i.i:                                ; preds = %for.inc.i48.5.i.i
  %arrayidx.i43.7.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 7
  %172 = ptrtoint ptr %arrayidx.i43.7.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx.i43.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %173, i32 %157)
  %cmp1.i44.7.i.i = icmp ugt i32 %173, %157
  br i1 %cmp1.i44.7.i.i, label %for.inc.i48.6.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.7.i.i

for.inc.i48.6.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.7.i.i:                                ; preds = %for.inc.i48.6.i.i
  %arrayidx.i43.8.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 8
  %174 = ptrtoint ptr %arrayidx.i43.8.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx.i43.8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %175, i32 %157)
  %cmp1.i44.8.i.i = icmp ugt i32 %175, %157
  br i1 %cmp1.i44.8.i.i, label %for.inc.i48.7.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.8.i.i

for.inc.i48.7.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

for.inc.i48.8.i.i:                                ; preds = %for.inc.i48.7.i.i
  %arrayidx.i43.9.i.i = getelementptr i32, ptr %arrayidx11.i121.i, i32 9
  %176 = ptrtoint ptr %arrayidx.i43.9.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx.i43.9.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %157)
  %cmp1.i44.9.i.i = icmp ugt i32 %177, %157
  br i1 %cmp1.i44.9.i.i, label %for.inc.i48.8.i.i.current_to_hw.exit54.i.i_crit_edge, label %for.inc.i48.8.i.i.if.end17.i124.i_crit_edge

for.inc.i48.8.i.i.if.end17.i124.i_crit_edge:      ; preds = %for.inc.i48.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17.i124.i

for.inc.i48.8.i.i.current_to_hw.exit54.i.i_crit_edge: ; preds = %for.inc.i48.8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit54.i.i

current_to_hw.exit54.i.i:                         ; preds = %for.inc.i48.8.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.7.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.6.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.5.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.4.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.3.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.2.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.1.i.i.current_to_hw.exit54.i.i_crit_edge, %for.inc.i48.i.i.current_to_hw.exit54.i.i_crit_edge
  %i.08.i42.lcssa.ph.i.i = phi i32 [ 8, %for.inc.i48.8.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 7, %for.inc.i48.7.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 6, %for.inc.i48.6.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 5, %for.inc.i48.5.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 4, %for.inc.i48.4.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 3, %for.inc.i48.3.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 2, %for.inc.i48.2.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 1, %for.inc.i48.1.i.i.current_to_hw.exit54.i.i_crit_edge ], [ 0, %for.inc.i48.i.i.current_to_hw.exit54.i.i_crit_edge ]
  br label %if.end17.i124.i

if.end17.i124.i:                                  ; preds = %current_to_hw.exit54.i.i, %for.inc.i48.8.i.i.if.end17.i124.i_crit_edge
  %178 = phi i32 [ %i.08.i42.lcssa.ph.i.i, %current_to_hw.exit54.i.i ], [ 9, %for.inc.i48.8.i.i.if.end17.i124.i_crit_edge ]
  %179 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regmap, align 4
  %call.i55.i.i = call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 1, i32 noundef 15, i32 noundef %178, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55.i.i)
  %cmp20.i.i = icmp slt i32 %call.i55.i.i, 0
  br i1 %cmp20.i.i, label %if.end17.i124.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end17.i124.i.if.end8.i_crit_edge

if.end17.i124.i.if.end8.i_crit_edge:              ; preds = %if.end17.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

if.end17.i124.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end17.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end8.i:                                        ; preds = %if.end17.i124.i.if.end8.i_crit_edge, %if.end8.i120.i.if.end8.i_crit_edge
  %181 = ptrtoint ptr %pre_to_fast_voltage.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pre_to_fast_voltage.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i126.i = icmp eq i32 %182, 0
  br i1 %tobool.not.i126.i, label %if.end8.i.if.end10.i.i_crit_edge, label %if.then.i129.i

if.end8.i.if.end10.i.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then.i129.i:                                   ; preds = %if.end8.i
  %183 = call i32 @llvm.smax.i32(i32 %182, i32 2400000) #7
  %184 = call i32 @llvm.umin.i32(i32 %183, i32 3000000) #7
  %sub.i.i = add nsw i32 %184, -2400000
  %div60.i.i = udiv i32 %sub.i.i, 200000
  %185 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regmap, align 4
  %shl.i.i = shl nuw nsw i32 %div60.i.i, 6
  %call.i.i128.i = call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 3, i32 noundef 192, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128.i)
  %cmp8.i.i = icmp slt i32 %call.i.i128.i, 0
  br i1 %cmp8.i.i, label %if.then.i129.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then.i129.i.if.end10.i.i_crit_edge

if.then.i129.i.if.end10.i.i_crit_edge:            ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i.i

if.then.i129.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then.i129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end10.i.i:                                     ; preds = %if.then.i129.i.if.end10.i.i_crit_edge, %if.end8.i.if.end10.i.i_crit_edge
  %max_charge_voltage.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 11
  %187 = ptrtoint ptr %max_charge_voltage.i.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %max_charge_voltage.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool11.not.i.i = icmp eq i32 %188, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.if.end12.i_crit_edge, label %if.then12.i.i

if.end10.i.i.if.end12.i_crit_edge:                ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then12.i.i:                                    ; preds = %if.end10.i.i
  %189 = call i32 @llvm.smax.i32(i32 %188, i32 3500000) #7
  %190 = call i32 @llvm.umin.i32(i32 %189, i32 4500000) #7
  %sub26.i.i = add nsw i32 %190, -3500000
  %div2759.i.i = udiv i32 %sub26.i.i, 20000
  %191 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %regmap, align 4
  %call.i58.i.i = call i32 @regmap_update_bits_base(ptr noundef %192, i32 noundef 3, i32 noundef 63, i32 noundef %div2759.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58.i.i)
  %cmp30.i.i = icmp slt i32 %call.i58.i.i, 0
  br i1 %cmp30.i.i, label %if.then12.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then12.i.i.if.end12.i_crit_edge

if.then12.i.i.if.end12.i_crit_edge:               ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then12.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end12.i:                                       ; preds = %if.then12.i.i.if.end12.i_crit_edge, %if.end10.i.i.if.end12.i_crit_edge
  %193 = ptrtoint ptr %id4 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %id4, align 4
  %195 = ptrtoint ptr %chip_temp_threshold.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %chip_temp_threshold.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool.not.i133.i = icmp eq i32 %196, 0
  br i1 %tobool.not.i133.i, label %if.end12.i.if.end11.i.i_crit_edge, label %if.then.i137.i

if.end12.i.if.end11.i.i_crit_edge:                ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then.i137.i:                                   ; preds = %if.end12.i
  %197 = call i32 @llvm.smax.i32(i32 %196, i32 100) #7
  %198 = call i32 @llvm.umin.i32(i32 %197, i32 130) #7
  %199 = trunc i32 %198 to i8
  %div282.lhs.trunc.i.i = add i8 %199, -100
  %div282283.i.i = udiv i8 %div282.lhs.trunc.i.i, 10
  %div282.zext.i.i = zext i8 %div282283.i.i to i32
  %200 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regmap, align 4
  %shl.i135.i = shl nuw nsw i32 %div282.zext.i.i, 4
  %call.i.i136.i = call i32 @regmap_update_bits_base(ptr noundef %201, i32 noundef 10, i32 noundef 48, i32 noundef %shl.i135.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i136.i)
  %cmp9.i.i = icmp slt i32 %call.i.i136.i, 0
  br i1 %cmp9.i.i, label %if.then.i137.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then.i137.i.if.end11.i.i_crit_edge

if.then.i137.i.if.end11.i.i_crit_edge:            ; preds = %if.then.i137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

if.then.i137.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then.i137.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end11.i.i:                                     ; preds = %if.then.i137.i.if.end11.i.i_crit_edge, %if.end12.i.if.end11.i.i_crit_edge
  %202 = ptrtoint ptr %soft_cold_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %soft_cold_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %203)
  %cmp12.not.i.i = icmp eq i32 %203, -273
  br i1 %cmp12.not.i.i, label %if.end11.i.i.if.end34.i.i_crit_edge, label %if.then13.i.i

if.end11.i.i.if.end34.i.i_crit_edge:              ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i
  %204 = call i32 @llvm.smax.i32(i32 %203, i32 0) #7
  %205 = call i32 @llvm.umin.i32(i32 %204, i32 15) #7
  %div27280.lhs.trunc.i.i = trunc i32 %205 to i8
  %div27280281.i.i = udiv i8 %div27280.lhs.trunc.i.i, 5
  %206 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %regmap, align 4
  %208 = shl nuw nsw i8 %div27280281.i.i, 2
  %209 = and i8 %208, 12
  %210 = xor i8 %209, 12
  %shl29.i.i = zext i8 %210 to i32
  %call.i257.i.i = call i32 @regmap_update_bits_base(ptr noundef %207, i32 noundef 11, i32 noundef 12, i32 noundef %shl29.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i257.i.i)
  %cmp31.i.i = icmp slt i32 %call.i257.i.i, 0
  br i1 %cmp31.i.i, label %if.then13.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then13.i.i.if.end34.i.i_crit_edge

if.then13.i.i.if.end34.i.i_crit_edge:             ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i.i

if.then13.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end34.i.i:                                     ; preds = %if.then13.i.i.if.end34.i.i_crit_edge, %if.end11.i.i.if.end34.i.i_crit_edge
  %211 = xor i1 %cmp12.not.i.i, true
  %212 = ptrtoint ptr %soft_hot_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %soft_hot_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %213)
  %cmp35.not.i.i = icmp eq i32 %213, -273
  br i1 %cmp35.not.i.i, label %if.end34.i.i.if.end58.i.i_crit_edge, label %if.then36.i.i

if.end34.i.i.if.end58.i.i_crit_edge:              ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

if.then36.i.i:                                    ; preds = %if.end34.i.i
  %214 = call i32 @llvm.smax.i32(i32 %213, i32 40) #7
  %215 = call i32 @llvm.umin.i32(i32 %214, i32 55) #7
  %216 = trunc i32 %215 to i8
  %div51278.lhs.trunc.i.i = add nsw i8 %216, -40
  %div51278279.i.i = udiv i8 %div51278.lhs.trunc.i.i, 5
  %div51278.zext.i.i = zext i8 %div51278279.i.i to i32
  %217 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap, align 4
  %call.i258.i.i = call i32 @regmap_update_bits_base(ptr noundef %218, i32 noundef 11, i32 noundef 3, i32 noundef %div51278.zext.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i258.i.i)
  %cmp55.i.i = icmp slt i32 %call.i258.i.i, 0
  br i1 %cmp55.i.i, label %if.then36.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then36.i.i.if.end58.i.i_crit_edge

if.then36.i.i.if.end58.i.i_crit_edge:             ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i.i

if.then36.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then36.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end58.i.i:                                     ; preds = %if.then36.i.i.if.end58.i.i_crit_edge, %if.end34.i.i.if.end58.i.i_crit_edge
  %enable_therm_monitor.1.off0.i.i = phi i1 [ %211, %if.end34.i.i.if.end58.i.i_crit_edge ], [ true, %if.then36.i.i.if.end58.i.i_crit_edge ]
  %219 = ptrtoint ptr %hard_cold_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %hard_cold_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %220)
  %cmp59.not.i.i = icmp eq i32 %220, -273
  br i1 %cmp59.not.i.i, label %if.end83.i.i, label %if.then60.i.i

if.then60.i.i:                                    ; preds = %if.end58.i.i
  %221 = call i32 @llvm.smax.i32(i32 %220, i32 -5) #7
  %222 = call i32 @llvm.smin.i32(i32 %221, i32 10) #7
  %223 = trunc i32 %222 to i8
  %div74276.lhs.trunc.i.i = add nsw i8 %223, 5
  %div74276277.i.i = udiv i8 %div74276.lhs.trunc.i.i, 5
  %div74276.zext.i.i = zext i8 %div74276277.i.i to i32
  %224 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %regmap, align 4
  %neg75.i.i = shl nuw nsw i32 %div74276.zext.i.i, 6
  %and76.i.i = and i32 %neg75.i.i, 192
  %shl78.i.i = xor i32 %and76.i.i, 192
  %call.i259.i.i = call i32 @regmap_update_bits_base(ptr noundef %225, i32 noundef 11, i32 noundef 192, i32 noundef %shl78.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259.i.i)
  %cmp80.i.i = icmp slt i32 %call.i259.i.i, 0
  br i1 %cmp80.i.i, label %if.then60.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end83.thread.i.i

if.then60.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then60.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end83.i.i:                                     ; preds = %if.end58.i.i
  %226 = ptrtoint ptr %hard_hot_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %hard_hot_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %227)
  %cmp84.not.i.i = icmp eq i32 %227, -273
  br i1 %cmp84.not.i.i, label %if.end107.i.i, label %if.end83.i.i.if.then85.i.i_crit_edge

if.end83.i.i.if.then85.i.i_crit_edge:             ; preds = %if.end83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i.i

if.end83.thread.i.i:                              ; preds = %if.then60.i.i
  %228 = ptrtoint ptr %hard_hot_temp_limit.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %hard_hot_temp_limit.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -273, i32 %229)
  %cmp84.not289.i.i = icmp eq i32 %229, -273
  br i1 %cmp84.not289.i.i, label %if.end83.thread.i.i.if.then109.i.i_crit_edge, label %if.end83.thread.i.i.if.then85.i.i_crit_edge

if.end83.thread.i.i.if.then85.i.i_crit_edge:      ; preds = %if.end83.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then85.i.i

if.end83.thread.i.i.if.then109.i.i_crit_edge:     ; preds = %if.end83.thread.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109.i.i

if.then85.i.i:                                    ; preds = %if.end83.thread.i.i.if.then85.i.i_crit_edge, %if.end83.i.i.if.then85.i.i_crit_edge
  %230 = phi i32 [ %229, %if.end83.thread.i.i.if.then85.i.i_crit_edge ], [ %227, %if.end83.i.i.if.then85.i.i_crit_edge ]
  %231 = call i32 @llvm.smax.i32(i32 %230, i32 50) #7
  %232 = call i32 @llvm.umin.i32(i32 %231, i32 65) #7
  %233 = trunc i32 %232 to i8
  %div100274.lhs.trunc.i.i = add nsw i8 %233, -50
  %div100274275.i.i = udiv i8 %div100274.lhs.trunc.i.i, 5
  %div100274.zext.i.i = zext i8 %div100274275.i.i to i32
  %234 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %regmap, align 4
  %shl102.i.i = shl nuw nsw i32 %div100274.zext.i.i, 4
  %call.i260.i.i = call i32 @regmap_update_bits_base(ptr noundef %235, i32 noundef 11, i32 noundef 48, i32 noundef %shl102.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i260.i.i)
  %cmp104.i.i = icmp slt i32 %call.i260.i.i, 0
  br i1 %cmp104.i.i, label %if.then85.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then85.i.i.if.then109.i.i_crit_edge

if.then85.i.i.if.then109.i.i_crit_edge:           ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109.i.i

if.then85.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then85.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end107.i.i:                                    ; preds = %if.end83.i.i
  br i1 %enable_therm_monitor.1.off0.i.i, label %if.end107.i.i.if.then109.i.i_crit_edge, label %if.end107.i.i.if.end115.i.i_crit_edge

if.end107.i.i.if.end115.i.i_crit_edge:            ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i.i

if.end107.i.i.if.then109.i.i_crit_edge:           ; preds = %if.end107.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109.i.i

if.then109.i.i:                                   ; preds = %if.end107.i.i.if.then109.i.i_crit_edge, %if.then85.i.i.if.then109.i.i_crit_edge, %if.end83.thread.i.i.if.then109.i.i_crit_edge
  %236 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %regmap, align 4
  %call.i261.i.i = call i32 @regmap_update_bits_base(ptr noundef %237, i32 noundef 7, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i261.i.i)
  %cmp112.i.i = icmp slt i32 %call.i261.i.i, 0
  br i1 %cmp112.i.i, label %if.then109.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then109.i.i.if.end115.i.i_crit_edge

if.then109.i.i.if.end115.i.i_crit_edge:           ; preds = %if.then109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end115.i.i

if.then109.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then109.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end115.i.i:                                    ; preds = %if.then109.i.i.if.end115.i.i_crit_edge, %if.end107.i.i.if.end115.i.i_crit_edge
  %suspend_on_hard_temp_limit.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 22
  %238 = ptrtoint ptr %suspend_on_hard_temp_limit.i.i to i32
  call void @__asan_load1_noabort(i32 %238)
  %239 = load i8, ptr %suspend_on_hard_temp_limit.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %239)
  %tobool116.not.i.i = icmp eq i8 %239, 0
  br i1 %tobool116.not.i.i, label %if.end115.i.i.if.end123.i.i_crit_edge, label %if.then117.i.i

if.end115.i.i.if.end123.i.i_crit_edge:            ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i.i

if.then117.i.i:                                   ; preds = %if.end115.i.i
  %240 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %regmap, align 4
  %call.i262.i.i = call i32 @regmap_update_bits_base(ptr noundef %241, i32 noundef 8, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262.i.i)
  %cmp120.i.i = icmp slt i32 %call.i262.i.i, 0
  br i1 %cmp120.i.i, label %if.then117.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.then117.i.i.if.end123.i.i_crit_edge

if.then117.i.i.if.end123.i.i_crit_edge:           ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123.i.i

if.then117.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then117.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end123.i.i:                                    ; preds = %if.then117.i.i.if.end123.i.i_crit_edge, %if.end115.i.i.if.end123.i.i_crit_edge
  %242 = ptrtoint ptr %soft_temp_limit_compensation.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %soft_temp_limit_compensation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %243)
  %cmp124.not.i.i = icmp eq i32 %243, -1
  br i1 %cmp124.not.i.i, label %if.end123.i.i.if.end140.i.i_crit_edge, label %if.then125.i.i

if.end123.i.i.if.end140.i.i_crit_edge:            ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i.i

if.then125.i.i:                                   ; preds = %if.end123.i.i
  %and127.i.i = and i32 %243, 3
  %244 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %regmap, align 4
  %call.i263.i.i = call i32 @regmap_update_bits_base(ptr noundef %245, i32 noundef 7, i32 noundef 3, i32 noundef %and127.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i263.i.i)
  %cmp131.i.i = icmp slt i32 %call.i263.i.i, 0
  br i1 %cmp131.i.i, label %if.then125.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end133.i.i

if.then125.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then125.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end133.i.i:                                    ; preds = %if.then125.i.i
  %246 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %regmap, align 4
  %shl135.i.i = shl nuw nsw i32 %and127.i.i, 2
  %call.i264.i.i = call i32 @regmap_update_bits_base(ptr noundef %247, i32 noundef 7, i32 noundef 12, i32 noundef %shl135.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264.i.i)
  %cmp137.i.i = icmp slt i32 %call.i264.i.i, 0
  br i1 %cmp137.i.i, label %if.end133.i.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end133.i.i.if.end140.i.i_crit_edge

if.end133.i.i.if.end140.i.i_crit_edge:            ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.i.i

if.end133.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end133.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end140.i.i:                                    ; preds = %if.end133.i.i.if.end140.i.i_crit_edge, %if.end123.i.i.if.end140.i.i_crit_edge
  %248 = ptrtoint ptr %charge_current_compensation.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load i32, ptr %charge_current_compensation.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %249)
  %tobool141.not.i.i = icmp eq i32 %249, 0
  br i1 %tobool141.not.i.i, label %if.end140.i.i.if.end16.i_crit_edge, label %if.then142.i.i

if.end140.i.i.if.end16.i_crit_edge:               ; preds = %if.end140.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

if.then142.i.i:                                   ; preds = %if.end140.i.i
  %arrayidx.i139.i = getelementptr [3 x [4 x i32]], ptr @ccc_tbl, i32 0, i32 %194
  %250 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %arrayidx.i139.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %251, i32 %249)
  %cmp1.i.i140.i = icmp ugt i32 %251, %249
  br i1 %cmp1.i.i140.i, label %if.then142.i.i.smb347_hw_init.exit.thread138_crit_edge, label %for.inc.i.i143.i

if.then142.i.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then142.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

for.inc.i.i143.i:                                 ; preds = %if.then142.i.i
  %arrayidx.i.1.i141.i = getelementptr i32, ptr %arrayidx.i139.i, i32 1
  %252 = ptrtoint ptr %arrayidx.i.1.i141.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i.1.i141.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %253, i32 %249)
  %cmp1.i.1.i142.i = icmp ugt i32 %253, %249
  br i1 %cmp1.i.1.i142.i, label %for.inc.i.i143.i.current_to_hw.exit.i151.i_crit_edge, label %for.inc.i.1.i146.i

for.inc.i.i143.i.current_to_hw.exit.i151.i_crit_edge: ; preds = %for.inc.i.i143.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i151.i

for.inc.i.1.i146.i:                               ; preds = %for.inc.i.i143.i
  %arrayidx.i.2.i144.i = getelementptr i32, ptr %arrayidx.i139.i, i32 2
  %254 = ptrtoint ptr %arrayidx.i.2.i144.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %arrayidx.i.2.i144.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %249)
  %cmp1.i.2.i145.i = icmp ugt i32 %255, %249
  br i1 %cmp1.i.2.i145.i, label %for.inc.i.1.i146.i.current_to_hw.exit.i151.i_crit_edge, label %for.inc.i.2.i149.i

for.inc.i.1.i146.i.current_to_hw.exit.i151.i_crit_edge: ; preds = %for.inc.i.1.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i151.i

for.inc.i.2.i149.i:                               ; preds = %for.inc.i.1.i146.i
  %arrayidx.i.3.i147.i = getelementptr i32, ptr %arrayidx.i139.i, i32 3
  %256 = ptrtoint ptr %arrayidx.i.3.i147.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %arrayidx.i.3.i147.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %257, i32 %249)
  %cmp1.i.3.i148.i = icmp ugt i32 %257, %249
  br i1 %cmp1.i.3.i148.i, label %for.inc.i.2.i149.i.current_to_hw.exit.i151.i_crit_edge, label %for.inc.i.2.i149.i.smb347_set_temp_limits.exit.i_crit_edge

for.inc.i.2.i149.i.smb347_set_temp_limits.exit.i_crit_edge: ; preds = %for.inc.i.2.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_set_temp_limits.exit.i

for.inc.i.2.i149.i.current_to_hw.exit.i151.i_crit_edge: ; preds = %for.inc.i.2.i149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %current_to_hw.exit.i151.i

current_to_hw.exit.i151.i:                        ; preds = %for.inc.i.2.i149.i.current_to_hw.exit.i151.i_crit_edge, %for.inc.i.1.i146.i.current_to_hw.exit.i151.i_crit_edge, %for.inc.i.i143.i.current_to_hw.exit.i151.i_crit_edge
  %i.08.i.lcssa.ph.i150.i = phi i32 [ 128, %for.inc.i.2.i149.i.current_to_hw.exit.i151.i_crit_edge ], [ 64, %for.inc.i.1.i146.i.current_to_hw.exit.i151.i_crit_edge ], [ 0, %for.inc.i.i143.i.current_to_hw.exit.i151.i_crit_edge ]
  br label %smb347_set_temp_limits.exit.i

smb347_set_temp_limits.exit.i:                    ; preds = %current_to_hw.exit.i151.i, %for.inc.i.2.i149.i.smb347_set_temp_limits.exit.i_crit_edge
  %258 = phi i32 [ %i.08.i.lcssa.ph.i150.i, %current_to_hw.exit.i151.i ], [ 192, %for.inc.i.2.i149.i.smb347_set_temp_limits.exit.i_crit_edge ]
  %259 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regmap, align 4
  %shl150.i.i = and i32 %258, 192
  %call.i265.i.i = call i32 @regmap_update_bits_base(ptr noundef %260, i32 noundef 10, i32 noundef 192, i32 noundef %shl150.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i265.i.i)
  %cmp14.i = icmp slt i32 %call.i265.i.i, 0
  br i1 %cmp14.i, label %smb347_set_temp_limits.exit.i.smb347_hw_init.exit.thread138_crit_edge, label %smb347_set_temp_limits.exit.i.if.end16.i_crit_edge

smb347_set_temp_limits.exit.i.if.end16.i_crit_edge: ; preds = %smb347_set_temp_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

smb347_set_temp_limits.exit.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %smb347_set_temp_limits.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end16.i:                                       ; preds = %smb347_set_temp_limits.exit.i.if.end16.i_crit_edge, %if.end140.i.i.if.end16.i_crit_edge
  %261 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %use_usb.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %262)
  %tobool.not.i117 = icmp eq i8 %262, 0
  br i1 %tobool.not.i117, label %if.then17.i119, label %if.end16.i.if.end22.i_crit_edge

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then17.i119:                                   ; preds = %if.end16.i
  %263 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regmap, align 4
  %call.i.i118 = call i32 @regmap_update_bits_base(ptr noundef %264, i32 noundef 48, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i118)
  %cmp19.i = icmp slt i32 %call.i.i118, 0
  br i1 %cmp19.i, label %if.then17.i119.smb347_hw_init.exit.thread138_crit_edge, label %if.then17.i119.if.end22.i_crit_edge

if.then17.i119.if.end22.i_crit_edge:              ; preds = %if.then17.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then17.i119.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.then17.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end22.i:                                       ; preds = %if.then17.i119.if.end22.i_crit_edge, %if.end16.i.if.end22.i_crit_edge
  %265 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap, align 4
  %267 = ptrtoint ptr %use_usb_otg.i to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %use_usb_otg.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %268)
  %tobool24.not.i = icmp eq i8 %268, 0
  %cond.i = select i1 %tobool24.not.i, i32 0, i32 192
  %call.i153.i = call i32 @regmap_update_bits_base(ptr noundef %266, i32 noundef 9, i32 noundef 192, i32 noundef %cond.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %cmp26.i = icmp slt i32 %call.i153.i, 0
  br i1 %cmp26.i, label %if.end22.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end28.i

if.end22.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end28.i:                                       ; preds = %if.end22.i
  %269 = ptrtoint ptr %enable_control.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %enable_control.i, align 4
  %.off.i = add i32 %270, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end28.i.sw.epilog.i_crit_edge

if.end28.i.sw.epilog.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end28.i
  %271 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regmap, align 4
  %call.i154.i = call i32 @regmap_update_bits_base(ptr noundef %272, i32 noundef 6, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i)
  %cmp31.i = icmp slt i32 %call.i154.i, 0
  br i1 %cmp31.i, label %sw.bb.i.smb347_hw_init.exit.thread138_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb.i.smb347_hw_init.exit.thread138_crit_edge:  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %if.end28.i.sw.epilog.i_crit_edge
  %273 = ptrtoint ptr %enable_control.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %enable_control.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %274)
  %switch.selectcmp.i = icmp eq i32 %274, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 64, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %274)
  %switch.selectcmp83.i = icmp eq i32 %274, 1
  %switch.select84.i = select i1 %switch.selectcmp83.i, i32 96, i32 %switch.select.i
  %275 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %regmap, align 4
  %call.i155.i = call i32 @regmap_update_bits_base(ptr noundef %276, i32 noundef 6, i32 noundef 96, i32 noundef %switch.select84.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i155.i)
  %cmp40.i = icmp slt i32 %call.i155.i, 0
  br i1 %cmp40.i, label %sw.epilog.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end42.i

sw.epilog.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end42.i:                                       ; preds = %sw.epilog.i
  %277 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %regmap, align 4
  %call.i156.i = call i32 @regmap_update_bits_base(ptr noundef %278, i32 noundef 6, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156.i)
  %cmp45.i = icmp slt i32 %call.i156.i, 0
  br i1 %cmp45.i, label %if.end42.i.smb347_hw_init.exit.thread138_crit_edge, label %if.end47.i

if.end42.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

if.end47.i:                                       ; preds = %if.end42.i
  %call48.i = call fastcc i32 @smb347_update_ps_status(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48.i)
  %cmp49.i = icmp slt i32 %call48.i, 0
  br i1 %cmp49.i, label %if.end47.i.smb347_hw_init.exit.thread138_crit_edge, label %smb347_hw_init.exit

if.end47.i.smb347_hw_init.exit.thread138_crit_edge: ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_hw_init.exit.thread138

smb347_hw_init.exit.thread138:                    ; preds = %if.end47.i.smb347_hw_init.exit.thread138_crit_edge, %if.end42.i.smb347_hw_init.exit.thread138_crit_edge, %sw.epilog.i.smb347_hw_init.exit.thread138_crit_edge, %sw.bb.i.smb347_hw_init.exit.thread138_crit_edge, %if.end22.i.smb347_hw_init.exit.thread138_crit_edge, %if.then17.i119.smb347_hw_init.exit.thread138_crit_edge, %smb347_set_temp_limits.exit.i.smb347_hw_init.exit.thread138_crit_edge, %if.then142.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.end133.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then125.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then117.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then109.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then85.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then60.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then36.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then13.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then.i137.i.smb347_hw_init.exit.thread138_crit_edge, %if.then12.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then.i129.i.smb347_hw_init.exit.thread138_crit_edge, %if.end17.i124.i.smb347_hw_init.exit.thread138_crit_edge, %if.then10.i122.i.smb347_hw_init.exit.thread138_crit_edge, %if.end.i118.i.smb347_hw_init.exit.thread138_crit_edge, %if.then.i91.i.smb347_hw_init.exit.thread138_crit_edge, %if.end33.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then26.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.end17.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then10.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.end.i.i.smb347_hw_init.exit.thread138_crit_edge, %if.then.i.i.smb347_hw_init.exit.thread138_crit_edge
  %ret.0.i.ph = phi i32 [ %call.i.i136.i, %if.then.i137.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i257.i.i, %if.then13.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i258.i.i, %if.then36.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i259.i.i, %if.then60.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i260.i.i, %if.then85.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i261.i.i, %if.then109.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i262.i.i, %if.then117.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i263.i.i, %if.then125.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i264.i.i, %if.end133.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then142.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i.i128.i, %if.then.i129.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i58.i.i, %if.then12.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i.i116.i, %if.end.i118.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i55.i.i, %if.end17.i124.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then.i91.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then10.i122.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i.i86.i, %if.end.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i81.i.i, %if.end17.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i95.i.i, %if.end33.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then10.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ -22, %if.then26.i.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i.i118, %if.then17.i119.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i154.i, %sw.bb.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call48.i, %if.end47.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i156.i, %if.end42.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i155.i, %sw.epilog.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i153.i, %if.end22.i.smb347_hw_init.exit.thread138_crit_edge ], [ %call.i265.i.i, %smb347_set_temp_limits.exit.i.smb347_hw_init.exit.thread138_crit_edge ]
  %279 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %regmap, align 4
  %call.i.i158.i140 = call i32 @regmap_update_bits_base(ptr noundef %280, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

smb347_hw_init.exit:                              ; preds = %if.end47.i
  %call52.i = call fastcc i32 @smb347_start_stop_charging(ptr noundef nonnull %call.i) #7
  %281 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %regmap, align 4
  %call.i.i158.i = call i32 @regmap_update_bits_base(ptr noundef %282, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %cmp = icmp slt i32 %call52.i, 0
  br i1 %cmp, label %smb347_hw_init.exit.cleanup_crit_edge, label %if.end45

smb347_hw_init.exit.cleanup_crit_edge:            ; preds = %smb347_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end45:                                         ; preds = %smb347_hw_init.exit
  %irq_unsupported.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 8
  %283 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_store1_noabort(i32 %283)
  store i8 1, ptr %irq_unsupported.i, align 2
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %284 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool.not.i123 = icmp eq i32 %285, 0
  br i1 %tobool.not.i123, label %if.end45.if.end49_crit_edge, label %if.end.i127

if.end45.if.end49_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end.i127:                                      ; preds = %if.end45
  %286 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %regmap, align 4
  %call.i.i.i125 = call i32 @regmap_update_bits_base(ptr noundef %287, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i125)
  %cmp.i126 = icmp slt i32 %call.i.i.i125, 0
  br i1 %cmp.i126, label %if.end.i127.cleanup_crit_edge, label %if.end2.i

if.end.i127.cleanup_crit_edge:                    ; preds = %if.end.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2.i:                                        ; preds = %if.end.i127
  %288 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regmap, align 4
  %call.i.i128 = call i32 @regmap_update_bits_base(ptr noundef %289, i32 noundef 5, i32 noundef 160, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %290 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %regmap, align 4
  %call.i.i42.i = call i32 @regmap_update_bits_base(ptr noundef %291, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i128)
  %cmp5.i = icmp slt i32 %call.i.i128, 0
  %292 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %call.i, align 4
  br i1 %cmp5.i, label %do.end.i, label %if.end11.i129

do.end.i:                                         ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %293, ptr noundef nonnull @.str.27, i32 noundef %call.i.i128) #10
  %294 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %295, ptr noundef nonnull @.str.31) #10
  br label %if.end49

if.end11.i129:                                    ; preds = %if.end2.i
  %296 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %irq.i, align 4
  %name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call14.i = call i32 @devm_request_threaded_irq(ptr noundef %293, i32 noundef %297, ptr noundef null, ptr noundef nonnull @smb347_interrupt, i32 noundef 8192, ptr noundef %name.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %smb347_irq_init.exit, label %if.end11.i129.cleanup_crit_edge

if.end11.i129.cleanup_crit_edge:                  ; preds = %if.end11.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

smb347_irq_init.exit:                             ; preds = %if.end11.i129
  %298 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_store1_noabort(i32 %298)
  store i8 0, ptr %irq_unsupported.i, align 2
  %call.i44.i130 = call fastcc i32 @smb347_irq_set(ptr noundef nonnull %call.i, i1 noundef zeroext true) #7
  %299 = call i32 @llvm.smin.i32(i32 %call.i44.i130, i32 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i44.i130)
  %tobool47.not = icmp sgt i32 %call.i44.i130, -1
  br i1 %tobool47.not, label %smb347_irq_init.exit.if.end49_crit_edge, label %smb347_irq_init.exit.cleanup_crit_edge

smb347_irq_init.exit.cleanup_crit_edge:           ; preds = %smb347_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

smb347_irq_init.exit.if.end49_crit_edge:          ; preds = %smb347_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.end49:                                         ; preds = %smb347_irq_init.exit.if.end49_crit_edge, %do.end.i, %if.end45.if.end49_crit_edge
  %300 = ptrtoint ptr %usb_rdev_cfg to i32
  call void @__asan_store4_noabort(i32 %300)
  store ptr %dev1, ptr %usb_rdev_cfg, align 4
  %driver_data51 = getelementptr inbounds %struct.regulator_config, ptr %usb_rdev_cfg, i32 0, i32 2
  %301 = ptrtoint ptr %driver_data51 to i32
  call void @__asan_store4_noabort(i32 %301)
  store ptr %call.i, ptr %driver_data51, align 4
  %302 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %regmap, align 4
  %regmap53 = getelementptr inbounds %struct.regulator_config, ptr %usb_rdev_cfg, i32 0, i32 4
  %304 = ptrtoint ptr %regmap53 to i32
  call void @__asan_store4_noabort(i32 %304)
  store ptr %303, ptr %regmap53, align 4
  %call54 = call ptr @devm_regulator_register(ptr noundef %dev1, ptr noundef nonnull @smb347_usb_vbus_regulator_desc, ptr noundef nonnull %usb_rdev_cfg) #7
  %usb_rdev = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 4
  %305 = ptrtoint ptr %usb_rdev to i32
  call void @__asan_store4_noabort(i32 %305)
  store ptr %call54, ptr %usb_rdev, align 4
  %cmp.i132 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i132, label %if.then57, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then57:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %call.i133 = call fastcc i32 @smb347_irq_set(ptr noundef nonnull %call.i, i1 noundef zeroext false) #7
  %306 = ptrtoint ptr %usb_rdev to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %usb_rdev, align 4
  %308 = ptrtoint ptr %307 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.then57, %if.end49.cleanup_crit_edge, %smb347_irq_init.exit.cleanup_crit_edge, %if.end11.i129.cleanup_crit_edge, %if.end.i127.cleanup_crit_edge, %smb347_hw_init.exit.cleanup_crit_edge, %smb347_hw_init.exit.thread138, %if.end42.cleanup_crit_edge, %smb347_get_battery_info.exit, %if.then34, %if.then23, %if.then12, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %20, %if.then12 ], [ %28, %if.then23 ], [ %32, %if.then34 ], [ %308, %if.then57 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ %call.i109, %smb347_get_battery_info.exit ], [ %call52.i, %smb347_hw_init.exit.cleanup_crit_edge ], [ %299, %smb347_irq_init.exit.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %ret.0.i.ph, %smb347_hw_init.exit.thread138 ], [ %call.i.i.i, %if.end42.cleanup_crit_edge ], [ %call14.i, %if.end11.i129.cleanup_crit_edge ], [ %call.i.i.i125, %if.end.i127.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %usb_rdev_cfg) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %mains_usb_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_rdev = getelementptr inbounds %struct.smb347_charger, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_rdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_rdev, align 4
  %call1 = tail call i32 @smb347_usb_vbus_regulator_disable(ptr noundef %3)
  %call.i = tail call fastcc i32 @smb347_irq_set(ptr noundef %1, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smb347_shutdown(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %usb_rdev.i = getelementptr inbounds %struct.smb347_charger, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %usb_rdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_rdev.i, align 4
  %call1.i = tail call i32 @smb347_usb_vbus_regulator_disable(ptr noundef %3) #7
  %call.i.i = tail call fastcc i32 @smb347_irq_set(ptr noundef %1, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @smb347_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %reg, label %sw.epilog.i [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 5, label %entry.return_crit_edge4
    i32 6, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 8, label %entry.return_crit_edge7
    i32 9, label %entry.return_crit_edge8
    i32 10, label %entry.return_crit_edge9
    i32 11, label %entry.return_crit_edge10
    i32 12, label %entry.return_crit_edge11
    i32 13, label %entry.return_crit_edge12
    i32 14, label %entry.return_crit_edge13
    i32 48, label %entry.return_crit_edge14
    i32 49, label %entry.return_crit_edge15
    i32 51, label %entry.return_crit_edge16
    i32 53, label %entry.return_crit_edge17
    i32 55, label %entry.return_crit_edge18
    i32 56, label %entry.return_crit_edge19
    i32 57, label %entry.return_crit_edge20
    i32 58, label %entry.return_crit_edge21
    i32 59, label %entry.return_crit_edge22
    i32 60, label %entry.return_crit_edge23
    i32 61, label %entry.return_crit_edge24
    i32 63, label %entry.return_crit_edge25
  ]

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.epilog.i, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25
  %retval.0 = phi i1 [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ false, %sw.epilog.i ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @smb347_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -53
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 11
  %switch.cast = trunc i32 %switch.tableidx to i11
  %switch.downshift = lshr i11 -515, %switch.cast
  %1 = and i11 %switch.downshift, 1
  %2 = sext i11 %1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %switch.masked = icmp ne i11 %1, 0
  %retval.0 = select i1 %0, i1 %switch.masked, i1 false
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_get_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %v.i82.i = alloca i32, align 4
  %v.i.i = alloca i32, align 4
  %val.i66.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_unsupported = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %irq_unsupported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_unsupported, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr i8, ptr %1, i32 932
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %6 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %prop, label %if.end.smb347_get_property_locked.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 4, label %sw.bb14.i
    i32 31, label %sw.bb26.i
    i32 29, label %sw.bb32.i
  ]

if.end.smb347_get_property_locked.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_get_property_locked.exit

sw.bb.i:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %7 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val.i.i, align 4, !annotation !183
  %8 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %psy, align 8
  %type.i.i = getelementptr inbounds %struct.power_supply_desc, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i.i = icmp eq i32 %11, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  %usb_online.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %usb_online.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %usb_online.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.if.end.i_crit_edge, label %if.then.i.i.if.end5.i.i_crit_edge

if.then.i.i.if.end5.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.then.i.i.if.end.i_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else.i.i:                                      ; preds = %sw.bb.i
  %mains_online.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %mains_online.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %mains_online.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool2.not.i.i = icmp eq i8 %15, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end.i_crit_edge, label %if.else.i.i.if.end5.i.i_crit_edge

if.else.i.i.if.end5.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i.i

if.else.i.i.if.end.i_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end5.i.i:                                      ; preds = %if.else.i.i.if.end5.i.i_crit_edge, %if.then.i.i.if.end5.i.i_crit_edge
  %regmap.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %17, i32 noundef 61, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp6.i.i, label %smb347_get_charging_status.exit.i, label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.end5.i.i
  %18 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val.i.i, align 4
  %20 = and i32 %19, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %if.else13.i.i, label %if.end8.i.i.if.end.i_crit_edge

if.end8.i.i.if.end.i_crit_edge:                   ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else13.i.i:                                    ; preds = %if.end8.i.i
  %22 = and i32 %19, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool15.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool15.not.i.i, label %if.else17.i.i, label %if.else13.i.i.if.end.i_crit_edge

if.else13.i.i.if.end.i_crit_edge:                 ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.else17.i.i:                                    ; preds = %if.else13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and18.i.i = and i32 %19, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  %..i.i = select i1 %tobool19.not.i.i, i32 3, i32 4
  br label %if.end.i

smb347_get_charging_status.exit.i:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %smb347_get_property_locked.exit

if.end.i:                                         ; preds = %if.else17.i.i, %if.else13.i.i.if.end.i_crit_edge, %if.end8.i.i.if.end.i_crit_edge, %if.else.i.i.if.end.i_crit_edge, %if.then.i.i.if.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %..i.i, %if.else17.i.i ], [ 1, %if.else13.i.i.if.end.i_crit_edge ], [ 3, %if.end8.i.i.if.end.i_crit_edge ], [ 2, %if.else.i.i.if.end.i_crit_edge ], [ 2, %if.then.i.i.if.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.ph.i, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.bb2.i:                                         ; preds = %if.end
  %24 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %psy, align 8
  %type.i = getelementptr inbounds %struct.power_supply_desc, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %27)
  %cmp3.i = icmp eq i32 %27, 4
  br i1 %cmp3.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %sw.bb2.i
  %usb_online.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %usb_online.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %usb_online.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %if.then4.i.smb347_get_property_locked.exit_crit_edge, label %if.then4.i.if.end10.i_crit_edge

if.then4.i.if.end10.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then4.i.smb347_get_property_locked.exit_crit_edge: ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_get_property_locked.exit

if.else.i:                                        ; preds = %sw.bb2.i
  %mains_online.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %30 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %mains_online.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i = icmp eq i8 %31, 0
  br i1 %tobool7.not.i, label %if.else.i.smb347_get_property_locked.exit_crit_edge, label %if.else.i.if.end10.i_crit_edge

if.else.i.if.end10.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.else.i.smb347_get_property_locked.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_get_property_locked.exit

if.end10.i:                                       ; preds = %if.else.i.if.end10.i_crit_edge, %if.then4.i.if.end10.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i66.i) #7
  %32 = ptrtoint ptr %val.i66.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %val.i66.i, align 4, !annotation !183
  %usb_online.i.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %usb_online.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %usb_online.i.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i = icmp eq i8 %34, 0
  br i1 %tobool.not.i.i.i, label %smb347_is_ps_online.exit.i.i, label %if.end10.i.if.end.i.i_crit_edge

if.end10.i.if.end.i.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

smb347_is_ps_online.exit.i.i:                     ; preds = %if.end10.i
  %mains_online.i.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %35 = ptrtoint ptr %mains_online.i.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %mains_online.i.i.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.i.not.i.i = icmp eq i8 %36, 0
  br i1 %tobool1.i.not.i.i, label %smb347_is_ps_online.exit.i.i.smb347_charging_status.exit.thread.i_crit_edge, label %smb347_is_ps_online.exit.i.i.if.end.i.i_crit_edge

smb347_is_ps_online.exit.i.i.if.end.i.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

smb347_is_ps_online.exit.i.i.smb347_charging_status.exit.thread.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_charging_status.exit.thread.i

if.end.i.i:                                       ; preds = %smb347_is_ps_online.exit.i.i.if.end.i.i_crit_edge, %if.end10.i.if.end.i.i_crit_edge
  %regmap.i67.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 1
  %37 = ptrtoint ptr %regmap.i67.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i67.i, align 4
  %call1.i.i = call i32 @regmap_read(ptr noundef %38, i32 noundef 61, ptr noundef nonnull %val.i66.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i68.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i68.i, label %if.end.i.i.smb347_charging_status.exit.thread.i_crit_edge, label %smb347_charging_status.exit.i

if.end.i.i.smb347_charging_status.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_charging_status.exit.thread.i

smb347_charging_status.exit.thread.i:             ; preds = %if.end.i.i.smb347_charging_status.exit.thread.i_crit_edge, %smb347_is_ps_online.exit.i.i.smb347_charging_status.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i66.i) #7
  br label %sw.default.i

smb347_charging_status.exit.i:                    ; preds = %if.end.i.i
  %39 = ptrtoint ptr %val.i66.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val.i66.i, align 4
  %and.i.i = lshr i32 %40, 1
  %shr.i.i = and i32 %and.i.i, 3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i66.i) #7
  %41 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %shr.i.i, label %smb347_charging_status.exit.i.sw.default.i_crit_edge [
    i32 1, label %sw.bb12.i
    i32 2, label %sw.bb13.i
  ]

smb347_charging_status.exit.i.sw.default.i_crit_edge: ; preds = %smb347_charging_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.default.i

sw.bb12.i:                                        ; preds = %smb347_charging_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.bb13.i:                                        ; preds = %smb347_charging_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 3, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.default.i:                                     ; preds = %smb347_charging_status.exit.i.sw.default.i_crit_edge, %smb347_charging_status.exit.thread.i
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.bb14.i:                                        ; preds = %if.end
  %45 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %psy, align 8
  %type16.i = getelementptr inbounds %struct.power_supply_desc, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %type16.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp17.i = icmp eq i32 %48, 4
  br i1 %cmp17.i, label %if.then18.i, label %if.else21.i

if.then18.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  %usb_online19.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %49 = ptrtoint ptr %usb_online19.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %usb_online19.i, align 1, !range !182
  %51 = zext i8 %50 to i32
  %52 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %val, align 4
  br label %smb347_get_property_locked.exit

if.else21.i:                                      ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #9
  %mains_online22.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %53 = ptrtoint ptr %mains_online22.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %mains_online22.i, align 4, !range !182
  %55 = zext i8 %54 to i32
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.bb26.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i.i) #7
  %57 = ptrtoint ptr %v.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -1, ptr %v.i.i, align 4, !annotation !183
  %usb_online.i.i70.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %58 = ptrtoint ptr %usb_online.i.i70.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %usb_online.i.i70.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i71.i = icmp eq i8 %59, 0
  br i1 %tobool.not.i.i71.i, label %smb347_is_ps_online.exit.i74.i, label %sw.bb26.i.if.end.i78.i_crit_edge

sw.bb26.i.if.end.i78.i_crit_edge:                 ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i78.i

smb347_is_ps_online.exit.i74.i:                   ; preds = %sw.bb26.i
  %mains_online.i.i72.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %60 = ptrtoint ptr %mains_online.i.i72.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %mains_online.i.i72.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool1.i.not.i73.i = icmp eq i8 %61, 0
  br i1 %tobool1.i.not.i73.i, label %smb347_is_ps_online.exit.i74.i.get_const_charge_voltage.exit.thread.i_crit_edge, label %smb347_is_ps_online.exit.i74.i.if.end.i78.i_crit_edge

smb347_is_ps_online.exit.i74.i.if.end.i78.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i78.i

smb347_is_ps_online.exit.i74.i.get_const_charge_voltage.exit.thread.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i74.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_const_charge_voltage.exit.thread.i

if.end.i78.i:                                     ; preds = %smb347_is_ps_online.exit.i74.i.if.end.i78.i_crit_edge, %sw.bb26.i.if.end.i78.i_crit_edge
  %regmap.i75.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 1
  %62 = ptrtoint ptr %regmap.i75.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i75.i, align 4
  %call1.i76.i = call i32 @regmap_read(ptr noundef %63, i32 noundef 59, ptr noundef nonnull %v.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i76.i)
  %cmp.i77.i = icmp slt i32 %call1.i76.i, 0
  br i1 %cmp.i77.i, label %if.end.i78.i.get_const_charge_voltage.exit.thread.i_crit_edge, label %get_const_charge_voltage.exit.i

if.end.i78.i.get_const_charge_voltage.exit.thread.i_crit_edge: ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_const_charge_voltage.exit.thread.i

get_const_charge_voltage.exit.thread.i:           ; preds = %if.end.i78.i.get_const_charge_voltage.exit.thread.i_crit_edge, %smb347_is_ps_online.exit.i74.i.get_const_charge_voltage.exit.thread.i_crit_edge
  %retval.0.i81.ph.i = phi i32 [ %call1.i76.i, %if.end.i78.i.get_const_charge_voltage.exit.thread.i_crit_edge ], [ -61, %smb347_is_ps_online.exit.i74.i.get_const_charge_voltage.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #7
  br label %smb347_get_property_locked.exit

get_const_charge_voltage.exit.i:                  ; preds = %if.end.i78.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %v.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %v.i.i, align 4
  %and.i79.i = and i32 %65, 63
  %66 = call i32 @llvm.umin.i32(i32 %and.i79.i, i32 61) #7
  %mul.i.i = mul nuw nsw i32 %66, 20000
  %add.i.i = add nuw nsw i32 %mul.i.i, 3500000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i.i) #7
  %67 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add.i.i, ptr %val, align 4
  br label %smb347_get_property_locked.exit

sw.bb32.i:                                        ; preds = %if.end
  %id1.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 5
  %68 = ptrtoint ptr %id1.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i82.i) #7
  %70 = ptrtoint ptr %v.i82.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %v.i82.i, align 4, !annotation !183
  %usb_online.i.i83.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 7
  %71 = ptrtoint ptr %usb_online.i.i83.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %usb_online.i.i83.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i84.i = icmp eq i8 %72, 0
  br i1 %tobool.not.i.i84.i, label %smb347_is_ps_online.exit.i87.i, label %sw.bb32.i.if.end.i90.i_crit_edge

sw.bb32.i.if.end.i90.i_crit_edge:                 ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i90.i

smb347_is_ps_online.exit.i87.i:                   ; preds = %sw.bb32.i
  %mains_online.i.i85.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 6
  %73 = ptrtoint ptr %mains_online.i.i85.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mains_online.i.i85.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool1.i.not.i86.i = icmp eq i8 %74, 0
  br i1 %tobool1.i.not.i86.i, label %smb347_is_ps_online.exit.i87.i.get_const_charge_current.exit.thread.i_crit_edge, label %smb347_is_ps_online.exit.i87.i.if.end.i90.i_crit_edge

smb347_is_ps_online.exit.i87.i.if.end.i90.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i90.i

smb347_is_ps_online.exit.i87.i.get_const_charge_current.exit.thread.i_crit_edge: ; preds = %smb347_is_ps_online.exit.i87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_const_charge_current.exit.thread.i

if.end.i90.i:                                     ; preds = %smb347_is_ps_online.exit.i87.i.if.end.i90.i_crit_edge, %sw.bb32.i.if.end.i90.i_crit_edge
  %regmap.i88.i = getelementptr inbounds %struct.smb347_charger, ptr %call.i, i32 0, i32 1
  %75 = ptrtoint ptr %regmap.i88.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i88.i, align 4
  %call2.i.i = call i32 @regmap_read(ptr noundef %76, i32 noundef 60, ptr noundef nonnull %v.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i89.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i89.i, label %if.end.i90.i.get_const_charge_current.exit.thread.i_crit_edge, label %if.end4.i.i

if.end.i90.i.get_const_charge_current.exit.thread.i_crit_edge: ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_const_charge_current.exit.thread.i

if.end4.i.i:                                      ; preds = %if.end.i90.i
  %77 = ptrtoint ptr %v.i82.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %v.i82.i, align 4
  %and.i91.i = and i32 %78, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i91.i)
  %tobool.not.i92.i = icmp eq i32 %and.i91.i, 0
  br i1 %tobool.not.i92.i, label %if.else.i94.i, label %if.then5.i.i

if.then5.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr [3 x [8 x i32]], ptr @fcc_tbl, i32 0, i32 %69
  %and6.i.i = and i32 %78, 7
  %arrayidx.i.i.i = getelementptr i32, ptr %arrayidx.i.i, i32 %and6.i.i
  br label %get_const_charge_current.exit.i

if.else.i94.i:                                    ; preds = %if.end4.i.i
  %shr.i93.i = lshr i32 %78, 3
  %and10.i.i = and i32 %shr.i93.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and10.i.i)
  %cmp.not.i.i.i = icmp ult i32 %and10.i.i, 4
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %if.else.i94.i.get_const_charge_current.exit.thread.i_crit_edge

if.else.i94.i.get_const_charge_current.exit.thread.i_crit_edge: ; preds = %if.else.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_const_charge_current.exit.thread.i

if.end.i.i.i:                                     ; preds = %if.else.i94.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx8.i.i = getelementptr [3 x [4 x i32]], ptr @pcc_tbl, i32 0, i32 %69
  %arrayidx.i20.i.i = getelementptr i32, ptr %arrayidx8.i.i, i32 %and10.i.i
  br label %get_const_charge_current.exit.i

get_const_charge_current.exit.thread.i:           ; preds = %if.else.i94.i.get_const_charge_current.exit.thread.i_crit_edge, %if.end.i90.i.get_const_charge_current.exit.thread.i_crit_edge, %smb347_is_ps_online.exit.i87.i.get_const_charge_current.exit.thread.i_crit_edge
  %retval.0.i95.ph.i = phi i32 [ -22, %if.else.i94.i.get_const_charge_current.exit.thread.i_crit_edge ], [ %call2.i.i, %if.end.i90.i.get_const_charge_current.exit.thread.i_crit_edge ], [ -61, %smb347_is_ps_online.exit.i87.i.get_const_charge_current.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i82.i) #7
  br label %smb347_get_property_locked.exit

get_const_charge_current.exit.i:                  ; preds = %if.end.i.i.i, %if.then5.i.i
  %arrayidx.i20.sink.i.i = phi ptr [ %arrayidx.i20.i.i, %if.end.i.i.i ], [ %arrayidx.i.i.i, %if.then5.i.i ]
  %79 = ptrtoint ptr %arrayidx.i20.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i20.sink.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i82.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp34.i = icmp slt i32 %80, 0
  br i1 %cmp34.i, label %get_const_charge_current.exit.i.smb347_get_property_locked.exit_crit_edge, label %if.end37.i

get_const_charge_current.exit.i.smb347_get_property_locked.exit_crit_edge: ; preds = %get_const_charge_current.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_get_property_locked.exit

if.end37.i:                                       ; preds = %get_const_charge_current.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %val, align 4
  br label %smb347_get_property_locked.exit

smb347_get_property_locked.exit:                  ; preds = %if.end37.i, %get_const_charge_current.exit.i.smb347_get_property_locked.exit_crit_edge, %get_const_charge_current.exit.thread.i, %get_const_charge_voltage.exit.i, %get_const_charge_voltage.exit.thread.i, %if.else21.i, %if.then18.i, %sw.default.i, %sw.bb13.i, %sw.bb12.i, %if.else.i.smb347_get_property_locked.exit_crit_edge, %if.then4.i.smb347_get_property_locked.exit_crit_edge, %if.end.i, %smb347_get_charging_status.exit.i, %if.end.smb347_get_property_locked.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i.i, %smb347_get_charging_status.exit.i ], [ -61, %if.then4.i.smb347_get_property_locked.exit_crit_edge ], [ -61, %if.else.i.smb347_get_property_locked.exit_crit_edge ], [ %80, %get_const_charge_current.exit.i.smb347_get_property_locked.exit_crit_edge ], [ -22, %if.end.smb347_get_property_locked.exit_crit_edge ], [ 0, %if.then18.i ], [ 0, %if.else21.i ], [ 0, %sw.bb12.i ], [ 0, %sw.bb13.i ], [ 0, %sw.default.i ], [ 0, %if.end37.i ], [ 0, %get_const_charge_voltage.exit.i ], [ 0, %if.end.i ], [ %retval.0.i81.ph.i, %get_const_charge_voltage.exit.thread.i ], [ %retval.0.i95.ph.i, %get_const_charge_current.exit.thread.i ]
  %82 = ptrtoint ptr %irq_unsupported to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %irq_unsupported, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool3.not = icmp eq i8 %83, 0
  br i1 %tobool3.not, label %if.then4, label %smb347_get_property_locked.exit.if.end6_crit_edge

smb347_get_property_locked.exit.if.end6_crit_edge: ; preds = %smb347_get_property_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then4:                                         ; preds = %smb347_get_property_locked.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq5 = getelementptr i8, ptr %1, i32 932
  %84 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %irq5, align 4
  call void @enable_irq(i32 noundef %85) #7
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %smb347_get_property_locked.exit.if.end6_crit_edge
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb347_update_ps_status(ptr nocapture noundef %smb) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 57, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %use_mains = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 25
  %3 = ptrtoint ptr %use_mains to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %use_mains, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %and = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br label %if.end3

if.end3:                                          ; preds = %if.then1, %if.end.if.end3_crit_edge
  %dc.0.off0 = phi i1 [ %tobool2.not, %if.then1 ], [ false, %if.end.if.end3_crit_edge ]
  %use_usb = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 26
  %7 = ptrtoint ptr %use_usb to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %use_usb, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %if.end3.if.end10_crit_edge, label %if.then5

if.end3.if.end10_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %and6 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end3.if.end10_crit_edge
  %usb.0.off0 = phi i1 [ %tobool7.not, %if.then5 ], [ false, %if.end3.if.end10_crit_edge ]
  %mains_online = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 6
  %11 = ptrtoint ptr %mains_online to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %mains_online, align 4, !range !182
  %13 = zext i1 %dc.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %13)
  %cmp14.not = icmp eq i8 %12, %13
  br i1 %cmp14.not, label %lor.rhs, label %if.end10.lor.end_crit_edge

if.end10.lor.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i1 %usb.0.off0 to i8
  br label %lor.end

lor.rhs:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %usb_online = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 7
  %14 = ptrtoint ptr %usb_online to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %usb_online, align 1, !range !182
  %16 = zext i1 %usb.0.off0 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %16)
  %cmp20 = icmp ne i8 %15, %16
  %phi.cast = zext i1 %cmp20 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end10.lor.end_crit_edge
  %frombool27.pre-phi = phi i8 [ %.pre, %if.end10.lor.end_crit_edge ], [ %16, %lor.rhs ]
  %17 = phi i32 [ 1, %if.end10.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %18 = ptrtoint ptr %mains_online to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %13, ptr %mains_online, align 4
  %usb_online26 = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 7
  %19 = ptrtoint ptr %usb_online26 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool27.pre-phi, ptr %usb_online26, align 1
  br label %cleanup

cleanup:                                          ; preds = %lor.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %lor.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb347_start_stop_charging(ptr nocapture noundef readonly %smb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_online.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 7
  %0 = ptrtoint ptr %usb_online.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %usb_online.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %smb347_is_ps_online.exit, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

smb347_is_ps_online.exit:                         ; preds = %entry
  %mains_online.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 6
  %2 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mains_online.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.i.not = icmp eq i8 %3, 0
  br i1 %tobool1.i.not, label %if.else, label %smb347_is_ps_online.exit.if.then_crit_edge

smb347_is_ps_online.exit.if.then_crit_edge:       ; preds = %smb347_is_ps_online.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %smb347_is_ps_online.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %enable_control.i.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 28
  %4 = ptrtoint ptr %enable_control.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enable_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_charging_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_start_stop_charging, %smb347_charging_enable.exit)) #7
          to label %if.then5.i.i [label %smb347_charging_enable.exit], !srcloc !184

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %smb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_charging_set.__UNIQUE_ID_ddebug288, ptr noundef %7, ptr noundef nonnull @.str.25) #7
  br label %if.end11

if.end6.i.i:                                      ; preds = %if.then
  %usb_vbus_enabled.i.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 9
  %8 = ptrtoint ptr %usb_vbus_enabled.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %usb_vbus_enabled.i.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool8.not.i.i, label %if.end28.i.i, label %do.body10.i.i

do.body10.i.i:                                    ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_charging_set.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_start_stop_charging, %smb347_charging_enable.exit)) #7
          to label %if.then24.i.i [label %smb347_charging_enable.exit], !srcloc !184

if.then24.i.i:                                    ; preds = %do.body10.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %smb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_charging_set.__UNIQUE_ID_ddebug289, ptr noundef %11, ptr noundef nonnull @.str.26) #7
  br label %if.end11

if.end28.i.i:                                     ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 1
  %12 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %smb347_charging_enable.exit

smb347_charging_enable.exit:                      ; preds = %if.end28.i.i, %do.body10.i.i, %do.body.i.i
  %retval.0.i.i = phi i32 [ %call.i.i.i, %if.end28.i.i ], [ 0, %do.body.i.i ], [ 0, %do.body10.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp, label %do.end, label %smb347_charging_enable.exit.if.end11_crit_edge

smb347_charging_enable.exit.if.end11_crit_edge:   ; preds = %smb347_charging_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %smb347_charging_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %smb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.15) #10
  br label %if.end11

if.else:                                          ; preds = %smb347_is_ps_online.exit
  %enable_control.i.i18 = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 28
  %16 = ptrtoint ptr %enable_control.i.i18 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable_control.i.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.not.i.i19 = icmp eq i32 %17, 0
  br i1 %cmp.not.i.i19, label %if.end6.i.i24, label %do.body.i.i20

do.body.i.i20:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_charging_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_start_stop_charging, %smb347_charging_disable.exit)) #7
          to label %smb347_charging_disable.exit.thread [label %smb347_charging_disable.exit], !srcloc !184

smb347_charging_disable.exit.thread:              ; preds = %do.body.i.i20
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smb, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_charging_set.__UNIQUE_ID_ddebug288, ptr noundef %19, ptr noundef nonnull @.str.25) #7
  br label %if.end11

if.end6.i.i24:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i.i22 = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i.i22, align 4
  %call.i.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 48, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %smb347_charging_disable.exit

smb347_charging_disable.exit:                     ; preds = %if.end6.i.i24, %do.body.i.i20
  %retval.0.i.i25 = phi i32 [ %call.i.i.i23, %if.end6.i.i24 ], [ 0, %do.body.i.i20 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i25)
  %cmp4 = icmp slt i32 %retval.0.i.i25, 0
  br i1 %cmp4, label %do.end8, label %smb347_charging_disable.exit.if.end11_crit_edge

smb347_charging_disable.exit.if.end11_crit_edge:  ; preds = %smb347_charging_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end8:                                          ; preds = %smb347_charging_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %smb, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.21) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %smb347_charging_disable.exit.if.end11_crit_edge, %smb347_charging_disable.exit.thread, %do.end, %smb347_charging_enable.exit.if.end11_crit_edge, %if.then24.i.i, %if.then5.i.i
  %ret.0 = phi i32 [ %retval.0.i.i, %do.end ], [ %retval.0.i.i, %smb347_charging_enable.exit.if.end11_crit_edge ], [ %retval.0.i.i25, %do.end8 ], [ %retval.0.i.i25, %smb347_charging_disable.exit.if.end11_crit_edge ], [ 0, %smb347_charging_disable.exit.thread ], [ 0, %if.then5.i.i ], [ 0, %if.then24.i.i ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_interrupt(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  %stat_c = alloca i32, align 4
  %irqstat_c = alloca i32, align 4
  %irqstat_d = alloca i32, align 4
  %irqstat_e = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat_c) #7
  %0 = ptrtoint ptr %stat_c to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %stat_c, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqstat_c) #7
  %1 = ptrtoint ptr %irqstat_c to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %irqstat_c, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqstat_d) #7
  %2 = ptrtoint ptr %irqstat_d to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqstat_d, align 4, !annotation !183
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqstat_e) #7
  %3 = ptrtoint ptr %irqstat_e to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %irqstat_e, align 4, !annotation !183
  tail call void @usleep_range_state(i32 noundef 25000, i32 noundef 35000, i32 noundef 2) #7
  %regmap = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %5, i32 noundef 61, ptr noundef nonnull %stat_c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef 55, ptr noundef nonnull %irqstat_c) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %13, i32 noundef 56, ptr noundef nonnull %irqstat_d) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.39) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call20 = call i32 @regmap_read(ptr noundef %17, i32 noundef 57, ptr noundef nonnull %irqstat_e) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.42) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end18
  %20 = ptrtoint ptr %stat_c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %stat_c, align 4
  %and = and i32 %21, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end27.if.end39_crit_edge, label %do.end31

if.end27.if.end39_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

do.end31:                                         ; preds = %if.end27
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.45) #10
  %use_mains = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 25
  %24 = ptrtoint ptr %use_mains to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %use_mains, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool33.not = icmp eq i8 %25, 0
  br i1 %tobool33.not, label %do.end31.if.end35_crit_edge, label %if.then34

do.end31.if.end35_crit_edge:                      ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then34:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  %mains = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 2
  %26 = ptrtoint ptr %mains to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mains, align 4
  call void @power_supply_changed(ptr noundef %27) #7
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %do.end31.if.end35_crit_edge
  %use_usb = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 26
  %28 = ptrtoint ptr %use_usb to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %use_usb, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool36.not = icmp eq i8 %29, 0
  br i1 %tobool36.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %usb = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %usb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %usb, align 4
  call void @power_supply_changed(ptr noundef %31) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge, %if.end27.if.end39_crit_edge
  %handled.0.off0 = phi i32 [ 0, %if.end27.if.end39_crit_edge ], [ 1, %if.then37 ], [ 1, %if.end35.if.end39_crit_edge ]
  %32 = ptrtoint ptr %irqstat_c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irqstat_c, align 4
  %and40 = and i32 %33, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end68_crit_edge, label %if.then42

if.end39.if.end68_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then42:                                        ; preds = %if.end39
  %and43 = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.then42.do.body57_crit_edge, label %if.then45

if.then42.do.body57_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

if.then45:                                        ; preds = %if.then42
  %use_mains46 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 25
  %34 = ptrtoint ptr %use_mains46 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %use_mains46, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool47.not = icmp eq i8 %35, 0
  br i1 %tobool47.not, label %if.then45.if.end50_crit_edge, label %if.then48

if.then45.if.end50_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then48:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %mains49 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 2
  %36 = ptrtoint ptr %mains49 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mains49, align 4
  call void @power_supply_changed(ptr noundef %37) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %if.then45.if.end50_crit_edge
  %use_usb51 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 26
  %38 = ptrtoint ptr %use_usb51 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %use_usb51, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool52.not = icmp eq i8 %39, 0
  br i1 %tobool52.not, label %if.end50.do.body57_crit_edge, label %if.then53

if.end50.do.body57_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body57

if.then53:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %usb54 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 3
  %40 = ptrtoint ptr %usb54 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %usb54, align 4
  call void @power_supply_changed(ptr noundef %41) #7
  br label %do.body57

do.body57:                                        ; preds = %if.then53, %if.end50.do.body57_crit_edge, %if.then42.do.body57_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_interrupt.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_interrupt, %if.end68)) #7
          to label %if.then63 [label %if.end68], !srcloc !184

if.then63:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_interrupt.__UNIQUE_ID_ddebug318, ptr noundef %43, ptr noundef nonnull @.str.47) #7
  br label %if.end68

if.end68:                                         ; preds = %if.then63, %do.body57, %if.end39.if.end68_crit_edge
  %handled.1.off0 = phi i32 [ %handled.0.off0, %if.end39.if.end68_crit_edge ], [ 1, %if.then63 ], [ 1, %do.body57 ]
  %44 = ptrtoint ptr %irqstat_d to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %irqstat_d, align 4
  %and69 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end68.if.end109_crit_edge, label %do.body72

if.end68.if.end109_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

do.body72:                                        ; preds = %if.end68
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_interrupt.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_interrupt, %do.end90)) #7
          to label %if.then86 [label %do.end90], !srcloc !184

if.then86:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_interrupt.__UNIQUE_ID_ddebug319, ptr noundef %47, ptr noundef nonnull @.str.48) #7
  br label %do.end90

do.end90:                                         ; preds = %if.then86, %do.body72
  %48 = ptrtoint ptr %irqstat_d to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irqstat_d, align 4
  %and91 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %do.end90.if.end98_crit_edge, label %do.end96

do.end90.if.end98_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

do.end96:                                         ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.50) #10
  br label %if.end98

if.end98:                                         ; preds = %do.end96, %do.end90.if.end98_crit_edge
  %use_mains99 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 25
  %52 = ptrtoint ptr %use_mains99 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %use_mains99, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool100.not = icmp eq i8 %53, 0
  br i1 %tobool100.not, label %if.end98.if.end103_crit_edge, label %if.then101

if.end98.if.end103_crit_edge:                     ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then101:                                       ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #9
  %mains102 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 2
  %54 = ptrtoint ptr %mains102 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mains102, align 4
  call void @power_supply_changed(ptr noundef %55) #7
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end98.if.end103_crit_edge
  %use_usb104 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 26
  %56 = ptrtoint ptr %use_usb104 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %use_usb104, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool105.not = icmp eq i8 %57, 0
  br i1 %tobool105.not, label %if.end103.if.end109_crit_edge, label %if.then106

if.end103.if.end109_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

if.then106:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %usb107 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 3
  %58 = ptrtoint ptr %usb107 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %usb107, align 4
  call void @power_supply_changed(ptr noundef %59) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then106, %if.end103.if.end109_crit_edge, %if.end68.if.end109_crit_edge
  %handled.2.off0 = phi i32 [ %handled.1.off0, %if.end68.if.end109_crit_edge ], [ 1, %if.then106 ], [ 1, %if.end103.if.end109_crit_edge ]
  %60 = ptrtoint ptr %irqstat_e to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %irqstat_e, align 4
  %and110 = and i32 %61, 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.cleanup_crit_edge, label %if.then112

if.end109.cleanup_crit_edge:                      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then112:                                       ; preds = %if.end109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %62 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %val.i, align 4, !annotation !183
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 57, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %smb347_update_ps_status.exit.thread, label %if.end.i

smb347_update_ps_status.exit.thread:              ; preds = %if.then112
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.then112
  %use_mains.i = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 25
  %65 = ptrtoint ptr %use_mains.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %use_mains.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i = icmp eq i8 %66, 0
  br i1 %tobool.not.i, label %if.end.i.if.end3.i_crit_edge, label %if.then1.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  %and.i = and i32 %68, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then1.i, %if.end.i.if.end3.i_crit_edge
  %dc.0.off0.i = phi i1 [ %tobool2.not.i, %if.then1.i ], [ false, %if.end.i.if.end3.i_crit_edge ]
  %use_usb.i = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 26
  %69 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %use_usb.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool4.not.i = icmp eq i8 %70, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end10.i_crit_edge, label %if.then5.i

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %and6.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end3.i.if.end10.i_crit_edge
  %usb.0.off0.i = phi i1 [ %tobool7.not.i, %if.then5.i ], [ false, %if.end3.i.if.end10.i_crit_edge ]
  %mains_online.i = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 6
  %73 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %mains_online.i, align 4, !range !182
  %75 = zext i1 %dc.0.off0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %74, i8 %75)
  %cmp14.not.i = icmp eq i8 %74, %75
  br i1 %cmp14.not.i, label %smb347_update_ps_status.exit, label %smb347_update_ps_status.exit.thread178

smb347_update_ps_status.exit.thread178:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %.pre.i = zext i1 %usb.0.off0.i to i8
  %76 = ptrtoint ptr %mains_online.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %mains_online.i, align 4
  %usb_online26.i180 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 7
  %77 = ptrtoint ptr %usb_online26.i180 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %.pre.i, ptr %usb_online26.i180, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.then115

smb347_update_ps_status.exit:                     ; preds = %if.end10.i
  %usb_online.i = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 7
  %78 = ptrtoint ptr %usb_online.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %usb_online.i, align 1, !range !182
  %80 = zext i1 %usb.0.off0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %79, i8 %80)
  %cmp20.i.not = icmp eq i8 %79, %80
  %81 = ptrtoint ptr %usb_online.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %usb_online.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br i1 %cmp20.i.not, label %smb347_update_ps_status.exit.cleanup_crit_edge, label %smb347_update_ps_status.exit.if.then115_crit_edge

smb347_update_ps_status.exit.if.then115_crit_edge: ; preds = %smb347_update_ps_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then115

smb347_update_ps_status.exit.cleanup_crit_edge:   ; preds = %smb347_update_ps_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then115:                                       ; preds = %smb347_update_ps_status.exit.if.then115_crit_edge, %smb347_update_ps_status.exit.thread178
  %call116 = call fastcc i32 @smb347_start_stop_charging(ptr noundef %data)
  %82 = ptrtoint ptr %use_mains.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %use_mains.i, align 4, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %83)
  %tobool118.not = icmp eq i8 %83, 0
  br i1 %tobool118.not, label %if.then115.if.end121_crit_edge, label %if.then119

if.then115.if.end121_crit_edge:                   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then119:                                       ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #9
  %mains120 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 2
  %84 = ptrtoint ptr %mains120 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mains120, align 4
  call void @power_supply_changed(ptr noundef %85) #7
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.then115.if.end121_crit_edge
  %86 = ptrtoint ptr %use_usb.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %use_usb.i, align 1, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool123.not = icmp eq i8 %87, 0
  br i1 %tobool123.not, label %if.end121.cleanup_crit_edge, label %if.then124

if.end121.cleanup_crit_edge:                      ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %usb125 = getelementptr inbounds %struct.smb347_charger, ptr %data, i32 0, i32 3
  %88 = ptrtoint ptr %usb125 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %usb125, align 4
  call void @power_supply_changed(ptr noundef %89) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then124, %if.end121.cleanup_crit_edge, %smb347_update_ps_status.exit.cleanup_crit_edge, %smb347_update_ps_status.exit.thread, %if.end109.cleanup_crit_edge, %do.end25, %do.end16, %do.end7, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end7 ], [ 0, %do.end16 ], [ 0, %do.end25 ], [ %handled.2.off0, %if.end109.cleanup_crit_edge ], [ 1, %if.end121.cleanup_crit_edge ], [ 1, %if.then124 ], [ 1, %smb347_update_ps_status.exit.cleanup_crit_edge ], [ 1, %smb347_update_ps_status.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqstat_e) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqstat_d) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqstat_c) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat_c) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smb347_irq_set(ptr nocapture noundef readonly %smb, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_unsupported = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 8
  %0 = ptrtoint ptr %irq_unsupported to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %irq_unsupported, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %smb, align 4
  %irq.i = getelementptr i8, ptr %3, i32 932
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  %regmap.i = getelementptr inbounds %struct.smb347_charger, ptr %smb, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end2_crit_edge, label %land.lhs.true10.i

if.end.i.if.end2_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

land.lhs.true10.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %irq_unsupported to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_unsupported, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true10.i.smb347_set_writable.exit_crit_edge

land.lhs.true10.i.smb347_set_writable.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_set_writable.exit

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  br label %smb347_set_writable.exit

smb347_set_writable.exit:                         ; preds = %if.then13.i, %land.lhs.true10.i.smb347_set_writable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smb347_set_writable.exit.cleanup_crit_edge, label %smb347_set_writable.exit.if.end2_crit_edge

smb347_set_writable.exit.if.end2_crit_edge:       ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

smb347_set_writable.exit.cleanup_crit_edge:       ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %smb347_set_writable.exit.if.end2_crit_edge, %if.end.i.if.end2_crit_edge
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %cond = select i1 %enable, i32 4, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 12, i32 noundef 255, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp5 = icmp slt i32 %call.i, 0
  br i1 %cmp5, label %if.end2.fail_crit_edge, label %if.end7

if.end2.fail_crit_edge:                           ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end7:                                          ; preds = %if.end2
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %cond10 = select i1 %enable, i32 144, i32 0
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 13, i32 noundef 255, i32 noundef %cond10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp12 = icmp slt i32 %call.i31, 0
  br i1 %cmp12, label %if.end7.fail_crit_edge, label %if.end14

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 6, i32 noundef 4, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %fail

fail:                                             ; preds = %if.end14, %if.end7.fail_crit_edge, %if.end2.fail_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end2.fail_crit_edge ], [ %call.i31, %if.end7.fail_crit_edge ], [ %call.i32, %if.end14 ]
  %18 = ptrtoint ptr %smb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %smb, align 4
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %irq_unsupported to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %irq_unsupported, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not.i38 = icmp eq i8 %23, 0
  br i1 %tobool12.not.i38, label %if.then13.i41, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i41:                                    ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i40 = getelementptr i8, ptr %19, i32 932
  %24 = ptrtoint ptr %irq14.i40 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq14.i40, align 4
  tail call void @enable_irq(i32 noundef %25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i41, %fail.cleanup_crit_edge, %smb347_set_writable.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i.i, %smb347_set_writable.exit.cleanup_crit_edge ], [ %ret.0, %fail.cleanup_crit_edge ], [ %ret.0, %if.then13.i41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_usb_vbus_set_current_limit(ptr noundef %rdev, i32 noundef %min_uA, i32 noundef %max_uA) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_unsupported.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i = getelementptr i8, ptr %1, i32 932
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true10.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true10.i.smb347_set_writable.exit_crit_edge

land.lhs.true10.i.smb347_set_writable.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_set_writable.exit

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i = getelementptr i8, ptr %1, i32 932
  %10 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq14.i, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  br label %smb347_set_writable.exit

smb347_set_writable.exit:                         ; preds = %if.then13.i, %land.lhs.true10.i.smb347_set_writable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smb347_set_writable.exit.cleanup_crit_edge, label %smb347_set_writable.exit.if.end_crit_edge

smb347_set_writable.exit.if.end_crit_edge:        ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

smb347_set_writable.exit.cleanup_crit_edge:       ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %smb347_set_writable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 749999, i32 %max_uA)
  %cmp.i = icmp sgt i32 %max_uA, 749999
  %spec.select.i = select i1 %cmp.i, i32 12, i32 4
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 10, i32 noundef 12, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %cmp1.i = icmp slt i32 %call.i.i10, 0
  br i1 %cmp1.i, label %do.end.i, label %if.end.smb347_usb_vbus_set_new_current_limit.exit_crit_edge

if.end.smb347_usb_vbus_set_new_current_limit.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_usb_vbus_set_new_current_limit.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.54) #10
  br label %smb347_usb_vbus_set_new_current_limit.exit

smb347_usb_vbus_set_new_current_limit.exit:       ; preds = %do.end.i, %if.end.smb347_usb_vbus_set_new_current_limit.exit_crit_edge
  %16 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call, align 4
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %20 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool12.not.i16 = icmp eq i8 %21, 0
  br i1 %tobool12.not.i16, label %if.then13.i19, label %smb347_usb_vbus_set_new_current_limit.exit.cleanup_crit_edge

smb347_usb_vbus_set_new_current_limit.exit.cleanup_crit_edge: ; preds = %smb347_usb_vbus_set_new_current_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13.i19:                                    ; preds = %smb347_usb_vbus_set_new_current_limit.exit
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i18 = getelementptr i8, ptr %17, i32 932
  %22 = ptrtoint ptr %irq14.i18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq14.i18, align 4
  tail call void @enable_irq(i32 noundef %23) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13.i19, %smb347_usb_vbus_set_new_current_limit.exit.cleanup_crit_edge, %smb347_set_writable.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %smb347_set_writable.exit.cleanup_crit_edge ], [ %call.i.i10, %smb347_usb_vbus_set_new_current_limit.exit.cleanup_crit_edge ], [ %call.i.i10, %if.then13.i19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_usb_vbus_get_current_limit(ptr noundef %rdev) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !183
  %regmap = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %and4 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %cond = select i1 %tobool5.not, i32 250000, i32 750000
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end3 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_usb_vbus_regulator_enable(ptr noundef %rdev) #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_unsupported.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i = getelementptr i8, ptr %1, i32 932
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true10.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true10.i.smb347_set_writable.exit_crit_edge

land.lhs.true10.i.smb347_set_writable.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_set_writable.exit

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i = getelementptr i8, ptr %1, i32 932
  %10 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq14.i, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  br label %smb347_set_writable.exit

smb347_set_writable.exit:                         ; preds = %if.then13.i, %land.lhs.true10.i.smb347_set_writable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smb347_set_writable.exit.cleanup48_crit_edge, label %smb347_set_writable.exit.if.end_crit_edge

smb347_set_writable.exit.if.end_crit_edge:        ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

smb347_set_writable.exit.cleanup48_crit_edge:     ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end:                                           ; preds = %smb347_set_writable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %enable_control.i.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 28
  %12 = ptrtoint ptr %enable_control.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable_control.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not.i.i = icmp eq i32 %13, 0
  br i1 %cmp.not.i.i, label %if.end6.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smb347_charging_set.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smb347_usb_vbus_regulator_enable, %smb347_charging_disable.exit)) #7
          to label %if.then5.i.i [label %smb347_charging_disable.exit], !srcloc !184

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smb347_charging_set.__UNIQUE_ID_ddebug288, ptr noundef %15, ptr noundef nonnull @.str.25) #7
  br label %smb347_charging_disable.exit

if.end6.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 48, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %smb347_charging_disable.exit

smb347_charging_disable.exit:                     ; preds = %if.end6.i.i, %if.then5.i.i, %do.body.i.i
  %dev = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %call.i = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.56) #7
  br i1 %call.i, label %if.then4, label %smb347_charging_disable.exit.if.end13_crit_edge

smb347_charging_disable.exit.if.end13_crit_edge:  ; preds = %smb347_charging_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then4:                                         ; preds = %smb347_charging_disable.exit
  %inok_polarity = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 29
  %18 = ptrtoint ptr %inok_polarity to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %inok_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5 = icmp eq i32 %19, 0
  %spec.store.select = zext i1 %cmp5 to i32
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i75 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8, i32 noundef 1, i32 noundef %spec.store.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp9 = icmp slt i32 %call.i75, 0
  br i1 %cmp9, label %cleanup, label %if.then4.if.end13_crit_edge

if.then4.if.end13_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.57) #10
  br label %done

if.end13:                                         ; preds = %if.then4.if.end13_crit_edge, %smb347_charging_disable.exit.if.end13_crit_edge
  %call.i76 = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i, align 4, !annotation !183
  %regmap.i77 = getelementptr inbounds %struct.smb347_charger, ptr %call.i76, i32 0, i32 1
  %25 = ptrtoint ptr %regmap.i77 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i77, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 10, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %do.end19, label %if.end.i78

if.end.i78:                                       ; preds = %if.end13
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call.i.i80 = call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 10, i32 noundef 12, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %cmp1.i = icmp slt i32 %call.i.i80, 0
  br i1 %cmp1.i, label %do.end27, label %if.end29

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.60) #10
  br label %done

do.end27:                                         ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.54) #10
  %35 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.63) #10
  br label %done

if.end29:                                         ; preds = %if.end.i78
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i82 = call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 48, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %cmp32 = icmp slt i32 %call.i82, 0
  br i1 %cmp32, label %do.end36, label %if.end38

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.66) #10
  br label %done

if.end38:                                         ; preds = %if.end29
  %usb_vbus_enabled = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 9
  %41 = ptrtoint ptr %usb_vbus_enabled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %usb_vbus_enabled, align 1
  %42 = and i32 %28, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %42)
  %43 = icmp eq i32 %42, 12
  %spec.select.i = select i1 %43, i32 12, i32 4
  %44 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i, align 4
  %call.i.i85 = call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 10, i32 noundef 12, i32 noundef %spec.select.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i85)
  %cmp1.i86 = icmp slt i32 %call.i.i85, 0
  br i1 %cmp1.i86, label %do.end44, label %if.end38.done_crit_edge

if.end38.done_crit_edge:                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %done

do.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %47, ptr noundef nonnull @.str.54) #10
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.69) #10
  br label %done

done:                                             ; preds = %do.end44, %if.end38.done_crit_edge, %do.end36, %do.end27, %do.end19, %cleanup
  %ret.0 = phi i32 [ %call.i75, %cleanup ], [ %call1.i, %do.end19 ], [ %call.i.i80, %do.end27 ], [ %call.i82, %do.end36 ], [ %call.i.i85, %do.end44 ], [ %call.i.i85, %if.end38.done_crit_edge ]
  %50 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call, align 4
  %52 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i, align 4
  %call.i.i92 = call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %54 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool12.not.i96 = icmp eq i8 %55, 0
  br i1 %tobool12.not.i96, label %if.then13.i99, label %done.cleanup48_crit_edge

done.cleanup48_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.then13.i99:                                    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i98 = getelementptr i8, ptr %51, i32 932
  %56 = ptrtoint ptr %irq14.i98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq14.i98, align 4
  call void @enable_irq(i32 noundef %57) #7
  br label %cleanup48

cleanup48:                                        ; preds = %if.then13.i99, %done.cleanup48_crit_edge, %smb347_set_writable.exit.cleanup48_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %smb347_set_writable.exit.cleanup48_crit_edge ], [ %ret.0, %done.cleanup48_crit_edge ], [ %ret.0, %if.then13.i99 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smb347_usb_vbus_regulator_disable(ptr noundef %rdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @rdev_get_drvdata(ptr noundef %rdev) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %irq_unsupported.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not.i = icmp eq i8 %3, 0
  br i1 %tobool4.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %irq.i = getelementptr i8, ptr %1, i32 932
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %regmap.i = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 48, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool7.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool7.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true10.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true10.i:                                ; preds = %if.end.i
  %8 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool12.not.i = icmp eq i8 %9, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %land.lhs.true10.i.smb347_set_writable.exit_crit_edge

land.lhs.true10.i.smb347_set_writable.exit_crit_edge: ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %smb347_set_writable.exit

if.then13.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i = getelementptr i8, ptr %1, i32 932
  %10 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq14.i, align 4
  tail call void @enable_irq(i32 noundef %11) #7
  br label %smb347_set_writable.exit

smb347_set_writable.exit:                         ; preds = %if.then13.i, %land.lhs.true10.i.smb347_set_writable.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %smb347_set_writable.exit.cleanup24_crit_edge, label %smb347_set_writable.exit.if.end_crit_edge

smb347_set_writable.exit.if.end_crit_edge:        ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

smb347_set_writable.exit.cleanup24_crit_edge:     ; preds = %smb347_set_writable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.end:                                           ; preds = %smb347_set_writable.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.71) #10
  br label %done

if.end5:                                          ; preds = %if.end
  %usb_vbus_enabled = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 9
  %16 = ptrtoint ptr %usb_vbus_enabled to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %usb_vbus_enabled, align 1
  %dev6 = getelementptr inbounds %struct.regulator_dev, ptr %rdev, i32 0, i32 13
  %call.i40 = tail call zeroext i1 @device_property_present(ptr noundef %dev6, ptr noundef nonnull @.str.56) #7
  br i1 %call.i40, label %if.then8, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then8:                                         ; preds = %if.end5
  %inok_polarity = getelementptr inbounds %struct.smb347_charger, ptr %call, i32 0, i32 29
  %17 = ptrtoint ptr %inok_polarity to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %inok_polarity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp9 = icmp eq i32 %18, 1
  %spec.store.select = zext i1 %cmp9 to i32
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8, i32 noundef 1, i32 noundef %spec.store.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %cmp14 = icmp slt i32 %call.i41, 0
  br i1 %cmp14, label %cleanup, label %if.then8.if.end21_crit_edge

if.then8.if.end21_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

cleanup:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.74) #10
  br label %done

if.end21:                                         ; preds = %if.then8.if.end21_crit_edge, %if.end5.if.end21_crit_edge
  %ret.0 = phi i32 [ %call.i, %if.end5.if.end21_crit_edge ], [ %call.i41, %if.then8.if.end21_crit_edge ]
  %call22 = tail call fastcc i32 @smb347_start_stop_charging(ptr noundef %call)
  br label %done

done:                                             ; preds = %if.end21, %cleanup, %do.end
  %ret.1 = phi i32 [ %call.i, %do.end ], [ %call.i41, %cleanup ], [ %ret.0, %if.end21 ]
  %23 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call, align 4
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call.i.i43 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %27 = ptrtoint ptr %irq_unsupported.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %irq_unsupported.i, align 2, !range !182
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool12.not.i47 = icmp eq i8 %28, 0
  br i1 %tobool12.not.i47, label %if.then13.i50, label %done.cleanup24_crit_edge

done.cleanup24_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup24

if.then13.i50:                                    ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  %irq14.i49 = getelementptr i8, ptr %24, i32 932
  %29 = ptrtoint ptr %irq14.i49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq14.i49, align 4
  tail call void @enable_irq(i32 noundef %30) #7
  br label %cleanup24

cleanup24:                                        ; preds = %if.then13.i50, %done.cleanup24_crit_edge, %smb347_set_writable.exit.cleanup24_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %smb347_set_writable.exit.cleanup24_crit_edge ], [ %ret.1, %done.cleanup24_crit_edge ], [ %ret.1, %if.then13.i50 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdev_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !85, !86, !87, !88, !89, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !128, !130, !132, !134, !135, !136, !137, !139, !141, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !165, !167, !168, !169, !171}
!llvm.module.flags = !{!173, !174, !175, !176, !177, !178, !179, !180}
!llvm.ident = !{!181}

!0 = !{ptr @__initcall__kmod_smb347_charger__320_1640_smb347_driver_init6, !1, !"__initcall__kmod_smb347_charger__320_1640_smb347_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/smb347-charger.c", i32 1640, i32 1}
!2 = !{ptr @__exitcall_smb347_driver_exit, !1, !"__exitcall_smb347_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author321, !4, !"__UNIQUE_ID_author321", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/smb347-charger.c", i32 1642, i32 1}
!5 = !{ptr @__UNIQUE_ID_author322, !6, !"__UNIQUE_ID_author322", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/smb347-charger.c", i32 1643, i32 1}
!7 = !{ptr @__UNIQUE_ID_description323, !8, !"__UNIQUE_ID_description323", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/smb347-charger.c", i32 1644, i32 1}
!9 = !{ptr @__UNIQUE_ID_file324, !10, !"__UNIQUE_ID_file324", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/smb347-charger.c", i32 1645, i32 1}
!11 = !{ptr @__UNIQUE_ID_license325, !10, !"__UNIQUE_ID_license325", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/smb347-charger.c", i32 1632, i32 11}
!14 = !{ptr @smb347_driver, !15, !"smb347_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/smb347-charger.c", i32 1630, i32 26}
!16 = !{ptr @smb347_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/smb347-charger.c", i32 1552, i32 16}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/smb347-charger.c", i32 1250, i32 32}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/smb347-charger.c", i32 1252, i32 32}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/smb347-charger.c", i32 1254, i32 32}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/smb347-charger.c", i32 1258, i32 32}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/smb347-charger.c", i32 1260, i32 32}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/smb347-charger.c", i32 1262, i32 32}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/smb347-charger.c", i32 1266, i32 50}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/smb347-charger.c", i32 1267, i32 48}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/smb347-charger.c", i32 1268, i32 52}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/smb347-charger.c", i32 1271, i32 32}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/smb347-charger.c", i32 1278, i32 32}
!41 = !{ptr @smb347_regmap, !42, !"smb347_regmap", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/smb347-charger.c", i32 1485, i32 35}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/smb347-charger.c", i32 1504, i32 11}
!45 = !{ptr @smb347_mains_desc, !46, !"smb347_mains_desc", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/smb347-charger.c", i32 1503, i32 39}
!47 = !{ptr @smb347_properties, !48, !"smb347_properties", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/smb347-charger.c", i32 1183, i32 35}
!49 = !{ptr @fcc_tbl, !50, !"fcc_tbl", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/smb347-charger.c", i32 238, i32 27}
!51 = !{ptr @pcc_tbl, !52, !"pcc_tbl", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/smb347-charger.c", i32 247, i32 27}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/smb347-charger.c", i32 1512, i32 11}
!55 = !{ptr @smb347_usb_desc, !56, !"smb347_usb_desc", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/smb347-charger.c", i32 1511, i32 39}
!57 = !{ptr @tc_tbl, !58, !"tc_tbl", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/smb347-charger.c", i32 254, i32 27}
!59 = !{ptr @icl_tbl, !60, !"icl_tbl", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/smb347-charger.c", i32 264, i32 27}
!61 = !{ptr @ccc_tbl, !62, !"ccc_tbl", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/smb347-charger.c", i32 274, i32 27}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/smb347-charger.c", i32 408, i32 4}
!65 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @smb347_start_stop_charging._entry, !64, !"_entry", i1 false, i1 false}
!70 = !{ptr @smb347_start_stop_charging._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/smb347-charger.c", i32 412, i32 4}
!73 = !{ptr @smb347_start_stop_charging._entry.20, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @smb347_start_stop_charging._entry_ptr.22, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/smb347-charger.c", i32 373, i32 3}
!77 = !{ptr @.str.24, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @smb347_charging_set.__UNIQUE_ID_ddebug288, !76, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/smb347-charger.c", i32 378, i32 3}
!82 = !{ptr @smb347_charging_set.__UNIQUE_ID_ddebug289, !81, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/smb347-charger.c", i32 966, i32 3}
!85 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @smb347_irq_init._entry, !84, !"_entry", i1 false, i1 false}
!88 = !{ptr @smb347_irq_init._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/smb347-charger.c", i32 967, i32 3}
!91 = !{ptr @smb347_irq_init._entry.30, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @smb347_irq_init._entry_ptr.32, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/smb347-charger.c", i32 806, i32 3}
!95 = !{ptr @.str.34, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @smb347_interrupt._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @smb347_interrupt._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/smb347-charger.c", i32 812, i32 3}
!100 = !{ptr @smb347_interrupt._entry.35, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @smb347_interrupt._entry_ptr.37, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/smb347-charger.c", i32 818, i32 3}
!104 = !{ptr @smb347_interrupt._entry.38, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @smb347_interrupt._entry_ptr.40, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/smb347-charger.c", i32 824, i32 3}
!108 = !{ptr @smb347_interrupt._entry.41, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @smb347_interrupt._entry_ptr.43, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/smb347-charger.c", i32 833, i32 3}
!112 = !{ptr @smb347_interrupt._entry.44, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @smb347_interrupt._entry_ptr.46, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/smb347-charger.c", i32 853, i32 3}
!116 = !{ptr @smb347_interrupt.__UNIQUE_ID_ddebug318, !115, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!117 = !{ptr @.str.48, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/smb347-charger.c", i32 862, i32 3}
!119 = !{ptr @smb347_interrupt.__UNIQUE_ID_ddebug319, !118, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/smb347-charger.c", i32 865, i32 4}
!122 = !{ptr @smb347_interrupt._entry.49, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @smb347_interrupt._entry_ptr.51, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/smb347-charger.c", i32 1520, i32 11}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/smb347-charger.c", i32 1521, i32 14}
!128 = !{ptr @smb347_usb_vbus_regulator_desc, !129, !"smb347_usb_vbus_regulator_desc", i1 false, i1 false}
!129 = !{!"../drivers/power/supply/smb347-charger.c", i32 1519, i32 36}
!130 = !{ptr @smb347_usb_vbus_regulator_ops, !131, !"smb347_usb_vbus_regulator_ops", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/smb347-charger.c", i32 1495, i32 35}
!132 = !{ptr @.str.54, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/power/supply/smb347-charger.c", i32 1364, i32 3}
!134 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @smb347_usb_vbus_set_new_current_limit._entry, !133, !"_entry", i1 false, i1 false}
!136 = !{ptr @smb347_usb_vbus_set_new_current_limit._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.56, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/smb347-charger.c", i32 1396, i32 44}
!139 = !{ptr @.str.57, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/smb347-charger.c", i32 1409, i32 4}
!141 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @smb347_usb_vbus_regulator_enable._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @smb347_usb_vbus_regulator_enable._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/smb347-charger.c", i32 1416, i32 3}
!146 = !{ptr @smb347_usb_vbus_regulator_enable._entry.59, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @smb347_usb_vbus_regulator_enable._entry_ptr.61, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/power/supply/smb347-charger.c", i32 1424, i32 3}
!150 = !{ptr @smb347_usb_vbus_regulator_enable._entry.62, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @smb347_usb_vbus_regulator_enable._entry_ptr.64, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/power/supply/smb347-charger.c", i32 1430, i32 3}
!154 = !{ptr @smb347_usb_vbus_regulator_enable._entry.65, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @smb347_usb_vbus_regulator_enable._entry_ptr.67, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/smb347-charger.c", i32 1438, i32 3}
!158 = !{ptr @smb347_usb_vbus_regulator_enable._entry.68, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @smb347_usb_vbus_regulator_enable._entry_ptr.70, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.71, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/smb347-charger.c", i32 1458, i32 3}
!162 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @smb347_usb_vbus_regulator_disable._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @smb347_usb_vbus_regulator_disable._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.74, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/power/supply/smb347-charger.c", i32 1473, i32 4}
!167 = !{ptr @smb347_usb_vbus_regulator_disable._entry.73, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @smb347_usb_vbus_regulator_disable._entry_ptr.75, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @smb3xx_of_match, !170, !"smb3xx_of_match", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/smb347-charger.c", i32 1622, i32 34}
!171 = !{ptr @smb347_id, !172, !"smb347_id", i1 false, i1 false}
!172 = !{!"../drivers/power/supply/smb347-charger.c", i32 1614, i32 35}
!173 = !{i32 1, !"wchar_size", i32 2}
!174 = !{i32 1, !"min_enum_size", i32 4}
!175 = !{i32 8, !"branch-target-enforcement", i32 0}
!176 = !{i32 8, !"sign-return-address", i32 0}
!177 = !{i32 8, !"sign-return-address-all", i32 0}
!178 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!179 = !{i32 7, !"uwtable", i32 1}
!180 = !{i32 7, !"frame-pointer", i32 2}
!181 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!182 = !{i8 0, i8 2}
!183 = !{!"auto-init"}
!184 = !{i64 2148798558, i64 2148798563, i64 2148798576, i64 2148798620, i64 2148798654, i64 2148798675}
