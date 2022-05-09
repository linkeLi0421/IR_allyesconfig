; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max17042_battery.c_pt.bc'
source_filename = "../drivers/power/supply/max17042_battery.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.max17042_reg_data = type { i8, i16 }
%struct.atomic_t = type { i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max17042_chip = type { ptr, ptr, ptr, i32, ptr, %struct.work_struct, i32 }
%struct.max17042_platform_data = type { ptr, ptr, i32, i8, i8, i32, i32, i32, i32, i32 }
%struct.max17042_config_data = type <{ i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [48 x i16] }>

@__initcall__kmod_max17042_battery__289_1232_max17042_i2c_driver_init6 = internal global ptr @max17042_i2c_driver_init, section ".initcall6.init", align 4
@max17042_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max17042_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max17042_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max17042_pm_ops, ptr null, ptr null }, ptr @max17042_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max17042_i2c_driver_exit = internal global ptr @max17042_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [64 x i8] c"max17042_battery.author=MyungJoo Ham <myungjoo.ham@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [49 x i8] c"max17042_battery.description=MAX17042 Fuel Gauge\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [60 x i8] c"max17042_battery.file=drivers/power/supply/max17042_battery\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [29 x i8] c"max17042_battery.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max17042\00", [23 x i8] zeroinitializer }, align 32
@max17042_dt_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17042\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17047\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17050\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max17055\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77849-battery\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@max17042_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max17042_suspend, ptr @max17042_resume, ptr @max17042_suspend, ptr @max17042_resume, ptr @max17042_suspend, ptr @max17042_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max17042_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max17042\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max17047\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max17050\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max17055\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max77849-battery\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max17042_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 1, ptr null, i32 0, ptr @max17042_battery_props, i32 26, ptr @max17042_get_property, ptr @max17042_set_property, ptr @max17042_property_is_writeable, ptr @max17042_external_power_changed, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max17042_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max17042_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 3, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"max17042_battery:1070:(&max17042_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@max17042_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1072, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to initialize regmap\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max17042_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max17042_battery.c\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max17042_probe._entry_ptr = internal global ptr @max17042_probe._entry, section ".printk_index", align 4
@max17042_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 1078, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data provided\0A\00", [37 x i8] zeroinitializer }, align 32
@max17042_probe._entry_ptr.9 = internal global ptr @max17042_probe._entry.7, section ".printk_index", align 4
@max17042_no_current_sense_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.17, i32 1, ptr null, i32 0, ptr @max17042_battery_props, i32 24, ptr @max17042_get_property, ptr @max17042_set_property, ptr @max17042_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@max17042_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 1109, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed: power supply register\0A\00", [33 x i8] zeroinitializer }, align 32
@max17042_probe._entry_ptr.12 = internal global ptr @max17042_probe._entry.10, section ".printk_index", align 4
@max17042_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 1136, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Failed to get IRQ\0A\00", [45 x i8] zeroinitializer }, align 32
@max17042_probe._entry_ptr.15 = internal global ptr @max17042_probe._entry.13, section ".printk_index", align 4
@max17042_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&chip->work)\00", [33 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max170xx_battery\00", [47 x i8] zeroinitializer }, align 32
@max17042_battery_props = internal global { [26 x i32], [56 x i8] } { [26 x i32] [i32 0, i32 3, i32 6, i32 7, i32 8, i32 9, i32 11, i32 12, i32 13, i32 14, i32 47, i32 22, i32 24, i32 26, i32 28, i32 68, i32 52, i32 55, i32 56, i32 54, i32 53, i32 2, i32 66, i32 60, i32 17, i32 18], [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"maxim,rsns-microohm\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,cold-temp\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"maxim,over-heat-temp\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,dead-volt\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,over-volt\00", [16 x i8] zeroinitializer }, align 32
@max17047_default_pdata_init_regs = internal global { [1 x %struct.max17042_reg_data], [28 x i8] } { [1 x %struct.max17042_reg_data] [%struct.max17042_reg_data { i8 19, i16 24320 }], [28 x i8] zeroinitializer }, align 32
@max17042_thread_handler.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 -37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max17042_battery\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"max17042_thread_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SOC threshold INTR\0A\00", [44 x i8] zeroinitializer }, align 32
@max17042_init_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.4, i32 820, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s init failed\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max17042_init_chip\00", [45 x i8] zeroinitializer }, align 32
@max17042_init_chip._entry_ptr = internal global ptr @max17042_init_chip._entry, section ".printk_index", align 4
@max17042_init_chip._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s lock verify failed\0A\00", [41 x i8] zeroinitializer }, align 32
@max17042_init_chip._entry_ptr.30 = internal global ptr @max17042_init_chip._entry.28, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@max17042_model_data_compare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s compare failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max17042_model_data_compare\00", [36 x i8] zeroinitializer }, align 32
@max17042_model_data_compare._entry_ptr = internal global ptr @max17042_model_data_compare._entry, section ".printk_index", align 4
@max17042_model_data_compare._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.4, i32 583, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0x%x, 0x%x\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max17042_model_data_compare._entry_ptr.36 = internal global ptr @max17042_model_data_compare._entry.33, section ".printk_index", align 4
@max17042_model_data_compare._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.32, ptr @.str.4, i32 584, ptr @.str.35, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@max17042_model_data_compare._entry_ptr.39 = internal global ptr @max17042_model_data_compare._entry.37, section ".printk_index", align 4
@max17042_write_verify_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.4, i32 522, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013%s: err %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"max17042_write_verify_reg\00", [38 x i8] zeroinitializer }, align 32
@max17042_write_verify_reg._entry_ptr = internal global ptr @max17042_write_verify_reg._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [28 x i64] [i64 26, i64 32, i64 0, i64 2, i64 3, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 13, i64 14, i64 17, i64 18, i64 22, i64 24, i64 26, i64 28, i64 47, i64 52, i64 53, i64 54, i64 55, i64 56, i64 60, i64 66, i64 68]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 55, i64 56]
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"max17042_i2c_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1222, i32 26 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1224, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"max17042_dt_match\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1201, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [16 x i8] c"max17042_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1189, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"max17042_id\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1212, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"max17042_psy_desc\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1012, i32 39 }
@___asan_gen_.61 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [23 x i8] c"max17042_regmap_config\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1006, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1070, i32 17 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1072, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1078, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [35 x i8] c"max17042_no_current_sense_psy_desc\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1023, i32 39 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1109, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1136, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1145, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1013, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [23 x i8] c"max17042_battery_props\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 63, i32 35 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 924, i32 31 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 929, i32 31 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 931, i32 31 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 933, i32 31 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 935, i32 31 }
@___asan_gen_.136 = private unnamed_addr constant [33 x i8] c"max17047_default_pdata_init_regs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 942, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 879, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 819, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 826, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 580, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 582, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 584, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private constant [43 x i8] c"../drivers/power/supply/max17042_battery.c\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 522, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_max17042_i2c_driver_exit, ptr @__initcall__kmod_max17042_battery__289_1232_max17042_i2c_driver_init6, ptr @max17042_i2c_driver_exit, ptr @max17042_init_chip._entry, ptr @max17042_init_chip._entry.28, ptr @max17042_init_chip._entry_ptr, ptr @max17042_init_chip._entry_ptr.30, ptr @max17042_model_data_compare._entry, ptr @max17042_model_data_compare._entry.33, ptr @max17042_model_data_compare._entry.37, ptr @max17042_model_data_compare._entry_ptr, ptr @max17042_model_data_compare._entry_ptr.36, ptr @max17042_model_data_compare._entry_ptr.39, ptr @max17042_probe._entry, ptr @max17042_probe._entry.10, ptr @max17042_probe._entry.13, ptr @max17042_probe._entry.7, ptr @max17042_probe._entry_ptr, ptr @max17042_probe._entry_ptr.12, ptr @max17042_probe._entry_ptr.15, ptr @max17042_probe._entry_ptr.9, ptr @max17042_write_verify_reg._entry, ptr @max17042_write_verify_reg._entry_ptr, ptr @max17042_i2c_driver, ptr @.str, ptr @max17042_dt_match, ptr @max17042_pm_ops, ptr @max17042_id, ptr @max17042_psy_desc, ptr @max17042_probe._key, ptr @max17042_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @max17042_no_current_sense_psy_desc, ptr @.str.11, ptr @.str.14, ptr @max17042_probe.__key, ptr @.str.16, ptr @.str.17, ptr @max17042_battery_props, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @max17047_default_pdata_init_regs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_dt_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_no_current_sense_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_battery_props to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17047_default_pdata_init_regs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_init_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_init_chip._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_model_data_compare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_model_data_compare._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_model_data_compare._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max17042_write_verify_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max17042_i2c_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max17042_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max17042_i2c_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_probe(ptr noundef %client, ptr noundef readonly %id) #2 align 64 {
entry:
  %soc.i = alloca i32, align 4
  %misc_cfg.i.i = alloca i32, align 4
  %prop.i.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #8
  %2 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 20)
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !110
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %8(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 68, i32 noundef 3520) #8
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %tobool9.not = icmp eq ptr %id, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10:                                        ; preds = %if.end7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %chip_type = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %chip_type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %chip_type, align 4
  %call18 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max17042_regmap_config, ptr noundef nonnull @max17042_probe._key, ptr noundef nonnull @.str.1) #8
  %regmap = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call18, ptr %regmap, align 4
  %cmp.i208 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %do.end, label %if.end23

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end23:                                         ; preds = %if.then10
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end23
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i.i) #8
  %18 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %prop.i.i, align 4, !annotation !110
  %call.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef 36, i32 noundef 3520) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.max17042_get_of_pdata.exit.i_crit_edge, label %if.end.i.i

if.then.i.max17042_get_of_pdata.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_of_pdata.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.18, ptr noundef nonnull %prop.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i.i.if.end4.i.i_crit_edge

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prop.i.i, align 4
  %r_sns.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %r_sns.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %r_sns.i.i, align 4
  %enable_current_sense.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %enable_current_sense.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %enable_current_sense.i.i, align 4
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  %temp_min.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 8
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.19, ptr noundef %temp_min.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool6.not.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  br i1 %tobool6.not.i.i, label %if.end4.i.i.if.end9.i.i_crit_edge, label %if.then7.i.i

if.end4.i.i.if.end9.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then7.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %temp_min.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -2147483648, ptr %temp_min.i.i, align 4
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then7.i.i, %if.end4.i.i.if.end9.i.i_crit_edge
  %temp_max.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 9
  %call.i.i.i44.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.20, ptr noundef %temp_max.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i44.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i.i.i44.i.i, -1
  br i1 %tobool11.not.i.i, label %if.end9.i.i.if.end14.i.i_crit_edge, label %if.then12.i.i

if.end9.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %temp_max.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2147483647, ptr %temp_max.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then12.i.i, %if.end9.i.i.if.end14.i.i_crit_edge
  %vmin.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 6
  %call.i.i.i45.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.21, ptr noundef %vmin.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i45.i.i)
  %tobool16.not.i.i = icmp sgt i32 %call.i.i.i45.i.i, -1
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end19.i.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end19.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %vmin.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2147483648, ptr %vmin.i.i, align 4
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.then17.i.i, %if.end14.i.i.if.end19.i.i_crit_edge
  %vmax.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i.i, i32 0, i32 7
  %call.i.i.i46.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %17, ptr noundef nonnull @.str.22, ptr noundef %vmax.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i46.i.i)
  %tobool21.not.i.i = icmp sgt i32 %call.i.i.i46.i.i, -1
  br i1 %tobool21.not.i.i, label %if.end19.i.i.max17042_get_of_pdata.exit.i_crit_edge, label %if.then22.i.i

if.end19.i.i.max17042_get_of_pdata.exit.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_of_pdata.exit.i

if.then22.i.i:                                    ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %vmax.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2147483647, ptr %vmax.i.i, align 4
  br label %max17042_get_of_pdata.exit.i

max17042_get_of_pdata.exit.i:                     ; preds = %if.then22.i.i, %if.end19.i.i.max17042_get_of_pdata.exit.i_crit_edge, %if.then.i.max17042_get_of_pdata.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i.i) #8
  br label %max17042_get_pdata.exit

if.end.i:                                         ; preds = %if.end23
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4, i32 7
  %27 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %platform_data.i, align 8
  %tobool2.not.i = icmp eq ptr %28, null
  br i1 %tobool2.not.i, label %if.end5.i, label %max17042_get_pdata.exit.thread

max17042_get_pdata.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %pdata215 = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 4
  %29 = ptrtoint ptr %pdata215 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %pdata215, align 4
  br label %if.end32

if.end5.i:                                        ; preds = %if.end.i
  %dev1.i11.i = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %misc_cfg.i.i) #8
  %30 = ptrtoint ptr %misc_cfg.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %misc_cfg.i.i, align 4, !annotation !110
  %call.i.i12.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1.i11.i, i32 noundef 36, i32 noundef 3520) #8
  %tobool.not.i13.i = icmp eq ptr %call.i.i12.i, null
  br i1 %tobool.not.i13.i, label %if.end5.i.max17042_get_default_pdata.exit.i_crit_edge, label %if.end.i14.i

if.end5.i.max17042_get_default_pdata.exit.i_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_default_pdata.exit.i

if.end.i14.i:                                     ; preds = %if.end5.i
  %31 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_type, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch.i.i = icmp eq i32 %33, 2
  br i1 %switch.i.i, label %if.then4.i.i, label %if.end.i14.i.if.end5.i.i_crit_edge

if.end.i14.i.if.end5.i.i_crit_edge:               ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i.i

if.then4.i.i:                                     ; preds = %if.end.i14.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @max17047_default_pdata_init_regs, ptr %call.i.i12.i, align 4
  %num_init_data.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 2
  %35 = ptrtoint ptr %num_init_data.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_init_data.i.i, align 4
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then4.i.i, %if.end.i14.i.if.end5.i.i_crit_edge
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call6.i.i = call i32 @regmap_read(ptr noundef %37, i32 noundef 43, ptr noundef nonnull %misc_cfg.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp7.i.i = icmp slt i32 %call6.i.i, 0
  br i1 %cmp7.i.i, label %if.end5.i.i.max17042_get_default_pdata.exit.i_crit_edge, label %if.end9.i19.i

if.end5.i.i.max17042_get_default_pdata.exit.i_crit_edge: ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_default_pdata.exit.i

if.end9.i19.i:                                    ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %misc_cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %misc_cfg.i.i, align 4
  %and.i.i = and i32 %39, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp10.i.i = icmp ne i32 %and.i.i, 3
  %spec.select.i.i = zext i1 %cmp10.i.i to i8
  %40 = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 3
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %spec.select.i.i, ptr %40, align 4
  %vmin.i15.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 6
  %42 = ptrtoint ptr %vmin.i15.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 3000, ptr %vmin.i15.i, align 4
  %vmax.i16.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 7
  %43 = ptrtoint ptr %vmax.i16.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 4500, ptr %vmax.i16.i, align 4
  %temp_min.i17.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 8
  %44 = ptrtoint ptr %temp_min.i17.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %temp_min.i17.i, align 4
  %temp_max.i18.i = getelementptr inbounds %struct.max17042_platform_data, ptr %call.i.i12.i, i32 0, i32 9
  %45 = ptrtoint ptr %temp_max.i18.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 700, ptr %temp_max.i18.i, align 4
  br label %max17042_get_default_pdata.exit.i

max17042_get_default_pdata.exit.i:                ; preds = %if.end9.i19.i, %if.end5.i.i.max17042_get_default_pdata.exit.i_crit_edge, %if.end5.i.max17042_get_default_pdata.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i12.i, %if.end9.i19.i ], [ null, %if.end5.i.max17042_get_default_pdata.exit.i_crit_edge ], [ null, %if.end5.i.i.max17042_get_default_pdata.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %misc_cfg.i.i) #8
  br label %max17042_get_pdata.exit

max17042_get_pdata.exit:                          ; preds = %max17042_get_default_pdata.exit.i, %max17042_get_of_pdata.exit.i
  %retval.0.i = phi ptr [ %call.i.i.i, %max17042_get_of_pdata.exit.i ], [ %retval.0.i.i, %max17042_get_default_pdata.exit.i ]
  %pdata = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %retval.0.i, ptr %pdata, align 4
  %tobool26.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool26.not, label %do.end30, label %max17042_get_pdata.exit.if.end32_crit_edge

max17042_get_pdata.exit.if.end32_crit_edge:       ; preds = %max17042_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end30:                                         ; preds = %max17042_get_pdata.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end32:                                         ; preds = %max17042_get_pdata.exit.if.end32_crit_edge, %max17042_get_pdata.exit.thread
  %pdata218 = phi ptr [ %pdata215, %max17042_get_pdata.exit.thread ], [ %pdata, %max17042_get_pdata.exit.if.end32_crit_edge ]
  %retval.0.i217 = phi ptr [ %28, %max17042_get_pdata.exit.thread ], [ %retval.0.i, %max17042_get_pdata.exit.if.end32_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %47 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %48 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %49 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %of_node, align 8
  %51 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %50, ptr %psy_cfg, align 4
  %enable_current_sense = getelementptr inbounds %struct.max17042_platform_data, ptr %retval.0.i217, i32 0, i32 3
  %52 = ptrtoint ptr %enable_current_sense to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %enable_current_sense, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool35.not = icmp eq i8 %53, 0
  %spec.select = select i1 %tobool35.not, ptr @max17042_no_current_sense_psy_desc, ptr @max17042_psy_desc
  %r_sns = getelementptr inbounds %struct.max17042_platform_data, ptr %retval.0.i217, i32 0, i32 5
  %54 = ptrtoint ptr %r_sns to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %r_sns, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp = icmp eq i32 %55, 0
  br i1 %cmp, label %if.then39, label %if.end32.if.end42_crit_edge

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.then39:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %r_sns to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 10000, ptr %r_sns, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end32.if.end42_crit_edge
  %57 = ptrtoint ptr %pdata218 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pdata218, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool44.not = icmp eq ptr %60, null
  br i1 %tobool44.not, label %if.end42.if.end56_crit_edge, label %for.cond.preheader

if.end42.if.end56_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

for.cond.preheader:                               ; preds = %if.end42
  %61 = ptrtoint ptr %pdata218 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdata218, align 4
  %num_init_data221 = getelementptr inbounds %struct.max17042_platform_data, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %num_init_data221 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_init_data221, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp47222 = icmp sgt i32 %64, 0
  br i1 %cmp47222, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end56_crit_edge

for.cond.preheader.if.end56_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %65 = phi ptr [ %75, %for.body.for.body_crit_edge ], [ %62, %for.cond.preheader.for.body_crit_edge ]
  %i.0223 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %66 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap, align 4
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %65, align 4
  %arrayidx = getelementptr %struct.max17042_reg_data, ptr %69, i32 %i.0223
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx, align 2
  %conv = zext i8 %71 to i32
  %data = getelementptr %struct.max17042_reg_data, ptr %69, i32 %i.0223, i32 1
  %72 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %data, align 2
  %conv54 = zext i16 %73 to i32
  %call55 = call i32 @regmap_write(ptr noundef %67, i32 noundef %conv, i32 noundef %conv54) #8
  %inc = add nuw nsw i32 %i.0223, 1
  %74 = ptrtoint ptr %pdata218 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdata218, align 4
  %num_init_data = getelementptr inbounds %struct.max17042_platform_data, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %num_init_data to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_init_data, align 4
  %cmp47 = icmp slt i32 %inc, %77
  br i1 %cmp47, label %for.body.for.body_crit_edge, label %for.body.if.end56_crit_edge

for.body.if.end56_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end56:                                         ; preds = %for.body.if.end56_crit_edge, %for.cond.preheader.if.end56_crit_edge, %if.end42.if.end56_crit_edge
  %78 = ptrtoint ptr %pdata218 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdata218, align 4
  %enable_current_sense58 = getelementptr inbounds %struct.max17042_platform_data, ptr %79, i32 0, i32 3
  %80 = ptrtoint ptr %enable_current_sense58 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %enable_current_sense58, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool59.not = icmp eq i8 %81, 0
  br i1 %tobool59.not, label %if.then60, label %if.end56.if.end67_crit_edge

if.end56.if.end67_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

if.then60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap, align 4
  %call62 = call i32 @regmap_write(ptr noundef %83, i32 noundef 46, i32 noundef 0) #8
  %84 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap, align 4
  %call64 = call i32 @regmap_write(ptr noundef %85, i32 noundef 43, i32 noundef 3) #8
  %86 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap, align 4
  %call66 = call i32 @regmap_write(ptr noundef %87, i32 noundef 40, i32 noundef 7) #8
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %if.end56.if.end67_crit_edge
  %call69 = call ptr @devm_power_supply_register(ptr noundef %dev2, ptr noundef nonnull %spec.select, ptr noundef nonnull %psy_cfg) #8
  %battery = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 2
  %88 = ptrtoint ptr %battery to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call69, ptr %battery, align 4
  %cmp.i209 = icmp ugt ptr %call69, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209, label %do.end75, label %if.end79

do.end75:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.11) #11
  %89 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %battery, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %cleanup

