; ModuleID = '/llk/IR_all_yes/drivers/power/supply/cw2015_battery.c_pt.bc'
source_filename = "../drivers/power/supply/cw2015_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.atomic_t = type { i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
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
%struct.cw_battery = type { ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_cw2015_battery__298_759_cw_bat_driver_init6 = internal global ptr @cw_bat_driver_init, section ".initcall6.init", align 4
@cw_bat_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @cw_bat_remove, ptr @cw_bat_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cw2015_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cw_bat_pm_ops, ptr null, ptr null }, ptr @cw_bat_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_cw_bat_driver_exit = internal global ptr @cw_bat_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [46 x i8] c"cw2015_battery.author=xhc<xhc@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author300 = internal constant [61 x i8] c"cw2015_battery.author=Tobias Schramm <t.schramm@manjaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [56 x i8] c"cw2015_battery.description=cw2015/cw2013 battery driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [56 x i8] c"cw2015_battery.file=drivers/power/supply/cw2015_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [27 x i8] c"cw2015_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cw2015\00", [25 x i8] zeroinitializer }, align 32
@cw2015_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cellwise,cw2015\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@cw_bat_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cw_bat_suspend, ptr @cw_bat_resume, ptr @cw_bat_suspend, ptr @cw_bat_resume, ptr @cw_bat_suspend, ptr @cw_bat_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@cw_bat_id_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"cw2015\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to parse cw2015 properties\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cw_bat_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/power/supply/cw2015_battery.c\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry_ptr = internal global ptr @cw_bat_probe._entry, section ".printk_index", align 4
@cw_bat_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@cw2015_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 79, ptr @regmap_wr_table, ptr @regmap_rd_table, ptr @regmap_vol_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"cw2015_battery:662:(&cw2015_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to allocate regmap: %ld\0A\00", [32 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry_ptr.9 = internal global ptr @cw_bat_probe._entry.7, section ".printk_index", align 4
@cw_bat_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 671, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Init failed: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry_ptr.12 = internal global ptr @cw_bat_probe._entry.10, section ".printk_index", align 4
@cw2015_bat_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.55, i32 1, ptr null, i32 0, ptr @cw_battery_properties, i32 11, ptr @cw_battery_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 697, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"No monitored battery, some properties will be missing\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cw_bat_probe._entry_ptr.17 = internal global ptr @cw_bat_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rk_battery\00", [21 x i8] zeroinitializer }, align 32
@cw_bat_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"(work_completion)(&(&cw_bat->battery_delay_work)->work)\00", [40 x i8] zeroinitializer }, align 32
@cw_bat_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"&(&cw_bat->battery_delay_work)->timer\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cellwise,battery-profile\00", [39 x i8] zeroinitializer }, align 32
@cw2015_parse_properties._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 571, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"No battery-profile found, using current flash contents\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw2015_parse_properties\00", [40 x i8] zeroinitializer }, align 32
@cw2015_parse_properties._entry_ptr = internal global ptr @cw2015_parse_properties._entry, section ".printk_index", align 4
@cw2015_parse_properties._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"battery-profile must be %d bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@cw2015_parse_properties._entry_ptr.28 = internal global ptr @cw2015_parse_properties._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cellwise,monitor-interval-ms\00", [35 x i8] zeroinitializer }, align 32
@cw2015_parse_properties.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.25, ptr @.str.3, ptr @.str.31, i8 0, i8 -108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw2015_battery\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Using default poll interval\0A\00", [35 x i8] zeroinitializer }, align 32
@regmap_wr_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @regmap_ranges_wr_yes, i32 3, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@regmap_rd_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @regmap_ranges_rd_yes, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@regmap_vol_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @regmap_ranges_vol_yes, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@regmap_ranges_wr_yes = internal constant { [3 x %struct.regmap_range], [40 x i8] } { [3 x %struct.regmap_range] [%struct.regmap_range { i32 6, i32 8 }, %struct.regmap_range { i32 10, i32 10 }, %struct.regmap_range { i32 16, i32 79 }], [40 x i8] zeroinitializer }, align 32
@regmap_ranges_rd_yes = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 2, i32 8 }, %struct.regmap_range { i32 10, i32 10 }, %struct.regmap_range { i32 16, i32 79 }], [32 x i8] zeroinitializer }, align 32
@regmap_ranges_vol_yes = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 2, i32 5 }], [24 x i8] zeroinitializer }, align 32
@cw_init.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cw_init\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Setting new alert level\0A\00", [39 x i8] zeroinitializer }, align 32
@cw_init.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.32, ptr @.str.3, ptr @.str.34, i8 0, i8 47, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Battery profile not present, uploading battery profile\0A\00", [40 x i8] zeroinitializer }, align 32
@cw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.32, ptr @.str.3, i32 193, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to upload battery profile\0A\00", [62 x i8] zeroinitializer }, align 32
@cw_init._entry_ptr = internal global ptr @cw_init._entry, section ".printk_index", align 4
@cw_init._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str.3, i32 198, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"No profile specified, continuing without profile\0A\00", [46 x i8] zeroinitializer }, align 32
@cw_init._entry_ptr.38 = internal global ptr @cw_init._entry.36, section ".printk_index", align 4
@cw_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str.3, i32 207, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read stored battery profile\0A\00", [57 x i8] zeroinitializer }, align 32
@cw_init._entry_ptr.41 = internal global ptr @cw_init._entry.39, section ".printk_index", align 4
@cw_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.32, ptr @.str.3, i32 212, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Replacing stored battery profile\0A\00", [62 x i8] zeroinitializer }, align 32
@cw_init._entry_ptr.44 = internal global ptr @cw_init._entry.42, section ".printk_index", align 4
@cw_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.32, ptr @.str.3, i32 219, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Can't check current battery profile, no profile provided\0A\00", [38 x i8] zeroinitializer }, align 32
@cw_init._entry_ptr.47 = internal global ptr @cw_init._entry.45, section ".printk_index", align 4
@cw_init.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.32, ptr @.str.3, ptr @.str.48, i8 0, i8 55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Battery profile configured\0A\00", [36 x i8] zeroinitializer }, align 32
@cw_update_profile._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 110, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Gauge is in sleep mode, can't update battery info\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw_update_profile\00", [46 x i8] zeroinitializer }, align 32
@cw_update_profile._entry_ptr = internal global ptr @cw_update_profile._entry, section ".printk_index", align 4
@cw_update_profile._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.3, i32 150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Gauge did not become ready after profile upload\0A\00", [47 x i8] zeroinitializer }, align 32
@cw_update_profile._entry_ptr.53 = internal global ptr @cw_update_profile._entry.51, section ".printk_index", align 4
@cw_update_profile.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 0, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Battery profile updated\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw2015-battery\00", [17 x i8] zeroinitializer }, align 32
@cw_battery_properties = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 47, i32 0, i32 3, i32 12, i32 60, i32 6, i32 28, i32 24, i32 22, i32 26, i32 17], [52 x i8] zeroinitializer }, align 32
@cw_bat_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 430, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read mode from gauge: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cw_bat_work\00", [20 x i8] zeroinitializer }, align 32
@cw_bat_work._entry_ptr = internal global ptr @cw_bat_work._entry, section ".printk_index", align 4
@cw_bat_work.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"charger_attached = %d\0A\00", [41 x i8] zeroinitializer }, align 32
@cw_bat_work.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.59, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status = %d\0A\00", [19 x i8] zeroinitializer }, align 32
@cw_bat_work.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.60, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"soc = %d%%\0A\00", [20 x i8] zeroinitializer }, align 32
@cw_bat_work.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.57, ptr @.str.3, ptr @.str.61, i8 0, i8 112, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"voltage = %dmV\0A\00", [16 x i8] zeroinitializer }, align 32
@cw_update_soc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get SoC from gauge: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cw_update_soc\00", [18 x i8] zeroinitializer }, align 32
@cw_update_soc._entry_ptr = internal global ptr @cw_update_soc._entry, section ".printk_index", align 4
@cw_get_soc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.3, i32 266, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid SoC %d%%\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cw_get_soc\00", [21 x i8] zeroinitializer }, align 32
@cw_get_soc._entry_ptr = internal global ptr @cw_get_soc._entry, section ".printk_index", align 4
@cw_get_soc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.3, i32 270, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Too many invalid SoC reports, resetting gauge\0A\00", [49 x i8] zeroinitializer }, align 32
@cw_get_soc._entry_ptr.68 = internal global ptr @cw_get_soc._entry.66, section ".printk_index", align 4
@cw_get_soc._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.3, i32 286, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"SoC stuck @%u%%, resetting gauge\0A\00", [62 x i8] zeroinitializer }, align 32
@cw_get_soc._entry_ptr.71 = internal global ptr @cw_get_soc._entry.69, section ".printk_index", align 4
@cw_update_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to get voltage from gauge: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cw_update_voltage\00", [46 x i8] zeroinitializer }, align 32
@cw_update_voltage._entry_ptr = internal global ptr @cw_update_voltage._entry, section ".printk_index", align 4
@cw_get_voltage.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.30, ptr @.str.74, ptr @.str.3, ptr @.str.75, i8 0, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cw_get_voltage\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Read voltage: %d mV, raw=0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@cw_update_charge_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.3, i32 350, ptr @.str.16, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to get supply state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw_update_charge_status\00", [40 x i8] zeroinitializer }, align 32
@cw_update_charge_status._entry_ptr = internal global ptr @cw_update_charge_status._entry, section ".printk_index", align 4
@cw_update_time_to_empty._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.3, i32 412, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to get time to empty from gauge: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cw_update_time_to_empty\00", [40 x i8] zeroinitializer }, align 32
@cw_update_time_to_empty._entry_ptr = internal global ptr @cw_update_time_to_empty._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 3, i64 6, i64 12, i64 17, i64 22, i64 24, i64 26, i64 28, i64 47, i64 60]
@___asan_gen_.80 = private unnamed_addr constant [14 x i8] c"cw_bat_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 748, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 750, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [16 x i8] c"cw2015_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 742, i32 34 }
@___asan_gen_.89 = private unnamed_addr constant [14 x i8] c"cw_bat_pm_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 726, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant [16 x i8] c"cw_bat_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 737, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 658, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [21 x i8] c"cw2015_regmap_config\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 633, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 662, i32 19 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 664, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 671, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [16 x i8] c"cw2015_bat_desc\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 554, i32 39 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 684, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 696, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 700, i32 30 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 701, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 568, i32 41 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 570, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 573, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 589, i32 38 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 592, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [16 x i8] c"regmap_wr_table\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 619, i32 41 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"regmap_rd_table\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 607, i32 41 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c"regmap_vol_table\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 628, i32 41 }
@___asan_gen_.203 = private unnamed_addr constant [21 x i8] c"regmap_ranges_wr_yes\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 612, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"regmap_ranges_rd_yes\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 599, i32 34 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"regmap_ranges_vol_yes\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 624, i32 34 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 174, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 187, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 192, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 197, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 206, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 212, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 218, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 222, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 109, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 149, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 152, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 555, i32 11 }
@___asan_gen_.275 = private unnamed_addr constant [22 x i8] c"cw_battery_properties\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 540, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 430, i32 3 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 446, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 447, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 448, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 449, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 370, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 266, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 269, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 285, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 383, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 327, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 350, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.360 = private constant [41 x i8] c"../drivers/power/supply/cw2015_battery.c\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.360, i32 411, i32 3 }
@llvm.compiler.used = appending global [123 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_cw_bat_driver_exit, ptr @__initcall__kmod_cw2015_battery__298_759_cw_bat_driver_init6, ptr @cw2015_parse_properties._entry, ptr @cw2015_parse_properties._entry.26, ptr @cw2015_parse_properties._entry_ptr, ptr @cw2015_parse_properties._entry_ptr.28, ptr @cw_bat_driver_exit, ptr @cw_bat_probe._entry, ptr @cw_bat_probe._entry.10, ptr @cw_bat_probe._entry.14, ptr @cw_bat_probe._entry.7, ptr @cw_bat_probe._entry_ptr, ptr @cw_bat_probe._entry_ptr.12, ptr @cw_bat_probe._entry_ptr.17, ptr @cw_bat_probe._entry_ptr.9, ptr @cw_bat_work._entry, ptr @cw_bat_work._entry_ptr, ptr @cw_get_soc._entry, ptr @cw_get_soc._entry.66, ptr @cw_get_soc._entry.69, ptr @cw_get_soc._entry_ptr, ptr @cw_get_soc._entry_ptr.68, ptr @cw_get_soc._entry_ptr.71, ptr @cw_init._entry, ptr @cw_init._entry.36, ptr @cw_init._entry.39, ptr @cw_init._entry.42, ptr @cw_init._entry.45, ptr @cw_init._entry_ptr, ptr @cw_init._entry_ptr.38, ptr @cw_init._entry_ptr.41, ptr @cw_init._entry_ptr.44, ptr @cw_init._entry_ptr.47, ptr @cw_update_charge_status._entry, ptr @cw_update_charge_status._entry_ptr, ptr @cw_update_profile._entry, ptr @cw_update_profile._entry.51, ptr @cw_update_profile._entry_ptr, ptr @cw_update_profile._entry_ptr.53, ptr @cw_update_soc._entry, ptr @cw_update_soc._entry_ptr, ptr @cw_update_time_to_empty._entry, ptr @cw_update_time_to_empty._entry_ptr, ptr @cw_update_voltage._entry, ptr @cw_update_voltage._entry_ptr, ptr @cw_bat_driver, ptr @.str, ptr @cw2015_of_match, ptr @cw_bat_pm_ops, ptr @cw_bat_id_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cw_bat_probe._key, ptr @cw2015_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @cw2015_bat_desc, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @cw_bat_probe.__key, ptr @.str.20, ptr @cw_bat_probe.__key.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @regmap_wr_table, ptr @regmap_rd_table, ptr @regmap_vol_table, ptr @regmap_ranges_wr_yes, ptr @regmap_ranges_rd_yes, ptr @regmap_ranges_vol_yes, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @cw_battery_properties, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79], section "llvm.metadata"
@0 = internal global [94 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw2015_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw2015_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw2015_bat_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw2015_parse_properties._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw2015_parse_properties._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_wr_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_rd_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_vol_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_ranges_wr_yes to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_ranges_rd_yes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_ranges_vol_yes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_init._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_profile._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_profile._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_battery_properties to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_bat_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_soc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_get_soc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_get_soc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_get_soc._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_charge_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cw_update_time_to_empty._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_bat_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @cw_bat_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cw_bat_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @cw_bat_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_bat_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %battery_delay_work = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %battery_delay_work) #7
  %rk_bat = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rk_bat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rk_bat, align 4
  %battery = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %battery, align 4
  tail call void @power_supply_put_battery_info(ptr noundef %3, ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_bat_probe(ptr noundef %client) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %call.i, align 4
  %soc = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 9
  %3 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %soc, align 4
  %call3 = tail call fastcc i32 @cw2015_parse_properties(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @cw2015_regmap_config, ptr noundef nonnull @cw_bat_probe._key, ptr noundef nonnull @.str.6) #7
  %regmap = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end20

do.end14:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call.i, align 4
  %9 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.8, i32 noundef %9) #10
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %call21 = tail call fastcc i32 @cw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end28, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11, i32 noundef %call21) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %15 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %drv_data, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call30 = tail call ptr @dev_fwnode(ptr noundef %17) #7
  %fwnode = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 1
  %18 = ptrtoint ptr %fwnode to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call30, ptr %fwnode, align 4
  %call32 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @cw2015_bat_desc, ptr noundef nonnull %psy_cfg) #7
  %rk_bat = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %rk_bat to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %rk_bat, align 4
  %cmp.i128 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128, label %if.then35, label %if.end42

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call32 to i32
  %call39 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %20, ptr noundef nonnull @.str.13) #7
  %21 = ptrtoint ptr %rk_bat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rk_bat, align 4
  %23 = ptrtoint ptr %22 to i32
  br label %cleanup

