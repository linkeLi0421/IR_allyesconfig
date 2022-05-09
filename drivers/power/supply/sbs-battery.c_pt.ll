; ModuleID = '/llk/IR_all_yes/drivers/power/supply/sbs-battery.c_pt.bc'
source_filename = "../drivers/power/supply/sbs-battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.chip_data = type { i32, i8, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%union.power_supply_propval = type { i32 }
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
%struct.sbs_info = type { ptr, ptr, i8, ptr, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.mutex, i32, i32, [3 x [33 x i8]] }
%struct.sbs_platform_data = type { i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_sbs_battery__300_1287_sbs_battery_driver_init6 = internal global ptr @sbs_battery_driver_init, section ".initcall6.init", align 4
@sbs_battery_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sbs_probe, ptr null, ptr @sbs_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sbs_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sbs_pm_ops, ptr null, ptr null }, ptr @sbs_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sbs_battery_driver_exit = internal global ptr @sbs_battery_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description301 = internal constant [51 x i8] c"sbs_battery.description=SBS battery monitor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [50 x i8] c"sbs_battery.file=drivers/power/supply/sbs-battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [24 x i8] c"sbs_battery.license=GPL\00", section ".modinfo", align 1
@__param_str_force_load = internal constant [23 x i8] c"sbs_battery.force_load\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@force_load = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_force_load = internal constant %struct.kernel_param { ptr @__param_str_force_load, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @force_load } }, section "__param", align 4
@__UNIQUE_ID_force_loadtype304 = internal constant [37 x i8] c"sbs_battery.parmtype=force_load:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_force_load305 = internal constant [87 x i8] c"sbs_battery.parm=force_load:Attempt to load the driver even if no battery is connected\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbs-battery\00", [20 x i8] zeroinitializer }, align 32
@sbs_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sbs,sbs-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq20z65\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq20z75\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@sbs_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sbs_suspend, ptr null, ptr @sbs_suspend, ptr null, ptr @sbs_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sbs_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq20z65\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq20z75\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sbs-battery\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@sbs_default_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr null, i32 1, ptr null, i32 0, ptr @sbs_properties, i32 31, ptr @sbs_get_property, ptr null, ptr null, ptr @sbs_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sbs-%s\00", [25 x i8] zeroinitializer }, align 32
@sbs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->mode_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbs,i2c-retry-count\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sbs,poll-retry-count\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sbs,disable-charger-broadcasts\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbs,battery-detect\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Failed to get gpio\0A\00", [44 x i8] zeroinitializer }, align 32
@sbs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1181, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to get gpio as irq: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sbs_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/power/supply/sbs-battery.c\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sbs_probe._entry_ptr = internal global ptr @sbs_probe._entry, section ".printk_index", align 4
@sbs_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 1189, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request irq: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@sbs_probe._entry_ptr.15 = internal global ptr @sbs_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get present status\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@sbs_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.9, ptr @.str.10, i32 1220, ptr @.str.20, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: battery gas gauge device registered\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sbs_probe._entry_ptr.21 = internal global ptr @sbs_probe._entry.18, section ".printk_index", align 4
@sbs_properties = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 0, i32 51, i32 2, i32 3, i32 6, i32 7, i32 12, i32 17, i32 18, i32 47, i32 50, i32 52, i32 60, i32 61, i32 63, i32 75, i32 11, i32 10, i32 45, i32 43, i32 41, i32 26, i32 24, i32 22, i32 30, i32 32, i32 70, i32 71, i32 72, i32 74, i32 73], [36 x i8] zeroinitializer }, align 32
@sbs_get_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.10, i32 1007, ptr @.str.24, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: INVALID property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sbs_get_property\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sbs_get_property._entry_ptr = internal global ptr @sbs_get_property._entry, section ".printk_index", align 4
@sbs_get_property.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.23, ptr @.str.10, ptr @.str.26, i8 1, i8 1, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbs_battery\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: property = %d, value = %x\0A\00", [33 x i8] zeroinitializer }, align 32
@sbs_update_presence.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.27, ptr @.str.10, ptr @.str.28, i8 0, i8 75, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbs_update_presence\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to read spec info: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"google,cros-ec-i2c-tunnel\00", [38 x i8] zeroinitializer }, align 32
@sbs_update_presence._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.27, ptr @.str.10, i32 319, ptr @.str.20, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Disabling PEC because of broken Cros-EC implementation\0A\00", [40 x i8] zeroinitializer }, align 32
@sbs_update_presence._entry_ptr = internal global ptr @sbs_update_presence._entry, section ".printk_index", align 4
@sbs_update_presence.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.27, ptr @.str.10, ptr @.str.31, i8 0, i8 81, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PEC: %s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@sbs_disable_charger_broadcasts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.10, i32 261, ptr @.str.24, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Failed to disable charger broadcasting: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sbs_disable_charger_broadcasts\00", [33 x i8] zeroinitializer }, align 32
@sbs_disable_charger_broadcasts._entry_ptr = internal global ptr @sbs_disable_charger_broadcasts._entry, section ".printk_index", align 4
@sbs_disable_charger_broadcasts.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.35, ptr @.str.10, ptr @.str.36, i8 0, i8 65, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@sbs_read_word_data.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.37, ptr @.str.10, ptr @.str.38, i8 0, i8 87, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sbs_read_word_data\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: i2c read at address 0x%x failed\0A\00", [59 x i8] zeroinitializer }, align 32
@sbs_write_word_data.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.39, ptr @.str.10, ptr @.str.40, i8 0, i8 118, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbs_write_word_data\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: i2c write to address 0x%x failed\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LION\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LiP\00", [28 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiCd\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"NiMH\00", [27 x i8] zeroinitializer }, align 32
@sbs_get_chemistry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.10, i32 866, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unknown chemistry: %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sbs_get_chemistry\00", [46 x i8] zeroinitializer }, align 32
@sbs_get_chemistry._entry_ptr = internal global ptr @sbs_get_chemistry._entry, section ".printk_index", align 4
@sbs_data = internal constant { [28 x %struct.chip_data], [96 x i8] } { [28 x %struct.chip_data] [%struct.chip_data { i32 3, i8 0, i32 0, i32 65535 }, %struct.chip_data { i32 -1, i8 3, i32 0, i32 65535 }, %struct.chip_data { i32 52, i8 8, i32 0, i32 65535 }, %struct.chip_data { i32 12, i8 9, i32 0, i32 65535 }, %struct.chip_data { i32 17, i8 10, i32 -32768, i32 32767 }, %struct.chip_data { i32 18, i8 11, i32 -32768, i32 32767 }, %struct.chip_data { i32 50, i8 12, i32 0, i32 100 }, %struct.chip_data { i32 47, i8 13, i32 0, i32 100 }, %struct.chip_data { i32 60, i8 17, i32 0, i32 65535 }, %struct.chip_data { i32 61, i8 18, i32 0, i32 65535 }, %struct.chip_data { i32 63, i8 19, i32 0, i32 65535 }, %struct.chip_data { i32 0, i8 22, i32 0, i32 65535 }, %struct.chip_data { i32 51, i8 22, i32 0, i32 65535 }, %struct.chip_data { i32 7, i8 23, i32 0, i32 65535 }, %struct.chip_data { i32 75, i8 28, i32 0, i32 65535 }, %struct.chip_data { i32 45, i8 15, i32 0, i32 65535 }, %struct.chip_data { i32 26, i8 15, i32 0, i32 65535 }, %struct.chip_data { i32 43, i8 16, i32 0, i32 65535 }, %struct.chip_data { i32 24, i8 16, i32 0, i32 65535 }, %struct.chip_data { i32 41, i8 24, i32 0, i32 65535 }, %struct.chip_data { i32 22, i8 24, i32 0, i32 65535 }, %struct.chip_data { i32 11, i8 25, i32 0, i32 65535 }, %struct.chip_data { i32 10, i8 25, i32 0, i32 65535 }, %struct.chip_data { i32 6, i8 34, i32 0, i32 65535 }, %struct.chip_data { i32 74, i8 32, i32 0, i32 65535 }, %struct.chip_data { i32 73, i8 33, i32 0, i32 65535 }, %struct.chip_data { i32 30, i8 20, i32 0, i32 65535 }, %struct.chip_data { i32 32, i8 21, i32 0, i32 65535 }], [96 x i8] zeroinitializer }, align 32
@sbs_get_property_index._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.10, i32 687, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Invalid Property - %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sbs_get_property_index\00", [41 x i8] zeroinitializer }, align 32
@sbs_get_property_index._entry_ptr = internal global ptr @sbs_get_property_index._entry, section ".printk_index", align 4
@sbs_serial = internal global { [5 x i8], [27 x i8] } zeroinitializer, align 32
@.str.49 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%04x\00", [27 x i8] zeroinitializer }, align 32
@sbs_read_string_data.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.50, ptr @.str.10, ptr @.str.51, i8 0, i8 112, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sbs_read_string_data\00", [43 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to read block 0x%x: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@sbs_read_string_data_fallback.__print_once = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@sbs_read_string_data_fallback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.10, i32 368, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [100 x i8], [60 x i8] } { [100 x i8] c"I2C adapter does not support I2C_FUNC_SMBUS_READ_BLOCK_DATA.\0AFallback method does not support PEC.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sbs_read_string_data_fallback\00", [34 x i8] zeroinitializer }, align 32
@sbs_read_string_data_fallback._entry_ptr = internal global ptr @sbs_read_string_data_fallback._entry, section ".printk_index", align 4
@sbs_read_string_data_fallback.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.53, ptr @.str.10, ptr @.str.38, i8 0, i8 97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sbs_read_string_data_fallback._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.53, ptr @.str.10, i32 397, ptr @.str.24, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: Returned block_length is longer than 0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@sbs_read_string_data_fallback._entry_ptr.56 = internal global ptr @sbs_read_string_data_fallback._entry.54, section ".printk_index", align 4
@sbs_read_string_data_fallback.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.53, ptr @.str.10, ptr @.str.38, i8 0, i8 103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sbs_unit_adjustment.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.57, ptr @.str.10, ptr @.str.58, i8 0, i8 -65, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sbs_unit_adjustment\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: no need for unit conversion %d\0A\00", [60 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@devm_delayed_work_autocancel.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&(w)->work)\00", [34 x i8] zeroinitializer }, align 32
@devm_delayed_work_autocancel.__key.60 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&(w)->timer\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 2, i64 3, i64 6, i64 7, i64 10, i64 11, i64 12, i64 17, i64 18, i64 22, i64 24, i64 26, i64 30, i64 32, i64 41, i64 43, i64 45, i64 47, i64 50, i64 51, i64 52, i64 60, i64 61, i64 63, i64 70, i64 71, i64 72, i64 73, i64 74, i64 75]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 70, i64 71, i64 72]
@__sancov_gen_cov_switch_values.63 = internal global [30 x i64] [i64 28, i64 32, i64 0, i64 3, i64 6, i64 7, i64 10, i64 11, i64 12, i64 17, i64 18, i64 22, i64 24, i64 26, i64 30, i64 32, i64 41, i64 43, i64 45, i64 47, i64 50, i64 51, i64 52, i64 60, i64 61, i64 63, i64 73, i64 74, i64 75, i64 4294967295]
@__sancov_gen_cov_switch_values.64 = internal global [17 x i64] [i64 15, i64 32, i64 16, i64 17, i64 18, i64 19, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 29, i64 30, i64 67, i64 68]
@__sancov_gen_cov_switch_values.65 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 51]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 47]
@__sancov_gen_cov_switch_values.67 = internal global [19 x i64] [i64 17, i64 32, i64 10, i64 11, i64 12, i64 17, i64 18, i64 22, i64 24, i64 26, i64 30, i64 32, i64 41, i64 43, i64 45, i64 52, i64 60, i64 61, i64 63]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 11, i64 12]
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"sbs_battery_driver\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1277, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"force_load\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 243, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1282, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"sbs_dt_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1263, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [11 x i8] c"sbs_pm_ops\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1248, i32 8 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"sbs_id\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1255, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"sbs_default_desc\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1107, i32 39 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1129, i32 60 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1144, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1149, i32 46 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1154, i32 46 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1166, i32 6 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1169, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1172, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1181, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1189, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1205, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1217, i32 10 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1219, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"sbs_properties\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 158, i32 41 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1006, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 1027, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 301, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 317, i32 59 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 319, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 323, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 260, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 263, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 348, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 472, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 854, i32 30 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 856, i32 35 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 858, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 860, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 866, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant [9 x i8] c"sbs_data\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 98, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 686, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant [11 x i8] c"sbs_serial\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 823, i32 13 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 833, i32 22 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 448, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 367, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 395, i32 3 }
@___asan_gen_.287 = private constant [38 x i8] c"../drivers/power/supply/sbs-battery.c\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.287, i32 765, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [32 x i8] c"../include/linux/devm-helpers.h\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.299, i32 50, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_force_load305, ptr @__UNIQUE_ID_force_loadtype304, ptr @__UNIQUE_ID_license303, ptr @__exitcall_sbs_battery_driver_exit, ptr @__initcall__kmod_sbs_battery__300_1287_sbs_battery_driver_init6, ptr @__param_force_load, ptr @sbs_battery_driver_exit, ptr @sbs_disable_charger_broadcasts._entry, ptr @sbs_disable_charger_broadcasts._entry_ptr, ptr @sbs_get_chemistry._entry, ptr @sbs_get_chemistry._entry_ptr, ptr @sbs_get_property._entry, ptr @sbs_get_property._entry_ptr, ptr @sbs_get_property_index._entry, ptr @sbs_get_property_index._entry_ptr, ptr @sbs_probe._entry, ptr @sbs_probe._entry.13, ptr @sbs_probe._entry.18, ptr @sbs_probe._entry_ptr, ptr @sbs_probe._entry_ptr.15, ptr @sbs_probe._entry_ptr.21, ptr @sbs_read_string_data_fallback._entry, ptr @sbs_read_string_data_fallback._entry.54, ptr @sbs_read_string_data_fallback._entry_ptr, ptr @sbs_read_string_data_fallback._entry_ptr.56, ptr @sbs_update_presence._entry, ptr @sbs_update_presence._entry_ptr, ptr @sbs_battery_driver, ptr @force_load, ptr @.str, ptr @sbs_dt_ids, ptr @sbs_pm_ops, ptr @sbs_id, ptr @sbs_default_desc, ptr @.str.1, ptr @sbs_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @sbs_properties, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @sbs_data, ptr @.str.47, ptr @.str.48, ptr @sbs_serial, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @devm_delayed_work_autocancel.__key, ptr @.str.59, ptr @devm_delayed_work_autocancel.__key.60, ptr @.str.61], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_battery_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_load to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_default_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_properties to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_get_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_update_presence._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_disable_charger_broadcasts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_get_chemistry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_data to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_get_property_index._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_serial to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_read_string_data_fallback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_read_string_data_fallback._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @devm_delayed_work_autocancel.__key.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_battery_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sbs_battery_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbs_battery_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @sbs_battery_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_probe(ptr noundef %client) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %val = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #9
  %2 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %call = tail call ptr @devm_kmemdup(ptr noundef %dev, ptr noundef nonnull @sbs_default_desc, i32 noundef 52, i32 noundef 3264) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup109_crit_edge, label %if.end