if.end79:                                         ; preds = %if.end67
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool80.not = icmp eq i32 %93, 0
  br i1 %tobool80.not, label %if.end79.if.then107_crit_edge, label %if.end84

if.end79.if.then107_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

if.end84:                                         ; preds = %if.end79
  %94 = ptrtoint ptr %call69 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %call69, align 8
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %call88 = call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %93, ptr noundef null, ptr noundef nonnull @max17042_thread_handler, i32 noundef 8192, ptr noundef %97, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %tobool89.not = icmp eq i32 %call88, 0
  br i1 %tobool89.not, label %if.then90, label %if.else93

if.then90:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call.i210 = call i32 @regmap_update_bits_base(ptr noundef %99, i32 noundef 29, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %100 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i) #8
  %102 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -1, ptr %soc.i, align 4, !annotation !110
  %call.i211 = call i32 @regmap_read(ptr noundef %101, i32 noundef 6, ptr noundef nonnull %soc.i) #8
  %103 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %soc.i, align 4
  %shr.i = lshr i32 %104, 8
  store i32 %shr.i, ptr %soc.i, align 4
  %105 = add i32 %104, 256
  %shl.i = and i32 %105, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %104)
  %cmp.i212 = icmp ugt i32 %104, 511
  %sub.i = add nsw i32 %shr.i, -1
  %or.i = select i1 %cmp.i212, i32 %sub.i, i32 0
  %soc_tr.0.i = or i32 %or.i, %shl.i
  %call4.i = call i32 @regmap_write(ptr noundef %101, i32 noundef 3, i32 noundef %soc_tr.0.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i) #8
  br label %if.end104

if.else93:                                        ; preds = %if.end84
  %106 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %call88)
  %cmp95.not = icmp eq i32 %call88, -16
  br i1 %cmp95.not, label %if.else93.if.then107_crit_edge, label %do.end100

if.else93.if.then107_crit_edge:                   ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

do.end100:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.14) #11
  br label %if.end104

if.end104:                                        ; preds = %do.end100, %if.then90
  %107 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool106.not = icmp eq i32 %.pr, 0
  br i1 %tobool106.not, label %if.end104.if.then107_crit_edge, label %if.end104.if.end110_crit_edge

if.end104.if.end110_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end110

if.end104.if.then107_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then107

if.then107:                                       ; preds = %if.end104.if.then107_crit_edge, %if.else93.if.then107_crit_edge, %if.end79.if.then107_crit_edge
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call109 = call i32 @regmap_write(ptr noundef %109, i32 noundef 3, i32 noundef 65280) #8
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end104.if.end110_crit_edge
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call112 = call i32 @regmap_read(ptr noundef %111, i32 noundef 0, ptr noundef nonnull %val) #8
  %112 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val, align 4
  %and = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool113.not = icmp eq i32 %and, 0
  br i1 %tobool113.not, label %if.else131, label %do.body115

do.body115:                                       ; preds = %if.end110
  %work = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %114 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @max17042_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry120 = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 5, i32 1
  %115 = ptrtoint ptr %entry120 to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %entry120, ptr %entry120, align 4
  %prev.i = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %116 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %entry120, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 5, i32 2
  %117 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @max17042_init_worker, ptr %func, align 4
  %call125 = call i32 @devm_add_action(ptr noundef %dev2, ptr noundef nonnull @max17042_stop_work, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end128, label %do.body115.cleanup_crit_edge

do.body115.cleanup_crit_edge:                     ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end128:                                        ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %118 = load ptr, ptr @system_wq, align 4
  %call.i.i213 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %118, ptr noundef %work) #8
  br label %cleanup

if.else131:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  %init_complete = getelementptr inbounds %struct.max17042_chip, ptr %call.i, i32 0, i32 6
  %119 = ptrtoint ptr %init_complete to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 1, ptr %init_complete, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else131, %if.end128, %do.body115.cleanup_crit_edge, %do.end75, %do.end30, %do.end, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %91, %do.end75 ], [ -22, %do.end30 ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call125, %do.body115.cleanup_crit_edge ], [ 0, %if.else131 ], [ 0, %if.end128 ], [ -19, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_thread_handler(i32 noundef %id, ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %soc.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !110
  %regmap = getelementptr inbounds %struct.max17042_chip, ptr %dev, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = and i32 %4, 17408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %if.end.if.end13_crit_edge, label %do.body

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max17042_thread_handler.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max17042_thread_handler, %do.end)) #8
          to label %if.then10 [label %do.end], !srcloc !112

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %dev11 = getelementptr inbounds %struct.i2c_client, ptr %8, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max17042_thread_handler.__UNIQUE_ID_ddebug288, ptr noundef %dev11, ptr noundef nonnull @.str.25) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %do.body
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i) #8
  %11 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %soc.i, align 4, !annotation !110
  %call.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 6, ptr noundef nonnull %soc.i) #8
  %12 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %soc.i, align 4
  %shr.i = lshr i32 %13, 8
  store i32 %shr.i, ptr %soc.i, align 4
  %14 = add i32 %13, 256
  %shl.i = and i32 %14, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %13)
  %cmp.i = icmp ugt i32 %13, 511
  %sub.i = add nsw i32 %shr.i, -1
  %or.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %soc_tr.0.i = or i32 %or.i, %shl.i
  %call4.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 3, i32 noundef %soc_tr.0.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i) #8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end.if.end13_crit_edge
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i22 = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 0, i32 noundef 65525, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %battery = getelementptr inbounds %struct.max17042_chip, ptr %dev, i32 0, i32 2
  %17 = ptrtoint ptr %battery to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %battery, align 4
  call void @power_supply_changed(ptr noundef %18) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max17042_init_worker(ptr nocapture noundef %work) #2 align 64 {
entry:
  %read_value.i93.i.i = alloca i32, align 4
  %read_value.i77.i.i = alloca i32, align 4
  %read_value.i61.i.i = alloca i32, align 4
  %read_value.i45.i.i = alloca i32, align 4
  %read_value.i29.i.i = alloca i32, align 4
  %read_value.i.i119.i = alloca i32, align 4
  %full_cap0.i.i = alloca i32, align 4
  %vfSoc.i120.i = alloca i32, align 4
  %read_value.i.i100.i = alloca i32, align 4
  %vfSoc.i.i = alloca i32, align 4
  %read_value.i10.i.i = alloca i32, align 4
  %read_value.i.i75.i = alloca i32, align 4
  %read_value.i132.i.i = alloca i32, align 4
  %read_value.i116.i.i = alloca i32, align 4
  %read_value.i100.i.i = alloca i32, align 4
  %read_value.i84.i.i = alloca i32, align 4
  %read_value.i68.i.i = alloca i32, align 4
  %read_value.i52.i.i = alloca i32, align 4
  %read_value.i36.i.i = alloca i32, align 4
  %read_value.i.i.i = alloca i32, align 4
  %tmp.i.i40.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %pdata = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdata, align 4
  %enable_por_init = getelementptr inbounds %struct.max17042_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable_por_init to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable_por_init, align 1, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %land.lhs.true

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true:                                    ; preds = %entry
  %config_data = getelementptr inbounds %struct.max17042_platform_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %config_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config_data, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %regmap.i = getelementptr i8, ptr %work, i32 -16
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %8 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdata, align 4
  %config_data.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %config_data.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config_data.i.i, align 4
  %tgain.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tgain.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 2)
  %13 = load i16, ptr %tgain.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not.i.i.i = icmp eq i16 %13, 0
  br i1 %tobool.not.i.i.i, label %if.then.max17042_override_por.exit.i.i_crit_edge, label %if.then.i.i.i

if.then.max17042_override_por.exit.i.i_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i = zext i16 %13 to i32
  %call.i.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 44, i32 noundef %conv1.i.i.i) #8
  br label %max17042_override_por.exit.i.i

max17042_override_por.exit.i.i:                   ; preds = %if.then.i.i.i, %if.then.max17042_override_por.exit.i.i_crit_edge
  %toff.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %toff.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %toff.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.not.i95.i.i = icmp eq i16 %15, 0
  br i1 %tobool.not.i95.i.i, label %max17042_override_por.exit.i.i.max17042_override_por.exit99.i.i_crit_edge, label %if.then.i98.i.i

max17042_override_por.exit.i.i.max17042_override_por.exit99.i.i_crit_edge: ; preds = %max17042_override_por.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit99.i.i

if.then.i98.i.i:                                  ; preds = %max17042_override_por.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i96.i.i = zext i16 %15 to i32
  %call.i97.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 45, i32 noundef %conv1.i96.i.i) #8
  br label %max17042_override_por.exit99.i.i

max17042_override_por.exit99.i.i:                 ; preds = %if.then.i98.i.i, %max17042_override_por.exit.i.i.max17042_override_por.exit99.i.i_crit_edge
  %cgain.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 3
  %16 = ptrtoint ptr %cgain.i.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 2)
  %17 = load i16, ptr %cgain.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i100.i.i = icmp eq i16 %17, 0
  br i1 %tobool.not.i100.i.i, label %max17042_override_por.exit99.i.i.max17042_override_por.exit104.i.i_crit_edge, label %if.then.i103.i.i

max17042_override_por.exit99.i.i.max17042_override_por.exit104.i.i_crit_edge: ; preds = %max17042_override_por.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit104.i.i

if.then.i103.i.i:                                 ; preds = %max17042_override_por.exit99.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i101.i.i = zext i16 %17 to i32
  %call.i102.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 46, i32 noundef %conv1.i101.i.i) #8
  br label %max17042_override_por.exit104.i.i

max17042_override_por.exit104.i.i:                ; preds = %if.then.i103.i.i, %max17042_override_por.exit99.i.i.max17042_override_por.exit104.i.i_crit_edge
  %coff.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 4
  %18 = ptrtoint ptr %coff.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %coff.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.not.i105.i.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i105.i.i, label %max17042_override_por.exit104.i.i.max17042_override_por.exit109.i.i_crit_edge, label %if.then.i108.i.i

max17042_override_por.exit104.i.i.max17042_override_por.exit109.i.i_crit_edge: ; preds = %max17042_override_por.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit109.i.i

if.then.i108.i.i:                                 ; preds = %max17042_override_por.exit104.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i106.i.i = zext i16 %19 to i32
  %call.i107.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 47, i32 noundef %conv1.i106.i.i) #8
  br label %max17042_override_por.exit109.i.i

max17042_override_por.exit109.i.i:                ; preds = %if.then.i108.i.i, %max17042_override_por.exit104.i.i.max17042_override_por.exit109.i.i_crit_edge
  %valrt_thresh.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 5
  %20 = ptrtoint ptr %valrt_thresh.i.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %valrt_thresh.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i110.i.i = icmp eq i16 %21, 0
  br i1 %tobool.not.i110.i.i, label %max17042_override_por.exit109.i.i.max17042_override_por.exit114.i.i_crit_edge, label %if.then.i113.i.i

max17042_override_por.exit109.i.i.max17042_override_por.exit114.i.i_crit_edge: ; preds = %max17042_override_por.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit114.i.i

if.then.i113.i.i:                                 ; preds = %max17042_override_por.exit109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i111.i.i = zext i16 %21 to i32
  %call.i112.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 1, i32 noundef %conv1.i111.i.i) #8
  br label %max17042_override_por.exit114.i.i

max17042_override_por.exit114.i.i:                ; preds = %if.then.i113.i.i, %max17042_override_por.exit109.i.i.max17042_override_por.exit114.i.i_crit_edge
  %talrt_thresh.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 6
  %22 = ptrtoint ptr %talrt_thresh.i.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 2)
  %23 = load i16, ptr %talrt_thresh.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.not.i115.i.i = icmp eq i16 %23, 0
  br i1 %tobool.not.i115.i.i, label %max17042_override_por.exit114.i.i.max17042_override_por.exit119.i.i_crit_edge, label %if.then.i118.i.i

max17042_override_por.exit114.i.i.max17042_override_por.exit119.i.i_crit_edge: ; preds = %max17042_override_por.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit119.i.i

if.then.i118.i.i:                                 ; preds = %max17042_override_por.exit114.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i116.i.i = zext i16 %23 to i32
  %call.i117.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 2, i32 noundef %conv1.i116.i.i) #8
  br label %max17042_override_por.exit119.i.i

max17042_override_por.exit119.i.i:                ; preds = %if.then.i118.i.i, %max17042_override_por.exit114.i.i.max17042_override_por.exit119.i.i_crit_edge
  %soc_alrt_thresh.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 7
  %24 = ptrtoint ptr %soc_alrt_thresh.i.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %soc_alrt_thresh.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool.not.i120.i.i = icmp eq i16 %25, 0
  br i1 %tobool.not.i120.i.i, label %max17042_override_por.exit119.i.i.max17042_override_por.exit124.i.i_crit_edge, label %if.then.i123.i.i

max17042_override_por.exit119.i.i.max17042_override_por.exit124.i.i_crit_edge: ; preds = %max17042_override_por.exit119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit124.i.i

if.then.i123.i.i:                                 ; preds = %max17042_override_por.exit119.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i121.i.i = zext i16 %25 to i32
  %call.i122.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 3, i32 noundef %conv1.i121.i.i) #8
  br label %max17042_override_por.exit124.i.i

max17042_override_por.exit124.i.i:                ; preds = %if.then.i123.i.i, %max17042_override_por.exit119.i.i.max17042_override_por.exit124.i.i_crit_edge
  %config1.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 8
  %26 = ptrtoint ptr %config1.i.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 2)
  %27 = load i16, ptr %config1.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %27)
  %tobool.not.i125.i.i = icmp eq i16 %27, 0
  br i1 %tobool.not.i125.i.i, label %max17042_override_por.exit124.i.i.max17042_override_por.exit129.i.i_crit_edge, label %if.then.i128.i.i

max17042_override_por.exit124.i.i.max17042_override_por.exit129.i.i_crit_edge: ; preds = %max17042_override_por.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit129.i.i

if.then.i128.i.i:                                 ; preds = %max17042_override_por.exit124.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i126.i.i = zext i16 %27 to i32
  %call.i127.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 29, i32 noundef %conv1.i126.i.i) #8
  br label %max17042_override_por.exit129.i.i

max17042_override_por.exit129.i.i:                ; preds = %if.then.i128.i.i, %max17042_override_por.exit124.i.i.max17042_override_por.exit129.i.i_crit_edge
  %shdntimer.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 9
  %28 = ptrtoint ptr %shdntimer.i.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %shdntimer.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool.not.i130.i.i = icmp eq i16 %29, 0
  br i1 %tobool.not.i130.i.i, label %max17042_override_por.exit129.i.i.max17042_override_por.exit134.i.i_crit_edge, label %if.then.i133.i.i

max17042_override_por.exit129.i.i.max17042_override_por.exit134.i.i_crit_edge: ; preds = %max17042_override_por.exit129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit134.i.i

if.then.i133.i.i:                                 ; preds = %max17042_override_por.exit129.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i131.i.i = zext i16 %29 to i32
  %call.i132.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 63, i32 noundef %conv1.i131.i.i) #8
  br label %max17042_override_por.exit134.i.i

max17042_override_por.exit134.i.i:                ; preds = %if.then.i133.i.i, %max17042_override_por.exit129.i.i.max17042_override_por.exit134.i.i_crit_edge
  %design_cap.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 11
  %30 = ptrtoint ptr %design_cap.i.i to i32
  call void @__asan_loadN_noabort(i32 %30, i32 2)
  %31 = load i16, ptr %design_cap.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool.not.i135.i.i = icmp eq i16 %31, 0
  br i1 %tobool.not.i135.i.i, label %max17042_override_por.exit134.i.i.max17042_override_por.exit139.i.i_crit_edge, label %if.then.i138.i.i

max17042_override_por.exit134.i.i.max17042_override_por.exit139.i.i_crit_edge: ; preds = %max17042_override_por.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit139.i.i

if.then.i138.i.i:                                 ; preds = %max17042_override_por.exit134.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i136.i.i = zext i16 %31 to i32
  %call.i137.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 24, i32 noundef %conv1.i136.i.i) #8
  br label %max17042_override_por.exit139.i.i

max17042_override_por.exit139.i.i:                ; preds = %if.then.i138.i.i, %max17042_override_por.exit134.i.i.max17042_override_por.exit139.i.i_crit_edge
  %ichgt_term.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 12
  %32 = ptrtoint ptr %ichgt_term.i.i to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %ichgt_term.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool.not.i140.i.i = icmp eq i16 %33, 0
  br i1 %tobool.not.i140.i.i, label %max17042_override_por.exit139.i.i.max17042_override_por.exit144.i.i_crit_edge, label %if.then.i143.i.i

max17042_override_por.exit139.i.i.max17042_override_por.exit144.i.i_crit_edge: ; preds = %max17042_override_por.exit139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit144.i.i

if.then.i143.i.i:                                 ; preds = %max17042_override_por.exit139.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i141.i.i = zext i16 %33 to i32
  %call.i142.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 30, i32 noundef %conv1.i141.i.i) #8
  br label %max17042_override_por.exit144.i.i

max17042_override_por.exit144.i.i:                ; preds = %if.then.i143.i.i, %max17042_override_por.exit139.i.i.max17042_override_por.exit144.i.i_crit_edge
  %at_rate.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 13
  %34 = ptrtoint ptr %at_rate.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %at_rate.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool.not.i145.i.i = icmp eq i16 %35, 0
  br i1 %tobool.not.i145.i.i, label %max17042_override_por.exit144.i.i.max17042_override_por.exit149.i.i_crit_edge, label %if.then.i148.i.i

max17042_override_por.exit144.i.i.max17042_override_por.exit149.i.i_crit_edge: ; preds = %max17042_override_por.exit144.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit149.i.i

if.then.i148.i.i:                                 ; preds = %max17042_override_por.exit144.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i146.i.i = zext i16 %35 to i32
  %call.i147.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef %conv1.i146.i.i) #8
  br label %max17042_override_por.exit149.i.i

max17042_override_por.exit149.i.i:                ; preds = %if.then.i148.i.i, %max17042_override_por.exit144.i.i.max17042_override_por.exit149.i.i_crit_edge
  %learn_cfg.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 14
  %36 = ptrtoint ptr %learn_cfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %36, i32 2)
  %37 = load i16, ptr %learn_cfg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i150.i.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i150.i.i, label %max17042_override_por.exit149.i.i.max17042_override_por.exit154.i.i_crit_edge, label %if.then.i153.i.i

max17042_override_por.exit149.i.i.max17042_override_por.exit154.i.i_crit_edge: ; preds = %max17042_override_por.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit154.i.i

if.then.i153.i.i:                                 ; preds = %max17042_override_por.exit149.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i151.i.i = zext i16 %37 to i32
  %call.i152.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 40, i32 noundef %conv1.i151.i.i) #8
  br label %max17042_override_por.exit154.i.i

max17042_override_por.exit154.i.i:                ; preds = %if.then.i153.i.i, %max17042_override_por.exit149.i.i.max17042_override_por.exit154.i.i_crit_edge
  %filter_cfg.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 15
  %38 = ptrtoint ptr %filter_cfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %filter_cfg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %tobool.not.i155.i.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i155.i.i, label %max17042_override_por.exit154.i.i.max17042_override_por.exit159.i.i_crit_edge, label %if.then.i158.i.i

max17042_override_por.exit154.i.i.max17042_override_por.exit159.i.i_crit_edge: ; preds = %max17042_override_por.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit159.i.i

if.then.i158.i.i:                                 ; preds = %max17042_override_por.exit154.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i156.i.i = zext i16 %39 to i32
  %call.i157.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 41, i32 noundef %conv1.i156.i.i) #8
  br label %max17042_override_por.exit159.i.i

max17042_override_por.exit159.i.i:                ; preds = %if.then.i158.i.i, %max17042_override_por.exit154.i.i.max17042_override_por.exit159.i.i_crit_edge
  %relax_cfg.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 16
  %40 = ptrtoint ptr %relax_cfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 2)
  %41 = load i16, ptr %relax_cfg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %41)
  %tobool.not.i160.i.i = icmp eq i16 %41, 0
  br i1 %tobool.not.i160.i.i, label %max17042_override_por.exit159.i.i.max17042_override_por.exit164.i.i_crit_edge, label %if.then.i163.i.i

max17042_override_por.exit159.i.i.max17042_override_por.exit164.i.i_crit_edge: ; preds = %max17042_override_por.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit164.i.i

if.then.i163.i.i:                                 ; preds = %max17042_override_por.exit159.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i161.i.i = zext i16 %41 to i32
  %call.i162.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 42, i32 noundef %conv1.i161.i.i) #8
  br label %max17042_override_por.exit164.i.i