if.end42:                                         ; preds = %if.end28
  %battery = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 5
  %call44 = call i32 @power_supply_get_battery_info(ptr noundef %call32, ptr noundef %battery) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end42.if.end58_crit_edge, label %if.then46

if.end42.if.end58_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.then46:                                        ; preds = %if.end42
  %call.i129 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 328, i32 noundef 3520) #7
  %24 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i129, ptr %battery, align 4
  %tobool51.not = icmp eq ptr %call.i129, null
  br i1 %tobool51.not, label %if.then46.cleanup_crit_edge, label %do.end56

if.then46.cleanup_crit_edge:                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end56:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.15) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end42.if.end58_crit_edge
  %call59 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.18, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.19) #7
  %battery_workqueue = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %battery_workqueue to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call59, ptr %battery_workqueue, align 4
  %battery_delay_work = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2
  call void @__init_work(ptr noundef %battery_delay_work, i32 noundef 0) #7
  %28 = ptrtoint ptr %battery_delay_work to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -64, ptr %battery_delay_work, align 4
  %lockdep_map = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @cw_bat_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry68 = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %29 = ptrtoint ptr %entry68 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %entry68, ptr %entry68, align 4
  %prev.i = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %entry68, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %31 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @cw_bat_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.cw_battery, ptr %call.i, i32 0, i32 2, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.22, ptr noundef nonnull @cw_bat_probe.__key.21) #7
  %32 = ptrtoint ptr %battery_workqueue to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %battery_workqueue, align 4
  %call.i130 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %battery_delay_work, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %if.then46.cleanup_crit_edge, %if.then35, %do.end26, %do.end14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %do.end ], [ %12, %do.end14 ], [ %call21, %do.end26 ], [ %23, %if.then35 ], [ 0, %if.end58 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.then46.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw2015_parse_properties(ptr noundef %cw_bat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cw_bat, align 4
  %call.i = tail call i32 @device_property_read_u8_array(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef null, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cw_bat, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.24) #10
  br label %if.end19

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call.i)
  %cmp3.not = icmp eq i32 %call.i, 64
  br i1 %cmp3.not, label %if.else9, label %do.end7

do.end7:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cw_bat, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef 64) #10
  br label %cleanup