entry.cleanup109_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup109

if.end:                                           ; preds = %entry
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %call5 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #9
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %call, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %dev_name.exit.cleanup109_crit_edge, label %if.end9

dev_name.exit.cleanup109_crit_edge:               ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup109

if.end9:                                          ; preds = %dev_name.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 336, i32 noundef 3520) #9
  %tobool12.not = icmp eq ptr %call.i, null
  br i1 %tobool12.not, label %if.end9.cleanup109_crit_edge, label %if.end14

if.end9.cleanup109_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup109

if.end14:                                         ; preds = %if.end9
  %call16 = tail call ptr @device_get_match_data(ptr noundef %dev) #9
  %9 = ptrtoint ptr %call16 to i32
  %flags = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 11
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %flags, align 4
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %14 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %15 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %drv_data, align 4
  %last_state = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %last_state, align 4
  %technology.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 12
  %17 = ptrtoint ptr %technology.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %technology.i, align 4
  %arrayidx.i = getelementptr %struct.sbs_info, ptr %call.i, i32 0, i32 13, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr %struct.sbs_info, ptr %call.i, i32 0, i32 13, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.sbs_info, ptr %call.i, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %arrayidx.2.i, align 1
  %mode_lock = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %mode_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @sbs_probe.__key) #9
  %i2c_retry_count = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 7
  %call.i180 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %i2c_retry_count, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180)
  %tobool22.not = icmp eq i32 %call.i180, 0
  br i1 %tobool22.not, label %if.end14.if.end25_crit_edge, label %if.then23

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %i2c_retry_count, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end14.if.end25_crit_edge
  %poll_retry_count = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 8
  %call.i181 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %poll_retry_count, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool28.not = icmp eq i32 %call.i181, 0
  br i1 %tobool28.not, label %if.end25.if.end31_crit_edge, label %if.then29

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %poll_retry_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %poll_retry_count, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end25.if.end31_crit_edge
  %tobool32.not = icmp eq ptr %1, null
  br i1 %tobool32.not, label %if.end31.if.end38_crit_edge, label %if.then33

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %poll_retry_count34 = getelementptr inbounds %struct.sbs_platform_data, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %poll_retry_count34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %poll_retry_count34, align 4
  %25 = ptrtoint ptr %poll_retry_count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %poll_retry_count, align 4
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %1, align 4
  %28 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %i2c_retry_count, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end31.if.end38_crit_edge
  %29 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %i2c_retry_count, align 4
  %add = add i32 %30, 1
  store i32 %add, ptr %i2c_retry_count, align 4
  %call.i182 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  %lnot = xor i1 %call.i182, true
  %charger_broadcasts = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 4
  %frombool = zext i1 %lnot to i8
  %31 = ptrtoint ptr %charger_broadcasts to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool, ptr %charger_broadcasts, align 4
  %call44 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 1) #9
  %gpio_detect = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3
  %32 = ptrtoint ptr %gpio_detect to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call44, ptr %gpio_detect, align 4
  %cmp.i = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then47, label %if.end52

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %33 = ptrtoint ptr %call44 to i32
  %call51 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %33, ptr noundef nonnull @.str.7) #9
  br label %cleanup109

if.end52:                                         ; preds = %if.end38
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %tobool54.not = icmp eq ptr %call44, null
  br i1 %tobool54.not, label %if.end52.skip_gpio_crit_edge, label %if.end56

if.end52.skip_gpio_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_gpio

if.end56:                                         ; preds = %if.end52
  %call58 = tail call i32 @gpiod_to_irq(ptr noundef nonnull %call44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call58)
  %cmp = icmp slt i32 %call58, 1
  br i1 %cmp, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call58) #12
  br label %skip_gpio

if.end64:                                         ; preds = %if.end56
  %35 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i184 = icmp eq ptr %36, null
  br i1 %tobool.not.i184, label %if.end.i185, label %if.end64.dev_name.exit187_crit_edge

if.end64.dev_name.exit187_crit_edge:              ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit187

if.end.i185:                                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 4
  br label %dev_name.exit187

dev_name.exit187:                                 ; preds = %if.end.i185, %if.end64.dev_name.exit187_crit_edge
  %retval.0.i186 = phi ptr [ %38, %if.end.i185 ], [ %36, %if.end64.dev_name.exit187_crit_edge ]
  %call68 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call58, ptr noundef null, ptr noundef nonnull @sbs_irq, i32 noundef 8195, ptr noundef %retval.0.i186, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %dev_name.exit187.skip_gpio_crit_edge, label %do.end73

dev_name.exit187.skip_gpio_crit_edge:             ; preds = %dev_name.exit187
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_gpio

do.end73:                                         ; preds = %dev_name.exit187
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call68) #12
  br label %skip_gpio

skip_gpio:                                        ; preds = %do.end73, %dev_name.exit187.skip_gpio_crit_edge, %do.end62, %if.end52.skip_gpio_crit_edge
  %39 = load i8, ptr @force_load, align 1, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool76.not = icmp eq i8 %39, 0
  br i1 %tobool76.not, label %lor.lhs.false, label %skip_gpio.if.end88_crit_edge

skip_gpio.if.end88_crit_edge:                     ; preds = %skip_gpio
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

lor.lhs.false:                                    ; preds = %skip_gpio
  %40 = ptrtoint ptr %gpio_detect to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gpio_detect, align 4
  %tobool78.not = icmp eq ptr %41, null
  br i1 %tobool78.not, label %if.then79, label %lor.lhs.false.if.end88_crit_edge

lor.lhs.false.if.end88_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88

if.then79:                                        ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %val, align 4, !annotation !170
  %call80 = call fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %client, i32 noundef 3, ptr noundef nonnull %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.then79.cleanup_crit_edge, label %lor.lhs.false82

if.then79.cleanup_crit_edge:                      ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false82:                                  ; preds = %if.then79
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool83.not = icmp eq i32 %44, 0
  br i1 %tobool83.not, label %lor.lhs.false82.cleanup_crit_edge, label %cleanup.thread

lor.lhs.false82.cleanup_crit_edge:                ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.thread:                                   ; preds = %lor.lhs.false82
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %if.end88

cleanup:                                          ; preds = %lor.lhs.false82.cleanup_crit_edge, %if.then79.cleanup_crit_edge
  %call86 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef -19, ptr noundef nonnull @.str.16) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  br label %cleanup109

if.end88:                                         ; preds = %cleanup.thread, %lor.lhs.false.if.end88_crit_edge, %skip_gpio.if.end88_crit_edge
  %work = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #9
  %45 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @devm_delayed_work_autocancel.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #9
  %entry5.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9, i32 0, i32 1
  %46 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9, i32 0, i32 1, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9, i32 0, i32 2
  %48 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @sbs_delayed_work, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.61, ptr noundef nonnull @devm_delayed_work_autocancel.__key.60) #9
  %call.i188 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @devm_delayed_work_drop, ptr noundef %work) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool91.not = icmp eq i32 %call.i188, 0
  br i1 %tobool91.not, label %if.end93, label %if.end88.cleanup109_crit_edge

if.end88.cleanup109_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup109

if.end93:                                         ; preds = %if.end88
  %call95 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef nonnull %psy_cfg) #9
  %power_supply = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 1
  %49 = ptrtoint ptr %power_supply to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call95, ptr %power_supply, align 4
  %cmp.i189 = icmp ugt ptr %call95, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i189, label %if.then98, label %do.end106

if.then98:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %call95 to i32
  %call102 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %50, ptr noundef nonnull @.str.17) #9
  br label %cleanup109

do.end106:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  %name108 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef %name108) #12
  br label %cleanup109

cleanup109:                                       ; preds = %do.end106, %if.then98, %if.end88.cleanup109_crit_edge, %cleanup, %if.then47, %if.end9.cleanup109_crit_edge, %dev_name.exit.cleanup109_crit_edge, %entry.cleanup109_crit_edge
  %retval.1 = phi i32 [ %call51, %if.then47 ], [ %call102, %if.then98 ], [ 0, %do.end106 ], [ %call86, %cleanup ], [ -12, %entry.cleanup109_crit_edge ], [ -12, %dev_name.exit.cleanup109_crit_edge ], [ -12, %if.end9.cleanup109_crit_edge ], [ %call.i188, %if.end88.cleanup109_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #9
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbs_alert(ptr nocapture noundef readonly %client, i32 noundef %prot, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %power_supply.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power_supply.i, align 4
  %gpio_detect.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %gpio_detect.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_detect.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.sbs_supply_changed.exit_crit_edge, label %if.end.i

entry.sbs_supply_changed.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_supply_changed.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %1, i1 noundef zeroext %tobool.i) #9
  tail call void @power_supply_changed(ptr noundef %3) #9
  br label %sbs_supply_changed.exit

sbs_supply_changed.exit:                          ; preds = %if.end.i, %entry.sbs_supply_changed.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_kmemdup(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_irq(i32 noundef %irq, ptr nocapture noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %power_supply.i = getelementptr inbounds %struct.sbs_info, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power_supply.i, align 4
  %gpio_detect.i = getelementptr inbounds %struct.sbs_info, ptr %devid, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_detect.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_detect.i, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.sbs_supply_changed.exit_crit_edge, label %if.end.i

entry.sbs_supply_changed.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_supply_changed.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.i = icmp ne i32 %call.i, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %devid, i1 noundef zeroext %tobool.i) #9
  tail call void @power_supply_changed(ptr noundef %1) #9
  br label %sbs_supply_changed.exit

sbs_supply_changed.exit:                          ; preds = %if.end.i, %entry.sbs_supply_changed.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %client, i32 noundef %psp, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %flags = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @sbs_get_ti_battery_presence_and_health(ptr noundef %client, i32 noundef %psp, ptr noundef %val)
  br label %cleanup

if.end:                                           ; preds = %entry
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %if.end.while.body.i_crit_edge, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %5, %if.end.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end7_crit_edge, label %while.cond.i

while.body.i.if.end7_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body.i:                                        ; preds = %while.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_presence_and_health, %if.then3)) #9
          to label %if.then9.i [label %if.then3], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 22) #9
  br label %if.then3

if.then3:                                         ; preds = %if.then9.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp4 = icmp eq i32 %psp, 3
  br i1 %cmp4, label %if.then5, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.end7:                                          ; preds = %while.body.i.if.end7_crit_edge, %if.end.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp8 = icmp eq i32 %psp, 3
  br i1 %cmp8, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_retry_count.i.i = getelementptr inbounds %struct.sbs_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %i2c_retry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_retry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp26.i.i = icmp sgt i32 %11, 0
  br i1 %cmp26.i.i, label %if.else.while.body.i.i_crit_edge, label %if.else.if.else12_crit_edge

if.else.if.else12_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12

if.else.while.body.i.i_crit_edge:                 ; preds = %if.else
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %retries.027.i.i, -1
  %cmp.i.i = icmp sgt i32 %retries.027.i.i, 1
  br i1 %cmp.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %do.body.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.else.while.body.i.i_crit_edge
  %retries.027.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %11, %if.else.while.body.i.i_crit_edge ]
  %call1.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, -1
  br i1 %cmp2.i.i, label %sbs_read_word_data.exit.thread.loopexit.i, label %while.cond.i.i

do.body.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_presence_and_health, %if.else12)) #9
          to label %if.then9.i.i [label %if.else12], !srcloc !171

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 3) #9
  br label %if.else12

sbs_read_word_data.exit.thread.loopexit.i:        ; preds = %while.body.i.i
  %phi.bo.i = and i32 %call1.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %phi.cmp.i.not = icmp eq i32 %phi.bo.i, 0
  br i1 %phi.cmp.i.not, label %sbs_read_word_data.exit.thread.loopexit.i.if.else12_crit_edge, label %if.then11

sbs_read_word_data.exit.thread.loopexit.i.if.else12_crit_edge: ; preds = %sbs_read_word_data.exit.thread.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else12

if.then11:                                        ; preds = %sbs_read_word_data.exit.thread.loopexit.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 10, ptr %val, align 4
  br label %cleanup