max17042_override_por.exit164.i.i:                ; preds = %if.then.i163.i.i, %max17042_override_por.exit159.i.i.max17042_override_por.exit164.i.i_crit_edge
  %misc_cfg.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 17
  %42 = ptrtoint ptr %misc_cfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %misc_cfg.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %tobool.not.i165.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i165.i.i, label %max17042_override_por.exit164.i.i.max17042_override_por.exit169.i.i_crit_edge, label %if.then.i168.i.i

max17042_override_por.exit164.i.i.max17042_override_por.exit169.i.i_crit_edge: ; preds = %max17042_override_por.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit169.i.i

if.then.i168.i.i:                                 ; preds = %max17042_override_por.exit164.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i166.i.i = zext i16 %43 to i32
  %call.i167.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 43, i32 noundef %conv1.i166.i.i) #8
  br label %max17042_override_por.exit169.i.i

max17042_override_por.exit169.i.i:                ; preds = %if.then.i168.i.i, %max17042_override_por.exit164.i.i.max17042_override_por.exit169.i.i_crit_edge
  %fullcap.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 19
  %44 = ptrtoint ptr %fullcap.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 2)
  %45 = load i16, ptr %fullcap.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %tobool.not.i170.i.i = icmp eq i16 %45, 0
  br i1 %tobool.not.i170.i.i, label %max17042_override_por.exit169.i.i.max17042_override_por.exit174.i.i_crit_edge, label %if.then.i173.i.i

max17042_override_por.exit169.i.i.max17042_override_por.exit174.i.i_crit_edge: ; preds = %max17042_override_por.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit174.i.i

if.then.i173.i.i:                                 ; preds = %max17042_override_por.exit169.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i171.i.i = zext i16 %45 to i32
  %call.i172.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef %conv1.i171.i.i) #8
  br label %max17042_override_por.exit174.i.i

max17042_override_por.exit174.i.i:                ; preds = %if.then.i173.i.i, %max17042_override_por.exit169.i.i.max17042_override_por.exit174.i.i_crit_edge
  %fullcapnom.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 20
  %46 = ptrtoint ptr %fullcapnom.i.i to i32
  call void @__asan_loadN_noabort(i32 %46, i32 2)
  %47 = load i16, ptr %fullcapnom.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool.not.i175.i.i = icmp eq i16 %47, 0
  br i1 %tobool.not.i175.i.i, label %max17042_override_por.exit174.i.i.max17042_override_por.exit179.i.i_crit_edge, label %if.then.i178.i.i

max17042_override_por.exit174.i.i.max17042_override_por.exit179.i.i_crit_edge: ; preds = %max17042_override_por.exit174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit179.i.i

if.then.i178.i.i:                                 ; preds = %max17042_override_por.exit174.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i176.i.i = zext i16 %47 to i32
  %call.i177.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 35, i32 noundef %conv1.i176.i.i) #8
  br label %max17042_override_por.exit179.i.i

max17042_override_por.exit179.i.i:                ; preds = %if.then.i178.i.i, %max17042_override_por.exit174.i.i.max17042_override_por.exit179.i.i_crit_edge
  %dqacc.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 23
  %48 = ptrtoint ptr %dqacc.i.i to i32
  call void @__asan_loadN_noabort(i32 %48, i32 2)
  %49 = load i16, ptr %dqacc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool.not.i180.i.i = icmp eq i16 %49, 0
  br i1 %tobool.not.i180.i.i, label %max17042_override_por.exit179.i.i.max17042_override_por.exit184.i.i_crit_edge, label %if.then.i183.i.i

max17042_override_por.exit179.i.i.max17042_override_por.exit184.i.i_crit_edge: ; preds = %max17042_override_por.exit179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit184.i.i

if.then.i183.i.i:                                 ; preds = %max17042_override_por.exit179.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i181.i.i = zext i16 %49 to i32
  %call.i182.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 69, i32 noundef %conv1.i181.i.i) #8
  br label %max17042_override_por.exit184.i.i

max17042_override_por.exit184.i.i:                ; preds = %if.then.i183.i.i, %max17042_override_por.exit179.i.i.max17042_override_por.exit184.i.i_crit_edge
  %dpacc.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 24
  %50 = ptrtoint ptr %dpacc.i.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %dpacc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %51)
  %tobool.not.i185.i.i = icmp eq i16 %51, 0
  br i1 %tobool.not.i185.i.i, label %max17042_override_por.exit184.i.i.max17042_override_por.exit189.i.i_crit_edge, label %if.then.i188.i.i

max17042_override_por.exit184.i.i.max17042_override_por.exit189.i.i_crit_edge: ; preds = %max17042_override_por.exit184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit189.i.i

if.then.i188.i.i:                                 ; preds = %max17042_override_por.exit184.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i186.i.i = zext i16 %51 to i32
  %call.i187.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 70, i32 noundef %conv1.i186.i.i) #8
  br label %max17042_override_por.exit189.i.i

max17042_override_por.exit189.i.i:                ; preds = %if.then.i188.i.i, %max17042_override_por.exit184.i.i.max17042_override_por.exit189.i.i_crit_edge
  %rcomp0.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 34
  %52 = ptrtoint ptr %rcomp0.i.i to i32
  call void @__asan_loadN_noabort(i32 %52, i32 2)
  %53 = load i16, ptr %rcomp0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool.not.i190.i.i = icmp eq i16 %53, 0
  br i1 %tobool.not.i190.i.i, label %max17042_override_por.exit189.i.i.max17042_override_por.exit194.i.i_crit_edge, label %if.then.i193.i.i

max17042_override_por.exit189.i.i.max17042_override_por.exit194.i.i_crit_edge: ; preds = %max17042_override_por.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit194.i.i

if.then.i193.i.i:                                 ; preds = %max17042_override_por.exit189.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i191.i.i = zext i16 %53 to i32
  %call.i192.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 56, i32 noundef %conv1.i191.i.i) #8
  br label %max17042_override_por.exit194.i.i

max17042_override_por.exit194.i.i:                ; preds = %if.then.i193.i.i, %max17042_override_por.exit189.i.i.max17042_override_por.exit194.i.i_crit_edge
  %tcompc0.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 35
  %54 = ptrtoint ptr %tcompc0.i.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %tcompc0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool.not.i195.i.i = icmp eq i16 %55, 0
  br i1 %tobool.not.i195.i.i, label %max17042_override_por.exit194.i.i.max17042_override_por.exit199.i.i_crit_edge, label %if.then.i198.i.i

max17042_override_por.exit194.i.i.max17042_override_por.exit199.i.i_crit_edge: ; preds = %max17042_override_por.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit199.i.i

if.then.i198.i.i:                                 ; preds = %max17042_override_por.exit194.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i196.i.i = zext i16 %55 to i32
  %call.i197.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 57, i32 noundef %conv1.i196.i.i) #8
  br label %max17042_override_por.exit199.i.i

max17042_override_por.exit199.i.i:                ; preds = %if.then.i198.i.i, %max17042_override_por.exit194.i.i.max17042_override_por.exit199.i.i_crit_edge
  %chip_type.i.i = getelementptr i8, ptr %work, i32 -8
  %56 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chip_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57)
  %cmp.i.i = icmp eq i32 %57, 1
  br i1 %cmp.i.i, label %if.then.i.i, label %max17042_override_por.exit199.i.i.if.end.i.i_crit_edge

max17042_override_por.exit199.i.i.if.end.i.i_crit_edge: ; preds = %max17042_override_por.exit199.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %max17042_override_por.exit199.i.i
  %masksoc.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 18
  %58 = ptrtoint ptr %masksoc.i.i to i32
  call void @__asan_loadN_noabort(i32 %58, i32 2)
  %59 = load i16, ptr %masksoc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool.not.i200.i.i = icmp eq i16 %59, 0
  br i1 %tobool.not.i200.i.i, label %if.then.i.i.max17042_override_por.exit204.i.i_crit_edge, label %if.then.i203.i.i

if.then.i.i.max17042_override_por.exit204.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit204.i.i

if.then.i203.i.i:                                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i201.i.i = zext i16 %59 to i32
  %call.i202.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 50, i32 noundef %conv1.i201.i.i) #8
  br label %max17042_override_por.exit204.i.i

max17042_override_por.exit204.i.i:                ; preds = %if.then.i203.i.i, %if.then.i.i.max17042_override_por.exit204.i.i_crit_edge
  %socempty.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 21
  %60 = ptrtoint ptr %socempty.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 2)
  %61 = load i16, ptr %socempty.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i205.i.i = icmp eq i16 %61, 0
  br i1 %tobool.not.i205.i.i, label %max17042_override_por.exit204.i.i.max17042_override_por.exit209.i.i_crit_edge, label %if.then.i208.i.i

max17042_override_por.exit204.i.i.max17042_override_por.exit209.i.i_crit_edge: ; preds = %max17042_override_por.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit209.i.i

if.then.i208.i.i:                                 ; preds = %max17042_override_por.exit204.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i206.i.i = zext i16 %61 to i32
  %call.i207.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 51, i32 noundef %conv1.i206.i.i) #8
  br label %max17042_override_por.exit209.i.i

max17042_override_por.exit209.i.i:                ; preds = %if.then.i208.i.i, %max17042_override_por.exit204.i.i.max17042_override_por.exit209.i.i_crit_edge
  %vempty.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 30
  %62 = ptrtoint ptr %vempty.i.i to i32
  call void @__asan_loadN_noabort(i32 %62, i32 2)
  %63 = load i16, ptr %vempty.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %tobool.not.i210.i.i = icmp eq i16 %63, 0
  br i1 %tobool.not.i210.i.i, label %max17042_override_por.exit209.i.i.max17042_override_por.exit214.i.i_crit_edge, label %if.then.i213.i.i

max17042_override_por.exit209.i.i.max17042_override_por.exit214.i.i_crit_edge: ; preds = %max17042_override_por.exit209.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit214.i.i

if.then.i213.i.i:                                 ; preds = %max17042_override_por.exit209.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i211.i.i = zext i16 %63 to i32
  %call.i212.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 18, i32 noundef %conv1.i211.i.i) #8
  br label %max17042_override_por.exit214.i.i

max17042_override_por.exit214.i.i:                ; preds = %if.then.i213.i.i, %max17042_override_por.exit209.i.i.max17042_override_por.exit214.i.i_crit_edge
  %empty_tempco.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 36
  %64 = ptrtoint ptr %empty_tempco.i.i to i32
  call void @__asan_loadN_noabort(i32 %64, i32 2)
  %65 = load i16, ptr %empty_tempco.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %65)
  %tobool.not.i215.i.i = icmp eq i16 %65, 0
  br i1 %tobool.not.i215.i.i, label %max17042_override_por.exit214.i.i.max17042_override_por.exit219.i.i_crit_edge, label %if.then.i218.i.i

max17042_override_por.exit214.i.i.max17042_override_por.exit219.i.i_crit_edge: ; preds = %max17042_override_por.exit214.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit219.i.i

if.then.i218.i.i:                                 ; preds = %max17042_override_por.exit214.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i216.i.i = zext i16 %65 to i32
  %call.i217.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 58, i32 noundef %conv1.i216.i.i) #8
  br label %max17042_override_por.exit219.i.i

max17042_override_por.exit219.i.i:                ; preds = %if.then.i218.i.i, %max17042_override_por.exit214.i.i.max17042_override_por.exit219.i.i_crit_edge
  %kempty0.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 37
  %66 = ptrtoint ptr %kempty0.i.i to i32
  call void @__asan_loadN_noabort(i32 %66, i32 2)
  %67 = load i16, ptr %kempty0.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool.not.i220.i.i = icmp eq i16 %67, 0
  br i1 %tobool.not.i220.i.i, label %max17042_override_por.exit219.i.i.if.end.i.i_crit_edge, label %if.then.i223.i.i

max17042_override_por.exit219.i.i.if.end.i.i_crit_edge: ; preds = %max17042_override_por.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i223.i.i:                                 ; preds = %max17042_override_por.exit219.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i221.i.i = zext i16 %67 to i32
  %call.i222.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 59, i32 noundef %conv1.i221.i.i) #8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i223.i.i, %max17042_override_por.exit219.i.i.if.end.i.i_crit_edge, %max17042_override_por.exit199.i.i.if.end.i.i_crit_edge
  %68 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %chip_type.i.i, align 4
  %.off.i.i = add i32 %69, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 3
  br i1 %switch.i.i, label %if.then9.i.i, label %if.end.i.i.if.end10.i.i_crit_edge

if.end.i.i.if.end10.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  %iavg_empty.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 22
  %70 = ptrtoint ptr %iavg_empty.i.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 2)
  %71 = load i16, ptr %iavg_empty.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %tobool.not.i225.i.i = icmp eq i16 %71, 0
  br i1 %tobool.not.i225.i.i, label %if.then9.i.i.max17042_override_por.exit229.i.i_crit_edge, label %if.then.i228.i.i

if.then9.i.i.max17042_override_por.exit229.i.i_crit_edge: ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit229.i.i

if.then.i228.i.i:                                 ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i226.i.i = zext i16 %71 to i32
  %call.i227.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 54, i32 noundef %conv1.i226.i.i) #8
  br label %max17042_override_por.exit229.i.i

max17042_override_por.exit229.i.i:                ; preds = %if.then.i228.i.i, %if.then9.i.i.max17042_override_por.exit229.i.i_crit_edge
  %temp_nom.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 31
  %72 = ptrtoint ptr %temp_nom.i.i to i32
  call void @__asan_loadN_noabort(i32 %72, i32 2)
  %73 = load i16, ptr %temp_nom.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.not.i230.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i230.i.i, label %max17042_override_por.exit229.i.i.max17042_override_por.exit234.i.i_crit_edge, label %if.then.i233.i.i

max17042_override_por.exit229.i.i.max17042_override_por.exit234.i.i_crit_edge: ; preds = %max17042_override_por.exit229.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit234.i.i

if.then.i233.i.i:                                 ; preds = %max17042_override_por.exit229.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i231.i.i = zext i16 %73 to i32
  %call.i232.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 36, i32 noundef %conv1.i231.i.i) #8
  br label %max17042_override_por.exit234.i.i

max17042_override_por.exit234.i.i:                ; preds = %if.then.i233.i.i, %max17042_override_por.exit229.i.i.max17042_override_por.exit234.i.i_crit_edge
  %temp_lim.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 32
  %74 = ptrtoint ptr %temp_lim.i.i to i32
  call void @__asan_loadN_noabort(i32 %74, i32 2)
  %75 = load i16, ptr %temp_lim.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %75)
  %tobool.not.i235.i.i = icmp eq i16 %75, 0
  br i1 %tobool.not.i235.i.i, label %max17042_override_por.exit234.i.i.max17042_override_por.exit239.i.i_crit_edge, label %if.then.i238.i.i

max17042_override_por.exit234.i.i.max17042_override_por.exit239.i.i_crit_edge: ; preds = %max17042_override_por.exit234.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por.exit239.i.i

if.then.i238.i.i:                                 ; preds = %max17042_override_por.exit234.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i236.i.i = zext i16 %75 to i32
  %call.i237.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 37, i32 noundef %conv1.i236.i.i) #8
  br label %max17042_override_por.exit239.i.i

max17042_override_por.exit239.i.i:                ; preds = %if.then.i238.i.i, %max17042_override_por.exit234.i.i.max17042_override_por.exit239.i.i_crit_edge
  %fctc.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 33
  %76 = ptrtoint ptr %fctc.i.i to i32
  call void @__asan_loadN_noabort(i32 %76, i32 2)
  %77 = load i16, ptr %fctc.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %77)
  %tobool.not.i240.i.i = icmp eq i16 %77, 0
  br i1 %tobool.not.i240.i.i, label %max17042_override_por.exit239.i.i.if.end10.i.i_crit_edge, label %if.then.i243.i.i

max17042_override_por.exit239.i.i.if.end10.i.i_crit_edge: ; preds = %max17042_override_por.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i.i

if.then.i243.i.i:                                 ; preds = %max17042_override_por.exit239.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i241.i.i = zext i16 %77 to i32
  %call.i242.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 55, i32 noundef %conv1.i241.i.i) #8
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then.i243.i.i, %max17042_override_por.exit239.i.i.if.end10.i.i_crit_edge, %if.end.i.i.if.end10.i.i_crit_edge
  %78 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %chip_type.i.i, align 4
  %.off93.i.i = add i32 %79, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off93.i.i)
  %switch94.i.i = icmp ult i32 %.off93.i.i, 3
  br i1 %switch94.i.i, label %if.then19.i.i, label %if.end10.i.i.max17042_override_por_values.exit.i_crit_edge

if.end10.i.i.max17042_override_por_values.exit.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por_values.exit.i

if.then19.i.i:                                    ; preds = %if.end10.i.i
  %vempty20.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %11, i32 0, i32 30
  %80 = ptrtoint ptr %vempty20.i.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 2)
  %81 = load i16, ptr %vempty20.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %81)
  %tobool.not.i245.i.i = icmp eq i16 %81, 0
  br i1 %tobool.not.i245.i.i, label %if.then19.i.i.max17042_override_por_values.exit.i_crit_edge, label %if.then.i248.i.i

if.then19.i.i.max17042_override_por_values.exit.i_crit_edge: ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_override_por_values.exit.i

if.then.i248.i.i:                                 ; preds = %if.then19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i246.i.i = zext i16 %81 to i32
  %call.i247.i.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 58, i32 noundef %conv1.i246.i.i) #8
  br label %max17042_override_por_values.exit.i

max17042_override_por_values.exit.i:              ; preds = %if.then.i248.i.i, %if.then19.i.i.max17042_override_por_values.exit.i_crit_edge, %if.end10.i.i.max17042_override_por_values.exit.i_crit_edge
  tail call void @msleep(i32 noundef 500) #8
  %82 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %pdata, align 4
  %config_data.i24.i = getelementptr inbounds %struct.max17042_platform_data, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %config_data.i24.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %config_data.i24.i, align 4
  %86 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i, align 4
  %config1.i26.i = getelementptr inbounds %struct.max17042_config_data, ptr %85, i32 0, i32 8
  %88 = ptrtoint ptr %config1.i26.i to i32
  call void @__asan_loadN_noabort(i32 %88, i32 2)
  %89 = load i16, ptr %config1.i26.i, align 1
  %conv.i.i = zext i16 %89 to i32
  %call.i.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 29, i32 noundef %conv.i.i) #8
  %learn_cfg.i27.i = getelementptr inbounds %struct.max17042_config_data, ptr %85, i32 0, i32 14
  %90 = ptrtoint ptr %learn_cfg.i27.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %learn_cfg.i27.i, align 1
  %conv2.i.i = zext i16 %91 to i32
  %call3.i.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 40, i32 noundef %conv2.i.i) #8
  %filter_cfg.i28.i = getelementptr inbounds %struct.max17042_config_data, ptr %85, i32 0, i32 15
  %92 = ptrtoint ptr %filter_cfg.i28.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 2)
  %93 = load i16, ptr %filter_cfg.i28.i, align 1
  %conv4.i.i = zext i16 %93 to i32
  %call5.i.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 41, i32 noundef %conv4.i.i) #8
  %relax_cfg.i29.i = getelementptr inbounds %struct.max17042_config_data, ptr %85, i32 0, i32 16
  %94 = ptrtoint ptr %relax_cfg.i29.i to i32
  call void @__asan_loadN_noabort(i32 %94, i32 2)
  %95 = load i16, ptr %relax_cfg.i29.i, align 1
  %conv6.i.i = zext i16 %95 to i32
  %call7.i.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 42, i32 noundef %conv6.i.i) #8
  %96 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %chip_type.i.i, align 4
  %.off.i31.i = add i32 %97, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i31.i)
  %switch.i32.i = icmp ult i32 %.off.i31.i, 3
  br i1 %switch.i32.i, label %if.then.i33.i, label %max17042_override_por_values.exit.i.max17042_write_config_regs.exit.i_crit_edge

max17042_override_por_values.exit.i.max17042_write_config_regs.exit.i_crit_edge: ; preds = %max17042_override_por_values.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_config_regs.exit.i

if.then.i33.i:                                    ; preds = %max17042_override_por_values.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %full_soc_thresh.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %85, i32 0, i32 10
  %98 = ptrtoint ptr %full_soc_thresh.i.i to i32
  call void @__asan_loadN_noabort(i32 %98, i32 2)
  %99 = load i16, ptr %full_soc_thresh.i.i, align 1
  %conv16.i.i = zext i16 %99 to i32
  %call17.i.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 19, i32 noundef %conv16.i.i) #8
  br label %max17042_write_config_regs.exit.i

