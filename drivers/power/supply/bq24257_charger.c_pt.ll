; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq24257_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq24257_charger.c"
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
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.bq24257_device = type { ptr, ptr, ptr, i32, ptr, [28 x ptr], ptr, %struct.delayed_work, %struct.bq24257_init_data, %struct.bq24257_state, %struct.mutex, i8 }
%struct.bq24257_init_data = type { i8, i8, i8, i8, i8, i8 }
%struct.bq24257_state = type { i8, i8, i8 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }

@__initcall__kmod_bq24257_charger__294_1176_bq24257_driver_init6 = internal global ptr @bq24257_driver_init, section ".initcall6.init", align 4
@bq24257_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq24257_probe, ptr @bq24257_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq24257_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq24257_pm, ptr null, ptr null }, ptr @bq24257_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq24257_driver_exit = internal global ptr @bq24257_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [67 x i8] c"bq24257_charger.author=Laurentiu Palcu <laurentiu.palcu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [51 x i8] c"bq24257_charger.description=bq24257 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [58 x i8] c"bq24257_charger.file=drivers/power/supply/bq24257_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"bq24257_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24257-charger\00", [16 x i8] zeroinitializer }, align 32
@bq24257_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24250\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24251\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq24257\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bq24257_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bq24257_suspend, ptr @bq24257_resume, ptr @bq24257_suspend, ptr @bq24257_resume, ptr @bq24257_suspend, ptr @bq24257_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bq24257_i2c_ids = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq24250\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq24251\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bq24257\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bq24257_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 961, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No support for SMBUS_BYTE_DATA\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq24257_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq24257_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr = internal global ptr @bq24257_probe._entry, section ".printk_index", align 4
@bq24257_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 976, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to match ACPI device\0A\00", [35 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.8 = internal global ptr @bq24257_probe._entry.6, section ".printk_index", align 4
@bq24257_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bq->lock\00", [22 x i8] zeroinitializer }, align 32
@bq24257_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bq24257_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq24257_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bq24257_charger:986:(&bq24257_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@bq24257_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.13 = internal global ptr @bq24257_probe._entry.11, section ".printk_index", align 4
@bq24257_reg_fields = internal constant { [28 x %struct.reg_field], [144 x i8] } { [28 x %struct.reg_field] [%struct.reg_field { i32 0, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 4, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 2, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 3, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 5, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 5, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 2, i32 2, i32 0, i32 0 }], [144 x i8] zeroinitializer }, align 32
@bq24257_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate regmap field\0A\00", [34 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.16 = internal global ptr @bq24257_probe._entry.14, section ".printk_index", align 4
@bq24257_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1008, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot read device properties.\0A\00", [32 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.19 = internal global ptr @bq24257_probe._entry.17, section ".printk_index", align 4
@bq24257_probe.__key.20 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"(work_completion)(&(&bq->iilimit_setup_work)->work)\00", [44 x i8] zeroinitializer }, align 32
@bq24257_probe.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"&(&bq->iilimit_setup_work)->timer\00", [62 x i8] zeroinitializer }, align 32
@bq24257_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1039, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"using SW-based power-good detection\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.27 = internal global ptr @bq24257_probe._entry.24, section ".printk_index", align 4
@bq24257_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 1057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot initialize the chip.\0A\00", [35 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.30 = internal global ptr @bq24257_probe._entry.28, section ".printk_index", align 4
@bq24257_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 1063, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.33 = internal global ptr @bq24257_probe._entry.31, section ".printk_index", align 4
@bq2425x_chip_name = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.76, ptr @.str.77, ptr @.str.78], [20 x i8] zeroinitializer }, align 32
@bq24257_probe._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.2, ptr @.str.3, i32 1073, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ #%d\0A\00", [37 x i8] zeroinitializer }, align 32
@bq24257_probe._entry_ptr.36 = internal global ptr @bq24257_probe._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,charge-current\00", [46 x i8] zeroinitializer }, align 32
@bq24257_ichg_map = internal constant { [31 x i32], [36 x i8] } { [31 x i32] [i32 500000, i32 550000, i32 600000, i32 650000, i32 700000, i32 750000, i32 800000, i32 850000, i32 900000, i32 950000, i32 1000000, i32 1050000, i32 1100000, i32 1150000, i32 1200000, i32 1250000, i32 1300000, i32 1350000, i32 1400000, i32 1450000, i32 1500000, i32 1550000, i32 1600000, i32 1650000, i32 1700000, i32 1750000, i32 1800000, i32 1850000, i32 1900000, i32 1950000, i32 2000000], [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,battery-regulation-voltage\00", [34 x i8] zeroinitializer }, align 32
@bq24257_vbat_map = internal constant { [48 x i32], [32 x i8] } { [48 x i32] [i32 3500000, i32 3520000, i32 3540000, i32 3560000, i32 3580000, i32 3600000, i32 3620000, i32 3640000, i32 3660000, i32 3680000, i32 3700000, i32 3720000, i32 3740000, i32 3760000, i32 3780000, i32 3800000, i32 3820000, i32 3840000, i32 3860000, i32 3880000, i32 3900000, i32 3920000, i32 3940000, i32 3960000, i32 3980000, i32 4000000, i32 4020000, i32 4040000, i32 4060000, i32 4080000, i32 4100000, i32 4120000, i32 4140000, i32 4160000, i32 4180000, i32 4200000, i32 4220000, i32 4240000, i32 4260000, i32 4280000, i32 4300000, i32 4320000, i32 4340000, i32 4360000, i32 4380000, i32 4400000, i32 4420000, i32 4440000], [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,termination-current\00", [41 x i8] zeroinitializer }, align 32
@bq24257_iterm_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 50000, i32 75000, i32 100000, i32 125000, i32 150000, i32 175000, i32 200000, i32 225000], [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,current-limit\00", [47 x i8] zeroinitializer }, align 32
@bq24257_iilimit_map = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 100000, i32 150000, i32 500000, i32 900000, i32 1500000, i32 2000000], [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,ovp-voltage\00", [17 x i8] zeroinitializer }, align 32
@bq24257_vovp_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 6000000, i32 6500000, i32 7000000, i32 8000000, i32 9000000, i32 9500000, i32 10000000, i32 10500000], [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,in-dpm-voltage\00", [46 x i8] zeroinitializer }, align 32
@bq24257_vindpm_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4200000, i32 4280000, i32 4360000, i32 4440000, i32 4520000, i32 4600000, i32 4680000, i32 4760000], [32 x i8] zeroinitializer }, align 32
@__const.bq24257_iilimit_autoset.new_iilimit = private unnamed_addr constant [4 x i8] c"\05\05\02\02", align 1
@bq24257_iilimit_autoset.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24257_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bq24257_iilimit_autoset\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"port/loop = %d/%d -> iilimit = %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bq24257_iilimit_autoset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.3, i32 587, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: Error communicating with the chip.\0A\00", [56 x i8] zeroinitializer }, align 32
@bq24257_iilimit_autoset._entry_ptr = internal global ptr @bq24257_iilimit_autoset._entry, section ".printk_index", align 4
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pg\00", [29 x i8] zeroinitializer }, align 32
@bq24257_pg_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 869, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"probe retry requested for PG pin\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bq24257_pg_gpio_probe\00", [42 x i8] zeroinitializer }, align 32
@bq24257_pg_gpio_probe._entry_ptr = internal global ptr @bq24257_pg_gpio_probe._entry, section ".printk_index", align 4
@bq24257_pg_gpio_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.3, i32 872, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error probing PG pin\0A\00", [42 x i8] zeroinitializer }, align 32
@bq24257_pg_gpio_probe._entry_ptr.52 = internal global ptr @bq24257_pg_gpio_probe._entry.50, section ".printk_index", align 4
@bq24257_pg_gpio_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.49, ptr @.str.3, ptr @.str.53, i8 0, i8 -37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"probed PG pin = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bq24257_hw_init.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.54, ptr @.str.3, ptr @.str.55, i8 0, i8 -77, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24257_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"manually setting iilimit = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@bq24257_charger_sysfs_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @bq24257_charger_sysfs_group, ptr null], [24 x i8] zeroinitializer }, align 32
@bq24257_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.62], [28 x i8] zeroinitializer }, align 32
@bq24257_power_supply_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @bq24257_power_supply_props, i32 11, ptr @bq24257_power_supply_get_property, ptr @bq24257_power_supply_set_property, ptr @bq24257_power_supply_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq24257_charger_sysfs_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @bq24257_charger_sysfs_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@bq24257_charger_sysfs_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_ovp_voltage, ptr @dev_attr_in_dpm_voltage, ptr @dev_attr_high_impedance_enable, ptr @dev_attr_sysoff_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_ovp_voltage = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24257_show_ovp_voltage, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_in_dpm_voltage = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24257_show_in_dpm_voltage, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_high_impedance_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24257_sysfs_show_enable, ptr @bq24257_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@dev_attr_sysoff_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @bq24257_sysfs_show_enable, ptr @bq24257_sysfs_set_enable }, [36 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ovp_voltage\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in_dpm_voltage\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"high_impedance_enable\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sysoff_enable\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@bq24257_power_supply_props = internal global { [11 x i32], [52 x i8] } { [11 x i32] [i32 74, i32 73, i32 0, i32 4, i32 2, i32 29, i32 30, i32 31, i32 32, i32 68, i32 38], [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@bq24257_irq_handler_thread.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.64, ptr @.str.3, ptr @.str.65, i8 0, i8 -91, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bq24257_irq_handler_thread\00", [37 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"irq(state changed): status/fault/pg = %d/%d/%d\0A\00", [48 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.66, ptr @.str.3, ptr @.str.67, i8 0, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bq24257_handle_state_change\00", [36 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Power removed\0A\00", [17 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.43, ptr @.str.66, ptr @.str.3, ptr @.str.68, i8 0, i8 -99, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Power inserted\0A\00", [16 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.3, i32 638, ptr @.str.70, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Battery removed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change._entry_ptr = internal global ptr @bq24257_handle_state_change._entry, section ".printk_index", align 4
@bq24257_handle_state_change._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.66, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Safety timer expired! Battery dead?\0A\00", [59 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change._entry_ptr.73 = internal global ptr @bq24257_handle_state_change._entry.71, section ".printk_index", align 4
@bq24257_handle_state_change._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.66, ptr @.str.3, i32 646, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@bq24257_handle_state_change._entry_ptr.75 = internal global ptr @bq24257_handle_state_change._entry.74, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24250\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24251\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bq24257\00", [24 x i8] zeroinitializer }, align 32
@bq24257_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 1104, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Cannot reset chip to standalone mode.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq24257_suspend\00", [16 x i8] zeroinitializer }, align 32
@bq24257_suspend._entry_ptr = internal global ptr @bq24257_suspend._entry, section ".printk_index", align 4
@bq24257_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 1124, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot init chip after resume.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bq24257_resume\00", [17 x i8] zeroinitializer }, align 32
@bq24257_resume._entry_ptr = internal global ptr @bq24257_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.85 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 2, i64 4, i64 29, i64 30, i64 31, i64 32, i64 38, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 8, i64 7, i64 8]
@___asan_gen_.89 = private unnamed_addr constant [15 x i8] c"bq24257_driver\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1165, i32 26 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1167, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"bq24257_of_match\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1147, i32 34 }
@___asan_gen_.98 = private unnamed_addr constant [11 x i8] c"bq24257_pm\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1135, i32 32 }
@___asan_gen_.101 = private unnamed_addr constant [16 x i8] c"bq24257_i2c_ids\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1139, i32 35 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 961, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 976, i32 4 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 984, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"bq24257_regmap_config\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 116, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 986, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 988, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"bq24257_reg_fields\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 126, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 998, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1008, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1024, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1039, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1057, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1063, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [18 x i8] c"bq2425x_chip_name\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 48, i32 26 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1073, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 887, i32 42 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"bq24257_ichg_map\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 175, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 894, i32 42 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"bq24257_vbat_map\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 164, i32 18 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 902, i32 42 }
@___asan_gen_.221 = private unnamed_addr constant [18 x i8] c"bq24257_iterm_map\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 184, i32 18 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 911, i32 42 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"bq24257_iilimit_map\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 190, i32 18 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 928, i32 42 }
@___asan_gen_.233 = private unnamed_addr constant [17 x i8] c"bq24257_vovp_map\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 196, i32 18 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 937, i32 42 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"bq24257_vindpm_map\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 203, i32 18 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 581, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 587, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 866, i32 44 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 869, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 872, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 878, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 718, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant [29 x i8] c"bq24257_charger_sysfs_groups\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [28 x i8] c"bq24257_charger_supplied_to\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 749, i32 14 }
@___asan_gen_.290 = private unnamed_addr constant [26 x i8] c"bq24257_power_supply_desc\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 753, i32 39 }
@___asan_gen_.293 = private unnamed_addr constant [28 x i8] c"bq24257_charger_sysfs_group\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 847, i32 1 }
@___asan_gen_.296 = private unnamed_addr constant [28 x i8] c"bq24257_charger_sysfs_attrs\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 839, i32 26 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"dev_attr_ovp_voltage\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [24 x i8] c"dev_attr_in_dpm_voltage\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [31 x i8] c"dev_attr_high_impedance_enable\00", align 1
@___asan_gen_.308 = private unnamed_addr constant [23 x i8] c"dev_attr_sysoff_enable\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 836, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 832, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 770, i32 35 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 833, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 834, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 795, i32 35 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 803, i32 35 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 750, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [27 x i8] c"bq24257_power_supply_props\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 735, i32 35 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 328, i32 17 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 662, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 614, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 631, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 638, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 640, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 646, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 49, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 50, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 51, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1104, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.395 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.396 = private constant [42 x i8] c"../drivers/power/supply/bq24257_charger.c\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.396, i32 1124, i32 3 }
@llvm.compiler.used = appending global [127 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_bq24257_driver_exit, ptr @__initcall__kmod_bq24257_charger__294_1176_bq24257_driver_init6, ptr @bq24257_driver_exit, ptr @bq24257_handle_state_change._entry, ptr @bq24257_handle_state_change._entry.71, ptr @bq24257_handle_state_change._entry.74, ptr @bq24257_handle_state_change._entry_ptr, ptr @bq24257_handle_state_change._entry_ptr.73, ptr @bq24257_handle_state_change._entry_ptr.75, ptr @bq24257_iilimit_autoset._entry, ptr @bq24257_iilimit_autoset._entry_ptr, ptr @bq24257_pg_gpio_probe._entry, ptr @bq24257_pg_gpio_probe._entry.50, ptr @bq24257_pg_gpio_probe._entry_ptr, ptr @bq24257_pg_gpio_probe._entry_ptr.52, ptr @bq24257_probe._entry, ptr @bq24257_probe._entry.11, ptr @bq24257_probe._entry.14, ptr @bq24257_probe._entry.17, ptr @bq24257_probe._entry.24, ptr @bq24257_probe._entry.28, ptr @bq24257_probe._entry.31, ptr @bq24257_probe._entry.34, ptr @bq24257_probe._entry.6, ptr @bq24257_probe._entry_ptr, ptr @bq24257_probe._entry_ptr.13, ptr @bq24257_probe._entry_ptr.16, ptr @bq24257_probe._entry_ptr.19, ptr @bq24257_probe._entry_ptr.27, ptr @bq24257_probe._entry_ptr.30, ptr @bq24257_probe._entry_ptr.33, ptr @bq24257_probe._entry_ptr.36, ptr @bq24257_probe._entry_ptr.8, ptr @bq24257_resume._entry, ptr @bq24257_resume._entry_ptr, ptr @bq24257_suspend._entry, ptr @bq24257_suspend._entry_ptr, ptr @bq24257_driver, ptr @.str, ptr @bq24257_of_match, ptr @bq24257_pm, ptr @bq24257_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @bq24257_probe.__key, ptr @.str.9, ptr @bq24257_probe._key, ptr @bq24257_regmap_config, ptr @.str.10, ptr @.str.12, ptr @bq24257_reg_fields, ptr @.str.15, ptr @.str.18, ptr @bq24257_probe.__key.20, ptr @.str.21, ptr @bq24257_probe.__key.22, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @bq2425x_chip_name, ptr @.str.35, ptr @.str.37, ptr @bq24257_ichg_map, ptr @.str.38, ptr @bq24257_vbat_map, ptr @.str.39, ptr @bq24257_iterm_map, ptr @.str.40, ptr @bq24257_iilimit_map, ptr @.str.41, ptr @bq24257_vovp_map, ptr @.str.42, ptr @bq24257_vindpm_map, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @bq24257_charger_sysfs_groups, ptr @bq24257_charger_supplied_to, ptr @bq24257_power_supply_desc, ptr @bq24257_charger_sysfs_group, ptr @bq24257_charger_sysfs_attrs, ptr @dev_attr_ovp_voltage, ptr @dev_attr_in_dpm_voltage, ptr @dev_attr_high_impedance_enable, ptr @dev_attr_sysoff_enable, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @bq24257_power_supply_props, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82], section "llvm.metadata"
@0 = internal global [103 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_i2c_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_reg_fields to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe.__key.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq2425x_chip_name to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_probe._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_ichg_map to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_vbat_map to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_iterm_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_iilimit_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_vovp_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_vindpm_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_iilimit_autoset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_pg_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_pg_gpio_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_charger_sysfs_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_power_supply_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_charger_sysfs_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_charger_sysfs_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_ovp_voltage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_in_dpm_voltage to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_high_impedance_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sysoff_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_power_supply_props to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_handle_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_handle_state_change._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_handle_state_change._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq24257_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq24257_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq24257_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bq24257_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %property.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #10
  br label %cleanup137

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 344, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup137_crit_edge, label %if.end6

if.end.cleanup137_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %dev8 = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev2, ptr %dev8, align 4
  %driver_data18 = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data18, align 4
  %chip19 = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %chip19 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %chip19, align 4
  %lock = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @bq24257_probe.__key) #7
  %call24 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @bq24257_regmap_config, ptr noundef nonnull @bq24257_probe._key, ptr noundef nonnull @.str.10) #7
  %rmap = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 4
  %11 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call24, ptr %rmap, align 4
  %cmp.i218 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i218, label %do.end30, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