if.else12:                                        ; preds = %sbs_read_word_data.exit.thread.loopexit.i.if.else12_crit_edge, %if.then9.i.i, %do.body.i.i, %if.else.if.else12_crit_edge
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else12, %if.then11, %if.then9, %if.then5, %if.then3.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.then5 ], [ %call1.i, %if.then3.cleanup_crit_edge ], [ 0, %if.then11 ], [ 0, %if.else12 ], [ 0, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbs_delayed_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -36
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.if.else5_crit_edge

entry.if.else5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else5

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %if.end, label %while.cond.i

do.body.i:                                        ; preds = %while.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_delayed_work, %if.then)) #9
          to label %if.then9.i [label %if.then], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 22) #9
  br label %if.then

if.then:                                          ; preds = %if.then9.i, %do.body.i
  %poll_time = getelementptr i8, ptr %work, i32 -12
  %6 = ptrtoint ptr %poll_time to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %poll_time, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body.i
  %and = and i32 %call1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.end7.thread

if.else:                                          ; preds = %if.end
  %and2 = and i32 %call1.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else.if.else5_crit_edge, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.else.if.else5_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else5

if.else5:                                         ; preds = %if.else.if.else5_crit_edge, %entry.if.else5_crit_edge
  br label %if.end7

if.end7:                                          ; preds = %if.else5, %if.else.if.end7_crit_edge
  %ret.0 = phi i32 [ 2, %if.else.if.end7_crit_edge ], [ 1, %if.else5 ]
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %i2c_retry_count.i.i = getelementptr inbounds %struct.sbs_info, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %i2c_retry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %i2c_retry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp26.i.i = icmp sgt i32 %12, 0
  br i1 %cmp26.i.i, label %if.end7.while.body.i.i.preheader_crit_edge, label %if.end7.sbs_status_correct.exit_crit_edge

if.end7.sbs_status_correct.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_status_correct.exit

if.end7.while.body.i.i.preheader_crit_edge:       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.preheader

if.end7.thread:                                   ; preds = %if.end
  %13 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i.i58 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i58 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i58, align 4
  %i2c_retry_count.i.i59 = getelementptr inbounds %struct.sbs_info, ptr %16, i32 0, i32 7
  %17 = ptrtoint ptr %i2c_retry_count.i.i59 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %i2c_retry_count.i.i59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp26.i.i60 = icmp sgt i32 %18, 0
  br i1 %cmp26.i.i60, label %if.end7.thread.while.body.i.i.preheader_crit_edge, label %if.end7.thread.if.else.i.thread_crit_edge

if.end7.thread.if.else.i.thread_crit_edge:        ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.thread

if.end7.thread.while.body.i.i.preheader_crit_edge: ; preds = %if.end7.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i.preheader

while.body.i.i.preheader:                         ; preds = %if.end7.thread.while.body.i.i.preheader_crit_edge, %if.end7.while.body.i.i.preheader_crit_edge
  %19 = phi i32 [ %18, %if.end7.thread.while.body.i.i.preheader_crit_edge ], [ %12, %if.end7.while.body.i.i.preheader_crit_edge ]
  %20 = phi ptr [ %14, %if.end7.thread.while.body.i.i.preheader_crit_edge ], [ %8, %if.end7.while.body.i.i.preheader_crit_edge ]
  %ret.063 = phi i32 [ 4, %if.end7.thread.while.body.i.i.preheader_crit_edge ], [ %ret.0, %if.end7.while.body.i.i.preheader_crit_edge ]
  %cmp2.not.i61 = phi i1 [ false, %if.end7.thread.while.body.i.i.preheader_crit_edge ], [ true, %if.end7.while.body.i.i.preheader_crit_edge ]
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %retries.027.i.i, -1
  %cmp.i.i = icmp sgt i32 %retries.027.i.i, 1
  br i1 %cmp.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %do.body.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %while.body.i.i.preheader
  %retries.027.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %19, %while.body.i.i.preheader ]
  %call1.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %20, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, -1
  br i1 %cmp2.i.i, label %if.end.i, label %while.cond.i.i

do.body.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_delayed_work, %sbs_status_correct.exit)) #9
          to label %if.then9.i.i [label %sbs_status_correct.exit], !srcloc !171

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %20, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 10) #9
  br label %sbs_status_correct.exit

if.end.i:                                         ; preds = %while.body.i.i
  %phi.bo.i = shl i32 %call1.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %cmp4.i = icmp eq i32 %phi.bo.i, 0
  %or.cond.i = select i1 %cmp2.not.i61, i1 %cmp4.i, i1 false
  %.mux = select i1 %or.cond.i, i32 3, i32 %ret.063
  br i1 %cmp2.not.i61, label %if.end.i.sbs_status_correct.exit_crit_edge, label %if.then10.i

if.end.i.sbs_status_correct.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_status_correct.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo.i)
  %cmp11.i = icmp sgt i32 %phi.bo.i, 0
  %cmp4.i.not = xor i1 %cmp4.i, true
  %brmerge = or i1 %cmp11.i, %cmp4.i.not
  %.mux70 = select i1 %cmp11.i, i32 1, i32 2
  br i1 %brmerge, label %if.then10.i.sbs_status_correct.exit_crit_edge, label %if.then10.i.if.else.i.thread_crit_edge

if.then10.i.if.else.i.thread_crit_edge:           ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i.thread

if.then10.i.sbs_status_correct.exit_crit_edge:    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_status_correct.exit

if.else.i.thread:                                 ; preds = %if.then10.i.if.else.i.thread_crit_edge, %if.end7.thread.if.else.i.thread_crit_edge
  br label %sbs_status_correct.exit

sbs_status_correct.exit:                          ; preds = %if.else.i.thread, %if.then10.i.sbs_status_correct.exit_crit_edge, %if.end.i.sbs_status_correct.exit_crit_edge, %if.then9.i.i, %do.body.i.i, %if.end7.sbs_status_correct.exit_crit_edge
  %ret.1 = phi i32 [ %ret.063, %if.then9.i.i ], [ %ret.063, %do.body.i.i ], [ %.mux, %if.end.i.sbs_status_correct.exit_crit_edge ], [ %.mux70, %if.then10.i.sbs_status_correct.exit_crit_edge ], [ 4, %if.else.i.thread ], [ 3, %if.end7.sbs_status_correct.exit_crit_edge ]
  %last_state = getelementptr i8, ptr %work, i32 -16
  %21 = ptrtoint ptr %last_state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %last_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %ret.1)
  %cmp10.not = icmp eq i32 %22, %ret.1
  %poll_time14 = getelementptr i8, ptr %work, i32 -12
  br i1 %cmp10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %sbs_status_correct.exit
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %poll_time14 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %poll_time14, align 4
  %power_supply = getelementptr i8, ptr %work, i32 -32
  %24 = ptrtoint ptr %power_supply to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %power_supply, align 4
  tail call void @power_supply_changed(ptr noundef %25) #9
  br label %cleanup

if.end13:                                         ; preds = %sbs_status_correct.exit
  %26 = ptrtoint ptr %poll_time14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %poll_time14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp15 = icmp sgt i32 %27, 0
  br i1 %cmp15, label %if.then16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %work, i32 noundef 100) #9
  %29 = ptrtoint ptr %poll_time14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %poll_time14, align 4
  %dec = add i32 %30, -1
  store i32 %dec, ptr %poll_time14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end13.cleanup_crit_edge, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef %val) #2 align 64 {
entry:
  %val56 = alloca %union.power_supply_propval, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %gpio_detect = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %gpio_detect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_detect, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp5 = icmp eq i32 %psp, 3
  br i1 %cmp5, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool7 = icmp ne i32 %call3, 0
  tail call fastcc void @sbs_update_presence(ptr noundef %call, i1 noundef zeroext %tobool7)
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp10 = icmp eq i32 %call3, 0
  br i1 %cmp10, label %if.end9.cleanup_crit_edge, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ret.0 = phi i32 [ %call3, %if.end9.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ]
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %do.end [
    i32 3, label %if.end13.sw.bb_crit_edge
    i32 2, label %if.end13.sw.bb_crit_edge184
    i32 6, label %sw.bb18
    i32 45, label %if.end13.sw.bb23_crit_edge
    i32 43, label %if.end13.sw.bb23_crit_edge185
    i32 41, label %if.end13.sw.bb23_crit_edge186
    i32 26, label %if.end13.sw.bb23_crit_edge187
    i32 24, label %if.end13.sw.bb23_crit_edge188
    i32 22, label %if.end13.sw.bb23_crit_edge189
    i32 75, label %sw.bb30
    i32 0, label %if.end13.sw.bb32_crit_edge
    i32 51, label %if.end13.sw.bb32_crit_edge190
    i32 7, label %if.end13.sw.bb32_crit_edge191
    i32 12, label %if.end13.sw.bb32_crit_edge192
    i32 17, label %if.end13.sw.bb32_crit_edge193
    i32 18, label %if.end13.sw.bb32_crit_edge194
    i32 52, label %if.end13.sw.bb32_crit_edge195
    i32 60, label %if.end13.sw.bb32_crit_edge196
    i32 61, label %if.end13.sw.bb32_crit_edge197
    i32 63, label %if.end13.sw.bb32_crit_edge198
    i32 11, label %if.end13.sw.bb32_crit_edge199
    i32 10, label %if.end13.sw.bb32_crit_edge200
    i32 30, label %if.end13.sw.bb32_crit_edge201
    i32 32, label %if.end13.sw.bb32_crit_edge202
    i32 47, label %if.end13.sw.bb32_crit_edge203
    i32 50, label %if.end13.sw.bb32_crit_edge204
    i32 72, label %if.end13.sw.bb44_crit_edge
    i32 71, label %if.end13.sw.bb44_crit_edge205
    i32 70, label %if.end13.sw.bb44_crit_edge206
    i32 73, label %if.then.fold.split9.i.i
    i32 74, label %if.end13.sbs_get_string_buf.exit.i_crit_edge
  ]

if.end13.sbs_get_string_buf.exit.i_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_string_buf.exit.i

if.end13.sw.bb44_crit_edge206:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end13.sw.bb44_crit_edge205:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end13.sw.bb44_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb44

if.end13.sw.bb32_crit_edge204:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge203:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge202:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge201:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge200:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge199:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge198:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge197:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge196:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge195:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge194:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge193:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge192:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge191:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge190:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb32_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb32

if.end13.sw.bb23_crit_edge189:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb23_crit_edge188:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb23_crit_edge187:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb23_crit_edge186:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb23_crit_edge185:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb23_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb23