max17042_write_config_regs.exit.i:                ; preds = %if.then.i33.i, %max17042_override_por_values.exit.i.max17042_write_config_regs.exit.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %100 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %100, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %max17042_write_config_regs.exit.i.do.end.i_crit_edge, label %if.end.i36.i

max17042_write_config_regs.exit.i.do.end.i_crit_edge: ; preds = %max17042_write_config_regs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i36.i:                                     ; preds = %max17042_write_config_regs.exit.i
  %101 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap.i, align 4
  %call.i.i35.i = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 98, i32 noundef 89) #8
  %call1.i.i.i = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 99, i32 noundef 196) #8
  %103 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end.i36.i
  %i.01.i.i.i = phi i32 [ 0, %if.end.i36.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %add.i.i.i = add nuw nsw i32 %i.01.i.i.i, 128
  %105 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdata, align 4
  %config_data.i.i.i = getelementptr inbounds %struct.max17042_platform_data, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %config_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %config_data.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.max17042_config_data, ptr %108, i32 0, i32 38, i32 %i.01.i.i.i
  %109 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %109, i32 2)
  %110 = load i16, ptr %arrayidx.i.i.i, align 1
  %conv1.i.i37.i = zext i16 %110 to i32
  %call.i16.i.i = tail call i32 @regmap_write(ptr noundef %104, i32 noundef %add.i.i.i, i32 noundef %conv1.i.i37.i) #8
  %inc.i.i.i = add nuw nsw i32 %i.01.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 48
  br i1 %exitcond.not.i.i.i, label %max17042_write_model_data.exit.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

max17042_write_model_data.exit.i.i:               ; preds = %for.body.i.i.i
  %111 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %113 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %tmp.i.i.i, align 4, !annotation !110
  br label %for.body.i25.i.i

for.body.i25.i.i:                                 ; preds = %for.body.i25.i.i.for.body.i25.i.i_crit_edge, %max17042_write_model_data.exit.i.i
  %i.01.i18.i.i = phi i32 [ 0, %max17042_write_model_data.exit.i.i ], [ %inc.i23.i.i, %for.body.i25.i.i.for.body.i25.i.i_crit_edge ]
  %add.i19.i.i = add nuw nsw i32 %i.01.i18.i.i, 128
  %call.i20.i.i = call i32 @regmap_read(ptr noundef %112, i32 noundef %add.i19.i.i, ptr noundef nonnull %tmp.i.i.i) #8
  %114 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tmp.i.i.i, align 4
  %conv1.i21.i.i = trunc i32 %115 to i16
  %arrayidx.i22.i.i = getelementptr i16, ptr %call7.i.i.i.i.i, i32 %i.01.i18.i.i
  %116 = ptrtoint ptr %arrayidx.i22.i.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv1.i21.i.i, ptr %arrayidx.i22.i.i, align 2
  %inc.i23.i.i = add nuw nsw i32 %i.01.i18.i.i, 1
  %exitcond.not.i24.i.i = icmp eq i32 %inc.i23.i.i, 48
  br i1 %exitcond.not.i24.i.i, label %max17042_read_model_data.exit.i.i, label %for.body.i25.i.i.for.body.i25.i.i_crit_edge

for.body.i25.i.i.for.body.i25.i.i_crit_edge:      ; preds = %for.body.i25.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i25.i.i

max17042_read_model_data.exit.i.i:                ; preds = %for.body.i25.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #8
  %117 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %pdata, align 4
  %config_data.i38.i = getelementptr inbounds %struct.max17042_platform_data, ptr %118, i32 0, i32 1
  %119 = ptrtoint ptr %config_data.i38.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %config_data.i38.i, align 4
  %cell_char_tbl.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %120, i32 0, i32 38
  %bcmp.i.i.i = call i32 @bcmp(ptr noundef dereferenceable(48) %cell_char_tbl.i.i, ptr noundef nonnull dereferenceable(48) %call7.i.i.i.i.i, i32 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool.not.i.i39.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool.not.i.i39.i, label %if.end.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %max17042_read_model_data.exit.i.i
  %121 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %add.ptr, align 4
  %dev.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %122, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.32) #11
  br label %do.end3.i.i.i

do.end3.i.i.i:                                    ; preds = %do.end3.i.i.i.do.end3.i.i.i_crit_edge, %do.end.i.i.i
  %i.01.i26.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %inc.i28.i.i, %do.end3.i.i.i.do.end3.i.i.i_crit_edge ]
  %123 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %add.ptr, align 4
  %dev5.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %124, i32 0, i32 4
  %arrayidx.i27.i.i = getelementptr i16, ptr %cell_char_tbl.i.i, i32 %i.01.i26.i.i
  %125 = ptrtoint ptr %arrayidx.i27.i.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %126 = load i16, ptr %arrayidx.i27.i.i, align 2
  %conv.i.i.i = zext i16 %126 to i32
  %arrayidx6.i.i.i = getelementptr i16, ptr %call7.i.i.i.i.i, i32 %i.01.i26.i.i
  %127 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx6.i.i.i, align 2
  %conv7.i.i.i = zext i16 %128 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev5.i.i.i, ptr noundef nonnull @.str.34, i32 noundef %conv.i.i.i, i32 noundef %conv7.i.i.i) #11
  %inc.i28.i.i = add nuw nsw i32 %i.01.i26.i.i, 1
  %exitcond.not.i29.i.i = icmp eq i32 %inc.i28.i.i, 48
  br i1 %exitcond.not.i29.i.i, label %do.end10.i.i.i, label %do.end3.i.i.i.do.end3.i.i.i_crit_edge

do.end3.i.i.i.do.end3.i.i.i_crit_edge:            ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3.i.i.i

do.end10.i.i.i:                                   ; preds = %do.end3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %add.ptr, align 4
  %dev12.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12.i.i.i, ptr noundef nonnull @.str.38) #11
  %131 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i, align 4
  %call.i31.i.i = call i32 @regmap_write(ptr noundef %132, i32 noundef 98, i32 noundef 0) #8
  %call1.i32.i.i = call i32 @regmap_write(ptr noundef %132, i32 noundef 99, i32 noundef 0) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %do.end10.i.i.i, %max17042_write_config_regs.exit.i.do.end.i_crit_edge
  %133 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %134, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end.i:                                         ; preds = %max17042_read_model_data.exit.i.i
  %135 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap.i, align 4
  %call.i31.i.c.i = call i32 @regmap_write(ptr noundef %136, i32 noundef 98, i32 noundef 0) #8
  %call1.i32.i.c.i = call i32 @regmap_write(ptr noundef %136, i32 noundef 99, i32 noundef 0) #8
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i.i) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %137 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i41.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %137, i32 noundef 3520, i32 noundef 96) #12
  %tobool.not.i42.i = icmp eq ptr %call7.i.i.i.i41.i, null
  br i1 %tobool.not.i42.i, label %if.end.i.do.end6.i_crit_edge, label %if.end.i44.i

if.end.i.do.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

if.end.i44.i:                                     ; preds = %if.end.i
  %138 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i40.i) #8
  %140 = ptrtoint ptr %tmp.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 -1, ptr %tmp.i.i40.i, align 4, !annotation !110
  br label %for.body.i.i52.i

for.body.i.i52.i:                                 ; preds = %for.body.i.i52.i.for.body.i.i52.i_crit_edge, %if.end.i44.i
  %i.01.i.i45.i = phi i32 [ 0, %if.end.i44.i ], [ %inc.i.i50.i, %for.body.i.i52.i.for.body.i.i52.i_crit_edge ]
  %add.i.i46.i = add nuw nsw i32 %i.01.i.i45.i, 128
  %call.i.i47.i = call i32 @regmap_read(ptr noundef %139, i32 noundef %add.i.i46.i, ptr noundef nonnull %tmp.i.i40.i) #8
  %141 = ptrtoint ptr %tmp.i.i40.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tmp.i.i40.i, align 4
  %conv1.i.i48.i = trunc i32 %142 to i16
  %arrayidx.i.i49.i = getelementptr i16, ptr %call7.i.i.i.i41.i, i32 %i.01.i.i45.i
  %143 = ptrtoint ptr %arrayidx.i.i49.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 %conv1.i.i48.i, ptr %arrayidx.i.i49.i, align 2
  %inc.i.i50.i = add nuw nsw i32 %i.01.i.i45.i, 1
  %exitcond.not.i.i51.i = icmp eq i32 %inc.i.i50.i, 48
  br i1 %exitcond.not.i.i51.i, label %max17042_read_model_data.exit.i53.i, label %for.body.i.i52.i.for.body.i.i52.i_crit_edge

for.body.i.i52.i.for.body.i.i52.i_crit_edge:      ; preds = %for.body.i.i52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i52.i

max17042_read_model_data.exit.i53.i:              ; preds = %for.body.i.i52.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i40.i) #8
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %max17042_read_model_data.exit.i53.i
  %ret.015.i.i = phi i32 [ 0, %max17042_read_model_data.exit.i53.i ], [ %spec.select.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.014.i.i = phi i32 [ 0, %max17042_read_model_data.exit.i53.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i16, ptr %call7.i.i.i.i41.i, i32 %i.014.i.i
  %144 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %arrayidx.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %tobool1.not.i.i = icmp eq i16 %145, 0
  %spec.select.i.i = select i1 %tobool1.not.i.i, i32 %ret.015.i.i, i32 -22
  %inc.i.i = add nuw nsw i32 %i.014.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 48
  br i1 %exitcond.not.i.i, label %max17042_verify_model_lock.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

max17042_verify_model_lock.exit.i:                ; preds = %for.body.i.i
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i41.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %tobool2.not.i = icmp eq i32 %spec.select.i.i, 0
  br i1 %tobool2.not.i, label %if.end9.i, label %max17042_verify_model_lock.exit.i.do.end6.i_crit_edge

max17042_verify_model_lock.exit.i.do.end6.i_crit_edge: ; preds = %max17042_verify_model_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6.i

do.end6.i:                                        ; preds = %max17042_verify_model_lock.exit.i.do.end6.i_crit_edge, %if.end.i.do.end6.i_crit_edge
  %146 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %add.ptr, align 4
  %dev8.i = getelementptr inbounds %struct.i2c_client, ptr %147, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end9.i:                                        ; preds = %max17042_verify_model_lock.exit.i
  %148 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %pdata, align 4
  %config_data.i56.i = getelementptr inbounds %struct.max17042_platform_data, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %config_data.i56.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %config_data.i56.i, align 4
  %152 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap.i, align 4
  %rcomp0.i58.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 34
  %154 = ptrtoint ptr %rcomp0.i58.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 2)
  %155 = load i16, ptr %rcomp0.i58.i, align 1
  %conv.i59.i = zext i16 %155 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i.i.i) #8
  %156 = ptrtoint ptr %read_value.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %read_value.i.i.i, align 4, !annotation !110
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %do.body.i.i.i.do.body.i.i.i_crit_edge, %if.end9.i
  %retries.0.i.i.i = phi i32 [ 8, %if.end9.i ], [ %dec.i.i.i, %do.body.i.i.i.do.body.i.i.i_crit_edge ]
  %call.i.i60.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 56, i32 noundef %conv.i59.i) #8
  %call2.i.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 56, ptr noundef nonnull %read_value.i.i.i) #8
  %157 = ptrtoint ptr %read_value.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %read_value.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %158, i32 %conv.i59.i)
  %cmp.not.i.i.i = icmp eq i32 %158, %conv.i59.i
  %dec.i.i.i = add i32 %retries.0.i.i.i, -1
  %spec.select1.i.i.i = select i1 %cmp.not.i.i.i, i32 %retries.0.i.i.i, i32 %dec.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i.i.i)
  %tobool.not.i.i61.i = icmp eq i32 %spec.select1.i.i.i, 0
  %brmerge.i.i.i = or i1 %cmp.not.i.i.i, %tobool.not.i.i61.i
  br i1 %brmerge.i.i.i, label %do.end.i.i62.i, label %do.body.i.i.i.do.body.i.i.i_crit_edge

do.body.i.i.i.do.body.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.i

do.end.i.i62.i:                                   ; preds = %do.body.i.i.i
  %spec.select.le.i.i.i = select i1 %cmp.not.i.i.i, i32 %call.i.i60.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i.i.i)
  %cmp6.i.i.i = icmp slt i32 %spec.select.le.i.i.i, 0
  br i1 %cmp6.i.i.i, label %do.end11.i.i.i, label %do.end.i.i62.i.max17042_write_verify_reg.exit.i.i_crit_edge

do.end.i.i62.i.max17042_write_verify_reg.exit.i.i_crit_edge: ; preds = %do.end.i.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit.i.i

do.end11.i.i.i:                                   ; preds = %do.end.i.i62.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i.i.i) #11
  br label %max17042_write_verify_reg.exit.i.i

max17042_write_verify_reg.exit.i.i:               ; preds = %do.end11.i.i.i, %do.end.i.i62.i.max17042_write_verify_reg.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i.i.i) #8
  %tcompc0.i63.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 35
  %159 = ptrtoint ptr %tcompc0.i63.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 2)
  %160 = load i16, ptr %tcompc0.i63.i, align 1
  %conv1.i.i = zext i16 %160 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i36.i.i) #8
  %161 = ptrtoint ptr %read_value.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 -1, ptr %read_value.i36.i.i, align 4, !annotation !110
  br label %do.body.i45.i.i

do.body.i45.i.i:                                  ; preds = %do.body.i45.i.i.do.body.i45.i.i_crit_edge, %max17042_write_verify_reg.exit.i.i
  %retries.0.i37.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit.i.i ], [ %dec.i41.i.i, %do.body.i45.i.i.do.body.i45.i.i_crit_edge ]
  %call.i38.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 57, i32 noundef %conv1.i.i) #8
  %call2.i39.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 57, ptr noundef nonnull %read_value.i36.i.i) #8
  %162 = ptrtoint ptr %read_value.i36.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %read_value.i36.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %163, i32 %conv1.i.i)
  %cmp.not.i40.i.i = icmp eq i32 %163, %conv1.i.i
  %dec.i41.i.i = add i32 %retries.0.i37.i.i, -1
  %spec.select1.i42.i.i = select i1 %cmp.not.i40.i.i, i32 %retries.0.i37.i.i, i32 %dec.i41.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i42.i.i)
  %tobool.not.i43.i.i = icmp eq i32 %spec.select1.i42.i.i, 0
  %brmerge.i44.i.i = or i1 %cmp.not.i40.i.i, %tobool.not.i43.i.i
  br i1 %brmerge.i44.i.i, label %do.end.i48.i.i, label %do.body.i45.i.i.do.body.i45.i.i_crit_edge

do.body.i45.i.i.do.body.i45.i.i_crit_edge:        ; preds = %do.body.i45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i45.i.i

do.end.i48.i.i:                                   ; preds = %do.body.i45.i.i
  %spec.select.le.i46.i.i = select i1 %cmp.not.i40.i.i, i32 %call.i38.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i46.i.i)
  %cmp6.i47.i.i = icmp slt i32 %spec.select.le.i46.i.i, 0
  br i1 %cmp6.i47.i.i, label %do.end11.i50.i.i, label %do.end.i48.i.i.max17042_write_verify_reg.exit51.i.i_crit_edge

do.end.i48.i.i.max17042_write_verify_reg.exit51.i.i_crit_edge: ; preds = %do.end.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit51.i.i

do.end11.i50.i.i:                                 ; preds = %do.end.i48.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i49.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i46.i.i) #11
  br label %max17042_write_verify_reg.exit51.i.i

max17042_write_verify_reg.exit51.i.i:             ; preds = %do.end11.i50.i.i, %do.end.i48.i.i.max17042_write_verify_reg.exit51.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i36.i.i) #8
  %ichgt_term.i64.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 12
  %164 = ptrtoint ptr %ichgt_term.i64.i to i32
  call void @__asan_loadN_noabort(i32 %164, i32 2)
  %165 = load i16, ptr %ichgt_term.i64.i, align 1
  %conv3.i.i = zext i16 %165 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i52.i.i) #8
  %166 = ptrtoint ptr %read_value.i52.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 -1, ptr %read_value.i52.i.i, align 4, !annotation !110
  br label %do.body.i61.i.i

do.body.i61.i.i:                                  ; preds = %do.body.i61.i.i.do.body.i61.i.i_crit_edge, %max17042_write_verify_reg.exit51.i.i
  %retries.0.i53.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit51.i.i ], [ %dec.i57.i.i, %do.body.i61.i.i.do.body.i61.i.i_crit_edge ]
  %call.i54.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 30, i32 noundef %conv3.i.i) #8
  %call2.i55.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 30, ptr noundef nonnull %read_value.i52.i.i) #8
  %167 = ptrtoint ptr %read_value.i52.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %read_value.i52.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %168, i32 %conv3.i.i)
  %cmp.not.i56.i.i = icmp eq i32 %168, %conv3.i.i
  %dec.i57.i.i = add i32 %retries.0.i53.i.i, -1
  %spec.select1.i58.i.i = select i1 %cmp.not.i56.i.i, i32 %retries.0.i53.i.i, i32 %dec.i57.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i58.i.i)
  %tobool.not.i59.i.i = icmp eq i32 %spec.select1.i58.i.i, 0
  %brmerge.i60.i.i = or i1 %cmp.not.i56.i.i, %tobool.not.i59.i.i
  br i1 %brmerge.i60.i.i, label %do.end.i64.i.i, label %do.body.i61.i.i.do.body.i61.i.i_crit_edge

do.body.i61.i.i.do.body.i61.i.i_crit_edge:        ; preds = %do.body.i61.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i61.i.i

do.end.i64.i.i:                                   ; preds = %do.body.i61.i.i
  %spec.select.le.i62.i.i = select i1 %cmp.not.i56.i.i, i32 %call.i54.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i62.i.i)
  %cmp6.i63.i.i = icmp slt i32 %spec.select.le.i62.i.i, 0
  br i1 %cmp6.i63.i.i, label %do.end11.i66.i.i, label %do.end.i64.i.i.max17042_write_verify_reg.exit67.i.i_crit_edge

do.end.i64.i.i.max17042_write_verify_reg.exit67.i.i_crit_edge: ; preds = %do.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit67.i.i

do.end11.i66.i.i:                                 ; preds = %do.end.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i65.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i62.i.i) #11
  br label %max17042_write_verify_reg.exit67.i.i

max17042_write_verify_reg.exit67.i.i:             ; preds = %do.end11.i66.i.i, %do.end.i64.i.i.max17042_write_verify_reg.exit67.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i52.i.i) #8
  %169 = ptrtoint ptr %chip_type.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %chip_type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %170)
  %cmp.i66.i = icmp eq i32 %170, 1
  br i1 %cmp.i66.i, label %if.then.i71.i, label %if.else.i.i

if.then.i71.i:                                    ; preds = %max17042_write_verify_reg.exit67.i.i
  %empty_tempco.i67.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 36
  %171 = ptrtoint ptr %empty_tempco.i67.i to i32
  call void @__asan_loadN_noabort(i32 %171, i32 2)
  %172 = load i16, ptr %empty_tempco.i67.i, align 1
  %conv6.i68.i = zext i16 %172 to i32
  %call7.i69.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 58, i32 noundef %conv6.i68.i) #8
  %kempty0.i70.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 37
  %173 = ptrtoint ptr %kempty0.i70.i to i32
  call void @__asan_loadN_noabort(i32 %173, i32 2)
  %174 = load i16, ptr %kempty0.i70.i, align 1
  %conv8.i.i = zext i16 %174 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i68.i.i) #8
  %175 = ptrtoint ptr %read_value.i68.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 -1, ptr %read_value.i68.i.i, align 4, !annotation !110
  br label %do.body.i77.i.i

do.body.i77.i.i:                                  ; preds = %do.body.i77.i.i.do.body.i77.i.i_crit_edge, %if.then.i71.i
  %retries.0.i69.i.i = phi i32 [ 8, %if.then.i71.i ], [ %dec.i73.i.i, %do.body.i77.i.i.do.body.i77.i.i_crit_edge ]
  %call.i70.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 59, i32 noundef %conv8.i.i) #8
  %call2.i71.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 59, ptr noundef nonnull %read_value.i68.i.i) #8
  %176 = ptrtoint ptr %read_value.i68.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %read_value.i68.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %177, i32 %conv8.i.i)
  %cmp.not.i72.i.i = icmp eq i32 %177, %conv8.i.i
  %dec.i73.i.i = add i32 %retries.0.i69.i.i, -1
  %spec.select1.i74.i.i = select i1 %cmp.not.i72.i.i, i32 %retries.0.i69.i.i, i32 %dec.i73.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i74.i.i)
  %tobool.not.i75.i.i = icmp eq i32 %spec.select1.i74.i.i, 0
  %brmerge.i76.i.i = or i1 %cmp.not.i72.i.i, %tobool.not.i75.i.i
  br i1 %brmerge.i76.i.i, label %do.end.i80.i.i, label %do.body.i77.i.i.do.body.i77.i.i_crit_edge