do.end30:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.12) #10
  %12 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmap, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup137

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0231, 1
  %exitcond.not = icmp eq i32 %inc, 28
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end6.for.body_crit_edge
  %i.0231 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %15 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rmap, align 4
  %arrayidx = getelementptr %struct.reg_field, ptr @bq24257_reg_fields, i32 %i.0231
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %.unpack = load i32, ptr %arrayidx, align 4
  %18 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt210 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %.elt210 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.unpack211 = load i32, ptr %.elt210, align 4
  %20 = insertvalue [5 x i32] %18, i32 %.unpack211, 1
  %.elt212 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %21 = ptrtoint ptr %.elt212 to i32
  call void @__asan_load4_noabort(i32 %21)
  %.unpack213 = load i32, ptr %.elt212, align 4
  %22 = insertvalue [5 x i32] %20, i32 %.unpack213, 2
  %.elt214 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %23 = ptrtoint ptr %.elt214 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.unpack215 = load i32, ptr %.elt214, align 4
  %24 = insertvalue [5 x i32] %22, i32 %.unpack215, 3
  %.elt216 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %25 = ptrtoint ptr %.elt216 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.unpack217 = load i32, ptr %.elt216, align 4
  %26 = insertvalue [5 x i32] %24, i32 %.unpack217, 4
  %call35 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev2, ptr noundef %16, [5 x i32] %26) #7
  %arrayidx36 = getelementptr %struct.bq24257_device, ptr %call.i, i32 0, i32 5, i32 %i.0231
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call35, ptr %arrayidx36, align 4
  %cmp.i219 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.15) #10
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx36, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup137

for.end:                                          ; preds = %for.cond
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %32 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platform_data, align 8
  %tobool48.not = icmp eq ptr %33, null
  br i1 %tobool48.not, label %if.then49, label %for.end.cleanup137_crit_edge

for.end.cleanup137_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.then49:                                        ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i) #7
  %34 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -1, ptr %property.i, align 4, !annotation !209
  %35 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev8, align 4
  %call.i.i220 = call i32 @device_property_read_u32_array(ptr noundef %36, ptr noundef nonnull @.str.37, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i220)
  %cmp.i221 = icmp slt i32 %call.i.i220, 0
  br i1 %cmp.i221, label %if.then49.do.end55_crit_edge, label %if.end.i

if.then49.do.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end.i:                                         ; preds = %if.then49
  %37 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %property.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i
  %indvars.iv.i.i = phi i32 [ 1, %if.end.i ], [ %indvars.iv.next.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr @bq24257_ichg_map, i32 %indvars.iv.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %38)
  %cmp3.i.i = icmp ugt i32 %40, %38
  br i1 %cmp3.i.i, label %for.end.loopexit.split.loop.exit.i.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 31
  br i1 %exitcond.not.i.i, label %for.inc.i.i.bq24257_find_idx.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i.bq24257_find_idx.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_find_idx.exit.i

for.end.loopexit.split.loop.exit.i.i:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = trunc i32 %indvars.iv.i.i to i8
  br label %bq24257_find_idx.exit.i

bq24257_find_idx.exit.i:                          ; preds = %for.end.loopexit.split.loop.exit.i.i, %for.inc.i.i.bq24257_find_idx.exit.i_crit_edge
  %idx.0.lcssa.i.i = phi i8 [ %41, %for.end.loopexit.split.loop.exit.i.i ], [ 31, %for.inc.i.i.bq24257_find_idx.exit.i_crit_edge ]
  %sub.i.i = add i8 %idx.0.lcssa.i.i, -1
  %init_data.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8
  %42 = ptrtoint ptr %init_data.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %sub.i.i, ptr %init_data.i, align 4
  %43 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev8, align 4
  %call.i69.i = call i32 @device_property_read_u32_array(ptr noundef %44, ptr noundef nonnull @.str.38, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69.i)
  %cmp4.i = icmp slt i32 %call.i69.i, 0
  br i1 %cmp4.i, label %bq24257_find_idx.exit.i.do.end55_crit_edge, label %if.end6.i

bq24257_find_idx.exit.i.do.end55_crit_edge:       ; preds = %bq24257_find_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end6.i:                                        ; preds = %bq24257_find_idx.exit.i
  %45 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %property.i, align 4
  br label %for.body.i73.i

for.body.i73.i:                                   ; preds = %for.inc.i76.i.for.body.i73.i_crit_edge, %if.end6.i
  %indvars.iv.i70.i = phi i32 [ 1, %if.end6.i ], [ %indvars.iv.next.i74.i, %for.inc.i76.i.for.body.i73.i_crit_edge ]
  %arrayidx.i71.i = getelementptr i32, ptr @bq24257_vbat_map, i32 %indvars.iv.i70.i
  %47 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i71.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %46)
  %cmp3.i72.i = icmp ugt i32 %48, %46
  br i1 %cmp3.i72.i, label %for.end.loopexit.split.loop.exit.i77.i, label %for.inc.i76.i

for.inc.i76.i:                                    ; preds = %for.body.i73.i
  %indvars.iv.next.i74.i = add nuw nsw i32 %indvars.iv.i70.i, 1
  %exitcond.not.i75.i = icmp eq i32 %indvars.iv.next.i74.i, 48
  br i1 %exitcond.not.i75.i, label %for.inc.i76.i.bq24257_find_idx.exit80.i_crit_edge, label %for.inc.i76.i.for.body.i73.i_crit_edge

for.inc.i76.i.for.body.i73.i_crit_edge:           ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i73.i

for.inc.i76.i.bq24257_find_idx.exit80.i_crit_edge: ; preds = %for.inc.i76.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_find_idx.exit80.i