if.end13.sw.bb_crit_edge184:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end13.sw.bb_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %if.end13.sw.bb_crit_edge, %if.end13.sw.bb_crit_edge184
  %call14 = tail call fastcc i32 @sbs_get_battery_presence_and_health(ptr noundef %1, i32 noundef %psp, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp15 = icmp eq i32 %psp, 3
  br i1 %cmp15, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb18:                                          ; preds = %if.end13
  %call19 = tail call fastcc i32 @sbs_get_chemistry(ptr noundef %call, ptr noundef %val)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %sw.bb18.sw.epilog_crit_edge, label %sw.bb18.done_crit_edge

sw.bb18.done_crit_edge:                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end13.sw.bb23_crit_edge, %if.end13.sw.bb23_crit_edge185, %if.end13.sw.bb23_crit_edge186, %if.end13.sw.bb23_crit_edge187, %if.end13.sw.bb23_crit_edge188, %if.end13.sw.bb23_crit_edge189
  %call24 = tail call fastcc i32 @sbs_get_property_index(ptr noundef %1, i32 noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %sw.bb23.sw.epilog_crit_edge, label %if.end27

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end27:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %mode_lock = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %mode_lock, i32 noundef 0) #9
  %call28 = tail call fastcc i32 @sbs_get_battery_capacity(ptr noundef %1, i32 noundef %call24, i32 noundef %psp, ptr noundef %val)
  tail call void @mutex_unlock(ptr noundef %mode_lock) #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call31 = tail call fastcc i32 @sbs_get_battery_serial_number(ptr noundef %1, ptr noundef %val)
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end13.sw.bb32_crit_edge, %if.end13.sw.bb32_crit_edge190, %if.end13.sw.bb32_crit_edge191, %if.end13.sw.bb32_crit_edge192, %if.end13.sw.bb32_crit_edge193, %if.end13.sw.bb32_crit_edge194, %if.end13.sw.bb32_crit_edge195, %if.end13.sw.bb32_crit_edge196, %if.end13.sw.bb32_crit_edge197, %if.end13.sw.bb32_crit_edge198, %if.end13.sw.bb32_crit_edge199, %if.end13.sw.bb32_crit_edge200, %if.end13.sw.bb32_crit_edge201, %if.end13.sw.bb32_crit_edge202, %if.end13.sw.bb32_crit_edge203, %if.end13.sw.bb32_crit_edge204
  %call33 = tail call fastcc i32 @sbs_get_property_index(ptr noundef %1, i32 noundef %psp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %sw.bb32.sw.epilog_crit_edge, label %if.end36

sw.bb32.sw.epilog_crit_edge:                      ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end36:                                         ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = tail call fastcc i32 @sbs_get_battery_property(ptr noundef %1, i32 noundef %call33, i32 noundef %psp, ptr noundef %val)
  br label %sw.epilog

if.then.fold.split9.i.i:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_string_buf.exit.i

sbs_get_string_buf.exit.i:                        ; preds = %if.then.fold.split9.i.i, %if.end13.sbs_get_string_buf.exit.i_crit_edge
  %i.07.lcssa.i.i = phi i32 [ 2, %if.then.fold.split9.i.i ], [ 1, %if.end13.sbs_get_string_buf.exit.i_crit_edge ]
  %arrayidx2.i.i = getelementptr %struct.sbs_info, ptr %call, i32 0, i32 13, i32 %i.07.lcssa.i.i
  %cmp.i.i = icmp ugt ptr %arrayidx2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sbs_get_string_buf.exit.i.sbs_get_constant_string.exit_crit_edge, label %if.end.i

sbs_get_string_buf.exit.i.sbs_get_constant_string.exit_crit_edge: ; preds = %sbs_get_string_buf.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_constant_string.exit

if.end.i:                                         ; preds = %sbs_get_string_buf.exit.i
  %6 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %if.then2.i, label %if.end.i.sbs_get_constant_string.exit_crit_edge

if.end.i.sbs_get_constant_string.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_constant_string.exit

if.then2.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %call3.i = tail call fastcc i32 @sbs_get_property_index(ptr noundef %9, i32 noundef %psp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = inttoptr i32 %call3.i to ptr
  br label %sbs_get_constant_string.exit

if.end6.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #11
  %addr8.i = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %call3.i, i32 1
  %11 = ptrtoint ptr %addr8.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %addr8.i, align 4
  %13 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call, align 4
  %call10.i = tail call fastcc i32 @sbs_read_string_data(ptr noundef %14, i8 noundef zeroext %12, ptr noundef %arrayidx2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  %15 = inttoptr i32 %call10.i to ptr
  %spec.select.i = select i1 %cmp11.i, ptr %15, ptr %arrayidx2.i.i
  br label %sbs_get_constant_string.exit

sbs_get_constant_string.exit:                     ; preds = %if.end6.i, %if.then4.i, %if.end.i.sbs_get_constant_string.exit_crit_edge, %sbs_get_string_buf.exit.i.sbs_get_constant_string.exit_crit_edge
  %retval.0.i152 = phi ptr [ %10, %if.then4.i ], [ %arrayidx2.i.i, %sbs_get_string_buf.exit.i.sbs_get_constant_string.exit_crit_edge ], [ %arrayidx2.i.i, %if.end.i.sbs_get_constant_string.exit_crit_edge ], [ %spec.select.i, %if.end6.i ]
  %cmp.i153 = icmp ugt ptr %retval.0.i152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %if.then41, label %if.else

if.then41:                                        ; preds = %sbs_get_constant_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %retval.0.i152 to i32
  br label %sw.epilog

if.else:                                          ; preds = %sbs_get_constant_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %retval.0.i152, ptr %val, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end13.sw.bb44_crit_edge, %if.end13.sw.bb44_crit_edge205, %if.end13.sw.bb44_crit_edge206
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %i2c_retry_count.i.i = getelementptr inbounds %struct.sbs_info, ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %i2c_retry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %i2c_retry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp26.i.i = icmp sgt i32 %21, 0
  br i1 %cmp26.i.i, label %sw.bb44.while.body.i.i_crit_edge, label %sw.bb44.if.end.i155_crit_edge

sw.bb44.if.end.i155_crit_edge:                    ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

sw.bb44.while.body.i.i_crit_edge:                 ; preds = %sw.bb44
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %retries.027.i.i, -1
  %cmp.i.i154 = icmp sgt i32 %retries.027.i.i, 1
  br i1 %cmp.i.i154, label %while.cond.i.i.while.body.i.i_crit_edge, label %do.body.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %sw.bb44.while.body.i.i_crit_edge
  %retries.027.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %21, %sw.bb44.while.body.i.i_crit_edge ]
  %call1.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, -1
  br i1 %cmp2.i.i, label %while.body.i.i.if.end.i155_crit_edge, label %while.cond.i.i

while.body.i.i.if.end.i155_crit_edge:             ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i155

do.body.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_property, %sw.epilog)) #9
          to label %if.then9.i.i [label %sw.epilog], !srcloc !171

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 27) #9
  br label %sw.epilog

if.end.i155:                                      ; preds = %while.body.i.i.if.end.i155_crit_edge, %sw.bb44.if.end.i155_crit_edge
  %ret.123.i.ph.i = phi i32 [ 0, %sw.bb44.if.end.i155_crit_edge ], [ %call1.i.i, %while.body.i.i.if.end.i155_crit_edge ]
  %22 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %psp, label %if.end.i155.sw.epilog_crit_edge [
    i32 70, label %sw.bb.i
    i32 71, label %sw.bb7.i
    i32 72, label %sw.bb9.i
  ]

if.end.i155.sw.epilog_crit_edge:                  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  %23 = trunc i32 %ret.123.i.ph.i to i16
  %24 = lshr i16 %23, 9
  %conv5.i = add nuw nsw i16 %24, 1980
  %conv6.i = zext i16 %conv5.i to i32
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv6.i, ptr %val, align 4
  br label %sw.epilog

sw.bb7.i:                                         ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  %26 = lshr i32 %ret.123.i.ph.i, 5
  %conv2.i = and i32 %26, 15
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv2.i, ptr %val, align 4
  br label %sw.epilog

sw.bb9.i:                                         ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = and i32 %ret.123.i.ph.i, 31
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv.i, ptr %val, align 4
  br label %sw.epilog

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9.i, %sw.bb7.i, %sw.bb.i, %if.end.i155.sw.epilog_crit_edge, %if.then9.i.i, %do.body.i.i, %if.else, %if.then41, %if.end36, %sw.bb32.sw.epilog_crit_edge, %sw.bb30, %if.end27, %sw.bb23.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %16, %if.then41 ], [ %ret.0, %if.else ], [ %call33, %sw.bb32.sw.epilog_crit_edge ], [ %call37, %if.end36 ], [ %call31, %sw.bb30 ], [ %call24, %sw.bb23.sw.epilog_crit_edge ], [ %call28, %if.end27 ], [ %call19, %sw.bb18.sw.epilog_crit_edge ], [ %call14, %sw.bb.sw.epilog_crit_edge ], [ -22, %if.end.i155.sw.epilog_crit_edge ], [ 0, %sw.bb9.i ], [ 0, %sw.bb7.i ], [ 0, %sw.bb.i ], [ %call1.i.i, %if.then9.i.i ], [ %call1.i.i, %do.body.i.i ]
  %29 = ptrtoint ptr %gpio_detect to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gpio_detect, align 4
  %tobool47.not = icmp eq ptr %30, null
  br i1 %tobool47.not, label %land.lhs.true, label %sw.epilog.done_crit_edge

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

land.lhs.true:                                    ; preds = %sw.epilog
  %is_present = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 2
  %31 = ptrtoint ptr %is_present to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_present, align 4, !range !169
  %33 = zext i8 %32 to i32
  %34 = xor i32 %ret.1, -1
  %ret.1.lobit.not = lshr i32 %34, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.1.lobit.not, i32 %33)
  %cmp51.not = icmp eq i32 %ret.1.lobit.not, %33
  br i1 %cmp51.not, label %land.lhs.true.done_crit_edge, label %if.then53

land.lhs.true.done_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.then53:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val56) #9
  %35 = ptrtoint ptr %val56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %val56, align 4, !annotation !170
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %36 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i.i, align 4
  %flags.i = getelementptr inbounds %struct.sbs_info, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i157 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i157, label %if.end.i160, label %sbs_get_battery_presence_and_health.exit

if.end.i160:                                      ; preds = %if.then53
  %i2c_retry_count.i.i158 = getelementptr inbounds %struct.sbs_info, ptr %37, i32 0, i32 7
  %40 = ptrtoint ptr %i2c_retry_count.i.i158 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %i2c_retry_count.i.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp26.i.i159 = icmp sgt i32 %41, 0
  br i1 %cmp26.i.i159, label %if.end.i160.while.body.i.i167_crit_edge, label %if.end.i160.if.end7.i_crit_edge

if.end.i160.if.end7.i_crit_edge:                  ; preds = %if.end.i160
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

if.end.i160.while.body.i.i167_crit_edge:          ; preds = %if.end.i160
  br label %while.body.i.i167

while.cond.i.i163:                                ; preds = %while.body.i.i167
  %dec.i.i161 = add nsw i32 %retries.027.i.i164, -1
  %cmp.i.i162 = icmp sgt i32 %retries.027.i.i164, 1
  br i1 %cmp.i.i162, label %while.cond.i.i163.while.body.i.i167_crit_edge, label %do.body.i.i168

while.cond.i.i163.while.body.i.i167_crit_edge:    ; preds = %while.cond.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i167

while.body.i.i167:                                ; preds = %while.cond.i.i163.while.body.i.i167_crit_edge, %if.end.i160.while.body.i.i167_crit_edge
  %retries.027.i.i164 = phi i32 [ %dec.i.i161, %while.cond.i.i163.while.body.i.i167_crit_edge ], [ %41, %if.end.i160.while.body.i.i167_crit_edge ]
  %call1.i.i165 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i165)
  %cmp2.i.i166 = icmp sgt i32 %call1.i.i165, -1
  br i1 %cmp2.i.i166, label %while.body.i.i167.if.end7.i_crit_edge, label %while.cond.i.i163

while.body.i.i167.if.end7.i_crit_edge:            ; preds = %while.body.i.i167
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i

do.body.i.i168:                                   ; preds = %while.cond.i.i163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_property, %if.then3.i)) #9
          to label %if.then9.i.i170 [label %if.then3.i], !srcloc !171

if.then9.i.i170:                                  ; preds = %do.body.i.i168
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i169 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i.i169, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 22) #9
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then9.i.i170, %do.body.i.i168
  %42 = ptrtoint ptr %val56 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %val56, align 4
  br label %land.rhs

if.end7.i:                                        ; preds = %while.body.i.i167.if.end7.i_crit_edge, %if.end.i160.if.end7.i_crit_edge
  %43 = ptrtoint ptr %val56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %val56, align 4
  br label %land.rhs

sbs_get_battery_presence_and_health.exit:         ; preds = %if.then53
  %call1.i = call fastcc i32 @sbs_get_ti_battery_presence_and_health(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %val56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool58.not = icmp eq i32 %call1.i, 0
  br i1 %tobool58.not, label %sbs_get_battery_presence_and_health.exit.land.rhs_crit_edge, label %sbs_get_battery_presence_and_health.exit.land.end_crit_edge

sbs_get_battery_presence_and_health.exit.land.end_crit_edge: ; preds = %sbs_get_battery_presence_and_health.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

sbs_get_battery_presence_and_health.exit.land.rhs_crit_edge: ; preds = %sbs_get_battery_presence_and_health.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %sbs_get_battery_presence_and_health.exit.land.rhs_crit_edge, %if.end7.i, %if.then3.i
  %44 = ptrtoint ptr %val56 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %val56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool59 = icmp ne i32 %45, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sbs_get_battery_presence_and_health.exit.land.end_crit_edge
  %46 = phi i1 [ false, %sbs_get_battery_presence_and_health.exit.land.end_crit_edge ], [ %tobool59, %land.rhs ]
  tail call fastcc void @sbs_update_presence(ptr noundef %call, i1 noundef zeroext %46)
  %47 = ptrtoint ptr %is_present to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %is_present, align 4, !range !169
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %48)
  %cmp66.not = icmp eq i8 %32, %48
  br i1 %cmp66.not, label %land.end.if.end69_crit_edge, label %if.then68

land.end.if.end69_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then68:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  %power_supply = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 1
  %49 = ptrtoint ptr %power_supply to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %power_supply, align 4
  tail call void @power_supply_changed(ptr noundef %50) #9
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.end.if.end69_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val56) #9
  br label %done

done:                                             ; preds = %if.end69, %land.lhs.true.done_crit_edge, %sw.epilog.done_crit_edge, %sw.bb18.done_crit_edge
  %ret.2 = phi i32 [ %ret.1, %sw.epilog.done_crit_edge ], [ %ret.1, %if.end69 ], [ %ret.1, %land.lhs.true.done_crit_edge ], [ %call19, %sw.bb18.done_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool71.not = icmp eq i32 %ret.2, 0
  br i1 %tobool71.not, label %if.then72, label %if.else85

if.then72:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sbs_unit_adjustment(ptr noundef %1, i32 noundef %psp, ptr noundef %val)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_get_property.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_property, %cleanup)) #9
          to label %if.then80 [label %cleanup], !srcloc !171

if.then80:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #11
  %dev81 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_get_property.__UNIQUE_ID_ddebug299, ptr noundef %dev81, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.23, i32 noundef %psp, i32 noundef %52) #9
  br label %cleanup

if.else85:                                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  %is_present86 = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 2
  %53 = ptrtoint ptr %is_present86 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %is_present86, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool87.not = icmp eq i8 %54, 0
  %spec.select = select i1 %tobool87.not, i32 -61, i32 %ret.2
  br label %cleanup

cleanup:                                          ; preds = %if.else85, %if.then80, %if.then72, %do.end, %sw.bb.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ -22, %do.end ], [ %call3, %if.then.cleanup_crit_edge ], [ -61, %if.end9.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.then80 ], [ %spec.select, %if.else85 ], [ 0, %if.then72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbs_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #9
  %work = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work, i32 noundef 100) #9
  %poll_retry_count = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %poll_retry_count to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %poll_retry_count, align 4
  %poll_time = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %poll_time to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %poll_time, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbs_update_presence(ptr nocapture noundef %chip, i1 noundef zeroext %is_present) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %is_present2 = getelementptr inbounds %struct.sbs_info, ptr %chip, i32 0, i32 2
  %2 = ptrtoint ptr %is_present2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_present2, align 4, !range !169
  %4 = zext i1 %is_present to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %4)
  %cmp = icmp eq i8 %3, %4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %is_present, label %while.cond.preheader, label %if.then7

while.cond.preheader:                             ; preds = %if.end
  %i2c_retry_count = getelementptr inbounds %struct.sbs_info, ptr %chip, i32 0, i32 7
  %5 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %i2c_retry_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp1212 = icmp sgt i32 %6, 0
  br i1 %cmp1212, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.else_crit_edge