do.body.i77.i.i.do.body.i77.i.i_crit_edge:        ; preds = %do.body.i77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i77.i.i

do.end.i80.i.i:                                   ; preds = %do.body.i77.i.i
  %spec.select.le.i78.i.i = select i1 %cmp.not.i72.i.i, i32 %call.i70.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i78.i.i)
  %cmp6.i79.i.i = icmp slt i32 %spec.select.le.i78.i.i, 0
  br i1 %cmp6.i79.i.i, label %do.end11.i82.i.i, label %do.end.i80.i.i.max17042_write_verify_reg.exit83.i.i_crit_edge

do.end.i80.i.i.max17042_write_verify_reg.exit83.i.i_crit_edge: ; preds = %do.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit83.i.i

do.end11.i82.i.i:                                 ; preds = %do.end.i80.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i81.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i78.i.i) #11
  br label %max17042_write_verify_reg.exit83.i.i

max17042_write_verify_reg.exit83.i.i:             ; preds = %do.end11.i82.i.i, %do.end.i80.i.i.max17042_write_verify_reg.exit83.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i68.i.i) #8
  br label %max17042_write_custom_regs.exit.i

if.else.i.i:                                      ; preds = %max17042_write_verify_reg.exit67.i.i
  %qrtbl00.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 25
  %178 = ptrtoint ptr %qrtbl00.i.i to i32
  call void @__asan_loadN_noabort(i32 %178, i32 2)
  %179 = load i16, ptr %qrtbl00.i.i, align 1
  %conv10.i.i = zext i16 %179 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i84.i.i) #8
  %180 = ptrtoint ptr %read_value.i84.i.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 -1, ptr %read_value.i84.i.i, align 4, !annotation !110
  br label %do.body.i93.i.i

do.body.i93.i.i:                                  ; preds = %do.body.i93.i.i.do.body.i93.i.i_crit_edge, %if.else.i.i
  %retries.0.i85.i.i = phi i32 [ 8, %if.else.i.i ], [ %dec.i89.i.i, %do.body.i93.i.i.do.body.i93.i.i_crit_edge ]
  %call.i86.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 18, i32 noundef %conv10.i.i) #8
  %call2.i87.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 18, ptr noundef nonnull %read_value.i84.i.i) #8
  %181 = ptrtoint ptr %read_value.i84.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %read_value.i84.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %182, i32 %conv10.i.i)
  %cmp.not.i88.i.i = icmp eq i32 %182, %conv10.i.i
  %dec.i89.i.i = add i32 %retries.0.i85.i.i, -1
  %spec.select1.i90.i.i = select i1 %cmp.not.i88.i.i, i32 %retries.0.i85.i.i, i32 %dec.i89.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i90.i.i)
  %tobool.not.i91.i.i = icmp eq i32 %spec.select1.i90.i.i, 0
  %brmerge.i92.i.i = or i1 %cmp.not.i88.i.i, %tobool.not.i91.i.i
  br i1 %brmerge.i92.i.i, label %do.end.i96.i.i, label %do.body.i93.i.i.do.body.i93.i.i_crit_edge

do.body.i93.i.i.do.body.i93.i.i_crit_edge:        ; preds = %do.body.i93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i93.i.i

do.end.i96.i.i:                                   ; preds = %do.body.i93.i.i
  %spec.select.le.i94.i.i = select i1 %cmp.not.i88.i.i, i32 %call.i86.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i94.i.i)
  %cmp6.i95.i.i = icmp slt i32 %spec.select.le.i94.i.i, 0
  br i1 %cmp6.i95.i.i, label %do.end11.i98.i.i, label %do.end.i96.i.i.max17042_write_verify_reg.exit99.i.i_crit_edge

do.end.i96.i.i.max17042_write_verify_reg.exit99.i.i_crit_edge: ; preds = %do.end.i96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit99.i.i

do.end11.i98.i.i:                                 ; preds = %do.end.i96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i97.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i94.i.i) #11
  br label %max17042_write_verify_reg.exit99.i.i

max17042_write_verify_reg.exit99.i.i:             ; preds = %do.end11.i98.i.i, %do.end.i96.i.i.max17042_write_verify_reg.exit99.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i84.i.i) #8
  %qrtbl10.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 26
  %183 = ptrtoint ptr %qrtbl10.i.i to i32
  call void @__asan_loadN_noabort(i32 %183, i32 2)
  %184 = load i16, ptr %qrtbl10.i.i, align 1
  %conv12.i.i = zext i16 %184 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i100.i.i) #8
  %185 = ptrtoint ptr %read_value.i100.i.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 -1, ptr %read_value.i100.i.i, align 4, !annotation !110
  br label %do.body.i109.i.i

do.body.i109.i.i:                                 ; preds = %do.body.i109.i.i.do.body.i109.i.i_crit_edge, %max17042_write_verify_reg.exit99.i.i
  %retries.0.i101.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit99.i.i ], [ %dec.i105.i.i, %do.body.i109.i.i.do.body.i109.i.i_crit_edge ]
  %call.i102.i72.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 34, i32 noundef %conv12.i.i) #8
  %call2.i103.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 34, ptr noundef nonnull %read_value.i100.i.i) #8
  %186 = ptrtoint ptr %read_value.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %read_value.i100.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %187, i32 %conv12.i.i)
  %cmp.not.i104.i.i = icmp eq i32 %187, %conv12.i.i
  %dec.i105.i.i = add i32 %retries.0.i101.i.i, -1
  %spec.select1.i106.i.i = select i1 %cmp.not.i104.i.i, i32 %retries.0.i101.i.i, i32 %dec.i105.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i106.i.i)
  %tobool.not.i107.i.i = icmp eq i32 %spec.select1.i106.i.i, 0
  %brmerge.i108.i.i = or i1 %cmp.not.i104.i.i, %tobool.not.i107.i.i
  br i1 %brmerge.i108.i.i, label %do.end.i112.i.i, label %do.body.i109.i.i.do.body.i109.i.i_crit_edge

do.body.i109.i.i.do.body.i109.i.i_crit_edge:      ; preds = %do.body.i109.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i109.i.i

do.end.i112.i.i:                                  ; preds = %do.body.i109.i.i
  %spec.select.le.i110.i.i = select i1 %cmp.not.i104.i.i, i32 %call.i102.i72.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i110.i.i)
  %cmp6.i111.i.i = icmp slt i32 %spec.select.le.i110.i.i, 0
  br i1 %cmp6.i111.i.i, label %do.end11.i114.i.i, label %do.end.i112.i.i.max17042_write_verify_reg.exit115.i.i_crit_edge

do.end.i112.i.i.max17042_write_verify_reg.exit115.i.i_crit_edge: ; preds = %do.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit115.i.i

do.end11.i114.i.i:                                ; preds = %do.end.i112.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i113.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i110.i.i) #11
  br label %max17042_write_verify_reg.exit115.i.i

max17042_write_verify_reg.exit115.i.i:            ; preds = %do.end11.i114.i.i, %do.end.i112.i.i.max17042_write_verify_reg.exit115.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i100.i.i) #8
  %qrtbl20.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 27
  %188 = ptrtoint ptr %qrtbl20.i.i to i32
  call void @__asan_loadN_noabort(i32 %188, i32 2)
  %189 = load i16, ptr %qrtbl20.i.i, align 1
  %conv14.i.i = zext i16 %189 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i116.i.i) #8
  %190 = ptrtoint ptr %read_value.i116.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 -1, ptr %read_value.i116.i.i, align 4, !annotation !110
  br label %do.body.i125.i.i

do.body.i125.i.i:                                 ; preds = %do.body.i125.i.i.do.body.i125.i.i_crit_edge, %max17042_write_verify_reg.exit115.i.i
  %retries.0.i117.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit115.i.i ], [ %dec.i121.i.i, %do.body.i125.i.i.do.body.i125.i.i_crit_edge ]
  %call.i118.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 50, i32 noundef %conv14.i.i) #8
  %call2.i119.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 50, ptr noundef nonnull %read_value.i116.i.i) #8
  %191 = ptrtoint ptr %read_value.i116.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %read_value.i116.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %conv14.i.i)
  %cmp.not.i120.i.i = icmp eq i32 %192, %conv14.i.i
  %dec.i121.i.i = add i32 %retries.0.i117.i.i, -1
  %spec.select1.i122.i.i = select i1 %cmp.not.i120.i.i, i32 %retries.0.i117.i.i, i32 %dec.i121.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i122.i.i)
  %tobool.not.i123.i.i = icmp eq i32 %spec.select1.i122.i.i, 0
  %brmerge.i124.i.i = or i1 %cmp.not.i120.i.i, %tobool.not.i123.i.i
  br i1 %brmerge.i124.i.i, label %do.end.i128.i.i, label %do.body.i125.i.i.do.body.i125.i.i_crit_edge

do.body.i125.i.i.do.body.i125.i.i_crit_edge:      ; preds = %do.body.i125.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i125.i.i

do.end.i128.i.i:                                  ; preds = %do.body.i125.i.i
  %spec.select.le.i126.i.i = select i1 %cmp.not.i120.i.i, i32 %call.i118.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i126.i.i)
  %cmp6.i127.i.i = icmp slt i32 %spec.select.le.i126.i.i, 0
  br i1 %cmp6.i127.i.i, label %do.end11.i130.i.i, label %do.end.i128.i.i.max17042_write_verify_reg.exit131.i.i_crit_edge

do.end.i128.i.i.max17042_write_verify_reg.exit131.i.i_crit_edge: ; preds = %do.end.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit131.i.i

do.end11.i130.i.i:                                ; preds = %do.end.i128.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i129.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i126.i.i) #11
  br label %max17042_write_verify_reg.exit131.i.i

max17042_write_verify_reg.exit131.i.i:            ; preds = %do.end11.i130.i.i, %do.end.i128.i.i.max17042_write_verify_reg.exit131.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i116.i.i) #8
  %qrtbl30.i.i = getelementptr inbounds %struct.max17042_config_data, ptr %151, i32 0, i32 28
  %193 = ptrtoint ptr %qrtbl30.i.i to i32
  call void @__asan_loadN_noabort(i32 %193, i32 2)
  %194 = load i16, ptr %qrtbl30.i.i, align 1
  %conv16.i73.i = zext i16 %194 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i132.i.i) #8
  %195 = ptrtoint ptr %read_value.i132.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %read_value.i132.i.i, align 4, !annotation !110
  br label %do.body.i141.i.i

do.body.i141.i.i:                                 ; preds = %do.body.i141.i.i.do.body.i141.i.i_crit_edge, %max17042_write_verify_reg.exit131.i.i
  %retries.0.i133.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit131.i.i ], [ %dec.i137.i.i, %do.body.i141.i.i.do.body.i141.i.i_crit_edge ]
  %call.i134.i.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 66, i32 noundef %conv16.i73.i) #8
  %call2.i135.i.i = call i32 @regmap_read(ptr noundef %153, i32 noundef 66, ptr noundef nonnull %read_value.i132.i.i) #8
  %196 = ptrtoint ptr %read_value.i132.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %read_value.i132.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %197, i32 %conv16.i73.i)
  %cmp.not.i136.i.i = icmp eq i32 %197, %conv16.i73.i
  %dec.i137.i.i = add i32 %retries.0.i133.i.i, -1
  %spec.select1.i138.i.i = select i1 %cmp.not.i136.i.i, i32 %retries.0.i133.i.i, i32 %dec.i137.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i138.i.i)
  %tobool.not.i139.i.i = icmp eq i32 %spec.select1.i138.i.i, 0
  %brmerge.i140.i.i = or i1 %cmp.not.i136.i.i, %tobool.not.i139.i.i
  br i1 %brmerge.i140.i.i, label %do.end.i144.i.i, label %do.body.i141.i.i.do.body.i141.i.i_crit_edge

do.body.i141.i.i.do.body.i141.i.i_crit_edge:      ; preds = %do.body.i141.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i141.i.i

do.end.i144.i.i:                                  ; preds = %do.body.i141.i.i
  %spec.select.le.i142.i.i = select i1 %cmp.not.i136.i.i, i32 %call.i134.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i142.i.i)
  %cmp6.i143.i.i = icmp slt i32 %spec.select.le.i142.i.i, 0
  br i1 %cmp6.i143.i.i, label %do.end11.i146.i.i, label %do.end.i144.i.i.max17042_write_verify_reg.exit147.i.i_crit_edge

do.end.i144.i.i.max17042_write_verify_reg.exit147.i.i_crit_edge: ; preds = %do.end.i144.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit147.i.i

do.end11.i146.i.i:                                ; preds = %do.end.i144.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i145.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i142.i.i) #11
  br label %max17042_write_verify_reg.exit147.i.i

max17042_write_verify_reg.exit147.i.i:            ; preds = %do.end11.i146.i.i, %do.end.i144.i.i.max17042_write_verify_reg.exit147.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i132.i.i) #8
  br label %max17042_write_custom_regs.exit.i

max17042_write_custom_regs.exit.i:                ; preds = %max17042_write_verify_reg.exit147.i.i, %max17042_write_verify_reg.exit83.i.i
  %198 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pdata, align 4
  %config_data.i77.i = getelementptr inbounds %struct.max17042_platform_data, ptr %199, i32 0, i32 1
  %200 = ptrtoint ptr %config_data.i77.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %config_data.i77.i, align 4
  %202 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap.i, align 4
  %fullcap.i79.i = getelementptr inbounds %struct.max17042_config_data, ptr %201, i32 0, i32 19
  %204 = ptrtoint ptr %fullcap.i79.i to i32
  call void @__asan_loadN_noabort(i32 %204, i32 2)
  %205 = load i16, ptr %fullcap.i79.i, align 1
  %conv.i80.i = zext i16 %205 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i.i75.i) #8
  %206 = ptrtoint ptr %read_value.i.i75.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 -1, ptr %read_value.i.i75.i, align 4, !annotation !110
  br label %do.body.i.i89.i

do.body.i.i89.i:                                  ; preds = %do.body.i.i89.i.do.body.i.i89.i_crit_edge, %max17042_write_custom_regs.exit.i
  %retries.0.i.i81.i = phi i32 [ 8, %max17042_write_custom_regs.exit.i ], [ %dec.i.i85.i, %do.body.i.i89.i.do.body.i.i89.i_crit_edge ]
  %call.i.i82.i = call i32 @regmap_write(ptr noundef %203, i32 noundef 16, i32 noundef %conv.i80.i) #8
  %call2.i.i83.i = call i32 @regmap_read(ptr noundef %203, i32 noundef 16, ptr noundef nonnull %read_value.i.i75.i) #8
  %207 = ptrtoint ptr %read_value.i.i75.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %read_value.i.i75.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %208, i32 %conv.i80.i)
  %cmp.not.i.i84.i = icmp eq i32 %208, %conv.i80.i
  %dec.i.i85.i = add i32 %retries.0.i.i81.i, -1
  %spec.select1.i.i86.i = select i1 %cmp.not.i.i84.i, i32 %retries.0.i.i81.i, i32 %dec.i.i85.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i.i86.i)
  %tobool.not.i.i87.i = icmp eq i32 %spec.select1.i.i86.i, 0
  %brmerge.i.i88.i = or i1 %cmp.not.i.i84.i, %tobool.not.i.i87.i
  br i1 %brmerge.i.i88.i, label %do.end.i.i92.i, label %do.body.i.i89.i.do.body.i.i89.i_crit_edge

do.body.i.i89.i.do.body.i.i89.i_crit_edge:        ; preds = %do.body.i.i89.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i89.i

do.end.i.i92.i:                                   ; preds = %do.body.i.i89.i
  %spec.select.le.i.i90.i = select i1 %cmp.not.i.i84.i, i32 %call.i.i82.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i.i90.i)
  %cmp6.i.i91.i = icmp slt i32 %spec.select.le.i.i90.i, 0
  br i1 %cmp6.i.i91.i, label %do.end11.i.i94.i, label %do.end.i.i92.i.max17042_write_verify_reg.exit.i99.i_crit_edge

do.end.i.i92.i.max17042_write_verify_reg.exit.i99.i_crit_edge: ; preds = %do.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit.i99.i

do.end11.i.i94.i:                                 ; preds = %do.end.i.i92.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i93.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i.i90.i) #11
  br label %max17042_write_verify_reg.exit.i99.i

max17042_write_verify_reg.exit.i99.i:             ; preds = %do.end11.i.i94.i, %do.end.i.i92.i.max17042_write_verify_reg.exit.i99.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i.i75.i) #8
  %design_cap.i95.i = getelementptr inbounds %struct.max17042_config_data, ptr %201, i32 0, i32 11
  %209 = ptrtoint ptr %design_cap.i95.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 2)
  %210 = load i16, ptr %design_cap.i95.i, align 1
  %conv1.i96.i = zext i16 %210 to i32
  %call2.i.i = call i32 @regmap_write(ptr noundef %203, i32 noundef 24, i32 noundef %conv1.i96.i) #8
  %fullcapnom.i97.i = getelementptr inbounds %struct.max17042_config_data, ptr %201, i32 0, i32 20
  %211 = ptrtoint ptr %fullcapnom.i97.i to i32
  call void @__asan_loadN_noabort(i32 %211, i32 2)
  %212 = load i16, ptr %fullcapnom.i97.i, align 1
  %conv3.i98.i = zext i16 %212 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i10.i.i) #8
  %213 = ptrtoint ptr %read_value.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 -1, ptr %read_value.i10.i.i, align 4, !annotation !110
  br label %do.body.i19.i.i

do.body.i19.i.i:                                  ; preds = %do.body.i19.i.i.do.body.i19.i.i_crit_edge, %max17042_write_verify_reg.exit.i99.i
  %retries.0.i11.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit.i99.i ], [ %dec.i15.i.i, %do.body.i19.i.i.do.body.i19.i.i_crit_edge ]
  %call.i12.i.i = call i32 @regmap_write(ptr noundef %203, i32 noundef 35, i32 noundef %conv3.i98.i) #8
  %call2.i13.i.i = call i32 @regmap_read(ptr noundef %203, i32 noundef 35, ptr noundef nonnull %read_value.i10.i.i) #8
  %214 = ptrtoint ptr %read_value.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %read_value.i10.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %215, i32 %conv3.i98.i)
  %cmp.not.i14.i.i = icmp eq i32 %215, %conv3.i98.i
  %dec.i15.i.i = add i32 %retries.0.i11.i.i, -1
  %spec.select1.i16.i.i = select i1 %cmp.not.i14.i.i, i32 %retries.0.i11.i.i, i32 %dec.i15.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i16.i.i)
  %tobool.not.i17.i.i = icmp eq i32 %spec.select1.i16.i.i, 0
  %brmerge.i18.i.i = or i1 %cmp.not.i14.i.i, %tobool.not.i17.i.i
  br i1 %brmerge.i18.i.i, label %do.end.i22.i.i, label %do.body.i19.i.i.do.body.i19.i.i_crit_edge

do.body.i19.i.i.do.body.i19.i.i_crit_edge:        ; preds = %do.body.i19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i19.i.i

do.end.i22.i.i:                                   ; preds = %do.body.i19.i.i
  %spec.select.le.i20.i.i = select i1 %cmp.not.i14.i.i, i32 %call.i12.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i20.i.i)
  %cmp6.i21.i.i = icmp slt i32 %spec.select.le.i20.i.i, 0
  br i1 %cmp6.i21.i.i, label %do.end11.i24.i.i, label %do.end.i22.i.i.max17042_update_capacity_regs.exit.i_crit_edge

do.end.i22.i.i.max17042_update_capacity_regs.exit.i_crit_edge: ; preds = %do.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_update_capacity_regs.exit.i

do.end11.i24.i.i:                                 ; preds = %do.end.i22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i23.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i20.i.i) #11
  br label %max17042_update_capacity_regs.exit.i

max17042_update_capacity_regs.exit.i:             ; preds = %do.end11.i24.i.i, %do.end.i22.i.i.max17042_update_capacity_regs.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i10.i.i) #8
  call void @msleep(i32 noundef 350) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vfSoc.i.i) #8
  %216 = ptrtoint ptr %vfSoc.i.i to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 -1, ptr %vfSoc.i.i, align 4, !annotation !110
  %217 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap.i, align 4
  %call.i102.i = call i32 @regmap_read(ptr noundef %218, i32 noundef 255, ptr noundef nonnull %vfSoc.i.i) #8
  %call1.i.i = call i32 @regmap_write(ptr noundef %218, i32 noundef 96, i32 noundef 128) #8
  %219 = ptrtoint ptr %vfSoc.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %vfSoc.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i.i100.i) #8
  %221 = ptrtoint ptr %read_value.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 -1, ptr %read_value.i.i100.i, align 4, !annotation !110
  br label %do.body.i.i111.i