for.end.loopexit.split.loop.exit.i77.i:           ; preds = %for.body.i73.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = trunc i32 %indvars.iv.i70.i to i8
  %phi.bo.i = add i8 %49, -1
  br label %bq24257_find_idx.exit80.i

bq24257_find_idx.exit80.i:                        ; preds = %for.end.loopexit.split.loop.exit.i77.i, %for.inc.i76.i.bq24257_find_idx.exit80.i_crit_edge
  %idx.0.lcssa.i78.i = phi i8 [ %phi.bo.i, %for.end.loopexit.split.loop.exit.i77.i ], [ 47, %for.inc.i76.i.bq24257_find_idx.exit80.i_crit_edge ]
  %vbat.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %vbat.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %idx.0.lcssa.i78.i, ptr %vbat.i, align 1
  %51 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev8, align 4
  %call.i81.i = call i32 @device_property_read_u32_array(ptr noundef %52, ptr noundef nonnull @.str.39, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp11.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp11.i, label %bq24257_find_idx.exit80.i.do.end55_crit_edge, label %if.end13.i

bq24257_find_idx.exit80.i.do.end55_crit_edge:     ; preds = %bq24257_find_idx.exit80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

if.end13.i:                                       ; preds = %bq24257_find_idx.exit80.i
  %53 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %property.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 75000, i32 %54)
  %cmp3.i84.i = icmp ult i32 %54, 75000
  br i1 %cmp3.i84.i, label %if.end13.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.i

if.end13.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.i:                                    ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %54)
  %cmp3.i84.1.i = icmp ult i32 %54, 100000
  br i1 %cmp3.i84.1.i, label %for.inc.i88.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.1.i

for.inc.i88.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.1.i:                                  ; preds = %for.inc.i88.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000, i32 %54)
  %cmp3.i84.2.i = icmp ult i32 %54, 125000
  br i1 %cmp3.i84.2.i, label %for.inc.i88.1.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.2.i

for.inc.i88.1.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.2.i:                                  ; preds = %for.inc.i88.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %54)
  %cmp3.i84.3.i = icmp ult i32 %54, 150000
  br i1 %cmp3.i84.3.i, label %for.inc.i88.2.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.3.i

for.inc.i88.2.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.3.i:                                  ; preds = %for.inc.i88.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 175000, i32 %54)
  %cmp3.i84.4.i = icmp ult i32 %54, 175000
  br i1 %cmp3.i84.4.i, label %for.inc.i88.3.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.4.i

for.inc.i88.3.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.4.i:                                  ; preds = %for.inc.i88.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %54)
  %cmp3.i84.5.i = icmp ult i32 %54, 200000
  br i1 %cmp3.i84.5.i, label %for.inc.i88.4.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.5.i

for.inc.i88.4.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.inc.i88.5.i:                                  ; preds = %for.inc.i88.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 225000, i32 %54)
  %cmp3.i84.6.i = icmp ult i32 %54, 225000
  br i1 %cmp3.i84.6.i, label %for.inc.i88.5.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, label %for.inc.i88.5.i.bq24257_find_idx.exit92.i_crit_edge

for.inc.i88.5.i.bq24257_find_idx.exit92.i_crit_edge: ; preds = %for.inc.i88.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_find_idx.exit92.i

for.inc.i88.5.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge: ; preds = %for.inc.i88.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i89.i

for.end.loopexit.split.loop.exit.i89.i:           ; preds = %for.inc.i88.5.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %for.inc.i88.4.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %for.inc.i88.3.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %for.inc.i88.2.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %for.inc.i88.1.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %for.inc.i88.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge, %if.end13.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge
  %indvars.iv.i82.lcssa.i = phi i8 [ 0, %if.end13.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 1, %for.inc.i88.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 2, %for.inc.i88.1.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 3, %for.inc.i88.2.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 4, %for.inc.i88.3.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 5, %for.inc.i88.4.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ], [ 6, %for.inc.i88.5.i.for.end.loopexit.split.loop.exit.i89.i_crit_edge ]
  br label %bq24257_find_idx.exit92.i

bq24257_find_idx.exit92.i:                        ; preds = %for.end.loopexit.split.loop.exit.i89.i, %for.inc.i88.5.i.bq24257_find_idx.exit92.i_crit_edge
  %idx.0.lcssa.i90.i = phi i8 [ %indvars.iv.i82.lcssa.i, %for.end.loopexit.split.loop.exit.i89.i ], [ 7, %for.inc.i88.5.i.bq24257_find_idx.exit92.i_crit_edge ]
  %iterm.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8, i32 2
  %55 = ptrtoint ptr %iterm.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %idx.0.lcssa.i90.i, ptr %iterm.i, align 2
  %56 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev8, align 4
  %call.i93.i = call i32 @device_property_read_u32_array(ptr noundef %57, ptr noundef nonnull @.str.40, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93.i)
  %cmp18.i = icmp slt i32 %call.i93.i, 0
  br i1 %cmp18.i, label %if.then19.i, label %if.else.i

if.then19.i:                                      ; preds = %bq24257_find_idx.exit92.i
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_autoset_enable.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 11
  %58 = ptrtoint ptr %iilimit_autoset_enable.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %iilimit_autoset_enable.i, align 4
  br label %if.end24.i

if.else.i:                                        ; preds = %bq24257_find_idx.exit92.i
  %59 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %property.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %60)
  %cmp3.i96.i = icmp ult i32 %60, 150000
  br i1 %cmp3.i96.i, label %if.else.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, label %for.inc.i100.i

if.else.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i101.i

for.inc.i100.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %60)
  %cmp3.i96.1.i = icmp ult i32 %60, 500000
  br i1 %cmp3.i96.1.i, label %for.inc.i100.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, label %for.inc.i100.1.i

for.inc.i100.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge: ; preds = %for.inc.i100.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i101.i

for.inc.i100.1.i:                                 ; preds = %for.inc.i100.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %60)
  %cmp3.i96.2.i = icmp ult i32 %60, 900000
  br i1 %cmp3.i96.2.i, label %for.inc.i100.1.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, label %for.inc.i100.2.i

for.inc.i100.1.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge: ; preds = %for.inc.i100.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i101.i

for.inc.i100.2.i:                                 ; preds = %for.inc.i100.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %60)
  %cmp3.i96.3.i = icmp ult i32 %60, 1500000
  br i1 %cmp3.i96.3.i, label %for.inc.i100.2.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, label %for.inc.i100.3.i

for.inc.i100.2.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge: ; preds = %for.inc.i100.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i101.i

for.inc.i100.3.i:                                 ; preds = %for.inc.i100.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %60)
  %cmp3.i96.4.i = icmp ult i32 %60, 2000000
  br i1 %cmp3.i96.4.i, label %for.inc.i100.3.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, label %for.inc.i100.3.i.if.end24.i_crit_edge

for.inc.i100.3.i.if.end24.i_crit_edge:            ; preds = %for.inc.i100.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

for.inc.i100.3.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge: ; preds = %for.inc.i100.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i101.i

for.end.loopexit.split.loop.exit.i101.i:          ; preds = %for.inc.i100.3.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, %for.inc.i100.2.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, %for.inc.i100.1.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, %for.inc.i100.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge, %if.else.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge
  %indvars.iv.i94.lcssa.i = phi i8 [ 0, %if.else.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge ], [ 1, %for.inc.i100.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge ], [ 2, %for.inc.i100.1.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge ], [ 3, %for.inc.i100.2.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge ], [ 4, %for.inc.i100.3.i.for.end.loopexit.split.loop.exit.i101.i_crit_edge ]
  br label %if.end24.i

if.end24.i:                                       ; preds = %for.end.loopexit.split.loop.exit.i101.i, %for.inc.i100.3.i.if.end24.i_crit_edge, %if.then19.i
  %idx.0.lcssa.i102.sink.i = phi i8 [ 2, %if.then19.i ], [ %indvars.iv.i94.lcssa.i, %for.end.loopexit.split.loop.exit.i101.i ], [ 5, %for.inc.i100.3.i.if.end24.i_crit_edge ]
  %iilimit23.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8, i32 3
  %61 = ptrtoint ptr %iilimit23.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %idx.0.lcssa.i102.sink.i, ptr %iilimit23.i, align 1
  %62 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev8, align 4
  %call.i105.i = call i32 @device_property_read_u32_array(ptr noundef %63, ptr noundef nonnull @.str.41, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105.i)
  %cmp27.i = icmp slt i32 %call.i105.i, 0
  br i1 %cmp27.i, label %if.end24.i.if.end34.i_crit_edge, label %if.else30.i

if.end24.i.if.end34.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

if.else30.i:                                      ; preds = %if.end24.i
  %64 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %property.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6500000, i32 %65)
  %cmp3.i108.i = icmp ult i32 %65, 6500000
  br i1 %cmp3.i108.i, label %if.else30.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.i

if.else30.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.i:                                   ; preds = %if.else30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000000, i32 %65)
  %cmp3.i108.1.i = icmp ult i32 %65, 7000000
  br i1 %cmp3.i108.1.i, label %for.inc.i112.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.1.i

for.inc.i112.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.1.i:                                 ; preds = %for.inc.i112.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %65)
  %cmp3.i108.2.i = icmp ult i32 %65, 8000000
  br i1 %cmp3.i108.2.i, label %for.inc.i112.1.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.2.i

for.inc.i112.1.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.2.i:                                 ; preds = %for.inc.i112.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9000000, i32 %65)
  %cmp3.i108.3.i = icmp ult i32 %65, 9000000
  br i1 %cmp3.i108.3.i, label %for.inc.i112.2.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.3.i

for.inc.i112.2.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.3.i:                                 ; preds = %for.inc.i112.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9500000, i32 %65)
  %cmp3.i108.4.i = icmp ult i32 %65, 9500000
  br i1 %cmp3.i108.4.i, label %for.inc.i112.3.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.4.i

for.inc.i112.3.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.4.i:                                 ; preds = %for.inc.i112.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %65)
  %cmp3.i108.5.i = icmp ult i32 %65, 10000000
  br i1 %cmp3.i108.5.i, label %for.inc.i112.4.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.5.i

for.inc.i112.4.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.inc.i112.5.i:                                 ; preds = %for.inc.i112.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10500000, i32 %65)
  %cmp3.i108.6.i = icmp ult i32 %65, 10500000
  br i1 %cmp3.i108.6.i, label %for.inc.i112.5.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, label %for.inc.i112.5.i.if.end34.i_crit_edge

for.inc.i112.5.i.if.end34.i_crit_edge:            ; preds = %for.inc.i112.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

for.inc.i112.5.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge: ; preds = %for.inc.i112.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i113.i

for.end.loopexit.split.loop.exit.i113.i:          ; preds = %for.inc.i112.5.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %for.inc.i112.4.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %for.inc.i112.3.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %for.inc.i112.2.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %for.inc.i112.1.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %for.inc.i112.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge, %if.else30.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge
  %indvars.iv.i106.lcssa.i = phi i8 [ 0, %if.else30.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 1, %for.inc.i112.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 2, %for.inc.i112.1.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 3, %for.inc.i112.2.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 4, %for.inc.i112.3.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 5, %for.inc.i112.4.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ], [ 6, %for.inc.i112.5.i.for.end.loopexit.split.loop.exit.i113.i_crit_edge ]
  br label %if.end34.i

if.end34.i:                                       ; preds = %for.end.loopexit.split.loop.exit.i113.i, %for.inc.i112.5.i.if.end34.i_crit_edge, %if.end24.i.if.end34.i_crit_edge
  %idx.0.lcssa.i114.sink.i = phi i8 [ 1, %if.end24.i.if.end34.i_crit_edge ], [ %indvars.iv.i106.lcssa.i, %for.end.loopexit.split.loop.exit.i113.i ], [ 7, %for.inc.i112.5.i.if.end34.i_crit_edge ]
  %vovp33.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8, i32 4
  %66 = ptrtoint ptr %vovp33.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %idx.0.lcssa.i114.sink.i, ptr %vovp33.i, align 4
  %67 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev8, align 4
  %call.i117.i = call i32 @device_property_read_u32_array(ptr noundef %68, ptr noundef nonnull @.str.42, ptr noundef nonnull %property.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117.i)
  %cmp37.i = icmp slt i32 %call.i117.i, 0
  br i1 %cmp37.i, label %if.end34.i.if.end58_crit_edge, label %if.else40.i