while.cond.preheader.if.else_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %is_present2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %is_present2, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %1, align 8
  %10 = and i16 %9, -5
  store i16 %10, ptr %1, align 8
  %technology.i = getelementptr inbounds %struct.sbs_info, ptr %chip, i32 0, i32 12
  %11 = ptrtoint ptr %technology.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %technology.i, align 4
  %arrayidx.i = getelementptr %struct.sbs_info, ptr %chip, i32 0, i32 13, i32 0
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx.1.i = getelementptr %struct.sbs_info, ptr %chip, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx.1.i, align 1
  %arrayidx.2.i = getelementptr %struct.sbs_info, ptr %chip, i32 0, i32 13, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx.2.i, align 1
  br label %cleanup

while.body:                                       ; preds = %if.end17.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %retries.013 = phi i32 [ %dec, %if.end17.while.body_crit_edge ], [ %6, %while.cond.preheader.while.body_crit_edge ]
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp14 = icmp sgt i32 %call, -1
  br i1 %cmp14, label %if.end34, label %if.end17

if.end17:                                         ; preds = %while.body
  tail call void @msleep(i32 noundef 100) #9
  %dec = add nsw i32 %retries.013, -1
  %cmp12 = icmp sgt i32 %retries.013, 1
  br i1 %cmp12, label %if.end17.while.body_crit_edge, label %do.body

if.end17.while.body_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

do.body:                                          ; preds = %if.end17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_update_presence.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_update_presence, %do.end)) #9
          to label %if.then27 [label %do.end], !srcloc !171

if.then27:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_update_presence.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call) #9
  br label %do.end

do.end:                                           ; preds = %if.then27, %do.body
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %1, align 8
  %17 = and i16 %16, -5
  store i16 %17, ptr %1, align 8
  %18 = ptrtoint ptr %is_present2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %is_present2, align 4
  br label %cleanup

if.end34:                                         ; preds = %while.body
  %19 = and i32 %call, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %19)
  %cmp38 = icmp eq i32 %19, 48
  br i1 %cmp38, label %if.then40, label %if.end34.if.else_crit_edge

if.end34.if.else_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then40:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %1, align 8
  %22 = or i16 %21, 4
  br label %if.end48

if.else:                                          ; preds = %if.end34.if.else_crit_edge, %while.cond.preheader.if.else_crit_edge
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %1, align 8
  %25 = and i16 %24, -5
  br label %if.end48

if.end48:                                         ; preds = %if.else, %if.then40
  %storemerge = phi i16 [ %25, %if.else ], [ %22, %if.then40 ]
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %storemerge, ptr %1, align 8
  %dev49 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %parent = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call50 = tail call i32 @of_device_is_compatible(ptr noundef %30, ptr noundef nonnull @.str.29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.do.body66_crit_edge, label %land.lhs.true

if.end48.do.body66_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

land.lhs.true:                                    ; preds = %if.end48
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %1, align 8
  %33 = and i16 %32, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool55.not = icmp eq i16 %33, 0
  br i1 %tobool55.not, label %land.lhs.true.do.body66_crit_edge, label %do.end59

land.lhs.true.do.body66_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body66

do.end59:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev49, ptr noundef nonnull @.str.30) #12
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %1, align 8
  %36 = and i16 %35, -5
  store i16 %36, ptr %1, align 8
  br label %do.body66

do.body66:                                        ; preds = %do.end59, %land.lhs.true.do.body66_crit_edge, %if.end48.do.body66_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_update_presence.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_update_presence, %do.end88)) #9
          to label %if.then80 [label %do.end88], !srcloc !171

if.then80:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %1, align 8
  %39 = and i16 %38, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool85.not = icmp eq i16 %39, 0
  %cond = select i1 %tobool85.not, ptr @.str.33, ptr @.str.32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_update_presence.__UNIQUE_ID_ddebug290, ptr noundef %dev49, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond) #9
  br label %do.end88

do.end88:                                         ; preds = %if.then80, %do.body66
  %40 = ptrtoint ptr %is_present2 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %is_present2, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool90.not = icmp eq i8 %41, 0
  br i1 %tobool90.not, label %land.lhs.true94, label %do.end88.if.end97_crit_edge

do.end88.if.end97_crit_edge:                      ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

land.lhs.true94:                                  ; preds = %do.end88
  %charger_broadcasts = getelementptr inbounds %struct.sbs_info, ptr %chip, i32 0, i32 4
  %42 = ptrtoint ptr %charger_broadcasts to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %charger_broadcasts, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool95.not = icmp eq i8 %43, 0
  br i1 %tobool95.not, label %if.then96, label %land.lhs.true94.if.end97_crit_edge

land.lhs.true94.if.end97_crit_edge:               ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end97

if.then96:                                        ; preds = %land.lhs.true94
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @sbs_disable_charger_broadcasts(ptr noundef %chip)
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %land.lhs.true94.if.end97_crit_edge, %do.end88.if.end97_crit_edge
  %44 = ptrtoint ptr %is_present2 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %is_present2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %do.end, %if.then7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_chemistry(ptr noundef %chip, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %technology = getelementptr inbounds %struct.sbs_info, ptr %chip, i32 0, i32 12
  %0 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %technology, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp.not = icmp eq i32 %1, -1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %val, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2.i.i = getelementptr %struct.sbs_info, ptr %chip, i32 0, i32 13, i32 0
  %cmp.i.i = icmp ugt ptr %arrayidx2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.sbs_get_constant_string.exit_crit_edge, label %if.end.i

if.end.sbs_get_constant_string.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_constant_string.exit

if.end.i:                                         ; preds = %if.end
  %3 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.end.i.sbs_get_constant_string.exit_crit_edge

if.end.i.sbs_get_constant_string.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_get_constant_string.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip, align 4
  %call10.i = tail call fastcc i32 @sbs_read_string_data(ptr noundef %6, i8 noundef zeroext 34, ptr noundef %arrayidx2.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  %7 = inttoptr i32 %call10.i to ptr
  %spec.select.i = select i1 %cmp11.i, ptr %7, ptr %arrayidx2.i.i
  br label %sbs_get_constant_string.exit

sbs_get_constant_string.exit:                     ; preds = %if.end6.i, %if.end.i.sbs_get_constant_string.exit_crit_edge, %if.end.sbs_get_constant_string.exit_crit_edge
  %retval.0.i = phi ptr [ %arrayidx2.i.i, %if.end.sbs_get_constant_string.exit_crit_edge ], [ %arrayidx2.i.i, %if.end.i.sbs_get_constant_string.exit_crit_edge ], [ %spec.select.i, %if.end6.i ]
  %cmp.i51 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i51, label %if.then3, label %if.end5

if.then3:                                         ; preds = %sbs_get_constant_string.exit
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end5:                                          ; preds = %sbs_get_constant_string.exit
  %call6 = tail call i32 @strncasecmp(ptr noundef %retval.0.i, ptr noundef nonnull @.str.41, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %technology, align 4
  br label %if.end32

if.else:                                          ; preds = %if.end5
  %call9 = tail call i32 @strncasecmp(ptr noundef %retval.0.i, ptr noundef nonnull @.str.42, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 3, ptr %technology, align 4
  br label %if.end32

if.else13:                                        ; preds = %if.else
  %call14 = tail call i32 @strncasecmp(ptr noundef %retval.0.i, ptr noundef nonnull @.str.43, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %if.else18

if.then16:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 5, ptr %technology, align 4
  br label %if.end32

if.else18:                                        ; preds = %if.else13
  %call19 = tail call i32 @strncasecmp(ptr noundef %retval.0.i, ptr noundef nonnull @.str.44, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %do.end

if.then21:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %technology, align 4
  br label %if.end32

do.end:                                           ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %technology to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %technology, align 4
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.45, ptr noundef %retval.0.i) #12
  br label %if.end32

if.end32:                                         ; preds = %do.end, %if.then21, %if.then16, %if.then11, %if.then7
  %16 = ptrtoint ptr %technology to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %technology, align 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %8, %if.then3 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_property_index(ptr noundef %client, i32 noundef %psp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %psp, label %for.inc.27 [
    i32 3, label %entry.cleanup_crit_edge
    i32 -1, label %cleanup.fold.split
    i32 52, label %cleanup.fold.split10
    i32 12, label %cleanup.fold.split11
    i32 17, label %cleanup.fold.split12
    i32 18, label %cleanup.fold.split13
    i32 50, label %cleanup.fold.split14
    i32 47, label %cleanup.fold.split15
    i32 60, label %cleanup.fold.split16
    i32 61, label %cleanup.fold.split17
    i32 63, label %cleanup.fold.split18
    i32 0, label %cleanup.fold.split19
    i32 51, label %cleanup.fold.split20
    i32 7, label %cleanup.fold.split21
    i32 75, label %cleanup.fold.split22
    i32 45, label %cleanup.fold.split23
    i32 26, label %cleanup.fold.split24
    i32 43, label %cleanup.fold.split25
    i32 24, label %cleanup.fold.split26
    i32 41, label %cleanup.fold.split27
    i32 22, label %cleanup.fold.split28
    i32 11, label %cleanup.fold.split29
    i32 10, label %cleanup.fold.split30
    i32 6, label %cleanup.fold.split31
    i32 74, label %cleanup.fold.split32
    i32 73, label %cleanup.fold.split33
    i32 30, label %cleanup.fold.split34
    i32 32, label %cleanup.fold.split35
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.27:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %psp) #12
  br label %cleanup

cleanup.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split10:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split11:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split12:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split13:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split14:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split15:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %cleanup.fold.split35, %cleanup.fold.split34, %cleanup.fold.split33, %cleanup.fold.split32, %cleanup.fold.split31, %cleanup.fold.split30, %cleanup.fold.split29, %cleanup.fold.split28, %cleanup.fold.split27, %cleanup.fold.split26, %cleanup.fold.split25, %cleanup.fold.split24, %cleanup.fold.split23, %cleanup.fold.split22, %cleanup.fold.split21, %cleanup.fold.split20, %cleanup.fold.split19, %cleanup.fold.split18, %cleanup.fold.split17, %cleanup.fold.split16, %cleanup.fold.split15, %cleanup.fold.split14, %cleanup.fold.split13, %cleanup.fold.split12, %cleanup.fold.split11, %cleanup.fold.split10, %cleanup.fold.split, %for.inc.27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %for.inc.27 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %cleanup.fold.split ], [ 2, %cleanup.fold.split10 ], [ 3, %cleanup.fold.split11 ], [ 4, %cleanup.fold.split12 ], [ 5, %cleanup.fold.split13 ], [ 6, %cleanup.fold.split14 ], [ 7, %cleanup.fold.split15 ], [ 8, %cleanup.fold.split16 ], [ 9, %cleanup.fold.split17 ], [ 10, %cleanup.fold.split18 ], [ 11, %cleanup.fold.split19 ], [ 12, %cleanup.fold.split20 ], [ 13, %cleanup.fold.split21 ], [ 14, %cleanup.fold.split22 ], [ 15, %cleanup.fold.split23 ], [ 16, %cleanup.fold.split24 ], [ 17, %cleanup.fold.split25 ], [ 18, %cleanup.fold.split26 ], [ 19, %cleanup.fold.split27 ], [ 20, %cleanup.fold.split28 ], [ 21, %cleanup.fold.split29 ], [ 22, %cleanup.fold.split30 ], [ 23, %cleanup.fold.split31 ], [ 24, %cleanup.fold.split32 ], [ 25, %cleanup.fold.split33 ], [ 26, %cleanup.fold.split34 ], [ 27, %cleanup.fold.split35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_capacity(ptr noundef %client, i32 noundef %reg_offset, i32 noundef %psp, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %psp, label %entry.power_supply_is_amp_property.exit_crit_edge [
    i32 22, label %entry._crit_edge
    i32 23, label %entry._crit_edge32
    i32 24, label %entry._crit_edge33
    i32 25, label %entry._crit_edge34
    i32 26, label %entry._crit_edge35
    i32 27, label %entry._crit_edge36
    i32 28, label %entry._crit_edge37
    i32 67, label %entry._crit_edge38
    i32 68, label %entry._crit_edge39
    i32 29, label %entry._crit_edge40
    i32 30, label %entry._crit_edge41
    i32 16, label %entry._crit_edge42
    i32 17, label %entry._crit_edge43
    i32 18, label %entry._crit_edge44
    i32 19, label %entry._crit_edge45
  ]

entry._crit_edge45:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge44:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge43:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge42:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge41:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge40:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge39:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge38:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge37:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge36:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge35:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge34:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge33:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge32:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry._crit_edge:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %1

entry.power_supply_is_amp_property.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %power_supply_is_amp_property.exit

1:                                                ; preds = %entry._crit_edge, %entry._crit_edge32, %entry._crit_edge33, %entry._crit_edge34, %entry._crit_edge35, %entry._crit_edge36, %entry._crit_edge37, %entry._crit_edge38, %entry._crit_edge39, %entry._crit_edge40, %entry._crit_edge41, %entry._crit_edge42, %entry._crit_edge43, %entry._crit_edge44, %entry._crit_edge45
  br label %power_supply_is_amp_property.exit

power_supply_is_amp_property.exit:                ; preds = %1, %entry.power_supply_is_amp_property.exit_crit_edge
  %2 = phi i32 [ 0, %1 ], [ 32768, %entry.power_supply_is_amp_property.exit_crit_edge ]
  %call1 = tail call fastcc i32 @sbs_set_capacity_mode(ptr noundef %client, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %power_supply_is_amp_property.exit.cleanup_crit_edge, label %if.end3

power_supply_is_amp_property.exit.cleanup_crit_edge: ; preds = %power_supply_is_amp_property.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %power_supply_is_amp_property.exit
  %addr = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %reg_offset, i32 1
  %3 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %addr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp26.i = icmp sgt i32 %8, 0
  br i1 %cmp26.i, label %if.end3.while.body.i_crit_edge, label %if.end3.if.end7_crit_edge

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end3.while.body.i_crit_edge:                   ; preds = %if.end3
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.end3.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %8, %if.end3.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end7_crit_edge, label %while.cond.i

while.body.i.if.end7_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_capacity, %cleanup)) #9
          to label %if.then9.i [label %cleanup], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i8 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #9
  br label %cleanup

if.end7:                                          ; preds = %while.body.i.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  %ret.123.i.ph = phi i32 [ 0, %if.end3.if.end7_crit_edge ], [ %call1.i, %while.body.i.if.end7_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ret.123.i.ph, ptr %val, align 4
  %call8 = tail call fastcc i32 @sbs_set_capacity_mode(ptr noundef %client, i32 noundef %call1)
  %10 = tail call i32 @llvm.smin.i32(i32 %call8, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9.i, %do.body.i, %power_supply_is_amp_property.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %power_supply_is_amp_property.exit.cleanup_crit_edge ], [ %10, %if.end7 ], [ %call1.i, %if.then9.i ], [ %call1.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_serial_number(ptr noundef %client, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.i = icmp sgt i32 %3, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 28) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end_crit_edge, label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_serial_number, %cleanup)) #9
          to label %if.then9.i [label %cleanup], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 28) #9
  br label %cleanup

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.123.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call1.i, %while.body.i.if.end_crit_edge ]
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull @sbs_serial, ptr noundef nonnull @.str.49, i32 noundef %ret.123.i.ph)
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sbs_serial, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then9.i, %do.body.i
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1.i, %if.then9.i ], [ %call1.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_battery_property(ptr noundef %client, i32 noundef %reg_offset, i32 noundef %psp, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %addr = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %reg_offset, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end_crit_edge, label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_property, %cleanup)) #9
          to label %if.then9.i [label %cleanup], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv.i = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef %conv.i) #9
  br label %cleanup

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.123.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call1.i, %while.body.i.if.end_crit_edge ]
  %min_value = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %reg_offset, i32 2
  %6 = and i32 %reg_offset, 268435454
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp eq i32 %6, 4
  %sext = shl i32 %ret.123.i.ph, 16
  %conv5 = ashr exact i32 %sext, 16
  %ret.0 = select i1 %7, i32 %conv5, i32 %ret.123.i.ph
  %8 = ptrtoint ptr %min_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %9)
  %cmp9.not = icmp slt i32 %ret.0, %9
  br i1 %cmp9.not, label %if.end.if.else59_crit_edge, label %land.lhs.true