do.body.i.i111.i:                                 ; preds = %do.body.i.i111.i.do.body.i.i111.i_crit_edge, %max17042_update_capacity_regs.exit.i
  %retries.0.i.i103.i = phi i32 [ 8, %max17042_update_capacity_regs.exit.i ], [ %dec.i.i107.i, %do.body.i.i111.i.do.body.i.i111.i_crit_edge ]
  %call.i.i104.i = call i32 @regmap_write(ptr noundef %218, i32 noundef 72, i32 noundef %220) #8
  %call2.i.i105.i = call i32 @regmap_read(ptr noundef %218, i32 noundef 72, ptr noundef nonnull %read_value.i.i100.i) #8
  %222 = ptrtoint ptr %read_value.i.i100.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %read_value.i.i100.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %223, i32 %220)
  %cmp.not.i.i106.i = icmp eq i32 %223, %220
  %dec.i.i107.i = add i32 %retries.0.i.i103.i, -1
  %spec.select1.i.i108.i = select i1 %cmp.not.i.i106.i, i32 %retries.0.i.i103.i, i32 %dec.i.i107.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i.i108.i)
  %tobool.not.i.i109.i = icmp eq i32 %spec.select1.i.i108.i, 0
  %brmerge.i.i110.i = or i1 %cmp.not.i.i106.i, %tobool.not.i.i109.i
  br i1 %brmerge.i.i110.i, label %do.end.i.i114.i, label %do.body.i.i111.i.do.body.i.i111.i_crit_edge

do.body.i.i111.i.do.body.i.i111.i_crit_edge:      ; preds = %do.body.i.i111.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i111.i

do.end.i.i114.i:                                  ; preds = %do.body.i.i111.i
  %spec.select.le.i.i112.i = select i1 %cmp.not.i.i106.i, i32 %call.i.i104.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i.i112.i)
  %cmp6.i.i113.i = icmp slt i32 %spec.select.le.i.i112.i, 0
  br i1 %cmp6.i.i113.i, label %do.end11.i.i116.i, label %do.end.i.i114.i.max17042_reset_vfsoc0_reg.exit.i_crit_edge

do.end.i.i114.i.max17042_reset_vfsoc0_reg.exit.i_crit_edge: ; preds = %do.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_reset_vfsoc0_reg.exit.i

do.end11.i.i116.i:                                ; preds = %do.end.i.i114.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i115.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i.i112.i) #11
  br label %max17042_reset_vfsoc0_reg.exit.i

max17042_reset_vfsoc0_reg.exit.i:                 ; preds = %do.end11.i.i116.i, %do.end.i.i114.i.max17042_reset_vfsoc0_reg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i.i100.i) #8
  %call3.i117.i = call i32 @regmap_write(ptr noundef %218, i32 noundef 96, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vfSoc.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %full_cap0.i.i) #8
  %224 = ptrtoint ptr %full_cap0.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 -1, ptr %full_cap0.i.i, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vfSoc.i120.i) #8
  %225 = ptrtoint ptr %vfSoc.i120.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 -1, ptr %vfSoc.i120.i, align 4, !annotation !110
  %226 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %pdata, align 4
  %config_data.i122.i = getelementptr inbounds %struct.max17042_platform_data, ptr %227, i32 0, i32 1
  %228 = ptrtoint ptr %config_data.i122.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %config_data.i122.i, align 4
  %230 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %regmap.i, align 4
  %call.i124.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 53, ptr noundef nonnull %full_cap0.i.i) #8
  %call1.i125.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 255, ptr noundef nonnull %vfSoc.i120.i) #8
  %232 = ptrtoint ptr %vfSoc.i120.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %vfSoc.i120.i, align 4
  %shr.i.i = lshr i32 %233, 8
  %234 = ptrtoint ptr %full_cap0.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %full_cap0.i.i, align 4
  %mul.i.i = mul i32 %shr.i.i, %235
  %div.i.i = udiv i32 %mul.i.i, 100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i.i119.i) #8
  %236 = ptrtoint ptr %read_value.i.i119.i to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 -1, ptr %read_value.i.i119.i, align 4, !annotation !110
  br label %do.body.i.i134.i

do.body.i.i134.i:                                 ; preds = %do.body.i.i134.i.do.body.i.i134.i_crit_edge, %max17042_reset_vfsoc0_reg.exit.i
  %retries.0.i.i126.i = phi i32 [ 8, %max17042_reset_vfsoc0_reg.exit.i ], [ %dec.i.i130.i, %do.body.i.i134.i.do.body.i.i134.i_crit_edge ]
  %call.i.i127.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 15, i32 noundef %div.i.i) #8
  %call2.i.i128.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 15, ptr noundef nonnull %read_value.i.i119.i) #8
  %237 = ptrtoint ptr %read_value.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %read_value.i.i119.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %238, i32 %div.i.i)
  %cmp.not.i.i129.i = icmp eq i32 %238, %div.i.i
  %dec.i.i130.i = add i32 %retries.0.i.i126.i, -1
  %spec.select1.i.i131.i = select i1 %cmp.not.i.i129.i, i32 %retries.0.i.i126.i, i32 %dec.i.i130.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i.i131.i)
  %tobool.not.i.i132.i = icmp eq i32 %spec.select1.i.i131.i, 0
  %brmerge.i.i133.i = or i1 %cmp.not.i.i129.i, %tobool.not.i.i132.i
  br i1 %brmerge.i.i133.i, label %do.end.i.i137.i, label %do.body.i.i134.i.do.body.i.i134.i_crit_edge

do.body.i.i134.i.do.body.i.i134.i_crit_edge:      ; preds = %do.body.i.i134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i134.i

do.end.i.i137.i:                                  ; preds = %do.body.i.i134.i
  %spec.select.le.i.i135.i = select i1 %cmp.not.i.i129.i, i32 %call.i.i127.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i.i135.i)
  %cmp6.i.i136.i = icmp slt i32 %spec.select.le.i.i135.i, 0
  br i1 %cmp6.i.i136.i, label %do.end11.i.i139.i, label %do.end.i.i137.i.max17042_write_verify_reg.exit.i140.i_crit_edge

do.end.i.i137.i.max17042_write_verify_reg.exit.i140.i_crit_edge: ; preds = %do.end.i.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit.i140.i

do.end11.i.i139.i:                                ; preds = %do.end.i.i137.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i.i138.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i.i135.i) #11
  br label %max17042_write_verify_reg.exit.i140.i

max17042_write_verify_reg.exit.i140.i:            ; preds = %do.end11.i.i139.i, %do.end.i.i137.i.max17042_write_verify_reg.exit.i140.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i.i119.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i29.i.i) #8
  %239 = ptrtoint ptr %read_value.i29.i.i to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 -1, ptr %read_value.i29.i.i, align 4, !annotation !110
  br label %do.body.i38.i.i

do.body.i38.i.i:                                  ; preds = %do.body.i38.i.i.do.body.i38.i.i_crit_edge, %max17042_write_verify_reg.exit.i140.i
  %retries.0.i30.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit.i140.i ], [ %dec.i34.i.i, %do.body.i38.i.i.do.body.i38.i.i_crit_edge ]
  %call.i31.i141.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 5, i32 noundef %div.i.i) #8
  %call2.i32.i.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 5, ptr noundef nonnull %read_value.i29.i.i) #8
  %240 = ptrtoint ptr %read_value.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %read_value.i29.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %241, i32 %div.i.i)
  %cmp.not.i33.i.i = icmp eq i32 %241, %div.i.i
  %dec.i34.i.i = add i32 %retries.0.i30.i.i, -1
  %spec.select1.i35.i.i = select i1 %cmp.not.i33.i.i, i32 %retries.0.i30.i.i, i32 %dec.i34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i35.i.i)
  %tobool.not.i36.i.i = icmp eq i32 %spec.select1.i35.i.i, 0
  %brmerge.i37.i.i = or i1 %cmp.not.i33.i.i, %tobool.not.i36.i.i
  br i1 %brmerge.i37.i.i, label %do.end.i41.i.i, label %do.body.i38.i.i.do.body.i38.i.i_crit_edge

do.body.i38.i.i.do.body.i38.i.i_crit_edge:        ; preds = %do.body.i38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i38.i.i

do.end.i41.i.i:                                   ; preds = %do.body.i38.i.i
  %spec.select.le.i39.i.i = select i1 %cmp.not.i33.i.i, i32 %call.i31.i141.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i39.i.i)
  %cmp6.i40.i.i = icmp slt i32 %spec.select.le.i39.i.i, 0
  br i1 %cmp6.i40.i.i, label %do.end11.i43.i.i, label %do.end.i41.i.i.max17042_write_verify_reg.exit44.i.i_crit_edge

do.end.i41.i.i.max17042_write_verify_reg.exit44.i.i_crit_edge: ; preds = %do.end.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit44.i.i

do.end11.i43.i.i:                                 ; preds = %do.end.i41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i42.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i39.i.i) #11
  br label %max17042_write_verify_reg.exit44.i.i

max17042_write_verify_reg.exit44.i.i:             ; preds = %do.end11.i43.i.i, %do.end.i41.i.i.max17042_write_verify_reg.exit44.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i29.i.i) #8
  %fullcap.i142.i = getelementptr inbounds %struct.max17042_config_data, ptr %229, i32 0, i32 19
  %242 = ptrtoint ptr %fullcap.i142.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %fullcap.i142.i, align 1
  %244 = lshr i16 %243, 2
  %div4.i.i = zext i16 %244 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i45.i.i) #8
  %245 = ptrtoint ptr %read_value.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %read_value.i45.i.i, align 4, !annotation !110
  br label %do.body.i54.i.i

do.body.i54.i.i:                                  ; preds = %do.body.i54.i.i.do.body.i54.i.i_crit_edge, %max17042_write_verify_reg.exit44.i.i
  %retries.0.i46.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit44.i.i ], [ %dec.i50.i.i, %do.body.i54.i.i.do.body.i54.i.i_crit_edge ]
  %call.i47.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 69, i32 noundef %div4.i.i) #8
  %call2.i48.i.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 69, ptr noundef nonnull %read_value.i45.i.i) #8
  %246 = ptrtoint ptr %read_value.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %read_value.i45.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %247, i32 %div4.i.i)
  %cmp.not.i49.i.i = icmp eq i32 %247, %div4.i.i
  %dec.i50.i.i = add i32 %retries.0.i46.i.i, -1
  %spec.select1.i51.i.i = select i1 %cmp.not.i49.i.i, i32 %retries.0.i46.i.i, i32 %dec.i50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i51.i.i)
  %tobool.not.i52.i.i = icmp eq i32 %spec.select1.i51.i.i, 0
  %brmerge.i53.i.i = or i1 %cmp.not.i49.i.i, %tobool.not.i52.i.i
  br i1 %brmerge.i53.i.i, label %do.end.i57.i.i, label %do.body.i54.i.i.do.body.i54.i.i_crit_edge

do.body.i54.i.i.do.body.i54.i.i_crit_edge:        ; preds = %do.body.i54.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i54.i.i

do.end.i57.i.i:                                   ; preds = %do.body.i54.i.i
  %spec.select.le.i55.i.i = select i1 %cmp.not.i49.i.i, i32 %call.i47.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i55.i.i)
  %cmp6.i56.i.i = icmp slt i32 %spec.select.le.i55.i.i, 0
  br i1 %cmp6.i56.i.i, label %do.end11.i59.i.i, label %do.end.i57.i.i.max17042_write_verify_reg.exit60.i.i_crit_edge

do.end.i57.i.i.max17042_write_verify_reg.exit60.i.i_crit_edge: ; preds = %do.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit60.i.i

do.end11.i59.i.i:                                 ; preds = %do.end.i57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i58.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i55.i.i) #11
  br label %max17042_write_verify_reg.exit60.i.i

max17042_write_verify_reg.exit60.i.i:             ; preds = %do.end11.i59.i.i, %do.end.i57.i.i.max17042_write_verify_reg.exit60.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i45.i.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i61.i.i) #8
  %248 = ptrtoint ptr %read_value.i61.i.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 -1, ptr %read_value.i61.i.i, align 4, !annotation !110
  br label %do.body.i70.i.i

do.body.i70.i.i:                                  ; preds = %do.body.i70.i.i.do.body.i70.i.i_crit_edge, %max17042_write_verify_reg.exit60.i.i
  %retries.0.i62.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit60.i.i ], [ %dec.i66.i.i, %do.body.i70.i.i.do.body.i70.i.i_crit_edge ]
  %call.i63.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 70, i32 noundef 12800) #8
  %call2.i64.i.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 70, ptr noundef nonnull %read_value.i61.i.i) #8
  %249 = ptrtoint ptr %read_value.i61.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %read_value.i61.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12800, i32 %250)
  %cmp.not.i65.i.i = icmp eq i32 %250, 12800
  %dec.i66.i.i = add i32 %retries.0.i62.i.i, -1
  %spec.select1.i67.i.i = select i1 %cmp.not.i65.i.i, i32 %retries.0.i62.i.i, i32 %dec.i66.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i67.i.i)
  %tobool.not.i68.i.i = icmp eq i32 %spec.select1.i67.i.i, 0
  %brmerge.i69.i.i = or i1 %cmp.not.i65.i.i, %tobool.not.i68.i.i
  br i1 %brmerge.i69.i.i, label %do.end.i73.i.i, label %do.body.i70.i.i.do.body.i70.i.i_crit_edge

do.body.i70.i.i.do.body.i70.i.i_crit_edge:        ; preds = %do.body.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i70.i.i

do.end.i73.i.i:                                   ; preds = %do.body.i70.i.i
  %spec.select.le.i71.i.i = select i1 %cmp.not.i65.i.i, i32 %call.i63.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i71.i.i)
  %cmp6.i72.i.i = icmp slt i32 %spec.select.le.i71.i.i, 0
  br i1 %cmp6.i72.i.i, label %do.end11.i75.i.i, label %do.end.i73.i.i.max17042_write_verify_reg.exit76.i.i_crit_edge

do.end.i73.i.i.max17042_write_verify_reg.exit76.i.i_crit_edge: ; preds = %do.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit76.i.i

do.end11.i75.i.i:                                 ; preds = %do.end.i73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i74.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i71.i.i) #11
  br label %max17042_write_verify_reg.exit76.i.i

max17042_write_verify_reg.exit76.i.i:             ; preds = %do.end11.i75.i.i, %do.end.i73.i.i.max17042_write_verify_reg.exit76.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i61.i.i) #8
  %251 = ptrtoint ptr %fullcap.i142.i to i32
  call void @__asan_loadN_noabort(i32 %251, i32 2)
  %252 = load i16, ptr %fullcap.i142.i, align 1
  %conv8.i143.i = zext i16 %252 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i77.i.i) #8
  %253 = ptrtoint ptr %read_value.i77.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 -1, ptr %read_value.i77.i.i, align 4, !annotation !110
  br label %do.body.i86.i.i

do.body.i86.i.i:                                  ; preds = %do.body.i86.i.i.do.body.i86.i.i_crit_edge, %max17042_write_verify_reg.exit76.i.i
  %retries.0.i78.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit76.i.i ], [ %dec.i82.i.i, %do.body.i86.i.i.do.body.i86.i.i_crit_edge ]
  %call.i79.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 16, i32 noundef %conv8.i143.i) #8
  %call2.i80.i.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 16, ptr noundef nonnull %read_value.i77.i.i) #8
  %254 = ptrtoint ptr %read_value.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %read_value.i77.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %255, i32 %conv8.i143.i)
  %cmp.not.i81.i.i = icmp eq i32 %255, %conv8.i143.i
  %dec.i82.i.i = add i32 %retries.0.i78.i.i, -1
  %spec.select1.i83.i.i = select i1 %cmp.not.i81.i.i, i32 %retries.0.i78.i.i, i32 %dec.i82.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i83.i.i)
  %tobool.not.i84.i.i = icmp eq i32 %spec.select1.i83.i.i, 0
  %brmerge.i85.i.i = or i1 %cmp.not.i81.i.i, %tobool.not.i84.i.i
  br i1 %brmerge.i85.i.i, label %do.end.i89.i.i, label %do.body.i86.i.i.do.body.i86.i.i_crit_edge

do.body.i86.i.i.do.body.i86.i.i_crit_edge:        ; preds = %do.body.i86.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i86.i.i

do.end.i89.i.i:                                   ; preds = %do.body.i86.i.i
  %spec.select.le.i87.i.i = select i1 %cmp.not.i81.i.i, i32 %call.i79.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i87.i.i)
  %cmp6.i88.i.i = icmp slt i32 %spec.select.le.i87.i.i, 0
  br i1 %cmp6.i88.i.i, label %do.end11.i91.i.i, label %do.end.i89.i.i.max17042_write_verify_reg.exit92.i.i_crit_edge

do.end.i89.i.i.max17042_write_verify_reg.exit92.i.i_crit_edge: ; preds = %do.end.i89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_write_verify_reg.exit92.i.i

do.end11.i91.i.i:                                 ; preds = %do.end.i89.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i90.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i87.i.i) #11
  br label %max17042_write_verify_reg.exit92.i.i

max17042_write_verify_reg.exit92.i.i:             ; preds = %do.end11.i91.i.i, %do.end.i89.i.i.max17042_write_verify_reg.exit92.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i77.i.i) #8
  %design_cap.i144.i = getelementptr inbounds %struct.max17042_config_data, ptr %229, i32 0, i32 11
  %256 = ptrtoint ptr %design_cap.i144.i to i32
  call void @__asan_loadN_noabort(i32 %256, i32 2)
  %257 = load i16, ptr %design_cap.i144.i, align 1
  %conv10.i145.i = zext i16 %257 to i32
  %call11.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 24, i32 noundef %conv10.i145.i) #8
  %fullcapnom.i146.i = getelementptr inbounds %struct.max17042_config_data, ptr %229, i32 0, i32 20
  %258 = ptrtoint ptr %fullcapnom.i146.i to i32
  call void @__asan_loadN_noabort(i32 %258, i32 2)
  %259 = load i16, ptr %fullcapnom.i146.i, align 1
  %conv12.i147.i = zext i16 %259 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %read_value.i93.i.i) #8
  %260 = ptrtoint ptr %read_value.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 -1, ptr %read_value.i93.i.i, align 4, !annotation !110
  br label %do.body.i102.i.i

do.body.i102.i.i:                                 ; preds = %do.body.i102.i.i.do.body.i102.i.i_crit_edge, %max17042_write_verify_reg.exit92.i.i
  %retries.0.i94.i.i = phi i32 [ 8, %max17042_write_verify_reg.exit92.i.i ], [ %dec.i98.i.i, %do.body.i102.i.i.do.body.i102.i.i_crit_edge ]
  %call.i95.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 35, i32 noundef %conv12.i147.i) #8
  %call2.i96.i.i = call i32 @regmap_read(ptr noundef %231, i32 noundef 35, ptr noundef nonnull %read_value.i93.i.i) #8
  %261 = ptrtoint ptr %read_value.i93.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %read_value.i93.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %262, i32 %conv12.i147.i)
  %cmp.not.i97.i.i = icmp eq i32 %262, %conv12.i147.i
  %dec.i98.i.i = add i32 %retries.0.i94.i.i, -1
  %spec.select1.i99.i.i = select i1 %cmp.not.i97.i.i, i32 %retries.0.i94.i.i, i32 %dec.i98.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select1.i99.i.i)
  %tobool.not.i100.i148.i = icmp eq i32 %spec.select1.i99.i.i, 0
  %brmerge.i101.i.i = or i1 %cmp.not.i97.i.i, %tobool.not.i100.i148.i
  br i1 %brmerge.i101.i.i, label %do.end.i105.i.i, label %do.body.i102.i.i.do.body.i102.i.i_crit_edge

do.body.i102.i.i.do.body.i102.i.i_crit_edge:      ; preds = %do.body.i102.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i102.i.i

do.end.i105.i.i:                                  ; preds = %do.body.i102.i.i
  %spec.select.le.i103.i.i = select i1 %cmp.not.i97.i.i, i32 %call.i95.i.i, i32 -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.le.i103.i.i)
  %cmp6.i104.i.i = icmp slt i32 %spec.select.le.i103.i.i, 0
  br i1 %cmp6.i104.i.i, label %do.end11.i107.i.i, label %do.end.i105.i.i.max17042_init_chip.exit_crit_edge

do.end.i105.i.i.max17042_init_chip.exit_crit_edge: ; preds = %do.end.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_init_chip.exit

do.end11.i107.i.i:                                ; preds = %do.end.i105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call12.i106.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef %spec.select.le.i103.i.i) #11
  br label %max17042_init_chip.exit

max17042_init_chip.exit:                          ; preds = %do.end11.i107.i.i, %do.end.i105.i.i.max17042_init_chip.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %read_value.i93.i.i) #8
  %263 = ptrtoint ptr %vfSoc.i120.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %vfSoc.i120.i, align 4
  %call14.i.i = call i32 @regmap_write(ptr noundef %231, i32 noundef 6, i32 noundef %264) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vfSoc.i120.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %full_cap0.i.i) #8
  %call.i149.i = call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end5