if.end34.i.if.end58_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

if.else40.i:                                      ; preds = %if.end34.i
  %69 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %property.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4280000, i32 %70)
  %cmp3.i120.i = icmp ult i32 %70, 4280000
  br i1 %cmp3.i120.i, label %if.else40.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.i

if.else40.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.i:                                   ; preds = %if.else40.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4360000, i32 %70)
  %cmp3.i120.1.i = icmp ult i32 %70, 4360000
  br i1 %cmp3.i120.1.i, label %for.inc.i124.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.1.i

for.inc.i124.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.1.i:                                 ; preds = %for.inc.i124.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4440000, i32 %70)
  %cmp3.i120.2.i = icmp ult i32 %70, 4440000
  br i1 %cmp3.i120.2.i, label %for.inc.i124.1.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.2.i

for.inc.i124.1.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.2.i:                                 ; preds = %for.inc.i124.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4520000, i32 %70)
  %cmp3.i120.3.i = icmp ult i32 %70, 4520000
  br i1 %cmp3.i120.3.i, label %for.inc.i124.2.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.3.i

for.inc.i124.2.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.3.i:                                 ; preds = %for.inc.i124.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4600000, i32 %70)
  %cmp3.i120.4.i = icmp ult i32 %70, 4600000
  br i1 %cmp3.i120.4.i, label %for.inc.i124.3.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.4.i

for.inc.i124.3.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.4.i:                                 ; preds = %for.inc.i124.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4680000, i32 %70)
  %cmp3.i120.5.i = icmp ult i32 %70, 4680000
  br i1 %cmp3.i120.5.i, label %for.inc.i124.4.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.5.i

for.inc.i124.4.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.inc.i124.5.i:                                 ; preds = %for.inc.i124.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4760000, i32 %70)
  %cmp3.i120.6.i = icmp ult i32 %70, 4760000
  br i1 %cmp3.i120.6.i, label %for.inc.i124.5.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, label %for.inc.i124.5.i.if.end58_crit_edge

for.inc.i124.5.i.if.end58_crit_edge:              ; preds = %for.inc.i124.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

for.inc.i124.5.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge: ; preds = %for.inc.i124.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i125.i

for.end.loopexit.split.loop.exit.i125.i:          ; preds = %for.inc.i124.5.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %for.inc.i124.4.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %for.inc.i124.3.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %for.inc.i124.2.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %for.inc.i124.1.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %for.inc.i124.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge, %if.else40.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge
  %indvars.iv.i118.lcssa.i = phi i8 [ 0, %if.else40.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 1, %for.inc.i124.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 2, %for.inc.i124.1.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 3, %for.inc.i124.2.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 4, %for.inc.i124.3.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 5, %for.inc.i124.4.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ], [ 6, %for.inc.i124.5.i.for.end.loopexit.split.loop.exit.i125.i_crit_edge ]
  br label %if.end58

do.end55:                                         ; preds = %bq24257_find_idx.exit80.i.do.end55_crit_edge, %bq24257_find_idx.exit.i.do.end55_crit_edge, %if.then49.do.end55_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i81.i, %bq24257_find_idx.exit80.i.do.end55_crit_edge ], [ %call.i69.i, %bq24257_find_idx.exit.i.do.end55_crit_edge ], [ %call.i.i220, %if.then49.do.end55_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.18) #10
  br label %cleanup137

if.end58:                                         ; preds = %for.end.loopexit.split.loop.exit.i125.i, %for.inc.i124.5.i.if.end58_crit_edge, %if.end34.i.if.end58_crit_edge
  %.sink.i = phi i8 [ 2, %if.end34.i.if.end58_crit_edge ], [ %indvars.iv.i118.lcssa.i, %for.end.loopexit.split.loop.exit.i125.i ], [ 7, %for.inc.i124.5.i.if.end58_crit_edge ]
  %vindpm.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 8, i32 5
  %71 = ptrtoint ptr %vindpm.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %.sink.i, ptr %vindpm.i, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  %72 = ptrtoint ptr %chip19 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %chip19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp60 = icmp eq i32 %73, 0
  br i1 %cmp60, label %if.then61, label %if.end58.if.end62_crit_edge

if.end58.if.end62_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_autoset_enable = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 11
  %74 = ptrtoint ptr %iilimit_autoset_enable to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %iilimit_autoset_enable, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end58.if.end62_crit_edge
  %iilimit_autoset_enable63 = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 11
  %75 = ptrtoint ptr %iilimit_autoset_enable63 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %iilimit_autoset_enable63, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool64.not = icmp eq i8 %76, 0
  br i1 %tobool64.not, label %if.end62.if.end85_crit_edge, label %do.body67

if.end62.if.end85_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_setup_work = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7
  call void @__init_work(ptr noundef %iilimit_setup_work, i32 noundef 0) #7
  %77 = ptrtoint ptr %iilimit_setup_work to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 -64, ptr %iilimit_setup_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.21, ptr noundef nonnull @bq24257_probe.__key.20, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry74 = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7, i32 0, i32 1
  %78 = ptrtoint ptr %entry74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %entry74, ptr %entry74, align 4
  %prev.i = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7, i32 0, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %entry74, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7, i32 0, i32 2
  %80 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @bq24257_iilimit_setup_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 7, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.23, ptr noundef nonnull @bq24257_probe.__key.22) #7
  br label %if.end85

if.end85:                                         ; preds = %do.body67, %if.end62.if.end85_crit_edge
  %81 = ptrtoint ptr %chip19 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %chip19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp87.not = icmp eq i32 %82, 0
  br i1 %cmp87.not, label %if.end85.if.end89_crit_edge, label %if.then88

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @bq24257_pg_gpio_probe(ptr noundef nonnull %call.i)
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end85.if.end89_crit_edge
  %pg = getelementptr inbounds %struct.bq24257_device, ptr %call.i, i32 0, i32 6
  %83 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pg, align 4
  %magicptr = ptrtoint ptr %84 to i32
  %85 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values)
  switch i32 %magicptr, label %if.end89.if.end104_crit_edge [
    i32 -517, label %if.end89.cleanup137_crit_edge
    i32 0, label %do.end101
  ]

if.end89.cleanup137_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end89.if.end104_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end101:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  %86 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %87, ptr noundef nonnull @.str.25) #10
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end89.if.end104_crit_edge
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %call.i, i32 0, i32 5, i32 4
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i222 = call i32 @regmap_field_update_bits_base(ptr noundef %89, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i222)
  %cmp106 = icmp slt i32 %call.i.i222, 0
  br i1 %cmp106, label %if.end104.cleanup137_crit_edge, label %if.end108

if.end104.cleanup137_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end108:                                        ; preds = %if.end104
  %90 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i224 = call i32 @regmap_field_update_bits_base(ptr noundef %91, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i224)
  %cmp110 = icmp slt i32 %call.i.i224, 0
  br i1 %cmp110, label %if.end108.cleanup137_crit_edge, label %if.end112

if.end108.cleanup137_crit_edge:                   ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

if.end112:                                        ; preds = %if.end108
  %call113 = call fastcc i32 @bq24257_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end118, label %if.end119

do.end118:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.29) #10
  br label %cleanup137

if.end119:                                        ; preds = %if.end112
  %call120 = call fastcc i32 @bq24257_power_supply_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %cmp121 = icmp slt i32 %call120, 0
  br i1 %cmp121, label %do.end125, label %if.end126

do.end125:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.32) #10
  br label %cleanup137

if.end126:                                        ; preds = %if.end119
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  %94 = ptrtoint ptr %chip19 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %chip19, align 4
  %arrayidx128 = getelementptr [3 x ptr], ptr @bq2425x_chip_name, i32 0, i32 %95
  %96 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx128, align 4
  %call129 = call i32 @devm_request_threaded_irq(ptr noundef %dev2, i32 noundef %93, ptr noundef null, ptr noundef nonnull @bq24257_irq_handler_thread, i32 noundef 8195, ptr noundef %97, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end126.cleanup137_crit_edge, label %do.end134

if.end126.cleanup137_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup137

do.end134:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.35, i32 noundef %99) #10
  br label %cleanup137

cleanup137:                                       ; preds = %do.end134, %if.end126.cleanup137_crit_edge, %do.end125, %do.end118, %if.end108.cleanup137_crit_edge, %if.end104.cleanup137_crit_edge, %if.end89.cleanup137_crit_edge, %do.end55, %for.end.cleanup137_crit_edge, %cleanup.thread, %do.end30, %if.end.cleanup137_crit_edge, %do.end
  %retval.2 = phi i32 [ %14, %do.end30 ], [ %retval.0.i.ph, %do.end55 ], [ %call113, %do.end118 ], [ %call120, %do.end125 ], [ %call129, %do.end134 ], [ -19, %do.end ], [ -12, %if.end.cleanup137_crit_edge ], [ -19, %for.end.cleanup137_crit_edge ], [ %call.i.i222, %if.end104.cleanup137_crit_edge ], [ %call.i.i224, %if.end108.cleanup137_crit_edge ], [ 0, %if.end126.cleanup137_crit_edge ], [ %30, %cleanup.thread ], [ %magicptr, %if.end89.cleanup137_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iilimit_autoset_enable = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %iilimit_autoset_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iilimit_autoset_enable, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_setup_work = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %iilimit_setup_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq24257_iilimit_setup_work(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -136
  %call = tail call fastcc i32 @bq24257_iilimit_autoset(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq24257_pg_gpio_probe(ptr nocapture noundef %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_gpiod_get_optional(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef 1) #7
  %pg = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 6
  %2 = ptrtoint ptr %pg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %pg, align 4
  %cmp = icmp eq ptr %call, inttoptr (i32 -517 to ptr)
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.48) #10
  br label %if.end26

if.else:                                          ; preds = %entry
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.51) #10
  %7 = ptrtoint ptr %pg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pg, align 4
  br label %if.end26

if.end11:                                         ; preds = %if.else
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end11.if.end26_crit_edge, label %do.body14

if.end11.if.end26_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

do.body14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_pg_gpio_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_pg_gpio_probe, %if.end26)) #7
          to label %if.then20 [label %if.end26], !srcloc !211

if.then20:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %pg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pg, align 4
  %call23 = tail call i32 @desc_to_gpio(ptr noundef %11) #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_pg_gpio_probe.__UNIQUE_ID_ddebug293, ptr noundef %9, ptr noundef nonnull @.str.53, i32 noundef %call23) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %do.body14, %if.end11.if.end26_crit_edge, %do.end8, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24257_hw_init(ptr noundef %bq) unnamed_addr #2 align 64 {