if.end.if.else59_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59

land.lhs.true:                                    ; preds = %if.end
  %max_value = getelementptr [28 x %struct.chip_data], ptr @sbs_data, i32 0, i32 %reg_offset, i32 3
  %10 = ptrtoint ptr %max_value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_value, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %ret.0, i32 %11)
  %cmp12.not = icmp sgt i32 %ret.0, %11
  br i1 %cmp12.not, label %land.lhs.true.if.else59_crit_edge, label %if.then14

land.lhs.true.if.else59_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else59

if.then14:                                        ; preds = %land.lhs.true
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %ret.0, ptr %val, align 4
  %13 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %psp, label %if.then14.cleanup_crit_edge [
    i32 51, label %if.then17
    i32 0, label %if.end35
  ]

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then17:                                        ; preds = %if.then14
  %and = and i32 %ret.0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then17
  %and19 = and i32 %ret.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %val, align 4
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %and23 = and i32 %ret.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.else26, label %if.then25

if.then25:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.end35:                                         ; preds = %if.then14
  %and36 = and i32 %ret.0, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %and40 = and i32 %ret.0, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %. = select i1 %tobool41.not, i32 1, i32 2
  %.sink = select i1 %tobool37.not, i32 %., i32 4
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %val, align 4
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_retry_count.i.i = getelementptr inbounds %struct.sbs_info, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %i2c_retry_count.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %i2c_retry_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp26.i.i = icmp sgt i32 %22, 0
  br i1 %cmp26.i.i, label %if.end35.while.body.i.i_crit_edge, label %if.end35.if.end.i_crit_edge

if.end35.if.end.i_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end35.while.body.i.i_crit_edge:                ; preds = %if.end35
  br label %while.body.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i
  %dec.i.i = add nsw i32 %retries.027.i.i, -1
  %cmp.i.i = icmp sgt i32 %retries.027.i.i, 1
  br i1 %cmp.i.i, label %while.cond.i.i.while.body.i.i_crit_edge, label %do.body.i.i

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i.while.body.i.i_crit_edge, %if.end35.while.body.i.i_crit_edge
  %retries.027.i.i = phi i32 [ %dec.i.i, %while.cond.i.i.while.body.i.i_crit_edge ], [ %22, %if.end35.while.body.i.i_crit_edge ]
  %call1.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i)
  %cmp2.i.i = icmp sgt i32 %call1.i.i, -1
  br i1 %cmp2.i.i, label %if.end.loopexit.i, label %while.cond.i.i

do.body.i.i:                                      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_battery_property, %sbs_status_correct.exit)) #9
          to label %if.then9.i.i [label %sbs_status_correct.exit], !srcloc !171

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 10) #9
  br label %sbs_status_correct.exit

if.end.loopexit.i:                                ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo.i = shl i32 %call1.i.i, 16
  br label %if.end.i

if.end.i:                                         ; preds = %if.end.loopexit.i, %if.end35.if.end.i_crit_edge
  %ret.123.i.ph.i = phi i32 [ 0, %if.end35.if.end.i_crit_edge ], [ %phi.bo.i, %if.end.loopexit.i ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp2.not.i = icmp ne i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.123.i.ph.i)
  %cmp4.i = icmp eq i32 %ret.123.i.ph.i, 0
  %or.cond.i = select i1 %cmp2.not.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.end7.thread.i, label %if.end7.i

if.end7.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %val, align 4
  br label %sbs_status_correct.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %cmp8.i = icmp eq i32 %24, 4
  br i1 %cmp8.i, label %if.then10.i, label %if.end7.i.sbs_status_correct.exit_crit_edge

if.end7.i.sbs_status_correct.exit_crit_edge:      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_status_correct.exit

if.then10.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.123.i.ph.i)
  %cmp11.i = icmp sgt i32 %ret.123.i.ph.i, 0
  br i1 %cmp11.i, label %if.then13.i, label %if.else.i

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %val, align 4
  br label %sbs_status_correct.exit

if.else.i:                                        ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.123.i.ph.i)
  %cmp14.i = icmp slt i32 %ret.123.i.ph.i, 0
  br i1 %cmp14.i, label %if.then16.i, label %if.else.i.sbs_status_correct.exit_crit_edge

if.else.i.sbs_status_correct.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_status_correct.exit

if.then16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %val, align 4
  br label %sbs_status_correct.exit

sbs_status_correct.exit:                          ; preds = %if.then16.i, %if.else.i.sbs_status_correct.exit_crit_edge, %if.then13.i, %if.end7.i.sbs_status_correct.exit_crit_edge, %if.end7.thread.i, %if.then9.i.i, %do.body.i.i
  %poll_time = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp47 = icmp eq i32 %29, 0
  br i1 %cmp47, label %if.then49, label %if.else50

if.then49:                                        ; preds = %sbs_status_correct.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  %last_state = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 5
  %32 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_state, align 4
  br label %cleanup

if.else50:                                        ; preds = %sbs_status_correct.exit
  %last_state51 = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 5
  %33 = ptrtoint ptr %last_state51 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %last_state51, align 4
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp52.not = icmp eq i32 %34, %36
  br i1 %cmp52.not, label %if.else50.cleanup_crit_edge, label %if.then54

if.else50.cleanup_crit_edge:                      ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then54:                                        ; preds = %if.else50
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 9
  %call55 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  %power_supply = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %power_supply to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %power_supply, align 4
  tail call void @power_supply_changed(ptr noundef %38) #9
  %39 = ptrtoint ptr %poll_time to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %poll_time, align 4
  br label %cleanup

if.else59:                                        ; preds = %land.lhs.true.if.else59_crit_edge, %if.end.if.else59_crit_edge
  %40 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %psp, label %if.else69 [
    i32 0, label %if.then62
    i32 47, label %if.then66
  ]

if.then62:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.then66:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  %42 = tail call i32 @llvm.smin.i32(i32 %ret.0, i32 100)
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val, align 4
  br label %cleanup

if.else69:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else69, %if.then66, %if.then62, %if.then54, %if.else50.cleanup_crit_edge, %if.then49, %if.else26, %if.then25, %if.then21, %if.then18, %if.then14.cleanup_crit_edge, %if.then9.i, %do.body.i
  %retval.0 = phi i32 [ 0, %if.then21 ], [ 0, %if.else26 ], [ 0, %if.then25 ], [ 0, %if.then18 ], [ 0, %if.then14.cleanup_crit_edge ], [ 0, %if.then62 ], [ 0, %if.else69 ], [ 0, %if.then66 ], [ 0, %if.then49 ], [ 0, %if.then54 ], [ 0, %if.else50.cleanup_crit_edge ], [ %call1.i, %if.then9.i ], [ %call1.i, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbs_unit_adjustment(ptr noundef %client, i32 noundef %psp, ptr nocapture noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %psp, label %do.body [
    i32 45, label %entry.sw.bb_crit_edge
    i32 43, label %entry.sw.bb_crit_edge14
    i32 41, label %entry.sw.bb_crit_edge15
    i32 12, label %entry.sw.bb1_crit_edge
    i32 11, label %entry.sw.bb1_crit_edge16
    i32 10, label %entry.sw.bb1_crit_edge17
    i32 17, label %entry.sw.bb1_crit_edge18
    i32 18, label %entry.sw.bb1_crit_edge19
    i32 26, label %entry.sw.bb1_crit_edge20
    i32 30, label %entry.sw.bb1_crit_edge21
    i32 32, label %entry.sw.bb1_crit_edge22
    i32 24, label %entry.sw.bb1_crit_edge23
    i32 22, label %entry.sw.bb1_crit_edge24
    i32 52, label %sw.bb3
    i32 60, label %entry.sw.bb4_crit_edge
    i32 61, label %entry.sw.bb4_crit_edge25
    i32 63, label %entry.sw.bb4_crit_edge26
  ]

entry.sw.bb4_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb4

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %mul = mul i32 %2, 10000
  store i32 %mul, ptr %val, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge16, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18, %entry.sw.bb1_crit_edge19, %entry.sw.bb1_crit_edge20, %entry.sw.bb1_crit_edge21, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %mul2 = mul i32 %4, 1000
  store i32 %mul2, ptr %val, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %sub = add i32 %6, -2731
  store i32 %sub, ptr %val, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge25, %entry.sw.bb4_crit_edge26
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mul5 = mul i32 %8, 60
  store i32 %mul5, ptr %val, align 4
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_unit_adjustment.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_unit_adjustment, %sw.epilog)) #9
          to label %if.then [label %sw.epilog], !srcloc !171

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_unit_adjustment.__UNIQUE_ID_ddebug298, ptr noundef %dev, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %psp) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb4, %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sbs_disable_charger_broadcasts(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp26.i = icmp sgt i32 %5, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %5, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %if.end.loopexit, label %while.cond.i

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_disable_charger_broadcasts, %do.end)) #9
          to label %if.then9.i [label %do.end], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 3) #9
  br label %do.end

if.end.loopexit:                                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.cast = trunc i32 %call1.i to i16
  %phi.bo = or i16 %phi.cast, 16384
  br label %if.end

if.end:                                           ; preds = %if.end.loopexit, %entry.if.end_crit_edge
  %ret.123.i.ph = phi i16 [ 16384, %entry.if.end_crit_edge ], [ %phi.bo, %if.end.loopexit ]
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip, align 4
  %driver_data.i.i.i26 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i26, align 4
  %i2c_retry_count.i27 = getelementptr inbounds %struct.sbs_info, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %i2c_retry_count.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %i2c_retry_count.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp24.i = icmp sgt i32 %11, 0
  br i1 %cmp24.i, label %if.end.while.body.i33_crit_edge, label %if.end.do.body7_crit_edge

if.end.do.body7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

if.end.while.body.i33_crit_edge:                  ; preds = %if.end
  br label %while.body.i33

while.cond.i30:                                   ; preds = %while.body.i33
  %dec.i28 = add nsw i32 %retries.025.i, -1
  %cmp.i29 = icmp sgt i32 %retries.025.i, 1
  br i1 %cmp.i29, label %while.cond.i30.while.body.i33_crit_edge, label %do.body.i34

while.cond.i30.while.body.i33_crit_edge:          ; preds = %while.cond.i30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i33

while.body.i33:                                   ; preds = %while.cond.i30.while.body.i33_crit_edge, %if.end.while.body.i33_crit_edge
  %retries.025.i = phi i32 [ %dec.i28, %while.cond.i30.while.body.i33_crit_edge ], [ %11, %if.end.while.body.i33_crit_edge ]
  %call1.i31 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 3, i16 noundef zeroext %ret.123.i.ph) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i31)
  %cmp2.i32 = icmp sgt i32 %call1.i31, -1
  br i1 %cmp2.i32, label %while.body.i33.do.body7_crit_edge, label %while.cond.i30

while.body.i33.do.body7_crit_edge:                ; preds = %while.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

do.body.i34:                                      ; preds = %while.cond.i30
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_write_word_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_disable_charger_broadcasts, %do.end)) #9
          to label %if.then9.i36 [label %do.end], !srcloc !171

if.then9.i36:                                     ; preds = %do.body.i34
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i35 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_write_word_data.__UNIQUE_ID_ddebug295, ptr noundef %dev.i35, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 3) #9
  br label %do.end