if.else9:                                         ; preds = %if.else
  %call.i54 = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 64, i32 noundef 3520) #7
  %bat_profile = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 6
  %6 = ptrtoint ptr %bat_profile to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i54, ptr %bat_profile, align 4
  %tobool.not = icmp eq ptr %call.i54, null
  br i1 %tobool.not, label %if.else9.cleanup_crit_edge, label %if.end

if.else9.cleanup_crit_edge:                       ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.else9
  %call14 = tail call i32 @device_property_read_u8_array(ptr noundef %1, ptr noundef nonnull @.str.23, ptr noundef nonnull %call.i54, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end.if.end19_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.end19:                                         ; preds = %if.end.if.end19_crit_edge, %do.end
  %poll_interval_ms = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 14
  %call.i55 = tail call i32 @device_property_read_u32_array(ptr noundef %1, ptr noundef nonnull @.str.29, ptr noundef %poll_interval_ms, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool21.not = icmp eq i32 %call.i55, 0
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %do.body23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body23:                                        ; preds = %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw2015_parse_properties.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw2015_parse_properties, %do.end33)) #7
          to label %if.then29 [label %do.end33], !srcloc !198

if.then29:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cw_bat, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw2015_parse_properties.__UNIQUE_ID_ddebug297, ptr noundef %8, ptr noundef nonnull @.str.31) #7
  br label %do.end33

do.end33:                                         ; preds = %if.then29, %do.body23
  %9 = ptrtoint ptr %poll_interval_ms to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8000, ptr %poll_interval_ms, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.else9.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -12, %if.else9.cleanup_crit_edge ], [ %call14, %if.end.cleanup_crit_edge ], [ 0, %do.end33 ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw_init(ptr nocapture noundef readonly %cw_bat) unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  %bat_info = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg_val, align 4
  %regmap = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 10, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end2, label %entry.cleanup124_crit_edge

entry.cleanup124_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end2:                                          ; preds = %entry
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %4, i32 noundef 8, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end2.cleanup124_crit_edge

if.end2.cleanup124_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end7:                                          ; preds = %if.end2
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  %and8 = and i32 %6, 248
  %alert_level = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 15
  %7 = ptrtoint ptr %alert_level to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %alert_level, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %and8, i32 %shl)
  %cmp9.not = icmp eq i32 %and8, %shl
  br i1 %cmp9.not, label %if.end7.if.end28_crit_edge, label %do.body

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.body:                                          ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_init.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_init, %do.end)) #7
          to label %if.then17 [label %do.end], !srcloc !198

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_init.__UNIQUE_ID_ddebug289, ptr noundef %10, ptr noundef nonnull @.str.33) #7
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_val, align 4
  %and19 = and i32 %12, 1792
  %13 = ptrtoint ptr %alert_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alert_level, align 4
  %conv21 = zext i8 %14 to i32
  %shl22 = shl nuw nsw i32 %conv21, 3
  %neg = xor i32 %shl22, -1
  %or = or i32 %and19, %neg
  store i32 %or, ptr %reg_val, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call24 = call i32 @regmap_write(ptr noundef %16, i32 noundef 8, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %do.end.if.end28_crit_edge, label %do.end.cleanup124_crit_edge

do.end.cleanup124_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

do.end.if.end28_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %do.end.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call30 = call i32 @regmap_read(ptr noundef %18, i32 noundef 8, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %if.end28.cleanup124_crit_edge

if.end28.cleanup124_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup124

if.end33:                                         ; preds = %if.end28
  %19 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg_val, align 4
  %and34 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %do.body37, label %if.else71

do.body37:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_init.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_init, %do.end55)) #7
          to label %if.then51 [label %do.end55], !srcloc !198

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_init.__UNIQUE_ID_ddebug290, ptr noundef %22, ptr noundef nonnull @.str.34) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body37
  %bat_profile = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 6
  %23 = ptrtoint ptr %bat_profile to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bat_profile, align 4
  %tobool56.not = icmp eq ptr %24, null
  br i1 %tobool56.not, label %do.end68, label %if.then57

if.then57:                                        ; preds = %do.end55
  %call58 = call fastcc i32 @cw_update_profile(ptr noundef %cw_bat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.then57.do.body105_crit_edge, label %do.end63

if.then57.do.body105_crit_edge:                   ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body105

do.end63:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.35) #10
  br label %cleanup124

do.end68:                                         ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %28, ptr noundef nonnull @.str.37) #10
  br label %do.body105

if.else71:                                        ; preds = %if.end33
  %bat_profile72 = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 6
  %29 = ptrtoint ptr %bat_profile72 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bat_profile72, align 4
  %tobool73.not = icmp eq ptr %30, null
  br i1 %tobool73.not, label %do.end101, label %if.then74

if.then74:                                        ; preds = %if.else71
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %bat_info) #7
  %31 = call ptr @memset(ptr %bat_info, i32 255, i32 64)
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_raw_read(ptr noundef %33, i32 noundef 16, ptr noundef nonnull %bat_info, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.40) #10
  br label %cleanup.thread

if.end83:                                         ; preds = %if.then74
  %36 = ptrtoint ptr %bat_profile72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bat_profile72, align 4
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(64) %bat_info, ptr noundef dereferenceable(64) %37, i32 64) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool87.not = icmp eq i32 %bcmp, 0
  br i1 %tobool87.not, label %if.end83.cleanup_crit_edge, label %do.end91

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end91:                                         ; preds = %if.end83
  %38 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %39, ptr noundef nonnull @.str.43) #10
  %call93 = call fastcc i32 @cw_update_profile(ptr noundef %cw_bat)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.end91.cleanup_crit_edge, label %do.end91.cleanup.thread_crit_edge

do.end91.cleanup.thread_crit_edge:                ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.end91.cleanup_crit_edge:                       ; preds = %do.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread:                                   ; preds = %do.end91.cleanup.thread_crit_edge, %do.end81
  %retval.0.ph = phi i32 [ %call93, %do.end91.cleanup.thread_crit_edge ], [ %call76, %do.end81 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bat_info) #7
  br label %cleanup124

cleanup:                                          ; preds = %do.end91.cleanup_crit_edge, %if.end83.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %bat_info) #7
  br label %do.body105

do.end101:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.46) #10
  br label %do.body105

do.body105:                                       ; preds = %do.end101, %cleanup, %do.end68, %if.then57.do.body105_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_init.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_init, %cleanup124)) #7
          to label %if.then119 [label %cleanup124], !srcloc !198

if.then119:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_init.__UNIQUE_ID_ddebug291, ptr noundef %43, ptr noundef nonnull @.str.48) #7
  br label %cleanup124

cleanup124:                                       ; preds = %if.then119, %do.body105, %cleanup.thread, %do.end63, %if.end28.cleanup124_crit_edge, %do.end.cleanup124_crit_edge, %if.end2.cleanup124_crit_edge, %entry.cleanup124_crit_edge
  %retval.1 = phi i32 [ %call58, %do.end63 ], [ %call, %entry.cleanup124_crit_edge ], [ %call4, %if.end2.cleanup124_crit_edge ], [ %call24, %do.end.cleanup124_crit_edge ], [ %call30, %if.end28.cleanup124_crit_edge ], [ 0, %if.then119 ], [ %retval.0.ph, %cleanup.thread ], [ 0, %do.body105 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cw_bat_work(ptr noundef %work) #2 align 64 {
entry:
  %value.i.i.i = alloca i16, align 2
  %soc.i.i = alloca i32, align 4
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !199
  %add.ptr = getelementptr i8, ptr %work, i32 -8
  %regmap = getelementptr i8, ptr %work, i32 100
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.else, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.56, i32 noundef %call1) #10
  br label %do.body9

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg_val, align 4
  %and = and i32 %6, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp = icmp eq i32 %and, 192
  br i1 %cmp, label %if.else.for.body_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.else.for.body_crit_edge:                       ; preds = %if.else
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.else.for.body_crit_edge
  %i.0152 = phi i32 [ %i.0152.be, %for.body.backedge ], [ 0, %if.else.for.body_crit_edge ]
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 10, i32 noundef 192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i118, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i118:                                      ; preds = %for.body
  call void @msleep(i32 noundef 20) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 10, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %cw_power_on_reset.exit, label %if.end.i118.for.inc_crit_edge