entry:
  %val.i29.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_data1 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8
  %0 = ptrtoint ptr %init_data1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %init_data1, align 4
  %vbat = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %vbat to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vbat, align 1
  %conv5 = zext i8 %3 to i32
  %iterm = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %iterm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %iterm, align 2
  %conv10 = zext i8 %5 to i32
  %vovp = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 4
  %6 = ptrtoint ptr %vovp to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vovp, align 4
  %conv15 = zext i8 %7 to i32
  %vindpm = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 5
  %8 = ptrtoint ptr %vindpm to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vindpm, align 1
  %conv20 = zext i8 %9 to i32
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %11, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %conv = zext i8 %1 to i32
  %arrayidx.i100 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 12
  %12 = ptrtoint ptr %arrayidx.i100 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i100, align 4
  %call.i.i101 = tail call i32 @regmap_field_update_bits_base(ptr noundef %13, i32 noundef -1, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101)
  %cmp29 = icmp slt i32 %call.i.i101, 0
  br i1 %cmp29, label %for.body.preheader.cleanup_crit_edge, label %for.cond

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %arrayidx.i100.1 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 10
  %14 = ptrtoint ptr %arrayidx.i100.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i100.1, align 4
  %call.i.i101.1 = tail call i32 @regmap_field_update_bits_base(ptr noundef %15, i32 noundef -1, i32 noundef %conv5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.1)
  %cmp29.1 = icmp slt i32 %call.i.i101.1, 0
  br i1 %cmp29.1, label %for.cond.cleanup_crit_edge, label %for.cond.1

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.1:                                       ; preds = %for.cond
  %arrayidx.i100.2 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 13
  %16 = ptrtoint ptr %arrayidx.i100.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i100.2, align 4
  %call.i.i101.2 = tail call i32 @regmap_field_update_bits_base(ptr noundef %17, i32 noundef -1, i32 noundef %conv10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.2)
  %cmp29.2 = icmp slt i32 %call.i.i101.2, 0
  br i1 %cmp29.2, label %for.cond.1.cleanup_crit_edge, label %for.cond.2

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.2:                                       ; preds = %for.cond.1
  %arrayidx.i100.3 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 24
  %18 = ptrtoint ptr %arrayidx.i100.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i100.3, align 4
  %call.i.i101.3 = tail call i32 @regmap_field_update_bits_base(ptr noundef %19, i32 noundef -1, i32 noundef %conv15, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.3)
  %cmp29.3 = icmp slt i32 %call.i.i101.3, 0
  br i1 %cmp29.3, label %for.cond.2.cleanup_crit_edge, label %for.cond.3

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.3:                                       ; preds = %for.cond.2
  %arrayidx.i100.4 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 18
  %20 = ptrtoint ptr %arrayidx.i100.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i100.4, align 4
  %call.i.i101.4 = tail call i32 @regmap_field_update_bits_base(ptr noundef %21, i32 noundef -1, i32 noundef %conv20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i101.4)
  %cmp29.4 = icmp slt i32 %call.i.i101.4, 0
  br i1 %cmp29.4, label %for.cond.3.cleanup_crit_edge, label %for.cond.4

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.4:                                       ; preds = %for.cond.3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %val.i.i, align 4, !annotation !209
  %arrayidx.i.i = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 2
  %23 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i102 = call i32 @regmap_field_read(ptr noundef %24, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i102)
  %cmp.i.i = icmp slt i32 %call.i.i102, 0
  br i1 %cmp.i.i, label %bq24257_field_read.exit.thread.i, label %bq24257_field_read.exit.i

bq24257_field_read.exit.thread.i:                 ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %cleanup

bq24257_field_read.exit.i:                        ; preds = %for.cond.4
  %25 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i = icmp slt i32 %26, 0
  br i1 %cmp.i, label %bq24257_field_read.exit.i.cleanup_crit_edge, label %if.end.i

bq24257_field_read.exit.i.cleanup_crit_edge:      ; preds = %bq24257_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %bq24257_field_read.exit.i
  %conv.i103 = trunc i32 %26 to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i29.i) #7
  %27 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %val.i29.i, align 4, !annotation !209
  %arrayidx.i30.i = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 3
  %28 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i30.i, align 4
  %call.i31.i = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %val.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %bq24257_field_read.exit35.thread.i, label %bq24257_field_read.exit35.i

bq24257_field_read.exit35.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i29.i) #7
  br label %cleanup

bq24257_field_read.exit35.i:                      ; preds = %if.end.i
  %30 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val.i29.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp2.i = icmp slt i32 %31, 0
  br i1 %cmp2.i, label %bq24257_field_read.exit35.i.cleanup_crit_edge, label %if.end5.i

bq24257_field_read.exit35.i.cleanup_crit_edge:    ; preds = %bq24257_field_read.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %bq24257_field_read.exit35.i
  %conv6.i = trunc i32 %31 to i8
  %pg.i = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 6
  %32 = ptrtoint ptr %pg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pg.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %frombool.i = zext i1 %tobool10.not.i to i8
  br label %if.end37

if.else.i:                                        ; preds = %if.end5.i
  %34 = zext i8 %conv6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %conv6.i, label %sw.default.i [
    i8 1, label %if.else.i.if.end37_crit_edge
    i8 2, label %if.else.i.if.end37_crit_edge118
    i8 10, label %if.else.i.if.end37_crit_edge119
  ]

if.else.i.if.end37_crit_edge119:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else.i.if.end37_crit_edge118:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.else.i.if.end37_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.end37:                                         ; preds = %sw.default.i, %if.else.i.if.end37_crit_edge, %if.else.i.if.end37_crit_edge118, %if.else.i.if.end37_crit_edge119, %if.then7.i
  %state.sroa.8.0 = phi i8 [ 1, %sw.default.i ], [ %frombool.i, %if.then7.i ], [ 0, %if.else.i.if.end37_crit_edge ], [ 0, %if.else.i.if.end37_crit_edge118 ], [ 0, %if.else.i.if.end37_crit_edge119 ]
  %lock = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state38 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 9
  %35 = ptrtoint ptr %state38 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.i103, ptr %state38, align 2
  %state.sroa.5.0.state38.sroa_idx = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 9, i32 1
  %36 = ptrtoint ptr %state.sroa.5.0.state38.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv6.i, ptr %state.sroa.5.0.state38.sroa_idx, align 1
  %state.sroa.8.0.state38.sroa_idx = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 9, i32 2
  %37 = ptrtoint ptr %state.sroa.8.0.state38.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %state.sroa.8.0, ptr %state.sroa.8.0.state38.sroa_idx, align 2
  call void @mutex_unlock(ptr noundef %lock) #7
  %iilimit_autoset_enable = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 11
  %38 = ptrtoint ptr %iilimit_autoset_enable to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %iilimit_autoset_enable, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %if.end37
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_hw_init.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_hw_init, %do.end)) #7
          to label %if.then46 [label %do.end], !srcloc !211

if.then46:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %iilimit = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %iilimit to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %iilimit, align 1
  %conv48 = zext i8 %43 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_hw_init.__UNIQUE_ID_ddebug292, ptr noundef %41, ptr noundef nonnull @.str.55, i32 noundef %conv48) #7
  br label %do.end

do.end:                                           ; preds = %if.then46, %do.body
  %iilimit51 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 3
  %44 = ptrtoint ptr %iilimit51 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %iilimit51, align 1
  %arrayidx.i105 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 5
  %46 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i105, align 4
  %conv.i106 = zext i8 %45 to i32
  %call.i.i107 = call i32 @regmap_field_update_bits_base(ptr noundef %47, i32 noundef -1, i32 noundef %conv.i106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else:                                          ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.8.0)
  %tobool57.not = icmp eq i8 %state.sroa.8.0, 0
  br i1 %tobool57.not, label %if.then58, label %if.else60

if.then58:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i108 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 16
  %48 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i108, align 4
  %call.i.i109 = call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.else60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv6.i)
  %cmp62.not = icmp eq i8 %conv6.i, 8
  br i1 %cmp62.not, label %if.else60.cleanup_crit_edge, label %if.then64

if.else60.cleanup_crit_edge:                      ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then64:                                        ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call fastcc i32 @bq24257_iilimit_autoset(ptr noundef %bq)
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.else60.cleanup_crit_edge, %if.then58, %do.end, %bq24257_field_read.exit35.i.cleanup_crit_edge, %bq24257_field_read.exit35.thread.i, %bq24257_field_read.exit.i.cleanup_crit_edge, %bq24257_field_read.exit.thread.i, %for.cond.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %call65, %if.then64 ], [ 0, %if.else60.cleanup_crit_edge ], [ %call.i.i109, %if.then58 ], [ %call.i.i107, %do.end ], [ %call.i31.i, %bq24257_field_read.exit35.thread.i ], [ %call.i.i102, %bq24257_field_read.exit.thread.i ], [ %31, %bq24257_field_read.exit35.i.cleanup_crit_edge ], [ %26, %bq24257_field_read.exit.i.cleanup_crit_edge ], [ %call.i.i101, %for.body.preheader.cleanup_crit_edge ], [ %call.i.i101.1, %for.cond.cleanup_crit_edge ], [ %call.i.i101.2, %for.cond.1.cleanup_crit_edge ], [ %call.i.i101.3, %for.cond.2.cleanup_crit_edge ], [ %call.i.i101.4, %for.cond.3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24257_power_supply_init(ptr noundef %bq) unnamed_addr #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %1 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 3
  %2 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 4
  %3 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 5
  %4 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %psy_cfg, align 8
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %bq, ptr %0, align 8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @bq24257_charger_sysfs_groups, ptr %1, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bq24257_charger_supplied_to, ptr %2, align 8
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %3, align 4
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call = call ptr @devm_power_supply_register(ptr noundef %10, ptr noundef nonnull @bq24257_power_supply_desc, ptr noundef nonnull %psy_cfg) #7
  %charger = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 2
  %11 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call, ptr %charger, align 4
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %12, i32 0
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_irq_handler_thread(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %val.i29.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  %state = alloca %struct.bq24257_state, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %state) #7
  %0 = getelementptr inbounds %struct.bq24257_state, ptr %state, i32 0, i32 1
  %1 = getelementptr inbounds %struct.bq24257_state, ptr %state, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val.i.i, align 4, !annotation !209
  %arrayidx.i.i = getelementptr %struct.bq24257_device, ptr %private, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %4, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bq24257_field_read.exit.thread.i, label %bq24257_field_read.exit.i

bq24257_field_read.exit.thread.i:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %cleanup

bq24257_field_read.exit.i:                        ; preds = %entry
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp slt i32 %6, 0
  br i1 %cmp.i, label %bq24257_field_read.exit.i.cleanup_crit_edge, label %if.end.i

bq24257_field_read.exit.i.cleanup_crit_edge:      ; preds = %bq24257_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %bq24257_field_read.exit.i
  %conv.i = trunc i32 %6 to i8
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv.i, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i29.i) #7
  %8 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val.i29.i, align 4, !annotation !209
  %arrayidx.i30.i = getelementptr %struct.bq24257_device, ptr %private, i32 0, i32 5, i32 3
  %9 = ptrtoint ptr %arrayidx.i30.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i30.i, align 4
  %call.i31.i = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %val.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31.i)
  %cmp.i32.i = icmp slt i32 %call.i31.i, 0
  br i1 %cmp.i32.i, label %bq24257_field_read.exit35.thread.i, label %bq24257_field_read.exit35.i

bq24257_field_read.exit35.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i29.i) #7
  br label %cleanup

bq24257_field_read.exit35.i:                      ; preds = %if.end.i
  %11 = ptrtoint ptr %val.i29.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val.i29.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i29.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.i = icmp slt i32 %12, 0
  br i1 %cmp2.i, label %bq24257_field_read.exit35.i.cleanup_crit_edge, label %if.end5.i

bq24257_field_read.exit35.i.cleanup_crit_edge:    ; preds = %bq24257_field_read.exit35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5.i:                                        ; preds = %bq24257_field_read.exit35.i
  %conv6.i = trunc i32 %12 to i8
  %13 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv6.i, ptr %0, align 1
  %pg.i = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 6
  %14 = ptrtoint ptr %pg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pg.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = call i32 @gpiod_get_value_cansleep(ptr noundef nonnull %15) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  %frombool.i = zext i1 %tobool10.not.i to i8
  br label %if.end

if.else.i:                                        ; preds = %if.end5.i
  %16 = zext i8 %conv6.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.84)
  switch i8 %conv6.i, label %sw.default.i [
    i8 1, label %if.else.i.if.end_crit_edge
    i8 2, label %if.else.i.if.end_crit_edge30
    i8 10, label %if.else.i.if.end_crit_edge31
  ]