if.end5:                                          ; preds = %max17042_init_chip.exit, %land.lhs.true.if.end5_crit_edge, %entry.if.end5_crit_edge
  %init_complete = getelementptr i8, ptr %work, i32 44
  %265 = ptrtoint ptr %init_complete to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 1, ptr %init_complete, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end6.i, %do.end.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max17042_stop_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr inbounds %struct.max17042_chip, ptr %data, i32 0, i32 5
  %call = tail call zeroext i1 @cancel_work_sync(ptr noundef %work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %remainder.i1250 = alloca i32, align 4
  %remainder.i1248 = alloca i32, align 4
  %remainder.i1246 = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  %data.i1227 = alloca i32, align 4
  %remainder.i = alloca i32, align 4
  %charge_full.i = alloca i32, align 4
  %charge_now.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %regmap = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !110
  %init_complete = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %init_complete to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %init_complete, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb4
    i32 6, label %sw.bb12
    i32 7, label %sw.bb13
    i32 8, label %sw.bb18
    i32 9, label %sw.bb23
    i32 11, label %sw.bb30
    i32 12, label %sw.bb42
    i32 13, label %sw.bb48
    i32 14, label %sw.bb55
    i32 47, label %sw.bb62
    i32 22, label %sw.bb73
    i32 24, label %sw.bb272
    i32 26, label %sw.bb504
    i32 28, label %sw.bb736
    i32 52, label %sw.bb749
    i32 55, label %sw.bb755
    i32 56, label %sw.bb764
    i32 54, label %sw.bb773
    i32 53, label %sw.bb775
    i32 2, label %sw.bb777
    i32 66, label %sw.bb783
    i32 17, label %sw.bb784
    i32 18, label %sw.bb803
    i32 68, label %sw.bb822
    i32 60, label %sw.bb834
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_full.i) #8
  %6 = ptrtoint ptr %charge_full.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %charge_full.i, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %charge_now.i) #8
  %7 = ptrtoint ptr %charge_now.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %charge_now.i, align 4, !annotation !110
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #8
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data.i, align 4, !annotation !110
  %battery.i = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %battery.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %battery.i, align 4
  %call.i = tail call i32 @power_supply_am_i_supplied(ptr noundef %10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.max17042_get_status.exit_crit_edge, label %if.end.i

sw.bb.max17042_get_status.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp eq i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.i.max17042_get_status.exit_crit_edge, label %if.end3.i

if.end.i.max17042_get_status.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit

if.end3.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %12, i32 noundef 16, ptr noundef nonnull %charge_full.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.max17042_get_status.exit.thread_crit_edge, label %if.end7.i

if.end3.i.max17042_get_status.exit.thread_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit.thread

if.end7.i:                                        ; preds = %if.end3.i
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call9.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 5, ptr noundef nonnull %charge_now.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end7.i.max17042_get_status.exit.thread_crit_edge, label %if.end12.i

if.end7.i.max17042_get_status.exit.thread_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit.thread

if.end12.i:                                       ; preds = %if.end7.i
  %15 = ptrtoint ptr %charge_full.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %charge_full.i, align 4
  %17 = ptrtoint ptr %charge_now.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %charge_now.i, align 4
  %sub.i = sub i32 %16, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %sub.i)
  %cmp13.i = icmp slt i32 %sub.i, 11
  br i1 %cmp13.i, label %if.end12.i.max17042_get_status.exit_crit_edge, label %if.end15.i

if.end12.i.max17042_get_status.exit_crit_edge:    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit

if.end15.i:                                       ; preds = %if.end12.i
  %pdata.i = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdata.i, align 4
  %enable_current_sense.i = getelementptr inbounds %struct.max17042_platform_data, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %enable_current_sense.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %enable_current_sense.i, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.end15.i.max17042_get_status.exit_crit_edge, label %if.end17.i

if.end15.i.max17042_get_status.exit_crit_edge:    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit

if.end17.i:                                       ; preds = %if.end15.i
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call19.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 11, ptr noundef nonnull %data.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end17.i.max17042_get_status.exit.thread_crit_edge, label %if.end22.i

if.end17.i.max17042_get_status.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_status.exit.thread

if.end22.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i, align 4
  %shl.i.i = shl i32 %26, 16
  %shr.i.i = ashr exact i32 %shl.i.i, 16
  %27 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdata.i, align 4
  %r_sns.i = getelementptr inbounds %struct.max17042_platform_data, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %r_sns.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %r_sns.i, align 4
  %div.i = udiv i32 1562500, %30
  %mul.i = mul i32 %div.i, %shr.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp25.inv.i = icmp slt i32 %mul.i, 1
  %..i = select i1 %cmp25.inv.i, i32 2, i32 1
  br label %max17042_get_status.exit

max17042_get_status.exit.thread:                  ; preds = %if.end17.i.max17042_get_status.exit.thread_crit_edge, %if.end7.i.max17042_get_status.exit.thread_crit_edge, %if.end3.i.max17042_get_status.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call19.i, %if.end17.i.max17042_get_status.exit.thread_crit_edge ], [ %call9.i, %if.end7.i.max17042_get_status.exit.thread_crit_edge ], [ %call4.i, %if.end3.i.max17042_get_status.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_now.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_full.i) #8
  br label %cleanup

max17042_get_status.exit:                         ; preds = %if.end22.i, %if.end15.i.max17042_get_status.exit_crit_edge, %if.end12.i.max17042_get_status.exit_crit_edge, %if.end.i.max17042_get_status.exit_crit_edge, %sw.bb.max17042_get_status.exit_crit_edge
  %..sink.i = phi i32 [ %..i, %if.end22.i ], [ 0, %sw.bb.max17042_get_status.exit_crit_edge ], [ 2, %if.end.i.max17042_get_status.exit_crit_edge ], [ 4, %if.end12.i.max17042_get_status.exit_crit_edge ], [ 1, %if.end15.i.max17042_get_status.exit_crit_edge ]
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %..sink.i, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_now.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %charge_full.i) #8
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %call5 = call i32 @regmap_read(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %sw.bb4.cleanup_crit_edge, label %if.end8

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %sw.bb4
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %and = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  %call14 = call i32 @regmap_read(ptr noundef %1, i32 noundef 23, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %sw.bb13.cleanup_crit_edge, label %if.end17

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %data, align 4
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val, align 4
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  %call19 = call i32 @regmap_read(ptr noundef %1, i32 noundef 27, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %sw.bb18.cleanup_crit_edge, label %if.end22

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data, align 4
  %shr = lshr i32 %41, 8
  %mul = mul i32 %shr, 20000
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %if.end
  %call24 = call i32 @regmap_read(ptr noundef %1, i32 noundef 27, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %sw.bb23.cleanup_crit_edge, label %if.end27

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %data, align 4
  %and28 = and i32 %44, 255
  %mul29 = mul nuw nsw i32 %and28, 20000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul29, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %if.end
  %chip_type = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 3
  %46 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp31 = icmp eq i32 %47, 1
  %. = select i1 %cmp31, i32 18, i32 58
  %call35 = call i32 @regmap_read(ptr noundef %1, i32 noundef %., ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp37 = icmp slt i32 %call35, 0
  br i1 %cmp37, label %sw.bb30.cleanup_crit_edge, label %if.end39

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end39:                                         ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data, align 4
  %shr40 = lshr i32 %49, 7
  %mul41 = mul i32 %shr40, 10000
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %mul41, ptr %val, align 4
  br label %cleanup

sw.bb42:                                          ; preds = %if.end
  %call43 = call i32 @regmap_read(ptr noundef %1, i32 noundef 9, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %sw.bb42.cleanup_crit_edge, label %if.end46

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %data, align 4
  %mul47 = mul i32 %52, 625
  %div1200 = lshr i32 %mul47, 3
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %div1200, ptr %val, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %if.end
  %call49 = call i32 @regmap_read(ptr noundef %1, i32 noundef 25, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %sw.bb48.cleanup_crit_edge, label %if.end52

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %data, align 4
  %mul53 = mul i32 %55, 625
  %div541199 = lshr i32 %mul53, 3
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div541199, ptr %val, align 4
  br label %cleanup

sw.bb55:                                          ; preds = %if.end
  %call56 = call i32 @regmap_read(ptr noundef %1, i32 noundef 251, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %sw.bb55.cleanup_crit_edge, label %if.end59

sw.bb55.cleanup_crit_edge:                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end59:                                         ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %data, align 4
  %mul60 = mul i32 %58, 625
  %div611198 = lshr i32 %mul60, 3
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div611198, ptr %val, align 4
  br label %cleanup

sw.bb62:                                          ; preds = %if.end
  %pdata = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %60 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdata, align 4
  %enable_current_sense = getelementptr inbounds %struct.max17042_platform_data, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %enable_current_sense to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %enable_current_sense, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool63.not = icmp eq i8 %63, 0
  %.1301 = select i1 %tobool63.not, i32 255, i32 6
  %call67 = call i32 @regmap_read(ptr noundef %1, i32 noundef %.1301, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp69 = icmp slt i32 %call67, 0
  br i1 %cmp69, label %sw.bb62.cleanup_crit_edge, label %if.end71

sw.bb62.cleanup_crit_edge:                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end71:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %data, align 4
  %shr72 = lshr i32 %65, 8
  %66 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %shr72, ptr %val, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  %call74 = call i32 @regmap_read(ptr noundef %1, i32 noundef 24, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %sw.bb73.cleanup_crit_edge, label %if.end77

sw.bb73.cleanup_crit_edge:                        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end77:                                         ; preds = %sw.bb73
  %67 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %data, align 4
  %conv = zext i32 %68 to i64
  %mul78 = mul nuw nsw i64 %conv, 5000000
  %pdata79 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %69 = ptrtoint ptr %pdata79 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %pdata79, align 4
  %r_sns = getelementptr inbounds %struct.max17042_platform_data, ptr %70, i32 0, i32 5
  %71 = ptrtoint ptr %r_sns to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %r_sns, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul78)
  %cmp255 = icmp ult i64 %mul78, 4294967296
  br i1 %cmp255, label %if.then259, label %if.else265, !prof !113

if.then259:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %conv260 = trunc i64 %mul78 to i32
  %div263 = udiv i32 %conv260, %72
  br label %if.end269

if.else265:                                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %73 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %72, i64 %mul78) #14, !srcloc !114
  %asmresult1.i = extractvalue { i64, i64 } %73, 1
  %extract.t1297 = trunc i64 %asmresult1.i to i32
  br label %if.end269

if.end269:                                        ; preds = %if.else265, %if.then259
  %data64.0.off0 = phi i32 [ %div263, %if.then259 ], [ %extract.t1297, %if.else265 ]
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %data64.0.off0, ptr %val, align 4
  br label %cleanup

sw.bb272:                                         ; preds = %if.end
  %call273 = call i32 @regmap_read(ptr noundef %1, i32 noundef 16, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call273)
  %cmp274 = icmp slt i32 %call273, 0
  br i1 %cmp274, label %sw.bb272.cleanup_crit_edge, label %if.end277

sw.bb272.cleanup_crit_edge:                       ; preds = %sw.bb272
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end277:                                        ; preds = %sw.bb272
  %75 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %data, align 4
  %conv278 = zext i32 %76 to i64
  %mul279 = mul nuw nsw i64 %conv278, 5000000
  %pdata281 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %77 = ptrtoint ptr %pdata281 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pdata281, align 4
  %r_sns282 = getelementptr inbounds %struct.max17042_platform_data, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %r_sns282 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %r_sns282, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul279)
  %cmp483 = icmp ult i64 %mul279, 4294967296
  br i1 %cmp483, label %if.then491, label %if.else497, !prof !113

if.then491:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %conv492 = trunc i64 %mul279 to i32
  %div495 = udiv i32 %conv492, %80
  br label %if.end501

if.else497:                                       ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #10
  %81 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %80, i64 %mul279) #14, !srcloc !114
  %asmresult1.i1218 = extractvalue { i64, i64 } %81, 1
  %extract.t1293 = trunc i64 %asmresult1.i1218 to i32
  br label %if.end501

if.end501:                                        ; preds = %if.else497, %if.then491
  %data64.1.off0 = phi i32 [ %div495, %if.then491 ], [ %extract.t1293, %if.else497 ]
  %82 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %data64.1.off0, ptr %val, align 4
  br label %cleanup

sw.bb504:                                         ; preds = %if.end
  %call505 = call i32 @regmap_read(ptr noundef %1, i32 noundef 5, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call505)
  %cmp506 = icmp slt i32 %call505, 0
  br i1 %cmp506, label %sw.bb504.cleanup_crit_edge, label %if.end509

sw.bb504.cleanup_crit_edge:                       ; preds = %sw.bb504
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end509:                                        ; preds = %sw.bb504
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data, align 4
  %conv510 = zext i32 %84 to i64
  %mul511 = mul nuw nsw i64 %conv510, 5000000
  %pdata513 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %85 = ptrtoint ptr %pdata513 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pdata513, align 4
  %r_sns514 = getelementptr inbounds %struct.max17042_platform_data, ptr %86, i32 0, i32 5
  %87 = ptrtoint ptr %r_sns514 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %r_sns514, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul511)
  %cmp715 = icmp ult i64 %mul511, 4294967296
  br i1 %cmp715, label %if.then723, label %if.else729, !prof !113

if.then723:                                       ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #10
  %conv724 = trunc i64 %mul511 to i32
  %div727 = udiv i32 %conv724, %88
  br label %if.end733

if.else729:                                       ; preds = %if.end509
  call void @__sanitizer_cov_trace_pc() #10
  %89 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %88, i64 %mul511) #14, !srcloc !114
  %asmresult1.i1225 = extractvalue { i64, i64 } %89, 1
  %extract.t1289 = trunc i64 %asmresult1.i1225 to i32
  br label %if.end733

if.end733:                                        ; preds = %if.else729, %if.then723
  %data64.2.off0 = phi i32 [ %div727, %if.then723 ], [ %extract.t1289, %if.else729 ]
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %data64.2.off0, ptr %val, align 4
  br label %cleanup

sw.bb736:                                         ; preds = %if.end
  %call737 = call i32 @regmap_read(ptr noundef %1, i32 noundef 77, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call737)
  %cmp738 = icmp slt i32 %call737, 0
  br i1 %cmp738, label %sw.bb736.cleanup_crit_edge, label %if.end741

sw.bb736.cleanup_crit_edge:                       ; preds = %sw.bb736
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end741:                                        ; preds = %sw.bb736
  call void @__sanitizer_cov_trace_pc() #10
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %data, align 4
  %conv742 = zext i32 %92 to i64
  %shl.i = shl i64 %conv742, 48
  %shr.i = ashr exact i64 %shl.i, 48
  %mul744 = mul nsw i64 %shr.i, 5000000
  %pdata745 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %93 = ptrtoint ptr %pdata745 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %pdata745, align 4
  %r_sns746 = getelementptr inbounds %struct.max17042_platform_data, ptr %94, i32 0, i32 5
  %95 = ptrtoint ptr %r_sns746 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %r_sns746, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #8
  %97 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %remainder.i, align 4, !annotation !110
  %call.i1226 = call i64 @div_s64_rem(i64 noundef %mul744, i32 noundef %96, ptr noundef nonnull %remainder.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #8
  %conv748 = trunc i64 %call.i1226 to i32
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %conv748, ptr %val, align 4
  br label %cleanup

sw.bb749:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i1227) #8
  %99 = ptrtoint ptr %data.i1227 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %data.i1227, align 4, !annotation !110
  %call.i1229 = call i32 @regmap_read(ptr noundef %1, i32 noundef 8, ptr noundef nonnull %data.i1227) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1229)
  %cmp.i1230 = icmp slt i32 %call.i1229, 0
  br i1 %cmp.i1230, label %max17042_get_temperature.exit.thread, label %max17042_get_temperature.exit

max17042_get_temperature.exit.thread:             ; preds = %sw.bb749
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1227) #8
  br label %cleanup

max17042_get_temperature.exit:                    ; preds = %sw.bb749
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %data.i1227 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data.i1227, align 4
  %shl.i.i1231 = shl i32 %101, 16
  %shr.i.i1232 = ashr exact i32 %shl.i.i1231, 16
  %mul.i1233 = mul nsw i32 %shr.i.i1232, 10
  %div.i1234 = sdiv i32 %mul.i1233, 256
  %102 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %div.i1234, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i1227) #8
  br label %cleanup

sw.bb755:                                         ; preds = %if.end
  %call756 = call i32 @regmap_read(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call756)
  %cmp757 = icmp slt i32 %call756, 0
  br i1 %cmp757, label %sw.bb755.cleanup_crit_edge, label %if.end760

sw.bb755.cleanup_crit_edge:                       ; preds = %sw.bb755
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end760:                                        ; preds = %sw.bb755
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %data, align 4
  %and761 = shl i32 %104, 24
  %shr.i1202 = ashr exact i32 %and761, 24
  %mul763 = mul nsw i32 %shr.i1202, 10
  %105 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul763, ptr %val, align 4
  br label %cleanup

sw.bb764:                                         ; preds = %if.end
  %call765 = call i32 @regmap_read(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call765)
  %cmp766 = icmp slt i32 %call765, 0
  br i1 %cmp766, label %sw.bb764.cleanup_crit_edge, label %if.end769

sw.bb764.cleanup_crit_edge:                       ; preds = %sw.bb764
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end769:                                        ; preds = %sw.bb764
  call void @__sanitizer_cov_trace_pc() #10
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %data, align 4
  %108 = shl i32 %107, 16
  %shr.i1204 = ashr i32 %108, 24
  %mul772 = mul nsw i32 %shr.i1204, 10
  %109 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %mul772, ptr %val, align 4
  br label %cleanup

sw.bb773:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdata774 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %110 = ptrtoint ptr %pdata774 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdata774, align 4
  %temp_min = getelementptr inbounds %struct.max17042_platform_data, ptr %111, i32 0, i32 8
  %112 = ptrtoint ptr %temp_min to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %temp_min, align 4
  %114 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %val, align 4
  br label %cleanup

sw.bb775:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %pdata776 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %115 = ptrtoint ptr %pdata776 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pdata776, align 4
  %temp_max = getelementptr inbounds %struct.max17042_platform_data, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %temp_max to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %temp_max, align 4
  %119 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %val, align 4
  br label %cleanup

sw.bb777:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %120 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %val.i, align 4, !annotation !110
  %call.i1238 = call i32 @regmap_read(ptr noundef %1, i32 noundef 25, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1238)
  %cmp.i1239 = icmp slt i32 %call.i1238, 0
  br i1 %cmp.i1239, label %sw.bb777.max17042_get_battery_health.exit_crit_edge, label %if.end.i1240

sw.bb777.max17042_get_battery_health.exit_crit_edge: ; preds = %sw.bb777
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_battery_health.exit

if.end.i1240:                                     ; preds = %sw.bb777
  %121 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %val.i, align 4
  %123 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %124, i32 noundef 9, ptr noundef nonnull %val.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i1240.max17042_get_battery_health.exit_crit_edge, label %if.end6.i

if.end.i1240.max17042_get_battery_health.exit_crit_edge: ; preds = %if.end.i1240
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_battery_health.exit

if.end6.i:                                        ; preds = %if.end.i1240
  %mul.i1241 = mul i32 %122, 625
  %div1.i = udiv i32 %mul.i1241, 8000
  %pdata.i1242 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %125 = ptrtoint ptr %pdata.i1242 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %pdata.i1242, align 4
  %vmin.i = getelementptr inbounds %struct.max17042_platform_data, ptr %126, i32 0, i32 6
  %127 = ptrtoint ptr %vmin.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %vmin.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %128)
  %cmp10.i1243 = icmp slt i32 %div1.i, %128
  br i1 %cmp10.i1243, label %if.end6.i.max17042_get_battery_health.exit.thread_crit_edge, label %if.end12.i1244

if.end6.i.max17042_get_battery_health.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_battery_health.exit.thread

if.end12.i1244:                                   ; preds = %if.end6.i
  %129 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %val.i, align 4
  %mul7.i = mul i32 %130, 625
  %div9.i = udiv i32 %mul7.i, 8000
  %vmax.i = getelementptr inbounds %struct.max17042_platform_data, ptr %126, i32 0, i32 7
  %131 = ptrtoint ptr %vmax.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %vmax.i, align 4
  %add.i = add i32 %132, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %div9.i, i32 %add.i)
  %cmp14.i = icmp sgt i32 %div9.i, %add.i
  br i1 %cmp14.i, label %if.end12.i1244.max17042_get_battery_health.exit.thread_crit_edge, label %if.end16.i