if.end.i118.for.inc_crit_edge:                    ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cw_power_on_reset.exit:                           ; preds = %if.end.i118
  %call7.i = call fastcc i32 @cw_init(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool5.not = icmp ne i32 %call7.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0152)
  %cmp3 = icmp ult i32 %i.0152, 4
  %or.cond = select i1 %tobool5.not, i1 %cmp3, i1 false
  br i1 %or.cond, label %cw_power_on_reset.exit.for.body.backedge_crit_edge, label %cw_power_on_reset.exit.if.end7_crit_edge

cw_power_on_reset.exit.if.end7_crit_edge:         ; preds = %cw_power_on_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

cw_power_on_reset.exit.for.body.backedge_crit_edge: ; preds = %cw_power_on_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.inc:                                          ; preds = %if.end.i118.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0152)
  %cmp3.old = icmp ult i32 %i.0152, 4
  br i1 %cmp3.old, label %for.inc.for.body.backedge_crit_edge, label %for.inc.if.end7_crit_edge

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %cw_power_on_reset.exit.for.body.backedge_crit_edge
  %i.0152.be = add nuw nsw i32 %i.0152, 1
  br label %for.body

if.end7:                                          ; preds = %for.inc.if.end7_crit_edge, %cw_power_on_reset.exit.if.end7_crit_edge, %if.else.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i.i) #7
  %11 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %soc.i.i, align 4, !annotation !199
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 4, ptr noundef nonnull %soc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end7.cw_get_soc.exit.i_crit_edge

if.end7.cw_get_soc.exit.i_crit_edge:              ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_get_soc.exit.i

if.end.i.i:                                       ; preds = %if.end7
  %14 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %soc.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %15)
  %cmp.i.i = icmp ugt i32 %15, 100
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end13.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %poll_interval_ms.i.i = getelementptr i8, ptr %work, i32 140
  %16 = ptrtoint ptr %poll_interval_ms.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %poll_interval_ms.i.i, align 4
  %div.i.i120 = udiv i32 40000, %17
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.64, i32 noundef %15) #10
  %read_errors.i.i = getelementptr i8, ptr %work, i32 148
  %20 = ptrtoint ptr %read_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_errors.i.i, align 4
  %inc.i.i = add i32 %21, 1
  store i32 %inc.i.i, ptr %read_errors.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %div.i.i120)
  %cmp3.i.i = icmp ugt i32 %inc.i.i, %div.i.i120
  br i1 %cmp3.i.i, label %do.end7.i.i, label %if.then1.i.i.if.end11.i.i_crit_edge

if.then1.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i.i

do.end7.i.i:                                      ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.67) #10
  %call9.i.i = call fastcc i32 @cw_power_on_reset(ptr noundef %add.ptr) #7
  %24 = ptrtoint ptr %read_errors.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %read_errors.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end7.i.i, %if.then1.i.i.if.end11.i.i_crit_edge
  %soc12.i.i = getelementptr i8, ptr %work, i32 120
  %25 = ptrtoint ptr %soc12.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %soc12.i.i, align 4
  br label %cw_get_soc.exit.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %read_errors14.i.i = getelementptr i8, ptr %work, i32 148
  %27 = ptrtoint ptr %read_errors14.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %read_errors14.i.i, align 4
  %status.i.i = getelementptr i8, ptr %work, i32 128
  %28 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %status.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp15.i.i = icmp eq i32 %29, 1
  br i1 %cmp15.i.i, label %land.lhs.true.i.i, label %if.end13.i.i.if.else.i.i_crit_edge

if.end13.i.i.if.else.i.i_crit_edge:               ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

land.lhs.true.i.i:                                ; preds = %if.end13.i.i
  %soc16.i.i = getelementptr i8, ptr %work, i32 120
  %30 = ptrtoint ptr %soc16.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %soc16.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %31)
  %cmp17.i.i = icmp eq i32 %15, %31
  br i1 %cmp17.i.i, label %if.then18.i.i, label %land.lhs.true.i.i.if.else.i.i_crit_edge

land.lhs.true.i.i.if.else.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true.i.i
  %poll_interval_ms19.i.i = getelementptr i8, ptr %work, i32 140
  %32 = ptrtoint ptr %poll_interval_ms19.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %poll_interval_ms19.i.i, align 4
  %div20.i.i = udiv i32 1800000, %33
  %charge_stuck_cnt.i.i = getelementptr i8, ptr %work, i32 152
  %34 = ptrtoint ptr %charge_stuck_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %charge_stuck_cnt.i.i, align 4
  %inc21.i.i = add i32 %35, 1
  store i32 %inc21.i.i, ptr %charge_stuck_cnt.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc21.i.i, i32 %div20.i.i)
  %cmp23.i.i = icmp ugt i32 %inc21.i.i, %div20.i.i
  br i1 %cmp23.i.i, label %do.end27.i.i, label %if.then18.i.i.if.end33.i.i_crit_edge

if.then18.i.i.if.end33.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33.i.i

do.end27.i.i:                                     ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.70, i32 noundef %15) #10
  %call29.i.i = call fastcc i32 @cw_power_on_reset(ptr noundef %add.ptr) #7
  br label %if.end33.sink.split.i.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i.if.else.i.i_crit_edge, %if.end13.i.i.if.else.i.i_crit_edge
  %charge_stuck_cnt32.i.i = getelementptr i8, ptr %work, i32 152
  br label %if.end33.sink.split.i.i

if.end33.sink.split.i.i:                          ; preds = %if.else.i.i, %do.end27.i.i
  %charge_stuck_cnt.sink.i.i = phi ptr [ %charge_stuck_cnt.i.i, %do.end27.i.i ], [ %charge_stuck_cnt32.i.i, %if.else.i.i ]
  %38 = ptrtoint ptr %charge_stuck_cnt.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %charge_stuck_cnt.sink.i.i, align 4
  br label %if.end33.i.i

if.end33.i.i:                                     ; preds = %if.end33.sink.split.i.i, %if.then18.i.i.if.end33.i.i_crit_edge
  %charger_attached.i.i = getelementptr i8, ptr %work, i32 116
  %39 = ptrtoint ptr %charger_attached.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %charger_attached.i.i, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool34.not.i.i = icmp eq i8 %40, 0
  %41 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %soc.i.i, align 4
  %soc47.i.i = getelementptr i8, ptr %work, i32 120
  %43 = ptrtoint ptr %soc47.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %soc47.i.i, align 4
  br i1 %tobool34.not.i.i, label %land.lhs.true46.i.i, label %land.lhs.true35.i.i

land.lhs.true35.i.i:                              ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp37.i.i = icmp ult i32 %42, %44
  %sub.i.i121 = add i32 %44, -3
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %sub.i.i121)
  %cmp40.i.i = icmp ugt i32 %42, %sub.i.i121
  %or.cond.i.i = and i1 %cmp37.i.i, %cmp40.i.i
  br i1 %or.cond.i.i, label %if.then41.i.i, label %land.lhs.true35.i.i.if.end56.i.i_crit_edge

land.lhs.true35.i.i.if.end56.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.then41.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %soc.i.i, align 4
  br label %if.end56.i.i

land.lhs.true46.i.i:                              ; preds = %if.end33.i.i
  %add48.i.i = add i32 %44, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %add48.i.i)
  %cmp49.i.i = icmp ult i32 %42, %add48.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp53.i.i = icmp ugt i32 %42, %44
  %or.cond89.i.i = and i1 %cmp53.i.i, %cmp49.i.i
  br i1 %or.cond89.i.i, label %if.then54.i.i, label %land.lhs.true46.i.i.if.end56.i.i_crit_edge

land.lhs.true46.i.i.if.end56.i.i_crit_edge:       ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i.i

if.then54.i.i:                                    ; preds = %land.lhs.true46.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %44, ptr %soc.i.i, align 4
  br label %if.end56.i.i

if.end56.i.i:                                     ; preds = %if.then54.i.i, %land.lhs.true46.i.i.if.end56.i.i_crit_edge, %if.then41.i.i, %land.lhs.true35.i.i.if.end56.i.i_crit_edge
  %47 = ptrtoint ptr %soc.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %soc.i.i, align 4
  br label %cw_get_soc.exit.i