if.else.i.if.end_crit_edge31:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i.if.end_crit_edge30:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %sw.default.i, %if.else.i.if.end_crit_edge, %if.else.i.if.end_crit_edge30, %if.else.i.if.end_crit_edge31, %if.then7.i
  %.sink = phi i8 [ 1, %sw.default.i ], [ %frombool.i, %if.then7.i ], [ 0, %if.else.i.if.end_crit_edge ], [ 0, %if.else.i.if.end_crit_edge30 ], [ 0, %if.else.i.if.end_crit_edge31 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink, ptr %1, align 1
  %lock.i = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %state.i = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 9
  %18 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %state.i, align 2
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp.not.i = icmp eq i8 %19, %21
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.bq24257_state_changed.exit.thread_crit_edge

if.end.bq24257_state_changed.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_state_changed.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end
  %fault.i25 = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %fault.i25 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %fault.i25, align 1
  %24 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp8.not.i = icmp eq i8 %23, %25
  br i1 %cmp8.not.i, label %bq24257_state_changed.exit, label %lor.lhs.false.i.bq24257_state_changed.exit.thread_crit_edge

lor.lhs.false.i.bq24257_state_changed.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_state_changed.exit.thread

bq24257_state_changed.exit.thread:                ; preds = %lor.lhs.false.i.bq24257_state_changed.exit.thread_crit_edge, %if.end.bq24257_state_changed.exit.thread_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br label %do.body

bq24257_state_changed.exit:                       ; preds = %lor.lhs.false.i
  %power_good.i26 = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 9, i32 2
  %26 = ptrtoint ptr %power_good.i26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %power_good.i26, align 2, !range !210
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %1, align 1, !range !210
  call void @__sanitizer_cov_trace_cmp1(i8 %27, i8 %29)
  %cmp15.i.not = icmp eq i8 %27, %29
  call void @mutex_unlock(ptr noundef %lock.i) #7
  br i1 %cmp15.i.not, label %bq24257_state_changed.exit.cleanup_crit_edge, label %bq24257_state_changed.exit.do.body_crit_edge

bq24257_state_changed.exit.do.body_crit_edge:     ; preds = %bq24257_state_changed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

bq24257_state_changed.exit.cleanup_crit_edge:     ; preds = %bq24257_state_changed.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %bq24257_state_changed.exit.do.body_crit_edge, %bq24257_state_changed.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_irq_handler_thread.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_irq_handler_thread, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !211

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 1
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  %conv = zext i8 %21 to i32
  %32 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %0, align 1
  %conv9 = zext i8 %33 to i32
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %1, align 1, !range !210
  %36 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_irq_handler_thread.__UNIQUE_ID_ddebug291, ptr noundef %31, ptr noundef nonnull @.str.65, i32 noundef %conv, i32 noundef %conv9, i32 noundef %36) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  call fastcc void @bq24257_handle_state_change(ptr noundef %private, ptr noundef nonnull %state)
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #7
  %37 = call ptr @memcpy(ptr %state.i, ptr %state, i32 3)
  call void @mutex_unlock(ptr noundef %lock.i) #7
  %charger = getelementptr inbounds %struct.bq24257_device, ptr %private, i32 0, i32 2
  %38 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %bq24257_state_changed.exit.cleanup_crit_edge, %bq24257_field_read.exit35.i.cleanup_crit_edge, %bq24257_field_read.exit35.thread.i, %bq24257_field_read.exit.i.cleanup_crit_edge, %bq24257_field_read.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %state) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bq24257_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -1
  %switch.and = and i32 %0, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq24257_iilimit_autoset(ptr nocapture noundef readonly %bq) unnamed_addr #2 align 64 {
entry:
  %val.i67 = alloca i32, align 4
  %val.i60 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !209
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 14
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %bq24257_field_read.exit.thread, label %bq24257_field_read.exit

bq24257_field_read.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %do.end34

bq24257_field_read.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp slt i32 %4, 0
  br i1 %cmp, label %bq24257_field_read.exit.do.end34_crit_edge, label %if.end

bq24257_field_read.exit.do.end34_crit_edge:       ; preds = %bq24257_field_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end:                                           ; preds = %bq24257_field_read.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i60) #7
  %5 = ptrtoint ptr %val.i60 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %val.i60, align 4, !annotation !209
  %arrayidx.i61 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 5
  %6 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i61, align 4
  %call.i62 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %val.i60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i62)
  %cmp.i63 = icmp slt i32 %call.i62, 0
  br i1 %cmp.i63, label %bq24257_field_read.exit66.thread, label %bq24257_field_read.exit66

bq24257_field_read.exit66.thread:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i60) #7
  br label %do.end34

bq24257_field_read.exit66:                        ; preds = %if.end
  %8 = ptrtoint ptr %val.i60 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val.i60, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp2 = icmp slt i32 %9, 0
  br i1 %cmp2, label %bq24257_field_read.exit66.do.end34_crit_edge, label %if.end4

bq24257_field_read.exit66.do.end34_crit_edge:     ; preds = %bq24257_field_read.exit66
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end4:                                          ; preds = %bq24257_field_read.exit66
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp5 = icmp eq i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp6 = icmp eq i32 %9, 2
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i67) #7
  %10 = ptrtoint ptr %val.i67 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %val.i67, align 4, !annotation !209
  %arrayidx.i68 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 11
  %11 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i68, align 4
  %call.i69 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %val.i67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %bq24257_field_read.exit73.thread, label %bq24257_field_read.exit73

bq24257_field_read.exit73.thread:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i67) #7
  br label %do.end34

bq24257_field_read.exit73:                        ; preds = %if.end8
  %13 = ptrtoint ptr %val.i67 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val.i67, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp slt i32 %14, 0
  br i1 %cmp10, label %bq24257_field_read.exit73.do.end34_crit_edge, label %if.end12

bq24257_field_read.exit73.do.end34_crit_edge:     ; preds = %bq24257_field_read.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end12:                                         ; preds = %bq24257_field_read.exit73
  %arrayidx = getelementptr [4 x i8], ptr @__const.bq24257_iilimit_autoset.new_iilimit, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx, align 1
  %17 = ptrtoint ptr %arrayidx.i61 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i61, align 4
  %conv.i = zext i8 %16 to i32
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %18, i32 noundef -1, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp14 = icmp slt i32 %call.i.i, 0
  br i1 %cmp14, label %if.end12.do.end34_crit_edge, label %if.end16

if.end12.do.end34_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end16:                                         ; preds = %if.end12
  %arrayidx.i75 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 20
  %19 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i75, align 4
  %call.i.i76 = call i32 @regmap_field_update_bits_base(ptr noundef %20, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i76)
  %cmp18 = icmp slt i32 %call.i.i76, 0
  br i1 %cmp18, label %if.end16.do.end34_crit_edge, label %if.end20

if.end16.do.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

if.end20:                                         ; preds = %if.end16
  %arrayidx.i77 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 25
  %21 = ptrtoint ptr %arrayidx.i77 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i77, align 4
  %call.i.i78 = call i32 @regmap_field_update_bits_base(ptr noundef %22, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i78)
  %cmp22 = icmp slt i32 %call.i.i78, 0
  br i1 %cmp22, label %if.end20.do.end34_crit_edge, label %do.body

if.end20.do.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end34

do.body:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_iilimit_autoset.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_iilimit_autoset, %cleanup)) #7
          to label %if.then29 [label %cleanup], !srcloc !211

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_iilimit_autoset.__UNIQUE_ID_ddebug288, ptr noundef %24, ptr noundef nonnull @.str.45, i32 noundef %14, i32 noundef %4, i32 noundef %conv.i) #7
  br label %cleanup

do.end34:                                         ; preds = %if.end20.do.end34_crit_edge, %if.end16.do.end34_crit_edge, %if.end12.do.end34_crit_edge, %bq24257_field_read.exit73.do.end34_crit_edge, %bq24257_field_read.exit73.thread, %bq24257_field_read.exit66.do.end34_crit_edge, %bq24257_field_read.exit66.thread, %bq24257_field_read.exit.do.end34_crit_edge, %bq24257_field_read.exit.thread
  %ret.0 = phi i32 [ %4, %bq24257_field_read.exit.do.end34_crit_edge ], [ %9, %bq24257_field_read.exit66.do.end34_crit_edge ], [ %14, %bq24257_field_read.exit73.do.end34_crit_edge ], [ %call.i.i, %if.end12.do.end34_crit_edge ], [ %call.i.i76, %if.end16.do.end34_crit_edge ], [ %call.i.i78, %if.end20.do.end34_crit_edge ], [ %call.i, %bq24257_field_read.exit.thread ], [ %call.i62, %bq24257_field_read.exit66.thread ], [ %call.i69, %bq24257_field_read.exit73.thread ]
  %dev35 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %25 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev35, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.44) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then29, %do.body, %if.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %do.end34 ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then29 ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_show_ovp_voltage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #7
  %vovp = getelementptr inbounds %struct.bq24257_device, ptr %call1, i32 0, i32 8, i32 4
  %2 = ptrtoint ptr %vovp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vovp, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [8 x i32], ptr @bq24257_vovp_map, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.57, i32 noundef %5) #7
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_show_in_dpm_voltage(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #7
  %vindpm = getelementptr inbounds %struct.bq24257_device, ptr %call1, i32 0, i32 8, i32 5
  %2 = ptrtoint ptr %vindpm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vindpm, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [8 x i32], ptr @bq24257_vindpm_map, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.57, i32 noundef %5) #7
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_sysfs_show_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  %val.i23 = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #7
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call3 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(22) @.str.59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %4 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val.i, align 4, !annotation !209
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %call1, i32 0, i32 5, i32 9
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %6, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.bq24257_field_read.exit_crit_edge, label %if.end.i

if.then.bq24257_field_read.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_field_read.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val.i, align 4
  br label %bq24257_field_read.exit