do.end:                                           ; preds = %if.then9.i36, %do.body.i34, %if.then9.i, %do.body.i
  %val.043 = phi i32 [ %call1.i, %do.body.i ], [ %call1.i31, %do.body.i34 ], [ %call1.i31, %if.then9.i36 ], [ %call1.i, %if.then9.i ]
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %13, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %val.043) #12
  br label %if.end18

do.body7:                                         ; preds = %while.body.i33.do.body7_crit_edge, %if.end.do.body7_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_disable_charger_broadcasts.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_disable_charger_broadcasts, %if.end18)) #9
          to label %if.then12 [label %if.end18], !srcloc !171

if.then12:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip, align 4
  %dev14 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_disable_charger_broadcasts.__UNIQUE_ID_ddebug288, ptr noundef %dev14, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.35) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %do.body7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_set_capacity_mode(ptr noundef %client, i32 noundef %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.i = icmp sgt i32 %3, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end_crit_edge, label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_set_capacity_mode, %cleanup)) #9
          to label %if.then9.i [label %cleanup], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 3) #9
  br label %cleanup

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.123.i.ph = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call1.i, %while.body.i.if.end_crit_edge ]
  %and = and i32 %ret.123.i.ph, 32768
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %mode)
  %cmp1 = icmp eq i32 %and, %mode
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 0
  %and6 = and i32 %ret.123.i.ph, 32767
  %masksel = select i1 %cmp4, i32 0, i32 32768
  %ret.0 = or i32 %and6, %masksel
  %conv = trunc i32 %ret.0 to i16
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i26 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %i2c_retry_count.i26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_retry_count.i26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.i = icmp sgt i32 %7, 0
  br i1 %cmp24.i, label %if.end3.while.body.i32_crit_edge, label %if.end3.if.end12_crit_edge

if.end3.if.end12_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.end3.while.body.i32_crit_edge:                 ; preds = %if.end3
  br label %while.body.i32

while.cond.i29:                                   ; preds = %while.body.i32
  %dec.i27 = add nsw i32 %retries.025.i, -1
  %cmp.i28 = icmp sgt i32 %retries.025.i, 1
  br i1 %cmp.i28, label %while.cond.i29.while.body.i32_crit_edge, label %do.body.i33

while.cond.i29.while.body.i32_crit_edge:          ; preds = %while.cond.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i32

while.body.i32:                                   ; preds = %while.cond.i29.while.body.i32_crit_edge, %if.end3.while.body.i32_crit_edge
  %retries.025.i = phi i32 [ %dec.i27, %while.cond.i29.while.body.i32_crit_edge ], [ %7, %if.end3.while.body.i32_crit_edge ]
  %call1.i30 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 3, i16 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i30)
  %cmp2.i31 = icmp sgt i32 %call1.i30, -1
  br i1 %cmp2.i31, label %while.body.i32.if.end12_crit_edge, label %while.cond.i29

while.body.i32.if.end12_crit_edge:                ; preds = %while.body.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.body.i33:                                      ; preds = %while.cond.i29
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_write_word_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_set_capacity_mode, %cleanup)) #9
          to label %if.then9.i35 [label %cleanup], !srcloc !171

if.then9.i35:                                     ; preds = %do.body.i33
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i34 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_write_word_data.__UNIQUE_ID_ddebug295, ptr noundef %dev.i34, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 3) #9
  br label %cleanup

if.end12:                                         ; preds = %while.body.i32.if.end12_crit_edge, %if.end3.if.end12_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9.i35, %do.body.i33, %if.end.cleanup_crit_edge, %if.then9.i, %do.body.i
  %retval.0 = phi i32 [ %and, %if.end12 ], [ %mode, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then9.i ], [ %call1.i, %do.body.i ], [ %call1.i30, %if.then9.i35 ], [ %call1.i30, %do.body.i33 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_read_string_data(ptr noundef %client, i8 noundef zeroext %address, ptr noundef %values) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_retry_count = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_retry_count, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %9(ptr noundef %5) #9
  %10 = and i32 %call.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp58 = icmp sgt i32 %3, 0
  br i1 %cmp58, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end32_crit_edge

while.cond.preheader.if.end32_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

if.then:                                          ; preds = %entry
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %client, align 8
  %13 = and i16 %12, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool2.not = icmp eq i16 %13, 0
  %and5 = and i16 %12, -5
  %14 = ptrtoint ptr %client to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %and5, ptr %client, align 8
  %call7 = tail call fastcc i32 @sbs_read_string_data_fallback(ptr noundef %client, i8 noundef zeroext %address, ptr noundef %values)
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %if.then9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %client, align 8
  %17 = or i16 %16, 4
  store i16 %17, ptr %client, align 8
  br label %cleanup

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %retries.059, -1
  %cmp = icmp sgt i32 %retries.059, 1
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %do.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %retries.059 = phi i32 [ %dec, %while.cond.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %call15 = tail call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext %address, ptr noundef %values) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call15)
  %cmp16 = icmp sgt i32 %call15, -1
  br i1 %cmp16, label %while.body.if.end32_crit_edge, label %while.cond

while.body.if.end32_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.body:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_string_data.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_read_string_data, %cleanup)) #9
          to label %if.then29 [label %cleanup], !srcloc !171

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv30 = zext i8 %address to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_string_data.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv30, i32 noundef %call15) #9
  br label %cleanup

if.end32:                                         ; preds = %while.body.if.end32_crit_edge, %while.cond.preheader.if.end32_crit_edge
  %ret.155 = phi i32 [ 0, %while.cond.preheader.if.end32_crit_edge ], [ %call15, %while.body.if.end32_crit_edge ]
  %arrayidx = getelementptr i8, ptr %values, i32 %ret.155
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then29, %do.body, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.155, %if.end32 ], [ %call7, %if.then9 ], [ %call7, %if.then.cleanup_crit_edge ], [ %call15, %if.then29 ], [ %call15, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_read_string_data_fallback(ptr noundef %client, i8 noundef zeroext %address, ptr nocapture noundef writeonly %values) unnamed_addr #2 align 64 {
entry:
  %block_buffer = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %block_buffer) #9
  %2 = call ptr @memset(ptr %block_buffer, i32 255, i32 33)
  %i2c_retry_count = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %i2c_retry_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %i2c_retry_count, align 4
  %.b101 = load i1, ptr @sbs_read_string_data_fallback.__print_once, align 1
  br i1 %.b101, label %entry.do.end4_crit_edge, label %if.then

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sbs_read_string_data_fallback.__print_once, align 1
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  br label %do.end4

do.end4:                                          ; preds = %if.then, %entry.do.end4_crit_edge
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %6) #9
  %and.i = and i32 %call.i.i, 202899456
  call void @__sanitizer_cov_trace_const_cmp4(i32 202899456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 202899456
  br i1 %cmp.i.not, label %while.cond.preheader, label %do.end4.cleanup_crit_edge

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %do.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp115 = icmp sgt i32 %4, 0
  br i1 %cmp115, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.if.end70_crit_edge

while.cond.preheader.if.end70_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond:                                       ; preds = %while.body
  %dec = add nsw i32 %retries_length.0116, -1
  %cmp = icmp sgt i32 %retries_length.0116, 1
  br i1 %cmp, label %while.cond.while.body_crit_edge, label %do.body15

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %retries_length.0116 = phi i32 [ %dec, %while.cond.while.body_crit_edge ], [ %4, %while.cond.preheader.while.body_crit_edge ]
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %address) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.end26, label %while.cond

do.body15:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_read_string_data_fallback, %cleanup)) #9
          to label %if.then21 [label %cleanup], !srcloc !171

if.then21:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #11
  %dev22 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv = zext i8 %address to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug292, ptr noundef %dev22, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.53, i32 noundef %conv) #9
  br label %cleanup

if.end26:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call9)
  %cmp27 = icmp ugt i32 %call9, 32
  br i1 %cmp27, label %do.end32, label %while.cond35.preheader

while.cond35.preheader:                           ; preds = %if.end26
  br i1 %cmp115, label %while.body38.lr.ph, label %while.cond35.preheader.if.end70_crit_edge

while.cond35.preheader.if.end70_crit_edge:        ; preds = %while.cond35.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

while.body38.lr.ph:                               ; preds = %while.cond35.preheader
  %11 = trunc i32 %call9 to i8
  %conv39 = add nuw nsw i8 %11, 1
  br label %while.body38

do.end32:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.53, i32 noundef 32) #12
  br label %cleanup

while.cond35:                                     ; preds = %while.body38
  %dec45 = add nsw i32 %retries_block.0118, -1
  %cmp36 = icmp sgt i32 %retries_block.0118, 1
  br i1 %cmp36, label %while.cond35.while.body38_crit_edge, label %do.body50

while.cond35.while.body38_crit_edge:              ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body38

while.body38:                                     ; preds = %while.cond35.while.body38_crit_edge, %while.body38.lr.ph
  %retries_block.0118 = phi i32 [ %4, %while.body38.lr.ph ], [ %dec45, %while.cond35.while.body38_crit_edge ]
  %call40 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext %address, i8 noundef zeroext %conv39, ptr noundef nonnull %block_buffer) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call40)
  %cmp41 = icmp sgt i32 %call40, -1
  br i1 %cmp41, label %while.body38.if.end70_crit_edge, label %while.cond35

while.body38.if.end70_crit_edge:                  ; preds = %while.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

do.body50:                                        ; preds = %while.cond35
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_read_string_data_fallback, %cleanup)) #9
          to label %if.then64 [label %cleanup], !srcloc !171

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %dev65 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %conv66 = zext i8 %address to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug293, ptr noundef %dev65, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.53, i32 noundef %conv66) #9
  br label %cleanup

if.end70:                                         ; preds = %while.body38.if.end70_crit_edge, %while.cond35.preheader.if.end70_crit_edge, %while.cond.preheader.if.end70_crit_edge
  %ret.1107127129 = phi i32 [ %call9, %while.cond35.preheader.if.end70_crit_edge ], [ 0, %while.cond.preheader.if.end70_crit_edge ], [ %call9, %while.body38.if.end70_crit_edge ]
  %ret.3111 = phi i32 [ %call9, %while.cond35.preheader.if.end70_crit_edge ], [ 0, %while.cond.preheader.if.end70_crit_edge ], [ %call40, %while.body38.if.end70_crit_edge ]
  %add.ptr = getelementptr inbounds i8, ptr %block_buffer, i32 1
  %12 = call ptr @memcpy(ptr %values, ptr %add.ptr, i32 %ret.1107127129)
  %arrayidx = getelementptr i8, ptr %values, i32 %ret.1107127129
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.then64, %do.body50, %do.end32, %if.then21, %do.body15, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end32 ], [ %ret.3111, %if.end70 ], [ -19, %do.end4.cleanup_crit_edge ], [ %call9, %if.then21 ], [ %call40, %if.then64 ], [ %call9, %do.body15 ], [ %call40, %do.body50 ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %block_buffer) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sbs_get_ti_battery_presence_and_health(ptr noundef %client, i32 noundef %psp, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.i = icmp sgt i32 %3, 0
  br i1 %cmp24.i, label %entry.while.body.i_crit_edge, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.025.i, -1
  %cmp.i = icmp sgt i32 %retries.025.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.025.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 0, i16 noundef zeroext 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end3_crit_edge, label %while.cond.i

while.body.i.if.end3_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.body.i:                                        ; preds = %while.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_write_word_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_ti_battery_presence_and_health, %if.then)) #9
          to label %if.then9.i [label %if.then], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_write_word_data.__UNIQUE_ID_ddebug295, ptr noundef %dev.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 0) #9
  br label %if.then

if.then:                                          ; preds = %if.then9.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp1 = icmp eq i32 %psp, 3
  br i1 %cmp1, label %if.then.cleanup.sink.split_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.cleanup.sink.split_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end3:                                          ; preds = %while.body.i.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i67 = getelementptr inbounds %struct.sbs_info, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %i2c_retry_count.i67 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %i2c_retry_count.i67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp26.i = icmp sgt i32 %7, 0
  br i1 %cmp26.i, label %if.end3.while.body.i73_crit_edge, label %if.end3.if.end14_crit_edge

if.end3.if.end14_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end3.while.body.i73_crit_edge:                 ; preds = %if.end3
  br label %while.body.i73

while.cond.i70:                                   ; preds = %while.body.i73
  %dec.i68 = add nsw i32 %retries.027.i, -1
  %cmp.i69 = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i69, label %while.cond.i70.while.body.i73_crit_edge, label %do.body.i74

while.cond.i70.while.body.i73_crit_edge:          ; preds = %while.cond.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i73

while.body.i73:                                   ; preds = %while.cond.i70.while.body.i73_crit_edge, %if.end3.while.body.i73_crit_edge
  %retries.027.i = phi i32 [ %dec.i68, %while.cond.i70.while.body.i73_crit_edge ], [ %7, %if.end3.while.body.i73_crit_edge ]
  %call1.i71 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i71)
  %cmp2.i72 = icmp sgt i32 %call1.i71, -1
  br i1 %cmp2.i72, label %lor.lhs.false, label %while.cond.i70

do.body.i74:                                      ; preds = %while.cond.i70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_get_ti_battery_presence_and_health, %if.then6)) #9
          to label %if.then9.i76 [label %if.then6], !srcloc !171

if.then9.i76:                                     ; preds = %do.body.i74
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i75 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i75, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 0) #9
  br label %if.then6