cw_get_soc.exit.i:                                ; preds = %if.end56.i.i, %if.end11.i.i, %if.end7.cw_get_soc.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %26, %if.end11.i.i ], [ %48, %if.end56.i.i ], [ %call.i.i, %if.end7.cw_get_soc.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %cmp.i122 = icmp slt i32 %retval.0.i.i, 0
  br i1 %cmp.i122, label %do.end.i, label %if.else.i123

do.end.i:                                         ; preds = %cw_get_soc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.62, i32 noundef %retval.0.i.i) #10
  br label %cw_update_soc.exit

if.else.i123:                                     ; preds = %cw_get_soc.exit.i
  %soc1.i = getelementptr i8, ptr %work, i32 120
  %51 = ptrtoint ptr %soc1.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %soc1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %retval.0.i.i)
  %cmp2.not.i = icmp eq i32 %52, %retval.0.i.i
  br i1 %cmp2.not.i, label %if.else.i123.cw_update_soc.exit_crit_edge, label %if.then3.i

if.else.i123.cw_update_soc.exit_crit_edge:        ; preds = %if.else.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_update_soc.exit

if.then3.i:                                       ; preds = %if.else.i123
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %soc1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i.i, ptr %soc1.i, align 4
  %battery_changed.i = getelementptr i8, ptr %work, i32 117
  %54 = ptrtoint ptr %battery_changed.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %battery_changed.i, align 1
  br label %cw_update_soc.exit

cw_update_soc.exit:                               ; preds = %if.then3.i, %if.else.i123.cw_update_soc.exit_crit_edge, %do.end.i
  %call.i124 = call fastcc i32 @cw_get_voltage(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i124)
  %cmp.i125 = icmp slt i32 %call.i124, 0
  br i1 %cmp.i125, label %do.end.i126, label %if.else.i127

do.end.i126:                                      ; preds = %cw_update_soc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.72, i32 noundef %call.i124) #10
  br label %cw_update_voltage.exit

if.else.i127:                                     ; preds = %cw_update_soc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %voltage_mv1.i = getelementptr i8, ptr %work, i32 124
  %57 = ptrtoint ptr %voltage_mv1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call.i124, ptr %voltage_mv1.i, align 4
  br label %cw_update_voltage.exit

cw_update_voltage.exit:                           ; preds = %if.else.i127, %do.end.i126
  %rk_bat.i = getelementptr i8, ptr %work, i32 104
  %58 = ptrtoint ptr %rk_bat.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rk_bat.i, align 4
  %call.i129 = call i32 @power_supply_am_i_supplied(ptr noundef %59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp.i130 = icmp slt i32 %call.i129, 0
  br i1 %cmp.i130, label %do.end.i131, label %if.else.i132

do.end.i131:                                      ; preds = %cw_update_voltage.exit
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.76, i32 noundef %call.i129) #10
  br label %cw_update_charge_status.exit

if.else.i132:                                     ; preds = %cw_update_voltage.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.i = icmp ne i32 %call.i129, 0
  %frombool.i = zext i1 %tobool.i to i8
  %charger_attached2.i = getelementptr i8, ptr %work, i32 116
  %62 = ptrtoint ptr %charger_attached2.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %charger_attached2.i, align 4, !range !200
  call void @__sanitizer_cov_trace_cmp1(i8 %63, i8 %frombool.i)
  %cmp6.not.i = icmp eq i8 %63, %frombool.i
  br i1 %cmp6.not.i, label %if.else.i132.if.end11.i_crit_edge, label %if.then8.i

if.else.i132.if.end11.i_crit_edge:                ; preds = %if.else.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then8.i:                                       ; preds = %if.else.i132
  %battery_changed.i133 = getelementptr i8, ptr %work, i32 117
  %64 = ptrtoint ptr %battery_changed.i133 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %battery_changed.i133, align 1
  br i1 %tobool.i, label %if.then10.i, label %if.then8.i.if.end11.i_crit_edge

if.then8.i.if.end11.i_crit_edge:                  ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  %charge_count.i = getelementptr i8, ptr %work, i32 136
  %65 = ptrtoint ptr %charge_count.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %charge_count.i, align 4
  %inc.i = add i32 %66, 1
  store i32 %inc.i, ptr %charge_count.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.then8.i.if.end11.i_crit_edge, %if.else.i132.if.end11.i_crit_edge
  %67 = ptrtoint ptr %charger_attached2.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool.i, ptr %charger_attached2.i, align 4
  br label %cw_update_charge_status.exit

cw_update_charge_status.exit:                     ; preds = %if.end11.i, %do.end.i131
  %charger_attached.i = getelementptr i8, ptr %work, i32 116
  %68 = ptrtoint ptr %charger_attached.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %charger_attached.i, align 4, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i134 = icmp eq i8 %69, 0
  br i1 %tobool.not.i134, label %cw_update_charge_status.exit.if.end2.i_crit_edge, label %if.then.i136

cw_update_charge_status.exit.if.end2.i_crit_edge: ; preds = %cw_update_charge_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2.i

if.then.i136:                                     ; preds = %cw_update_charge_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %soc.i = getelementptr i8, ptr %work, i32 120
  %70 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %soc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %71)
  %cmp.i135 = icmp sgt i32 %71, 99
  %..i = select i1 %cmp.i135, i32 4, i32 1
  br label %if.end2.i

if.end2.i:                                        ; preds = %if.then.i136, %cw_update_charge_status.exit.if.end2.i_crit_edge
  %status.0.i = phi i32 [ 2, %cw_update_charge_status.exit.if.end2.i_crit_edge ], [ %..i, %if.then.i136 ]
  %status3.i = getelementptr i8, ptr %work, i32 128
  %72 = ptrtoint ptr %status3.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %status3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %status.0.i)
  %cmp4.not.i = icmp eq i32 %73, %status.0.i
  br i1 %cmp4.not.i, label %if.end2.i.cw_update_status.exit_crit_edge, label %if.then5.i

if.end2.i.cw_update_status.exit_crit_edge:        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_update_status.exit

if.then5.i:                                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %battery_changed.i137 = getelementptr i8, ptr %work, i32 117
  %74 = ptrtoint ptr %battery_changed.i137 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %battery_changed.i137, align 1
  br label %cw_update_status.exit

cw_update_status.exit:                            ; preds = %if.then5.i, %if.end2.i.cw_update_status.exit_crit_edge
  %75 = ptrtoint ptr %status3.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %status.0.i, ptr %status3.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i.i.i) #7
  %76 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 -1, ptr %value.i.i.i, align 2, !annotation !199
  %77 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap, align 4
  %call.i.i.i = call i32 @regmap_bulk_read(ptr noundef %78, i32 noundef 6, ptr noundef nonnull %value.i.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %cw_get_time_to_empty.exit.thread.i, label %cw_get_time_to_empty.exit.i

cw_get_time_to_empty.exit.thread.i:               ; preds = %cw_update_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %value.i.i.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %value.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i.i) #7
  %81 = and i16 %80, 8191
  %and.i.i = zext i16 %81 to i32
  br label %if.else.i142

cw_get_time_to_empty.exit.i:                      ; preds = %cw_update_status.exit
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i139 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i139, label %do.end.i140, label %cw_get_time_to_empty.exit.i.if.else.i142_crit_edge

cw_get_time_to_empty.exit.i.if.else.i142_crit_edge: ; preds = %cw_get_time_to_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i142

do.end.i140:                                      ; preds = %cw_get_time_to_empty.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.78, i32 noundef %call.i.i.i) #10
  br label %do.body9

if.else.i142:                                     ; preds = %cw_get_time_to_empty.exit.i.if.else.i142_crit_edge, %cw_get_time_to_empty.exit.thread.i
  %retval.0.i15.i = phi i32 [ %and.i.i, %cw_get_time_to_empty.exit.thread.i ], [ %call.i.i.i, %cw_get_time_to_empty.exit.i.if.else.i142_crit_edge ]
  %time_to_empty1.i = getelementptr i8, ptr %work, i32 132
  %84 = ptrtoint ptr %time_to_empty1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %time_to_empty1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %85, i32 %retval.0.i15.i)
  %cmp2.not.i141 = icmp eq i32 %85, %retval.0.i15.i
  br i1 %cmp2.not.i141, label %if.else.i142.do.body9_crit_edge, label %if.then3.i144

if.else.i142.do.body9_crit_edge:                  ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

if.then3.i144:                                    ; preds = %if.else.i142
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %time_to_empty1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i15.i, ptr %time_to_empty1.i, align 4
  %battery_changed.i143 = getelementptr i8, ptr %work, i32 117
  %87 = ptrtoint ptr %battery_changed.i143 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 1, ptr %battery_changed.i143, align 1
  br label %do.body9