bq24257_field_read.exit:                          ; preds = %if.end.i, %if.then.bq24257_field_read.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.end.i ], [ %call.i, %if.then.bq24257_field_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %if.end12

if.else:                                          ; preds = %entry
  %call7 = tail call i32 @strcmp(ptr noundef %3, ptr noundef nonnull dereferenceable(14) @.str.60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i23) #7
  %9 = ptrtoint ptr %val.i23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %val.i23, align 4, !annotation !209
  %arrayidx.i24 = getelementptr %struct.bq24257_device, ptr %call1, i32 0, i32 5, i32 21
  %10 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i24, align 4
  %call.i25 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %val.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %cmp.i26 = icmp slt i32 %call.i25, 0
  br i1 %cmp.i26, label %if.then9.bq24257_field_read.exit29_crit_edge, label %if.end.i27

if.then9.bq24257_field_read.exit29_crit_edge:     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_field_read.exit29

if.end.i27:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %val.i23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val.i23, align 4
  br label %bq24257_field_read.exit29

bq24257_field_read.exit29:                        ; preds = %if.end.i27, %if.then9.bq24257_field_read.exit29_crit_edge
  %retval.0.i28 = phi i32 [ %13, %if.end.i27 ], [ %call.i25, %if.then9.bq24257_field_read.exit29_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i23) #7
  br label %if.end12

if.end12:                                         ; preds = %bq24257_field_read.exit29, %bq24257_field_read.exit
  %ret.0 = phi i32 [ %retval.0.i, %bq24257_field_read.exit ], [ %retval.0.i28, %bq24257_field_read.exit29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp13 = icmp slt i32 %ret.0, 0
  br i1 %cmp13, label %if.end12.cleanup_crit_edge, label %if.end15

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.61, i32 noundef %ret.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end12.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end15 ], [ -22, %if.else.cleanup_crit_edge ], [ %ret.0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_sysfs_set_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call ptr @power_supply_get_drvdata(ptr noundef %1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !209
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %attr, align 4
  %call4 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(22) @.str.59) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %call1, i32 0, i32 5, i32 9
  br label %if.end19

if.else:                                          ; preds = %if.end
  %call10 = call i32 @strcmp(ptr noundef %4, ptr noundef nonnull dereferenceable(14) @.str.60) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then13, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i30 = getelementptr %struct.bq24257_device, ptr %call1, i32 0, i32 5, i32 21
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.then6
  %arrayidx.i30.sink = phi ptr [ %arrayidx.i30, %if.then13 ], [ %arrayidx.i, %if.then6 ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %tobool14.sink.in = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool14.sink.in)
  %tobool14.sink = icmp ne i32 %tobool14.sink.in, 0
  %6 = ptrtoint ptr %arrayidx.i30.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i30.sink, align 4
  %conv.i31 = zext i1 %tobool14.sink to i32
  %call.i.i32 = call i32 @regmap_field_update_bits_base(ptr noundef %7, i32 noundef -1, i32 noundef %conv.i31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %cmp20 = icmp slt i32 %call.i.i32, 0
  %ret.0.count = select i1 %cmp20, i32 %call.i.i32, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ %ret.0.count, %if.end19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_power_supply_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state1 = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %state.sroa.0.0.copyload = load i8, ptr %state1, align 2
  %state.sroa.7.0.state1.sroa_idx = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %state.sroa.7.0.state1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %state.sroa.7.0.copyload78 = load i8, ptr %state.sroa.7.0.state1.sroa_idx, align 1
  %state.sroa.9.0.state1.sroa_idx = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %state.sroa.9.0.state1.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %state.sroa.9.0.copyload = load i8, ptr %state.sroa.9.0.state1.sroa_idx, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %3 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 74, label %sw.bb21
    i32 73, label %sw.bb22
    i32 4, label %sw.bb23
    i32 2, label %sw.bb27
    i32 29, label %sw.bb33
    i32 30, label %sw.bb35
    i32 31, label %sw.bb36
    i32 32, label %sw.bb40
    i32 68, label %sw.bb41
    i32 38, label %sw.bb45
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = and i8 %state.sroa.9.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %6 = zext i8 %state.sroa.0.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %state.sroa.0.0.copyload, label %if.else17 [
    i8 0, label %if.then4
    i8 1, label %if.then10
    i8 2, label %if.then16
  ]

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else17:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.63, ptr %val, align 4
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %chip = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 3
  %12 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chip, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @bq2425x_chip_name, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %val, align 4
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %17 = and i8 %state.sroa.9.0.copyload, 1
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  %20 = zext i8 %state.sroa.7.0.copyload78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %state.sroa.7.0.copyload78, label %sw.default [
    i8 0, label %sw.bb29
    i8 1, label %sw.bb27.sw.bb30_crit_edge
    i8 5, label %sw.bb27.sw.bb30_crit_edge79
    i8 6, label %sw.bb27.sw.bb31_crit_edge
    i8 4, label %sw.bb27.sw.bb31_crit_edge80
    i8 7, label %sw.bb32
  ]

sw.bb27.sw.bb31_crit_edge80:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

sw.bb27.sw.bb31_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb31

sw.bb27.sw.bb30_crit_edge79:                      ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

sw.bb27.sw.bb30_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb30

sw.bb29:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb30:                                          ; preds = %sw.bb27.sw.bb30_crit_edge, %sw.bb27.sw.bb30_crit_edge79
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %sw.bb27.sw.bb31_crit_edge, %sw.bb27.sw.bb31_crit_edge80
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %val, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %val, align 4
  br label %cleanup

sw.bb33:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 8
  %26 = ptrtoint ptr %init_data to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %init_data, align 4
  %idxprom = zext i8 %27 to i32
  %arrayidx34 = getelementptr [31 x i32], ptr @bq24257_ichg_map, i32 0, i32 %idxprom
  %28 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx34, align 4
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val, align 4
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2000000, ptr %val, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %vbat = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %vbat to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %vbat, align 1
  %idxprom38 = zext i8 %33 to i32
  %arrayidx39 = getelementptr [48 x i32], ptr @bq24257_vbat_map, i32 0, i32 %idxprom38
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx39, align 4
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %val, align 4
  br label %cleanup

sw.bb40:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4440000, ptr %val, align 4
  br label %cleanup

sw.bb41:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iterm = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 8, i32 2
  %38 = ptrtoint ptr %iterm to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %iterm, align 2
  %idxprom43 = zext i8 %39 to i32
  %arrayidx44 = getelementptr [8 x i32], ptr @bq24257_iterm_map, i32 0, i32 %idxprom43
  %40 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx44, align 4
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %val, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %43 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %val.i.i, align 4, !annotation !209
  %arrayidx.i.i = getelementptr %struct.bq24257_device, ptr %call, i32 0, i32 5, i32 5
  %44 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %45, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bq24257_field_read.exit.thread.i, label %bq24257_field_read.exit.i

bq24257_field_read.exit.thread.i:                 ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %cleanup

bq24257_field_read.exit.i:                        ; preds = %sw.bb45
  %46 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp.i = icmp slt i32 %47, 0
  br i1 %cmp.i, label %bq24257_field_read.exit.i.cleanup_crit_edge, label %if.end.i

bq24257_field_read.exit.i.cleanup_crit_edge:      ; preds = %bq24257_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %bq24257_field_read.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %47)
  %cmp1.i = icmp ugt i32 %47, 5
  br i1 %cmp1.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i = getelementptr [6 x i32], ptr @bq24257_iilimit_map, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3.i, %if.end.i.cleanup_crit_edge, %bq24257_field_read.exit.i.cleanup_crit_edge, %bq24257_field_read.exit.thread.i, %sw.bb41, %sw.bb40, %sw.bb36, %sw.bb35, %sw.bb33, %sw.default, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb23, %sw.bb22, %sw.bb21, %if.else17, %if.then16, %if.then10, %if.then4, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb29 ], [ 0, %sw.bb30 ], [ 0, %sw.bb31 ], [ 0, %sw.bb32 ], [ 0, %sw.default ], [ 0, %if.then ], [ 0, %if.then10 ], [ 0, %if.else17 ], [ 0, %if.then16 ], [ 0, %if.then4 ], [ 0, %sw.bb41 ], [ 0, %sw.bb40 ], [ 0, %sw.bb36 ], [ 0, %sw.bb35 ], [ 0, %sw.bb33 ], [ 0, %sw.bb23 ], [ 0, %sw.bb22 ], [ 0, %sw.bb21 ], [ 0, %if.end3.i ], [ %47, %bq24257_field_read.exit.i.cleanup_crit_edge ], [ -61, %if.end.i.cleanup_crit_edge ], [ %call.i.i, %bq24257_field_read.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_power_supply_set_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %prop)
  %cond = icmp eq i32 %prop, 38
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %iilimit_autoset_enable.i = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %iilimit_autoset_enable.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iilimit_autoset_enable.i, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %sw.bb.if.end.i_crit_edge, label %if.then.i

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_setup_work.i = getelementptr inbounds %struct.bq24257_device, ptr %call, i32 0, i32 7
  %call.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %iilimit_setup_work.i) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb.if.end.i_crit_edge
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %3)
  %cmp3.i.i = icmp ult i32 %3, 150000
  br i1 %cmp3.i.i, label %if.end.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, label %for.inc.i.i

if.end.i.for.end.loopexit.split.loop.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i.i

for.inc.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %3)
  %cmp3.i.1.i = icmp ult i32 %3, 500000
  br i1 %cmp3.i.1.i, label %for.inc.i.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, label %for.inc.i.1.i

for.inc.i.i.for.end.loopexit.split.loop.exit.i.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %3)
  %cmp3.i.2.i = icmp ult i32 %3, 900000
  br i1 %cmp3.i.2.i, label %for.inc.i.1.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, label %for.inc.i.2.i

for.inc.i.1.i.for.end.loopexit.split.loop.exit.i.i_crit_edge: ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %3)
  %cmp3.i.3.i = icmp ult i32 %3, 1500000
  br i1 %cmp3.i.3.i, label %for.inc.i.2.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, label %for.inc.i.3.i

for.inc.i.2.i.for.end.loopexit.split.loop.exit.i.i_crit_edge: ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %3)
  %cmp3.i.4.i = icmp ult i32 %3, 2000000
  br i1 %cmp3.i.4.i, label %for.inc.i.3.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, label %for.inc.i.3.i.bq24257_set_input_current_limit.exit_crit_edge

for.inc.i.3.i.bq24257_set_input_current_limit.exit_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq24257_set_input_current_limit.exit

for.inc.i.3.i.for.end.loopexit.split.loop.exit.i.i_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.loopexit.split.loop.exit.i.i

for.end.loopexit.split.loop.exit.i.i:             ; preds = %for.inc.i.3.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, %for.inc.i.2.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, %for.inc.i.1.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, %for.inc.i.i.for.end.loopexit.split.loop.exit.i.i_crit_edge, %if.end.i.for.end.loopexit.split.loop.exit.i.i_crit_edge
  %indvars.iv.i.lcssa.i = phi i32 [ 0, %if.end.i.for.end.loopexit.split.loop.exit.i.i_crit_edge ], [ 1, %for.inc.i.i.for.end.loopexit.split.loop.exit.i.i_crit_edge ], [ 2, %for.inc.i.1.i.for.end.loopexit.split.loop.exit.i.i_crit_edge ], [ 3, %for.inc.i.2.i.for.end.loopexit.split.loop.exit.i.i_crit_edge ], [ 4, %for.inc.i.3.i.for.end.loopexit.split.loop.exit.i.i_crit_edge ]
  br label %bq24257_set_input_current_limit.exit

bq24257_set_input_current_limit.exit:             ; preds = %for.end.loopexit.split.loop.exit.i.i, %for.inc.i.3.i.bq24257_set_input_current_limit.exit_crit_edge
  %idx.0.lcssa.i.i = phi i32 [ %indvars.iv.i.lcssa.i, %for.end.loopexit.split.loop.exit.i.i ], [ 5, %for.inc.i.3.i.bq24257_set_input_current_limit.exit_crit_edge ]
  %arrayidx.i5.i = getelementptr %struct.bq24257_device, ptr %call, i32 0, i32 5, i32 5
  %4 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i5.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef %idx.0.lcssa.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %bq24257_set_input_current_limit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i.i, %bq24257_set_input_current_limit.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq24257_power_supply_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %cond = icmp eq i32 %psp, 38
  %. = zext i1 %cond to i32
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bq24257_handle_state_change(ptr noundef %bq, ptr nocapture noundef readonly %new_state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %old_state.sroa.5.0.state.sroa_idx = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 9, i32 2
  %0 = ptrtoint ptr %old_state.sroa.5.0.state.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %0)
  %old_state.sroa.5.0.copyload = load i8, ptr %old_state.sroa.5.0.state.sroa_idx, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %power_good = getelementptr inbounds %struct.bq24257_state, ptr %new_state, i32 0, i32 2
  %1 = ptrtoint ptr %power_good to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %power_good, align 1, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_handle_state_change.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_handle_state_change, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !211

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_handle_state_change.__UNIQUE_ID_ddebug289, ptr noundef %4, ptr noundef nonnull @.str.67) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %iilimit_autoset_enable = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 11
  %5 = ptrtoint ptr %iilimit_autoset_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iilimit_autoset_enable, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %do.end.if.end13_crit_edge, label %if.then8

do.end.if.end13_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %do.end
  %iilimit_setup_work = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 7
  %call9 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %iilimit_setup_work) #7
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 16
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %if.then8.do.end71_crit_edge, label %if.then8.if.end13_crit_edge

if.then8.if.end13_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8.do.end71_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.end13:                                         ; preds = %if.then8.if.end13_crit_edge, %do.end.if.end13_crit_edge
  %iilimit = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 8, i32 3
  %9 = ptrtoint ptr %iilimit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iilimit, align 1
  %arrayidx.i94 = getelementptr %struct.bq24257_device, ptr %bq, i32 0, i32 5, i32 5
  %11 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i94, align 4
  %conv.i = zext i8 %10 to i32
  %call.i.i95 = tail call i32 @regmap_field_update_bits_base(ptr noundef %12, i32 noundef -1, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp15 = icmp slt i32 %call.i.i95, 0
  br i1 %cmp15, label %if.end13.do.end71_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.do.end71_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

if.else:                                          ; preds = %entry
  %13 = and i8 %old_state.sroa.5.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool19.not = icmp eq i8 %13, 0
  br i1 %tobool19.not, label %do.body21, label %if.else47

do.body21:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq24257_handle_state_change.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq24257_handle_state_change, %do.end39)) #7
          to label %if.then35 [label %do.end39], !srcloc !211