if.end12.i1244.max17042_get_battery_health.exit.thread_crit_edge: ; preds = %if.end12.i1244
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_battery_health.exit.thread

if.end16.i:                                       ; preds = %if.end12.i1244
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i) #8
  %133 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 -1, ptr %data.i.i, align 4, !annotation !110
  %134 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %135, i32 noundef 8, ptr noundef nonnull %data.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %max17042_get_temperature.exit.thread.i, label %if.end20.i

max17042_get_temperature.exit.thread.i:           ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #8
  br label %max17042_get_battery_health.exit

if.end20.i:                                       ; preds = %if.end16.i
  %136 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %data.i.i, align 4
  %shl.i.i.i = shl i32 %137, 16
  %shr.i.i.i = ashr exact i32 %shl.i.i.i, 16
  %mul.i.i = mul nsw i32 %shr.i.i.i, 10
  %div.i.i = sdiv i32 %mul.i.i, 256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i) #8
  %138 = ptrtoint ptr %pdata.i1242 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %pdata.i1242, align 4
  %temp_min.i = getelementptr inbounds %struct.max17042_platform_data, ptr %139, i32 0, i32 8
  %140 = ptrtoint ptr %temp_min.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %temp_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %141)
  %cmp22.i = icmp slt i32 %div.i.i, %141
  br i1 %cmp22.i, label %if.end20.i.max17042_get_battery_health.exit.thread_crit_edge, label %if.end24.i

if.end20.i.max17042_get_battery_health.exit.thread_crit_edge: ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max17042_get_battery_health.exit.thread

if.end24.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %temp_max.i = getelementptr inbounds %struct.max17042_platform_data, ptr %139, i32 0, i32 9
  %142 = ptrtoint ptr %temp_max.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %temp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i.i, i32 %143)
  %cmp26.i = icmp sgt i32 %div.i.i, %143
  %.1302 = select i1 %cmp26.i, i32 2, i32 1
  br label %max17042_get_battery_health.exit.thread

max17042_get_battery_health.exit.thread:          ; preds = %if.end24.i, %if.end20.i.max17042_get_battery_health.exit.thread_crit_edge, %if.end12.i1244.max17042_get_battery_health.exit.thread_crit_edge, %if.end6.i.max17042_get_battery_health.exit.thread_crit_edge
  %.sink1300 = phi i32 [ 3, %if.end6.i.max17042_get_battery_health.exit.thread_crit_edge ], [ 4, %if.end12.i1244.max17042_get_battery_health.exit.thread_crit_edge ], [ 6, %if.end20.i.max17042_get_battery_health.exit.thread_crit_edge ], [ %.1302, %if.end24.i ]
  %144 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %.sink1300, ptr %val, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

max17042_get_battery_health.exit:                 ; preds = %max17042_get_temperature.exit.thread.i, %if.end.i1240.max17042_get_battery_health.exit_crit_edge, %sw.bb777.max17042_get_battery_health.exit_crit_edge
  %retval.0.i1245 = phi i32 [ %call.i1238, %sw.bb777.max17042_get_battery_health.exit_crit_edge ], [ %call3.i, %if.end.i1240.max17042_get_battery_health.exit_crit_edge ], [ %call.i.i, %max17042_get_temperature.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  br label %cleanup

sw.bb783:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %145 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb784:                                         ; preds = %if.end
  %pdata785 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %146 = ptrtoint ptr %pdata785 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %pdata785, align 4
  %enable_current_sense786 = getelementptr inbounds %struct.max17042_platform_data, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %enable_current_sense786 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %enable_current_sense786, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool787.not = icmp eq i8 %149, 0
  br i1 %tobool787.not, label %sw.bb784.cleanup_crit_edge, label %if.then788

sw.bb784.cleanup_crit_edge:                       ; preds = %sw.bb784
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then788:                                       ; preds = %sw.bb784
  %call789 = call i32 @regmap_read(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call789)
  %cmp790 = icmp slt i32 %call789, 0
  br i1 %cmp790, label %if.then788.cleanup_crit_edge, label %if.end793

if.then788.cleanup_crit_edge:                     ; preds = %if.then788
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end793:                                        ; preds = %if.then788
  call void @__sanitizer_cov_trace_pc() #10
  %150 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %data, align 4
  %conv794 = zext i32 %151 to i64
  %shl.i1205 = shl i64 %conv794, 48
  %shr.i1206 = ashr exact i64 %shl.i1205, 48
  %mul796 = mul nsw i64 %shr.i1206, 1562500
  %152 = ptrtoint ptr %pdata785 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %pdata785, align 4
  %r_sns798 = getelementptr inbounds %struct.max17042_platform_data, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %r_sns798 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %r_sns798, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i1246) #8
  %156 = ptrtoint ptr %remainder.i1246 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 -1, ptr %remainder.i1246, align 4, !annotation !110
  %call.i1247 = call i64 @div_s64_rem(i64 noundef %mul796, i32 noundef %155, ptr noundef nonnull %remainder.i1246) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i1246) #8
  %conv800 = trunc i64 %call.i1247 to i32
  %157 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %conv800, ptr %val, align 4
  br label %cleanup

sw.bb803:                                         ; preds = %if.end
  %pdata804 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %158 = ptrtoint ptr %pdata804 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %pdata804, align 4
  %enable_current_sense805 = getelementptr inbounds %struct.max17042_platform_data, ptr %159, i32 0, i32 3
  %160 = ptrtoint ptr %enable_current_sense805 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %enable_current_sense805, align 4, !range !111
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool806.not = icmp eq i8 %161, 0
  br i1 %tobool806.not, label %sw.bb803.cleanup_crit_edge, label %if.then807

sw.bb803.cleanup_crit_edge:                       ; preds = %sw.bb803
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then807:                                       ; preds = %sw.bb803
  %call808 = call i32 @regmap_read(ptr noundef %1, i32 noundef 11, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call808)
  %cmp809 = icmp slt i32 %call808, 0
  br i1 %cmp809, label %if.then807.cleanup_crit_edge, label %if.end812

if.then807.cleanup_crit_edge:                     ; preds = %if.then807
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end812:                                        ; preds = %if.then807
  call void @__sanitizer_cov_trace_pc() #10
  %162 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data, align 4
  %conv813 = zext i32 %163 to i64
  %shl.i1207 = shl i64 %conv813, 48
  %shr.i1208 = ashr exact i64 %shl.i1207, 48
  %mul815 = mul nsw i64 %shr.i1208, 1562500
  %164 = ptrtoint ptr %pdata804 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %pdata804, align 4
  %r_sns817 = getelementptr inbounds %struct.max17042_platform_data, ptr %165, i32 0, i32 5
  %166 = ptrtoint ptr %r_sns817 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %r_sns817, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i1248) #8
  %168 = ptrtoint ptr %remainder.i1248 to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 -1, ptr %remainder.i1248, align 4, !annotation !110
  %call.i1249 = call i64 @div_s64_rem(i64 noundef %mul815, i32 noundef %167, ptr noundef nonnull %remainder.i1248) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i1248) #8
  %conv819 = trunc i64 %call.i1249 to i32
  %169 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 %conv819, ptr %val, align 4
  br label %cleanup

sw.bb822:                                         ; preds = %if.end
  %call823 = call i32 @regmap_read(ptr noundef %1, i32 noundef 30, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call823)
  %cmp824 = icmp slt i32 %call823, 0
  br i1 %cmp824, label %sw.bb822.cleanup_crit_edge, label %if.end827

sw.bb822.cleanup_crit_edge:                       ; preds = %sw.bb822
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end827:                                        ; preds = %sw.bb822
  call void @__sanitizer_cov_trace_pc() #10
  %170 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %data, align 4
  %conv828 = zext i32 %171 to i64
  %mul829 = mul nuw nsw i64 %conv828, 1562500
  %pdata830 = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 4
  %172 = ptrtoint ptr %pdata830 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %pdata830, align 4
  %r_sns831 = getelementptr inbounds %struct.max17042_platform_data, ptr %173, i32 0, i32 5
  %174 = ptrtoint ptr %r_sns831 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %r_sns831, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i1250) #8
  %176 = ptrtoint ptr %remainder.i1250 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 -1, ptr %remainder.i1250, align 4, !annotation !110
  %call.i1251 = call i64 @div_s64_rem(i64 noundef %mul829, i32 noundef %175, ptr noundef nonnull %remainder.i1250) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i1250) #8
  %conv833 = trunc i64 %call.i1251 to i32
  %177 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %conv833, ptr %val, align 4
  br label %cleanup

sw.bb834:                                         ; preds = %if.end
  %call835 = call i32 @regmap_read(ptr noundef %1, i32 noundef 17, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call835)
  %cmp836 = icmp slt i32 %call835, 0
  br i1 %cmp836, label %sw.bb834.cleanup_crit_edge, label %if.end839

sw.bb834.cleanup_crit_edge:                       ; preds = %sw.bb834
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end839:                                        ; preds = %sw.bb834
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %data, align 4
  %mul840 = mul i32 %179, 5625
  %div841 = udiv i32 %mul840, 1000
  %180 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 %div841, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end839, %sw.bb834.cleanup_crit_edge, %if.end827, %sw.bb822.cleanup_crit_edge, %if.end812, %if.then807.cleanup_crit_edge, %sw.bb803.cleanup_crit_edge, %if.end793, %if.then788.cleanup_crit_edge, %sw.bb784.cleanup_crit_edge, %sw.bb783, %max17042_get_battery_health.exit, %max17042_get_battery_health.exit.thread, %sw.bb775, %sw.bb773, %if.end769, %sw.bb764.cleanup_crit_edge, %if.end760, %sw.bb755.cleanup_crit_edge, %max17042_get_temperature.exit, %max17042_get_temperature.exit.thread, %if.end741, %sw.bb736.cleanup_crit_edge, %if.end733, %sw.bb504.cleanup_crit_edge, %if.end501, %sw.bb272.cleanup_crit_edge, %if.end269, %sw.bb73.cleanup_crit_edge, %if.end71, %sw.bb62.cleanup_crit_edge, %if.end59, %sw.bb55.cleanup_crit_edge, %if.end52, %sw.bb48.cleanup_crit_edge, %if.end46, %sw.bb42.cleanup_crit_edge, %if.end39, %sw.bb30.cleanup_crit_edge, %if.end27, %sw.bb23.cleanup_crit_edge, %if.end22, %sw.bb18.cleanup_crit_edge, %if.end17, %sw.bb13.cleanup_crit_edge, %sw.bb12, %if.else, %if.then10, %sw.bb4.cleanup_crit_edge, %max17042_get_status.exit, %max17042_get_status.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %entry.cleanup_crit_edge ], [ %call5, %sw.bb4.cleanup_crit_edge ], [ %call14, %sw.bb13.cleanup_crit_edge ], [ %call19, %sw.bb18.cleanup_crit_edge ], [ %call24, %sw.bb23.cleanup_crit_edge ], [ %call35, %sw.bb30.cleanup_crit_edge ], [ %call43, %sw.bb42.cleanup_crit_edge ], [ %call49, %sw.bb48.cleanup_crit_edge ], [ %call56, %sw.bb55.cleanup_crit_edge ], [ %call67, %sw.bb62.cleanup_crit_edge ], [ %call74, %sw.bb73.cleanup_crit_edge ], [ %call273, %sw.bb272.cleanup_crit_edge ], [ %call505, %sw.bb504.cleanup_crit_edge ], [ %call737, %sw.bb736.cleanup_crit_edge ], [ %call756, %sw.bb755.cleanup_crit_edge ], [ %call765, %sw.bb764.cleanup_crit_edge ], [ %retval.0.i1245, %max17042_get_battery_health.exit ], [ %call789, %if.then788.cleanup_crit_edge ], [ -22, %sw.bb784.cleanup_crit_edge ], [ %call808, %if.then807.cleanup_crit_edge ], [ -22, %sw.bb803.cleanup_crit_edge ], [ %call823, %sw.bb822.cleanup_crit_edge ], [ %call835, %sw.bb834.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %max17042_get_status.exit.thread ], [ %call.i1229, %max17042_get_temperature.exit.thread ], [ 0, %max17042_get_battery_health.exit.thread ], [ 0, %max17042_get_temperature.exit ], [ 0, %max17042_get_status.exit ], [ 0, %if.then10 ], [ 0, %if.else ], [ 0, %if.end839 ], [ 0, %if.end827 ], [ 0, %if.end812 ], [ 0, %if.end793 ], [ 0, %sw.bb783 ], [ 0, %sw.bb775 ], [ 0, %sw.bb773 ], [ 0, %if.end769 ], [ 0, %if.end760 ], [ 0, %if.end741 ], [ 0, %if.end733 ], [ 0, %if.end501 ], [ 0, %if.end269 ], [ 0, %if.end71 ], [ 0, %if.end59 ], [ 0, %if.end52 ], [ 0, %if.end46 ], [ 0, %if.end39 ], [ 0, %if.end27 ], [ 0, %if.end22 ], [ 0, %if.end17 ], [ 0, %sw.bb12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %regmap = getelementptr inbounds %struct.max17042_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4, !annotation !110
  %3 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 55, label %sw.bb
    i32 56, label %sw.bb15
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = call i32 @regmap_read(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %val, align 4
  %div = sdiv i32 %5, 10
  %sext57 = shl i32 %div, 24
  %conv2 = ashr exact i32 %sext57, 24
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data, align 4
  %8 = shl i32 %7, 16
  %conv4 = ashr i32 %8, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv4)
  %cmp5.not = icmp slt i32 %conv2, %conv4
  %sub = add nsw i32 %conv4, 255
  %spec.select = select i1 %cmp5.not, i32 %div, i32 %sub
  %and = and i32 %7, 65280
  %sext59 = shl i32 %spec.select, 24
  %conv13 = ashr exact i32 %sext59, 24
  %add = add nsw i32 %conv13, %and
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %entry
  %call16 = call i32 @regmap_read(ptr noundef %1, i32 noundef 2, ptr noundef nonnull %data) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.bb15.cleanup_crit_edge, label %if.end20

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %div21 = sdiv i32 %10, 10
  %sext = shl i32 %div21, 24
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data, align 4
  %sext55 = shl i32 %12, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sext, i32 %sext55)
  %cmp27.not = icmp sgt i32 %sext, %sext55
  %add33 = add i32 %12, 1
  %spec.select60 = select i1 %cmp27.not, i32 %div21, i32 %add33
  %and36 = and i32 %12, 255
  %sext56 = shl i32 %spec.select60, 24
  %shl = ashr exact i32 %sext56, 16
  %add38 = or i32 %shl, %and36
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end20, %if.end
  %storemerge = phi i32 [ %add38, %if.end20 ], [ %add, %if.end ]
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %data, align 4
  %call14 = call i32 @regmap_write(ptr noundef %1, i32 noundef 2, i32 noundef %storemerge) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %sw.bb.cleanup_crit_edge ], [ %call16, %sw.bb15.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call14, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max17042_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %psp.off = add i32 %psp, -55
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %psp.off)
  %switch = icmp ult i32 %psp.off, 2
  %. = zext i1 %switch to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max17042_external_power_changed(ptr noundef %psy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @power_supply_changed(ptr noundef %psy) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_am_i_supplied(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @disable_irq(i32 noundef %5) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq4 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq4, align 4
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %9, i32 noundef 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max17042_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %soc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %5, i32 noundef 0) #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %irq5 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %irq5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq5, align 4
  tail call void @enable_irq(i32 noundef %9) #8
  %regmap.i = getelementptr inbounds %struct.max17042_chip, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %soc.i) #8
  %12 = ptrtoint ptr %soc.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %soc.i, align 4, !annotation !110
  %call.i9 = call i32 @regmap_read(ptr noundef %11, i32 noundef 6, ptr noundef nonnull %soc.i) #8
  %13 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %soc.i, align 4
  %shr.i = lshr i32 %14, 8
  store i32 %shr.i, ptr %soc.i, align 4
  %15 = add i32 %14, 256
  %shl.i = and i32 %15, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %14)
  %cmp.i = icmp ugt i32 %14, 511
  %sub.i = add nsw i32 %shr.i, -1
  %or.i = select i1 %cmp.i, i32 %sub.i, i32 0
  %soc_tr.0.i = or i32 %or.i, %shl.i
  %call4.i = call i32 @regmap_write(ptr noundef %11, i32 noundef 3, i32 noundef %soc_tr.0.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %soc.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !99}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107, !108}
!llvm.ident = !{!109}

!0 = !{ptr @__initcall__kmod_max17042_battery__289_1232_max17042_i2c_driver_init6, !1, !"__initcall__kmod_max17042_battery__289_1232_max17042_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max17042_battery.c", i32 1232, i32 1}
!2 = !{ptr @__exitcall_max17042_i2c_driver_exit, !1, !"__exitcall_max17042_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max17042_battery.c", i32 1234, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max17042_battery.c", i32 1235, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max17042_battery.c", i32 1236, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max17042_battery.c", i32 1224, i32 11}
!12 = !{ptr @max17042_i2c_driver, !13, !"max17042_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max17042_battery.c", i32 1222, i32 26}
!14 = !{ptr @max17042_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max17042_battery.c", i32 1070, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/max17042_battery.c", i32 1072, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max17042_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max17042_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/max17042_battery.c", i32 1078, i32 3}
!27 = !{ptr @max17042_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max17042_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/max17042_battery.c", i32 1109, i32 3}
!31 = !{ptr @max17042_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @max17042_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max17042_battery.c", i32 1136, i32 5}
!35 = !{ptr @max17042_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @max17042_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @max17042_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/max17042_battery.c", i32 1145, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/max17042_battery.c", i32 1013, i32 11}
!42 = !{ptr @max17042_psy_desc, !43, !"max17042_psy_desc", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/max17042_battery.c", i32 1012, i32 39}
!44 = !{ptr @max17042_battery_props, !45, !"max17042_battery_props", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/max17042_battery.c", i32 63, i32 35}
!46 = !{ptr @max17042_regmap_config, !47, !"max17042_regmap_config", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/max17042_battery.c", i32 1006, i32 35}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/max17042_battery.c", i32 924, i32 31}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/max17042_battery.c", i32 929, i32 31}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/max17042_battery.c", i32 931, i32 31}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/max17042_battery.c", i32 933, i32 31}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/max17042_battery.c", i32 935, i32 31}
!58 = !{ptr @max17047_default_pdata_init_regs, !59, !"max17047_default_pdata_init_regs", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/max17042_battery.c", i32 942, i32 33}
!60 = !{ptr @max17042_no_current_sense_psy_desc, !61, !"max17042_no_current_sense_psy_desc", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/max17042_battery.c", i32 1023, i32 39}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/max17042_battery.c", i32 879, i32 3}
!64 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @max17042_thread_handler.__UNIQUE_ID_ddebug288, !63, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/max17042_battery.c", i32 819, i32 3}
!69 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @max17042_init_chip._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @max17042_init_chip._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/max17042_battery.c", i32 826, i32 3}
!74 = !{ptr @max17042_init_chip._entry.28, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @max17042_init_chip._entry_ptr.30, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/max17042_battery.c", i32 580, i32 3}
!78 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @max17042_model_data_compare._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @max17042_model_data_compare._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/max17042_battery.c", i32 582, i32 4}
!83 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @max17042_model_data_compare._entry.33, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @max17042_model_data_compare._entry_ptr.36, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/max17042_battery.c", i32 584, i32 3}
!88 = !{ptr @max17042_model_data_compare._entry.37, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @max17042_model_data_compare._entry_ptr.39, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/max17042_battery.c", i32 522, i32 3}
!92 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @max17042_write_verify_reg._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @max17042_write_verify_reg._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @max17042_dt_match, !96, !"max17042_dt_match", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/max17042_battery.c", i32 1201, i32 34}
!97 = !{ptr @max17042_pm_ops, !98, !"max17042_pm_ops", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/max17042_battery.c", i32 1189, i32 8}
!99 = !{ptr @max17042_id, !100, !"max17042_id", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/max17042_battery.c", i32 1212, i32 35}
!101 = !{i32 1, !"wchar_size", i32 2}
!102 = !{i32 1, !"min_enum_size", i32 4}
!103 = !{i32 8, !"branch-target-enforcement", i32 0}
!104 = !{i32 8, !"sign-return-address", i32 0}
!105 = !{i32 8, !"sign-return-address-all", i32 0}
!106 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!107 = !{i32 7, !"uwtable", i32 1}
!108 = !{i32 7, !"frame-pointer", i32 2}
!109 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!110 = !{!"auto-init"}
!111 = !{i8 0, i8 2}
!112 = !{i64 2148979308, i64 2148979313, i64 2148979326, i64 2148979370, i64 2148979404, i64 2148979425}
!113 = !{!"branch_weights", i32 2000, i32 1}
!114 = !{i64 2149004495, i64 2149004775, i64 2149005109, i64 2149005443}