do.body9:                                         ; preds = %if.then3.i144, %if.else.i142.do.body9_crit_edge, %do.end.i140, %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_bat_work.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_bat_work, %do.body22)) #7
          to label %if.then16 [label %do.body22], !srcloc !198

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %add.ptr, align 4
  %charger_attached = getelementptr i8, ptr %work, i32 116
  %90 = ptrtoint ptr %charger_attached to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %charger_attached, align 4, !range !200
  %92 = zext i8 %91 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_bat_work.__UNIQUE_ID_ddebug293, ptr noundef %89, ptr noundef nonnull @.str.58, i32 noundef %92) #7
  br label %do.body22

do.body22:                                        ; preds = %if.then16, %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_bat_work.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_bat_work, %do.body41)) #7
          to label %if.then36 [label %do.body41], !srcloc !198

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %93 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr, align 4
  %status = getelementptr i8, ptr %work, i32 128
  %95 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %status, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_bat_work.__UNIQUE_ID_ddebug294, ptr noundef %94, ptr noundef nonnull @.str.59, i32 noundef %96) #7
  br label %do.body41

do.body41:                                        ; preds = %if.then36, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_bat_work.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_bat_work, %do.body60)) #7
          to label %if.then55 [label %do.body60], !srcloc !198

if.then55:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %add.ptr, align 4
  %soc = getelementptr i8, ptr %work, i32 120
  %99 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %soc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_bat_work.__UNIQUE_ID_ddebug295, ptr noundef %98, ptr noundef nonnull @.str.60, i32 noundef %100) #7
  br label %do.body60

do.body60:                                        ; preds = %if.then55, %do.body41
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_bat_work.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_bat_work, %do.end78)) #7
          to label %if.then74 [label %do.end78], !srcloc !198

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #9
  %101 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %add.ptr, align 4
  %voltage_mv = getelementptr i8, ptr %work, i32 124
  %103 = ptrtoint ptr %voltage_mv to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %voltage_mv, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_bat_work.__UNIQUE_ID_ddebug296, ptr noundef %102, ptr noundef nonnull @.str.61, i32 noundef %104) #7
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body60
  %battery_changed = getelementptr i8, ptr %work, i32 117
  %105 = ptrtoint ptr %battery_changed to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %battery_changed, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool79.not = icmp eq i8 %106, 0
  br i1 %tobool79.not, label %do.end78.if.end81_crit_edge, label %if.then80

do.end78.if.end81_crit_edge:                      ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end81

if.then80:                                        ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #9
  %rk_bat = getelementptr i8, ptr %work, i32 104
  %107 = ptrtoint ptr %rk_bat to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rk_bat, align 4
  call void @power_supply_changed(ptr noundef %108) #7
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %do.end78.if.end81_crit_edge
  %109 = ptrtoint ptr %battery_changed to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %battery_changed, align 1
  %battery_workqueue = getelementptr i8, ptr %work, i32 -4
  %110 = ptrtoint ptr %battery_workqueue to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %battery_workqueue, align 4
  %poll_interval_ms = getelementptr i8, ptr %work, i32 140
  %112 = ptrtoint ptr %poll_interval_ms to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %poll_interval_ms, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %113) #7
  %call.i145 = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %111, ptr noundef %work, i32 noundef %call2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw_update_profile(ptr nocapture noundef readonly %cw_bat) unnamed_addr #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !199
  %regmap = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 3
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 10, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %and = and i32 %4, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %and)
  %cmp = icmp eq i32 %and, 192
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.49) #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %bat_profile = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 6
  %9 = ptrtoint ptr %bat_profile to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bat_profile, align 4
  %call5 = call i32 @regmap_raw_write(ptr noundef %8, i32 noundef 16, ptr noundef %10, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %11 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_val, align 4
  %or = and i32 %12, -251
  %and9 = or i32 %or, 2
  %alert_level = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 15
  %13 = ptrtoint ptr %alert_level to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %alert_level, align 4
  %conv10 = zext i8 %14 to i32
  %shl = shl nuw nsw i32 %conv10, 3
  %or11 = or i32 %shl, %and9
  store i32 %or11, ptr %reg_val, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_write(ptr noundef %16, i32 noundef 8, i32 noundef %or11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %conv19 = and i32 %4, 240
  %or21 = or i32 %conv19, 15
  %17 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or21, ptr %reg_val, align 4
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %19, i32 noundef 10, i32 noundef %or21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  call void @msleep(i32 noundef 20) #7
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call29 = call i32 @regmap_write(ptr noundef %21, i32 noundef 10, i32 noundef %conv19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %call33 = call i64 @ktime_get() #7
  %add.i = add i64 %call33, 10000000000
  call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 147) #7
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call49137 = call i32 @regmap_read(ptr noundef %23, i32 noundef 4, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49137)
  %tobool50.not138 = icmp eq i32 %call49137, 0
  br i1 %tobool50.not138, label %if.end32.lor.lhs.false_crit_edge, label %if.end32.do.end77_crit_edge

if.end32.do.end77_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.end32.lor.lhs.false_crit_edge:                 ; preds = %if.end32
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then65.lor.lhs.false_crit_edge, %if.end32.lor.lhs.false_crit_edge
  %24 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %25)
  %cmp51 = icmp ult i32 %25, 101
  br i1 %cmp51, label %lor.lhs.false.do.body79_crit_edge, label %land.lhs.true

lor.lhs.false.do.body79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call56 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call56, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call56, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then65

if.then65:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 2501, i32 noundef 10000, i32 noundef 2) #7
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call49 = call i32 @regmap_read(ptr noundef %27, i32 noundef 4, ptr noundef nonnull %reg_val) #7
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.then65.lor.lhs.false_crit_edge, label %if.then65.do.end77_crit_edge

if.then65.do.end77_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

if.then65.lor.lhs.false_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_read(ptr noundef %29, i32 noundef 4, ptr noundef nonnull %reg_val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool67.not = icmp eq i32 %call62, 0
  br i1 %tobool67.not, label %lor.rhs, label %for.end.do.end77_crit_edge

for.end.do.end77_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

lor.rhs:                                          ; preds = %for.end
  %30 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr = load i32, ptr %reg_val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 101, i32 %.pr)
  %cmp68 = icmp ult i32 %.pr, 101
  br i1 %cmp68, label %lor.rhs.do.body79_crit_edge, label %lor.rhs.do.end77_crit_edge

lor.rhs.do.end77_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end77

lor.rhs.do.body79_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body79

do.end77:                                         ; preds = %lor.rhs.do.end77_crit_edge, %for.end.do.end77_crit_edge, %if.then65.do.end77_crit_edge, %if.end32.do.end77_crit_edge
  %tobool67.not129.ph = phi i32 [ %call49137, %if.end32.do.end77_crit_edge ], [ -110, %lor.rhs.do.end77_crit_edge ], [ %call62, %for.end.do.end77_crit_edge ], [ %call49, %if.then65.do.end77_crit_edge ]
  %31 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.52) #10
  br label %cleanup

do.body79:                                        ; preds = %lor.rhs.do.body79_crit_edge, %lor.lhs.false.do.body79_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_update_profile.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_update_profile, %cleanup)) #7
          to label %if.then86 [label %cleanup], !srcloc !198

if.then86:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_update_profile.__UNIQUE_ID_ddebug288, ptr noundef %34, ptr noundef nonnull @.str.54) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then86, %do.body79, %do.end77, %if.end26.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end3.cleanup_crit_edge ], [ %call13, %if.end8.cleanup_crit_edge ], [ %call23, %if.end16.cleanup_crit_edge ], [ %call29, %if.end26.cleanup_crit_edge ], [ 0, %if.then86 ], [ %tobool67.not129.ph, %do.end77 ], [ 0, %do.body79 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_battery_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 47, label %sw.bb
    i32 0, label %sw.bb1
    i32 3, label %sw.bb2
    i32 12, label %sw.bb4
    i32 60, label %sw.bb6
    i32 6, label %entry.sw.epilog.sink.split_crit_edge
    i32 28, label %sw.bb9
    i32 24, label %entry.sw.bb10_crit_edge
    i32 22, label %entry.sw.bb10_crit_edge76
    i32 26, label %sw.bb16
    i32 17, label %sw.bb21
  ]

entry.sw.bb10_crit_edge76:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.bb10_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb10

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %soc = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %soc, align 4
  br label %sw.epilog.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %status = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 11
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %status, align 4
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %voltage_mv = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 10
  %5 = ptrtoint ptr %voltage_mv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %voltage_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool to i32
  br label %sw.epilog.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %voltage_mv5 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 10
  %7 = ptrtoint ptr %voltage_mv5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %voltage_mv5, align 4
  %mul = mul i32 %8, 1000
  br label %sw.epilog.sink.split