if.then6:                                         ; preds = %if.then9.i76, %do.body.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %psp)
  %cmp7 = icmp eq i32 %psp, 3
  br i1 %cmp7, label %if.then6.cleanup.sink.split_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %while.body.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %call1.i71)
  %cmp12 = icmp ugt i32 %call1.i71, 65535
  br i1 %cmp12, label %lor.lhs.false.cleanup.sink.split_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end14:                                         ; preds = %lor.lhs.false.if.end14_crit_edge, %if.end3.if.end14_crit_edge
  %ret.123.i.ph84 = phi i32 [ %call1.i71, %lor.lhs.false.if.end14_crit_edge ], [ 0, %if.end3.if.end14_crit_edge ]
  %and = lshr i32 %ret.123.i.ph84, 8
  %8 = and i32 %and, 15
  %9 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %psp, label %if.end14.cleanup_crit_edge [
    i32 3, label %if.then16
    i32 2, label %if.then22
  ]

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %8)
  %cmp17 = icmp ne i32 %8, 15
  %. = zext i1 %cmp17 to i32
  br label %cleanup.sink.split

if.then22:                                        ; preds = %if.end14
  %10 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %8, label %if.else31 [
    i32 9, label %if.then22.cleanup.sink.split_crit_edge
    i32 11, label %if.then27
    i32 12, label %if.then30
  ]

if.then22.cleanup.sink.split_crit_edge:           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.then30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else31:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call fastcc zeroext i1 @sbs_bat_needs_calibration(ptr noundef %client)
  %.91 = select i1 %call32, i32 10, i32 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else31, %if.then30, %if.then27, %if.then22.cleanup.sink.split_crit_edge, %if.then16, %lor.lhs.false.cleanup.sink.split_crit_edge, %if.then6.cleanup.sink.split_crit_edge, %if.then.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ 3, %if.then30 ], [ 2, %if.then27 ], [ 0, %if.then.cleanup.sink.split_crit_edge ], [ 0, %if.then6.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ %., %if.then16 ], [ 5, %if.then22.cleanup.sink.split_crit_edge ], [ %.91, %if.else31 ]
  %retval.0.ph = phi i32 [ 0, %if.then30 ], [ 0, %if.then27 ], [ %call1.i, %if.then.cleanup.sink.split_crit_edge ], [ %call1.i71, %if.then6.cleanup.sink.split_crit_edge ], [ 0, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ 0, %if.then16 ], [ 0, %if.then22.cleanup.sink.split_crit_edge ], [ 0, %if.else31 ]
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end14.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then.cleanup_crit_edge ], [ %call1.i71, %if.then6.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sbs_bat_needs_calibration(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.i = icmp sgt i32 %3, 0
  br i1 %cmp26.i, label %entry.while.body.i_crit_edge, label %entry.sbs_read_word_data.exit.thread_crit_edge

entry.sbs_read_word_data.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sbs_read_word_data.exit.thread

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.027.i, -1
  %cmp.i = icmp sgt i32 %retries.027.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %retries.027.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %3, %entry.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %sbs_read_word_data.exit.thread.loopexit, label %while.cond.i

do.body.i:                                        ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_bat_needs_calibration, %sbs_read_word_data.exit.thread)) #9
          to label %if.then9.i [label %sbs_read_word_data.exit.thread], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_read_word_data.__UNIQUE_ID_ddebug291, ptr noundef %dev.i, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 3) #9
  br label %sbs_read_word_data.exit.thread

sbs_read_word_data.exit.thread.loopexit:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %phi.bo = and i32 %call1.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %phi.bo)
  %phi.cmp = icmp ne i32 %phi.bo, 0
  br label %sbs_read_word_data.exit.thread

sbs_read_word_data.exit.thread:                   ; preds = %sbs_read_word_data.exit.thread.loopexit, %if.then9.i, %do.body.i, %entry.sbs_read_word_data.exit.thread_crit_edge
  %4 = phi i1 [ false, %if.then9.i ], [ false, %do.body.i ], [ false, %entry.sbs_read_word_data.exit.thread_crit_edge ], [ %phi.cmp, %sbs_read_word_data.exit.thread.loopexit ]
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_delayed_work_drop(ptr noundef %res) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %res) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %poll_time = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %poll_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %poll_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %work = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 9
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then2

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2:                                         ; preds = %if.end
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %i2c_retry_count.i = getelementptr inbounds %struct.sbs_info, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %i2c_retry_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %i2c_retry_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.i = icmp sgt i32 %9, 0
  br i1 %cmp24.i, label %if.then2.while.body.i_crit_edge, label %if.then2.if.end8_crit_edge

if.then2.if.end8_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then2.while.body.i_crit_edge:                  ; preds = %if.then2
  br label %while.body.i

while.cond.i:                                     ; preds = %while.body.i
  %dec.i = add nsw i32 %retries.025.i, -1
  %cmp.i = icmp sgt i32 %retries.025.i, 1
  br i1 %cmp.i, label %while.cond.i.while.body.i_crit_edge, label %do.body.i

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %if.then2.while.body.i_crit_edge
  %retries.025.i = phi i32 [ %dec.i, %while.cond.i.while.body.i_crit_edge ], [ %9, %if.then2.while.body.i_crit_edge ]
  %call1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %add.ptr, i8 noundef zeroext 0, i16 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp2.i = icmp sgt i32 %call1.i, -1
  br i1 %cmp2.i, label %while.body.i.if.end8_crit_edge, label %while.cond.i

while.body.i.if.end8_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.body.i:                                        ; preds = %while.cond.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sbs_write_word_data.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sbs_suspend, %sbs_write_word_data.exit)) #9
          to label %if.then9.i [label %sbs_write_word_data.exit], !srcloc !171

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sbs_write_word_data.__UNIQUE_ID_ddebug295, ptr noundef %dev, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.39, i32 noundef 0) #9
  br label %sbs_write_word_data.exit

sbs_write_word_data.exit:                         ; preds = %if.then9.i, %do.body.i
  %is_present = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %is_present to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_present, align 4, !range !169
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not.not = icmp eq i8 %11, 0
  br i1 %tobool4.not.not, label %sbs_write_word_data.exit.if.end8_crit_edge, label %sbs_write_word_data.exit.cleanup_crit_edge

sbs_write_word_data.exit.cleanup_crit_edge:       ; preds = %sbs_write_word_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sbs_write_word_data.exit.if.end8_crit_edge:       ; preds = %sbs_write_word_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %sbs_write_word_data.exit.if.end8_crit_edge, %while.body.i.if.end8_crit_edge, %if.then2.if.end8_crit_edge, %if.end.if.end8_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %sbs_write_word_data.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call1.i, %sbs_write_word_data.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !106, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !122, !124, !126, !128, !129, !130, !132, !133, !134, !135, !136, !138, !140, !141, !142, !144, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @__initcall__kmod_sbs_battery__300_1287_sbs_battery_driver_init6, !1, !"__initcall__kmod_sbs_battery__300_1287_sbs_battery_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/sbs-battery.c", i32 1287, i32 1}
!2 = !{ptr @__exitcall_sbs_battery_driver_exit, !1, !"__exitcall_sbs_battery_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description301, !4, !"__UNIQUE_ID_description301", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/sbs-battery.c", i32 1289, i32 1}
!5 = !{ptr @__UNIQUE_ID_file302, !6, !"__UNIQUE_ID_file302", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/sbs-battery.c", i32 1290, i32 1}
!7 = !{ptr @__UNIQUE_ID_license303, !6, !"__UNIQUE_ID_license303", i1 false, i1 false}
!8 = !{ptr @__param_force_load, !9, !"__param_force_load", i1 false, i1 false}
!9 = !{!"../drivers/power/supply/sbs-battery.c", i32 1292, i32 1}
!10 = !{ptr @__UNIQUE_ID_force_loadtype304, !9, !"__UNIQUE_ID_force_loadtype304", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_force_load305, !12, !"__UNIQUE_ID_force_load305", i1 false, i1 false}
!12 = !{!"../drivers/power/supply/sbs-battery.c", i32 1293, i32 1}
!13 = !{ptr @force_load, !14, !"force_load", i1 false, i1 false}
!14 = !{!"../drivers/power/supply/sbs-battery.c", i32 243, i32 13}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/power/supply/sbs-battery.c", i32 1282, i32 11}
!17 = !{ptr @sbs_battery_driver, !18, !"sbs_battery_driver", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/sbs-battery.c", i32 1277, i32 26}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/sbs-battery.c", i32 1129, i32 60}
!21 = !{ptr @sbs_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/sbs-battery.c", i32 1144, i32 2}
!23 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/sbs-battery.c", i32 1149, i32 46}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/sbs-battery.c", i32 1154, i32 46}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/sbs-battery.c", i32 1166, i32 6}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/sbs-battery.c", i32 1169, i32 4}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/sbs-battery.c", i32 1172, i32 10}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/sbs-battery.c", i32 1181, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sbs_probe._entry, !35, !"_entry", i1 false, i1 false}
!41 = !{ptr @sbs_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/sbs-battery.c", i32 1189, i32 3}
!44 = !{ptr @sbs_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @sbs_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/sbs-battery.c", i32 1205, i32 11}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/sbs-battery.c", i32 1217, i32 10}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/sbs-battery.c", i32 1219, i32 2}
!52 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @sbs_probe._entry.18, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @sbs_probe._entry_ptr.21, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @sbs_default_desc, !56, !"sbs_default_desc", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/sbs-battery.c", i32 1107, i32 39}
!57 = !{ptr @sbs_properties, !58, !"sbs_properties", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/sbs-battery.c", i32 158, i32 41}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/sbs-battery.c", i32 1006, i32 3}
!61 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @sbs_get_property._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @sbs_get_property._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/sbs-battery.c", i32 1027, i32 3}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @sbs_get_property.__UNIQUE_ID_ddebug299, !66, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/sbs-battery.c", i32 301, i32 3}
!71 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sbs_update_presence.__UNIQUE_ID_ddebug289, !70, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/sbs-battery.c", i32 317, i32 59}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/sbs-battery.c", i32 319, i32 3}
!77 = !{ptr @sbs_update_presence._entry, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sbs_update_presence._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/sbs-battery.c", i32 323, i32 2}
!81 = !{ptr @sbs_update_presence.__UNIQUE_ID_ddebug290, !80, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!82 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/sbs-battery.c", i32 260, i32 3}
!86 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @sbs_disable_charger_broadcasts._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @sbs_disable_charger_broadcasts._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/sbs-battery.c", i32 263, i32 3}
!91 = !{ptr @sbs_disable_charger_broadcasts.__UNIQUE_ID_ddebug288, !90, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/sbs-battery.c", i32 348, i32 3}
!94 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @sbs_read_word_data.__UNIQUE_ID_ddebug291, !93, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/sbs-battery.c", i32 472, i32 3}
!98 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @sbs_write_word_data.__UNIQUE_ID_ddebug295, !97, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!100 = !{ptr @.str.41, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/sbs-battery.c", i32 854, i32 30}
!102 = !{ptr @.str.42, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/sbs-battery.c", i32 856, i32 35}
!104 = !{ptr @.str.43, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/sbs-battery.c", i32 858, i32 35}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/sbs-battery.c", i32 860, i32 35}
!108 = !{ptr @.str.45, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/power/supply/sbs-battery.c", i32 866, i32 3}
!110 = !{ptr @.str.46, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sbs_get_chemistry._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @sbs_get_chemistry._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/sbs-battery.c", i32 686, i32 2}
!115 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @sbs_get_property_index._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @sbs_get_property_index._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @sbs_data, !119, !"sbs_data", i1 false, i1 false}
!119 = !{!"../drivers/power/supply/sbs-battery.c", i32 98, i32 3}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/power/supply/sbs-battery.c", i32 833, i32 22}
!122 = !{ptr @sbs_serial, !123, !"sbs_serial", i1 false, i1 false}
!123 = !{!"../drivers/power/supply/sbs-battery.c", i32 823, i32 13}
!124 = distinct !{null, !125, !"string_properties", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/sbs-battery.c", i32 196, i32 41}
!126 = !{ptr @.str.50, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/sbs-battery.c", i32 448, i32 3}
!128 = !{ptr @.str.51, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @sbs_read_string_data.__UNIQUE_ID_ddebug294, !127, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!130 = distinct !{null, !131, !"__print_once", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/sbs-battery.c", i32 367, i32 2}
!132 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.53, !131, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @sbs_read_string_data_fallback._entry, !131, !"_entry", i1 false, i1 false}
!135 = !{ptr @sbs_read_string_data_fallback._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug292, !137, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/sbs-battery.c", i32 386, i32 3}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/power/supply/sbs-battery.c", i32 395, i32 3}
!140 = !{ptr @sbs_read_string_data_fallback._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @sbs_read_string_data_fallback._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @sbs_read_string_data_fallback.__UNIQUE_ID_ddebug293, !143, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/sbs-battery.c", i32 412, i32 3}
!144 = !{ptr @.str.57, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/power/supply/sbs-battery.c", i32 765, i32 3}
!146 = !{ptr @.str.58, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sbs_unit_adjustment.__UNIQUE_ID_ddebug298, !145, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!148 = !{ptr @devm_delayed_work_autocancel.__key, !149, !"__key", i1 false, i1 false}
!149 = !{!"../include/linux/devm-helpers.h", i32 50, i32 2}
!150 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @devm_delayed_work_autocancel.__key.60, !149, !"__key", i1 false, i1 false}
!152 = !{ptr @.str.61, !149, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @sbs_dt_ids, !154, !"sbs_dt_ids", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/sbs-battery.c", i32 1263, i32 34}
!155 = !{ptr @sbs_pm_ops, !156, !"sbs_pm_ops", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/sbs-battery.c", i32 1248, i32 8}
!157 = !{ptr @sbs_id, !158, !"sbs_id", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/sbs-battery.c", i32 1255, i32 35}
!159 = !{ptr @__param_str_force_load, !9, !"__param_str_force_load", i1 false, i1 false}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!169 = !{i8 0, i8 2}
!170 = !{!"auto-init"}
!171 = !{i64 2148788154, i64 2148788159, i64 2148788172, i64 2148788216, i64 2148788250, i64 2148788271}