if.then35:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %dev36 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %14 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev36, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq24257_handle_state_change.__UNIQUE_ID_ddebug290, ptr noundef %15, ptr noundef nonnull @.str.68) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body21
  %iilimit_autoset_enable40 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 11
  %16 = ptrtoint ptr %iilimit_autoset_enable40 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %iilimit_autoset_enable40, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool41.not = icmp eq i8 %17, 0
  br i1 %tobool41.not, label %do.end39.cleanup_crit_edge, label %if.then42

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_setup_work43 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i96 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %iilimit_setup_work43, i32 noundef 100) #7
  br label %cleanup

if.else47:                                        ; preds = %if.else
  %fault = getelementptr inbounds %struct.bq24257_state, ptr %new_state, i32 0, i32 1
  %19 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fault, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %20, label %if.else47.cleanup_crit_edge [
    i8 8, label %do.end53
    i8 7, label %do.end63
  ]

if.else47.cleanup_crit_edge:                      ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end53:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %22 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.69) #10
  br label %cleanup

do.end63:                                         ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #9
  %dev64 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %24 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.72) #10
  br label %cleanup

do.end71:                                         ; preds = %if.end13.do.end71_crit_edge, %if.then8.do.end71_crit_edge
  %dev72 = getelementptr inbounds %struct.bq24257_device, ptr %bq, i32 0, i32 1
  %26 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.66) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.end63, %do.end53, %if.else47.cleanup_crit_edge, %if.then42, %do.end39.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %iilimit_autoset_enable = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %iilimit_autoset_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iilimit_autoset_enable, align 4, !range !210
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iilimit_setup_work = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 7
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %iilimit_setup_work) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %do.end, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev4 = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.79) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq24257_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rmap = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmap, align 4
  %call1 = tail call i32 @regcache_drop_region(ptr noundef %3, i32 noundef 0, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i = getelementptr %struct.bq24257_device, ptr %1, i32 0, i32 5, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3 = icmp slt i32 %call.i.i, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call fastcc i32 @bq24257_hw_init(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.81) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %charger = getelementptr inbounds %struct.bq24257_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %9) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %do.end ], [ 0, %if.end10 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_drop_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 103)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !126, !128, !129, !131, !133, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !176, !178, !180, !182, !184, !186, !188, !190, !191, !192, !193, !195, !196, !197, !198}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206, !207}
!llvm.ident = !{!208}

!0 = !{ptr @__initcall__kmod_bq24257_charger__294_1176_bq24257_driver_init6, !1, !"__initcall__kmod_bq24257_charger__294_1176_bq24257_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1176, i32 1}
!2 = !{ptr @__exitcall_bq24257_driver_exit, !1, !"__exitcall_bq24257_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1178, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1179, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1180, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1167, i32 11}
!12 = !{ptr @bq24257_driver, !13, !"bq24257_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1165, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq24257_charger.c", i32 961, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @bq24257_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @bq24257_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq24257_charger.c", i32 976, i32 4}
!24 = !{ptr @bq24257_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @bq24257_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @bq24257_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/bq24257_charger.c", i32 984, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bq24257_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/bq24257_charger.c", i32 986, i32 13}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bq24257_charger.c", i32 988, i32 3}
!34 = !{ptr @bq24257_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bq24257_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/bq24257_charger.c", i32 998, i32 4}
!38 = !{ptr @bq24257_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bq24257_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1008, i32 4}
!42 = !{ptr @bq24257_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bq24257_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bq24257_probe.__key.20, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1024, i32 3}
!46 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bq24257_probe.__key.22, !45, !"__key", i1 false, i1 false}
!48 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1039, i32 3}
!51 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @bq24257_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @bq24257_probe._entry_ptr.27, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1057, i32 3}
!56 = !{ptr @bq24257_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @bq24257_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1063, i32 3}
!60 = !{ptr @bq24257_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @bq24257_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.35, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1073, i32 3}
!64 = !{ptr @bq24257_probe._entry.34, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @bq24257_probe._entry_ptr.36, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @bq24257_regmap_config, !67, !"bq24257_regmap_config", i1 false, i1 false}
!67 = !{!"../drivers/power/supply/bq24257_charger.c", i32 116, i32 35}
!68 = !{ptr @bq24257_reg_fields, !69, !"bq24257_reg_fields", i1 false, i1 false}
!69 = !{!"../drivers/power/supply/bq24257_charger.c", i32 126, i32 31}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/bq24257_charger.c", i32 887, i32 42}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/power/supply/bq24257_charger.c", i32 894, i32 42}
!74 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/bq24257_charger.c", i32 902, i32 42}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/power/supply/bq24257_charger.c", i32 911, i32 42}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/bq24257_charger.c", i32 928, i32 42}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/power/supply/bq24257_charger.c", i32 937, i32 42}
!82 = !{ptr @bq24257_ichg_map, !83, !"bq24257_ichg_map", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/bq24257_charger.c", i32 175, i32 18}
!84 = !{ptr @bq24257_vbat_map, !85, !"bq24257_vbat_map", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/bq24257_charger.c", i32 164, i32 18}
!86 = !{ptr @bq24257_iterm_map, !87, !"bq24257_iterm_map", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/bq24257_charger.c", i32 184, i32 18}
!88 = !{ptr @bq24257_iilimit_map, !89, !"bq24257_iilimit_map", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/bq24257_charger.c", i32 190, i32 18}
!90 = !{ptr @bq24257_vovp_map, !91, !"bq24257_vovp_map", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/bq24257_charger.c", i32 196, i32 18}
!92 = !{ptr @bq24257_vindpm_map, !93, !"bq24257_vindpm_map", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/bq24257_charger.c", i32 203, i32 18}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/bq24257_charger.c", i32 581, i32 2}
!96 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @bq24257_iilimit_autoset.__UNIQUE_ID_ddebug288, !95, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!99 = !{ptr @.str.46, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bq24257_charger.c", i32 587, i32 2}
!101 = !{ptr @bq24257_iilimit_autoset._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @bq24257_iilimit_autoset._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/bq24257_charger.c", i32 866, i32 44}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/bq24257_charger.c", i32 869, i32 3}
!107 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @bq24257_pg_gpio_probe._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @bq24257_pg_gpio_probe._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.51, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/power/supply/bq24257_charger.c", i32 872, i32 3}
!112 = !{ptr @bq24257_pg_gpio_probe._entry.50, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @bq24257_pg_gpio_probe._entry_ptr.52, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.53, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/power/supply/bq24257_charger.c", i32 878, i32 3}
!116 = !{ptr @bq24257_pg_gpio_probe.__UNIQUE_ID_ddebug293, !115, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/bq24257_charger.c", i32 718, i32 3}
!119 = !{ptr @.str.55, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @bq24257_hw_init.__UNIQUE_ID_ddebug292, !118, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!121 = !{ptr @bq24257_charger_sysfs_groups, !122, !"bq24257_charger_sysfs_groups", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/bq24257_charger.c", i32 847, i32 1}
!123 = !{ptr @bq24257_charger_sysfs_group, !122, !"bq24257_charger_sysfs_group", i1 false, i1 false}
!124 = !{ptr @bq24257_charger_sysfs_attrs, !125, !"bq24257_charger_sysfs_attrs", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/bq24257_charger.c", i32 839, i32 26}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/power/supply/bq24257_charger.c", i32 832, i32 8}
!128 = !{ptr @dev_attr_ovp_voltage, !127, !"dev_attr_ovp_voltage", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/bq24257_charger.c", i32 770, i32 35}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/bq24257_charger.c", i32 833, i32 8}
!133 = !{ptr @dev_attr_in_dpm_voltage, !132, !"dev_attr_in_dpm_voltage", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/power/supply/bq24257_charger.c", i32 834, i32 8}
!136 = !{ptr @dev_attr_high_impedance_enable, !135, !"dev_attr_high_impedance_enable", i1 false, i1 false}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/bq24257_charger.c", i32 795, i32 35}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/bq24257_charger.c", i32 803, i32 35}
!141 = !{ptr @dev_attr_sysoff_enable, !142, !"dev_attr_sysoff_enable", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/bq24257_charger.c", i32 836, i32 8}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/power/supply/bq24257_charger.c", i32 750, i32 2}
!145 = !{ptr @bq24257_charger_supplied_to, !146, !"bq24257_charger_supplied_to", i1 false, i1 false}
!146 = !{!"../drivers/power/supply/bq24257_charger.c", i32 749, i32 14}
!147 = !{ptr @bq24257_power_supply_desc, !148, !"bq24257_power_supply_desc", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/bq24257_charger.c", i32 753, i32 39}
!149 = !{ptr @bq24257_power_supply_props, !150, !"bq24257_power_supply_props", i1 false, i1 false}
!150 = !{!"../drivers/power/supply/bq24257_charger.c", i32 735, i32 35}
!151 = !{ptr @.str.63, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/bq24257_charger.c", i32 328, i32 17}
!153 = !{ptr @.str.64, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/bq24257_charger.c", i32 662, i32 2}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @bq24257_irq_handler_thread.__UNIQUE_ID_ddebug291, !154, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/bq24257_charger.c", i32 614, i32 3}
!159 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @bq24257_handle_state_change.__UNIQUE_ID_ddebug289, !158, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/power/supply/bq24257_charger.c", i32 631, i32 3}
!163 = !{ptr @bq24257_handle_state_change.__UNIQUE_ID_ddebug290, !162, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/bq24257_charger.c", i32 638, i32 3}
!166 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @bq24257_handle_state_change._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @bq24257_handle_state_change._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.72, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/power/supply/bq24257_charger.c", i32 640, i32 3}
!171 = !{ptr @bq24257_handle_state_change._entry.71, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @bq24257_handle_state_change._entry_ptr.73, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @bq24257_handle_state_change._entry.74, !174, !"_entry", i1 false, i1 false}
!174 = !{!"../drivers/power/supply/bq24257_charger.c", i32 646, i32 2}
!175 = !{ptr @bq24257_handle_state_change._entry_ptr.75, !174, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/bq24257_charger.c", i32 49, i32 2}
!178 = !{ptr @.str.77, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/power/supply/bq24257_charger.c", i32 50, i32 2}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/bq24257_charger.c", i32 51, i32 2}
!182 = !{ptr @bq2425x_chip_name, !183, !"bq2425x_chip_name", i1 false, i1 false}
!183 = !{!"../drivers/power/supply/bq24257_charger.c", i32 48, i32 26}
!184 = !{ptr @bq24257_of_match, !185, !"bq24257_of_match", i1 false, i1 false}
!185 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1147, i32 34}
!186 = !{ptr @bq24257_pm, !187, !"bq24257_pm", i1 false, i1 false}
!187 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1135, i32 32}
!188 = !{ptr @.str.79, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1104, i32 3}
!190 = !{ptr @.str.80, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @bq24257_suspend._entry, !189, !"_entry", i1 false, i1 false}
!192 = !{ptr @bq24257_suspend._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.81, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1124, i32 3}
!195 = !{ptr @.str.82, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @bq24257_resume._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @bq24257_resume._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @bq24257_i2c_ids, !199, !"bq24257_i2c_ids", i1 false, i1 false}
!199 = !{!"../drivers/power/supply/bq24257_charger.c", i32 1139, i32 35}
!200 = !{i32 1, !"wchar_size", i32 2}
!201 = !{i32 1, !"min_enum_size", i32 4}
!202 = !{i32 8, !"branch-target-enforcement", i32 0}
!203 = !{i32 8, !"sign-return-address", i32 0}
!204 = !{i32 8, !"sign-return-address-all", i32 0}
!205 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!206 = !{i32 7, !"uwtable", i32 1}
!207 = !{i32 7, !"frame-pointer", i32 2}
!208 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!209 = !{!"auto-init"}
!210 = !{i8 0, i8 2}
!211 = !{i64 2148981244, i64 2148981249, i64 2148981262, i64 2148981306, i64 2148981340, i64 2148981361}