sw.bb6:                                           ; preds = %entry
  %time_to_empty.i = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 12
  %9 = ptrtoint ptr %time_to_empty.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %time_to_empty.i, align 4
  %11 = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %11)
  %12 = icmp ult i32 %11, 8190
  br i1 %12, label %cw_battery_valid_time_to_empty.exit, label %sw.bb6.if.else_crit_edge

sw.bb6.if.else_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

cw_battery_valid_time_to_empty.exit:              ; preds = %sw.bb6
  %status.i = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 11
  %13 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp3.i = icmp eq i32 %14, 2
  br i1 %cmp3.i, label %cw_battery_valid_time_to_empty.exit.sw.epilog.sink.split_crit_edge, label %cw_battery_valid_time_to_empty.exit.if.else_crit_edge

cw_battery_valid_time_to_empty.exit.if.else_crit_edge: ; preds = %cw_battery_valid_time_to_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

cw_battery_valid_time_to_empty.exit.sw.epilog.sink.split_crit_edge: ; preds = %cw_battery_valid_time_to_empty.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.else:                                          ; preds = %cw_battery_valid_time_to_empty.exit.if.else_crit_edge, %sw.bb6.if.else_crit_edge
  br label %sw.epilog.sink.split

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %charge_count = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %charge_count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charge_count, align 4
  br label %sw.epilog.sink.split

sw.bb10:                                          ; preds = %entry.sw.bb10_crit_edge, %entry.sw.bb10_crit_edge76
  %battery = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 5
  %17 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %battery, align 4
  %charge_full_design_uah = getelementptr inbounds %struct.power_supply_battery_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %charge_full_design_uah to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %charge_full_design_uah, align 4
  %21 = call i32 @llvm.smax.i32(i32 %20, i32 0)
  br label %sw.epilog.sink.split

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %battery17 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 5
  %22 = ptrtoint ptr %battery17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %battery17, align 4
  %charge_full_design_uah18 = getelementptr inbounds %struct.power_supply_battery_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %charge_full_design_uah18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %charge_full_design_uah18, align 4
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %val, align 4
  %soc19 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 9
  %27 = ptrtoint ptr %soc19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %soc19, align 4
  %mul20 = mul i32 %28, %25
  %div = sdiv i32 %mul20, 100
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %entry
  %time_to_empty.i71 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 12
  %29 = ptrtoint ptr %time_to_empty.i71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %time_to_empty.i71, align 4
  %31 = add i32 %30, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8190, i32 %31)
  %32 = icmp ult i32 %31, 8190
  br i1 %32, label %cw_battery_valid_time_to_empty.exit75, label %sw.bb21.sw.epilog.sink.split_crit_edge

sw.bb21.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

cw_battery_valid_time_to_empty.exit75:            ; preds = %sw.bb21
  %status.i72 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 11
  %33 = ptrtoint ptr %status.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp3.i73 = icmp eq i32 %34, 2
  br i1 %cmp3.i73, label %land.lhs.true, label %cw_battery_valid_time_to_empty.exit75.sw.epilog.sink.split_crit_edge

cw_battery_valid_time_to_empty.exit75.sw.epilog.sink.split_crit_edge: ; preds = %cw_battery_valid_time_to_empty.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

land.lhs.true:                                    ; preds = %cw_battery_valid_time_to_empty.exit75
  %battery23 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 5
  %35 = ptrtoint ptr %battery23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %battery23, align 4
  %charge_full_design_uah24 = getelementptr inbounds %struct.power_supply_battery_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %charge_full_design_uah24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %charge_full_design_uah24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp25 = icmp sgt i32 %38, 0
  br i1 %cmp25, label %if.then26, label %land.lhs.true.sw.epilog.sink.split_crit_edge

land.lhs.true.sw.epilog.sink.split_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val, align 4
  %soc29 = getelementptr inbounds %struct.cw_battery, ptr %call, i32 0, i32 9
  %40 = ptrtoint ptr %soc29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %soc29, align 4
  %mul30 = mul i32 %41, %38
  %div31 = sdiv i32 %mul30, 100
  store i32 %div31, ptr %val, align 4
  %mul32 = mul nsw i32 %div31, 60
  %42 = ptrtoint ptr %time_to_empty.i71 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %time_to_empty.i71, align 4
  %div34 = sdiv i32 %mul32, %43
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then26, %land.lhs.true.sw.epilog.sink.split_crit_edge, %cw_battery_valid_time_to_empty.exit75.sw.epilog.sink.split_crit_edge, %sw.bb21.sw.epilog.sink.split_crit_edge, %sw.bb16, %sw.bb10, %sw.bb9, %if.else, %cw_battery_valid_time_to_empty.exit.sw.epilog.sink.split_crit_edge, %sw.bb4, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %div34.sink = phi i32 [ %div34, %if.then26 ], [ 0, %if.else ], [ %div, %sw.bb16 ], [ %16, %sw.bb9 ], [ %mul, %sw.bb4 ], [ %lnot.ext, %sw.bb2 ], [ %4, %sw.bb1 ], [ %2, %sw.bb ], [ %10, %cw_battery_valid_time_to_empty.exit.sw.epilog.sink.split_crit_edge ], [ 2, %entry.sw.epilog.sink.split_crit_edge ], [ %21, %sw.bb10 ], [ 0, %sw.bb21.sw.epilog.sink.split_crit_edge ], [ 0, %land.lhs.true.sw.epilog.sink.split_crit_edge ], [ 0, %cw_battery_valid_time_to_empty.exit75.sw.epilog.sink.split_crit_edge ]
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %div34.sink, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw_power_on_reset(ptr nocapture noundef readonly %cw_bat) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 3
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef 192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 20) #7
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 10, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call fastcc i32 @cw_init(ptr noundef %cw_bat)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %call7, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cw_get_voltage(ptr nocapture noundef readonly %cw_bat) unnamed_addr #2 align 64 {
entry:
  %value.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.cw_battery, ptr %cw_bat, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %0 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %value.i, align 2, !annotation !199
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %2, i32 noundef 2, ptr noundef nonnull %value.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %entry.cw_read_word.exit_crit_edge

entry.cw_read_word.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_read_word.exit

cw_read_word.exit:                                ; preds = %if.end.1.cw_read_word.exit_crit_edge, %if.end.cw_read_word.exit_crit_edge, %entry.cw_read_word.exit_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.cw_read_word.exit_crit_edge ], [ %call.i.1, %if.end.cw_read_word.exit_crit_edge ], [ %call.i.2, %if.end.1.cw_read_word.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %5 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 -1, ptr %value.i, align 2, !annotation !199
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i.1 = call i32 @regmap_bulk_read(ptr noundef %7, i32 noundef 2, ptr noundef nonnull %value.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool.not.i.1, label %if.end.1, label %if.end.cw_read_word.exit_crit_edge

if.end.cw_read_word.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_read_word.exit

if.end.1:                                         ; preds = %if.end
  %8 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %value.i) #7
  %10 = ptrtoint ptr %value.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 -1, ptr %value.i, align 2, !annotation !199
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.2 = call i32 @regmap_bulk_read(ptr noundef %12, i32 noundef 2, ptr noundef nonnull %value.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %tobool.not.i.2 = icmp eq i32 %call.i.2, 0
  br i1 %tobool.not.i.2, label %if.end.2, label %if.end.1.cw_read_word.exit_crit_edge

if.end.1.cw_read_word.exit_crit_edge:             ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cw_read_word.exit

if.end.2:                                         ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %4 to i32
  %conv.1 = zext i16 %9 to i32
  %add.1 = add nuw nsw i32 %conv, %conv.1
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %value.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %value.i) #7
  %conv.2 = zext i16 %14 to i32
  %add.2 = add nuw nsw i32 %add.1, %conv.2
  %div = udiv i32 %add.2, 3
  %mul = mul nuw nsw i32 %div, 312
  %div120 = lshr i32 %mul, 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cw_get_voltage.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@cw_get_voltage, %cleanup)) #7
          to label %if.then7 [label %cleanup], !srcloc !198

if.then7:                                         ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %cw_bat to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cw_bat, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cw_get_voltage.__UNIQUE_ID_ddebug292, ptr noundef %16, ptr noundef nonnull @.str.75, i32 noundef %div120, i32 noundef %conv.2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.2, %cw_read_word.exit
  %retval.0 = phi i32 [ %call.i.lcssa, %cw_read_word.exit ], [ %div120, %if.then7 ], [ %div120, %if.end.2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_bat_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %battery_delay_work = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 2
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %battery_delay_work) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cw_bat_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %battery_workqueue = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %battery_workqueue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %battery_workqueue, align 4
  %battery_delay_work = getelementptr inbounds %struct.cw_battery, ptr %1, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %battery_delay_work, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 94)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !49, !50, !52, !54, !55, !56, !57, !59, !60, !61, !63, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !125, !127, !129, !131, !132, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !177, !178, !180, !181, !182, !183, !185, !187}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @__initcall__kmod_cw2015_battery__298_759_cw_bat_driver_init6, !1, !"__initcall__kmod_cw2015_battery__298_759_cw_bat_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/cw2015_battery.c", i32 759, i32 1}
!2 = !{ptr @__exitcall_cw_bat_driver_exit, !1, !"__exitcall_cw_bat_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author299, !4, !"__UNIQUE_ID_author299", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/cw2015_battery.c", i32 761, i32 1}
!5 = !{ptr @__UNIQUE_ID_author300, !6, !"__UNIQUE_ID_author300", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/cw2015_battery.c", i32 762, i32 1}
!7 = !{ptr @__UNIQUE_ID_description301, !8, !"__UNIQUE_ID_description301", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/cw2015_battery.c", i32 763, i32 1}
!9 = !{ptr @__UNIQUE_ID_file302, !10, !"__UNIQUE_ID_file302", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/cw2015_battery.c", i32 764, i32 1}
!11 = !{ptr @__UNIQUE_ID_license303, !10, !"__UNIQUE_ID_license303", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/cw2015_battery.c", i32 750, i32 11}
!14 = !{ptr @cw_bat_driver, !15, !"cw_bat_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/cw2015_battery.c", i32 748, i32 26}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/cw2015_battery.c", i32 658, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @cw_bat_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @cw_bat_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @cw_bat_probe._key, !25, !"_key", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/cw2015_battery.c", i32 662, i32 19}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/cw2015_battery.c", i32 664, i32 3}
!29 = !{ptr @cw_bat_probe._entry.7, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @cw_bat_probe._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/cw2015_battery.c", i32 671, i32 3}
!33 = !{ptr @cw_bat_probe._entry.10, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @cw_bat_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/cw2015_battery.c", i32 684, i32 4}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/cw2015_battery.c", i32 696, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cw_bat_probe._entry.14, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @cw_bat_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/cw2015_battery.c", i32 700, i32 30}
!44 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cw_bat_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/cw2015_battery.c", i32 701, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cw_bat_probe.__key.21, !46, !"__key", i1 false, i1 false}
!49 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/cw2015_battery.c", i32 568, i32 41}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/cw2015_battery.c", i32 570, i32 3}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @cw2015_parse_properties._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @cw2015_parse_properties._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/cw2015_battery.c", i32 573, i32 3}
!59 = !{ptr @cw2015_parse_properties._entry.26, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cw2015_parse_properties._entry_ptr.28, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/cw2015_battery.c", i32 589, i32 38}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/cw2015_battery.c", i32 592, i32 3}
!65 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @cw2015_parse_properties.__UNIQUE_ID_ddebug297, !64, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!67 = !{ptr @cw2015_regmap_config, !68, !"cw2015_regmap_config", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/cw2015_battery.c", i32 633, i32 35}
!69 = !{ptr @regmap_wr_table, !70, !"regmap_wr_table", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/cw2015_battery.c", i32 619, i32 41}
!71 = !{ptr @regmap_ranges_wr_yes, !72, !"regmap_ranges_wr_yes", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/cw2015_battery.c", i32 612, i32 34}
!73 = !{ptr @regmap_rd_table, !74, !"regmap_rd_table", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/cw2015_battery.c", i32 607, i32 41}
!75 = !{ptr @regmap_ranges_rd_yes, !76, !"regmap_ranges_rd_yes", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/cw2015_battery.c", i32 599, i32 34}
!77 = !{ptr @regmap_vol_table, !78, !"regmap_vol_table", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/cw2015_battery.c", i32 628, i32 41}
!79 = !{ptr @regmap_ranges_vol_yes, !80, !"regmap_ranges_vol_yes", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/cw2015_battery.c", i32 624, i32 34}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/cw2015_battery.c", i32 174, i32 3}
!83 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cw_init.__UNIQUE_ID_ddebug289, !82, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/cw2015_battery.c", i32 187, i32 3}
!87 = !{ptr @cw_init.__UNIQUE_ID_ddebug290, !86, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/cw2015_battery.c", i32 192, i32 5}
!90 = !{ptr @cw_init._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @cw_init._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/cw2015_battery.c", i32 197, i32 4}
!94 = !{ptr @cw_init._entry.36, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @cw_init._entry_ptr.38, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/cw2015_battery.c", i32 206, i32 4}
!98 = !{ptr @cw_init._entry.39, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cw_init._entry_ptr.41, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/cw2015_battery.c", i32 212, i32 4}
!102 = !{ptr @cw_init._entry.42, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cw_init._entry_ptr.44, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/cw2015_battery.c", i32 218, i32 3}
!106 = !{ptr @cw_init._entry.45, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cw_init._entry_ptr.47, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/cw2015_battery.c", i32 222, i32 2}
!110 = !{ptr @cw_init.__UNIQUE_ID_ddebug291, !109, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/cw2015_battery.c", i32 109, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @cw_update_profile._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @cw_update_profile._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/power/supply/cw2015_battery.c", i32 149, i32 3}
!118 = !{ptr @cw_update_profile._entry.51, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @cw_update_profile._entry_ptr.53, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/cw2015_battery.c", i32 152, i32 3}
!122 = !{ptr @cw_update_profile.__UNIQUE_ID_ddebug288, !121, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/power/supply/cw2015_battery.c", i32 555, i32 11}
!125 = !{ptr @cw2015_bat_desc, !126, !"cw2015_bat_desc", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/cw2015_battery.c", i32 554, i32 39}
!127 = !{ptr @cw_battery_properties, !128, !"cw_battery_properties", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/cw2015_battery.c", i32 540, i32 35}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/cw2015_battery.c", i32 430, i32 3}
!131 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @cw_bat_work._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @cw_bat_work._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.58, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/cw2015_battery.c", i32 446, i32 2}
!136 = !{ptr @cw_bat_work.__UNIQUE_ID_ddebug293, !135, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/cw2015_battery.c", i32 447, i32 2}
!139 = !{ptr @cw_bat_work.__UNIQUE_ID_ddebug294, !138, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/cw2015_battery.c", i32 448, i32 2}
!142 = !{ptr @cw_bat_work.__UNIQUE_ID_ddebug295, !141, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/cw2015_battery.c", i32 449, i32 2}
!145 = !{ptr @cw_bat_work.__UNIQUE_ID_ddebug296, !144, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/cw2015_battery.c", i32 370, i32 3}
!148 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @cw_update_soc._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @cw_update_soc._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.64, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/cw2015_battery.c", i32 266, i32 3}
!153 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @cw_get_soc._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @cw_get_soc._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/cw2015_battery.c", i32 269, i32 4}
!158 = !{ptr @cw_get_soc._entry.66, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @cw_get_soc._entry_ptr.68, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/cw2015_battery.c", i32 285, i32 4}
!162 = !{ptr @cw_get_soc._entry.69, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @cw_get_soc._entry_ptr.71, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/cw2015_battery.c", i32 383, i32 3}
!166 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @cw_update_voltage._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @cw_update_voltage._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.74, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/cw2015_battery.c", i32 327, i32 2}
!171 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cw_get_voltage.__UNIQUE_ID_ddebug292, !170, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/cw2015_battery.c", i32 350, i32 3}
!175 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @cw_update_charge_status._entry, !174, !"_entry", i1 false, i1 false}
!177 = !{ptr @cw_update_charge_status._entry_ptr, !174, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/cw2015_battery.c", i32 411, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @cw_update_time_to_empty._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @cw_update_time_to_empty._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @cw2015_of_match, !184, !"cw2015_of_match", i1 false, i1 false}
!184 = !{!"../drivers/power/supply/cw2015_battery.c", i32 742, i32 34}
!185 = !{ptr @cw_bat_pm_ops, !186, !"cw_bat_pm_ops", i1 false, i1 false}
!186 = !{!"../drivers/power/supply/cw2015_battery.c", i32 726, i32 8}
!187 = !{ptr @cw_bat_id_table, !188, !"cw_bat_id_table", i1 false, i1 false}
!188 = !{!"../drivers/power/supply/cw2015_battery.c", i32 737, i32 35}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i64 2148774411, i64 2148774416, i64 2148774429, i64 2148774473, i64 2148774507, i64 2148774528}
!199 = !{!"auto-init"}
!200 = !{i8 0, i8 2}
