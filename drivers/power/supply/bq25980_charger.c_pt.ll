; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq25980_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq25980_charger.c"
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
%struct.bq25980_chip_info = type { i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.bq25980_device = type { ptr, ptr, ptr, ptr, %struct.mutex, ptr, [20 x i8], %struct.bq25980_init_data, ptr, %struct.bq25980_state, i32 }
%struct.bq25980_init_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.bq25980_state = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32 }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }

@__initcall__kmod_bq25980_charger__296_1293_bq25980_driver_init6 = internal global ptr @bq25980_driver_init, section ".initcall6.init", align 4
@bq25980_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq25980_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq25980_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @bq25980_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq25980_driver_exit = internal global ptr @bq25980_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [51 x i8] c"bq25980_charger.author=Dan Murphy <dmurphy@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [68 x i8] c"bq25980_charger.author=Ricardo Rivera-Matos <r-rivera-matos@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [51 x i8] c"bq25980_charger.description=bq25980 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [58 x i8] c"bq25980_charger.file=drivers/power/supply/bq25980_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [31 x i8] c"bq25980_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25980-charger\00", [16 x i8] zeroinitializer }, align 32
@bq25980_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25975\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@bq25980_i2c_ids = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq25980\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25975\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"bq25960\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@bq25980_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bq->lock\00", [22 x i8] zeroinitializer }, align 32
@bq25980_chip_info_tbl = internal constant { [3 x %struct.bq25980_chip_info], [64 x i8] } { [3 x %struct.bq25980_chip_info] [%struct.bq25980_chip_info { i32 0, ptr @bq25980_regmap_config, i32 4250000, i32 5750000, i32 8500000, i32 3750000, i32 1000000, i32 17800000, i32 8900000, i32 100000, i32 14000000, i32 50000, i32 7000000, i32 14000000, i32 22000000, i32 7000000, i32 12750000, i32 14000000, i32 9540000, i32 7000000, i32 20000, i32 7000000, i32 8100000, i32 11000000 }, %struct.bq25980_chip_info { i32 1, ptr @bq25975_regmap_config, i32 4250000, i32 5750000, i32 8500000, i32 5750000, i32 1000000, i32 8900000, i32 4450000, i32 50000, i32 7000000, i32 25000, i32 3500000, i32 7000000, i32 12750000, i32 3500000, i32 6500000, i32 8900000, i32 4770000, i32 3500000, i32 10000, i32 3500000, i32 8100000, i32 11000000 }, %struct.bq25980_chip_info { i32 2, ptr @bq25960_regmap_config, i32 3250000, i32 3750000, i32 5750000, i32 3750000, i32 3750000, i32 8900000, i32 4450000, i32 50000, i32 7000000, i32 25000, i32 3500000, i32 7000000, i32 12750000, i32 3500000, i32 6500000, i32 8900000, i32 4770000, i32 3500000, i32 10000, i32 3500000, i32 6100000, i32 7000000 }], [64 x i8] zeroinitializer }, align 32
@bq25980_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"bq25980_charger:1230:(bq->chip_info->regmap_config)->lock\00", [38 x i8] zeroinitializer }, align 32
@bq25980_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1232, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq25980_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq25980_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq25980_probe._entry_ptr = internal global ptr @bq25980_probe._entry, section ".printk_index", align 4
@bq25980_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1240, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to read device tree properties%d\0A\00", [55 x i8] zeroinitializer }, align 32
@bq25980_probe._entry_ptr.10 = internal global ptr @bq25980_probe._entry.8, section ".printk_index", align 4
@bq25980_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1256, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bq25980_probe._entry_ptr.13 = internal global ptr @bq25980_probe._entry.11, section ".printk_index", align 4
@bq25980_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1262, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot initialize the chip.\0A\00", [35 x i8] zeroinitializer }, align 32
@bq25980_probe._entry_ptr.16 = internal global ptr @bq25980_probe._entry.14, section ".printk_index", align 4
@bq25980_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq25980_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25980_reg_defs, i32 52, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq25975_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq25980_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25975_reg_defs, i32 52, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq25960_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @bq25980_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 58, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25960_reg_defs, i32 52, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@bq25980_reg_defs = internal global { [52 x %struct.reg_default], [96 x i8] } { [52 x %struct.reg_default] [%struct.reg_default { i32 0, i32 90 }, %struct.reg_default { i32 1, i32 70 }, %struct.reg_default { i32 2, i32 81 }, %struct.reg_default { i32 3, i32 80 }, %struct.reg_default { i32 4, i32 40 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 38 }, %struct.reg_default { i32 7, i32 34 }, %struct.reg_default { i32 8, i32 13 }, %struct.reg_default { i32 9, i32 12 }, %struct.reg_default { i32 10, i32 48 }, %struct.reg_default { i32 11, i32 200 }, %struct.reg_default { i32 12, i32 21 }, %struct.reg_default { i32 13, i32 21 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 32 }, %struct.reg_default { i32 17, i32 29 }, %struct.reg_default { i32 18, i32 24 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 8 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }], [96 x i8] zeroinitializer }, align 32
@bq25975_reg_defs = internal global { [52 x %struct.reg_default], [96 x i8] } { [52 x %struct.reg_default] [%struct.reg_default { i32 0, i32 90 }, %struct.reg_default { i32 1, i32 70 }, %struct.reg_default { i32 2, i32 81 }, %struct.reg_default { i32 3, i32 80 }, %struct.reg_default { i32 4, i32 40 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 38 }, %struct.reg_default { i32 7, i32 34 }, %struct.reg_default { i32 8, i32 13 }, %struct.reg_default { i32 9, i32 12 }, %struct.reg_default { i32 10, i32 48 }, %struct.reg_default { i32 11, i32 200 }, %struct.reg_default { i32 12, i32 21 }, %struct.reg_default { i32 13, i32 21 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 32 }, %struct.reg_default { i32 17, i32 29 }, %struct.reg_default { i32 18, i32 24 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 8 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }], [96 x i8] zeroinitializer }, align 32
@bq25960_reg_defs = internal global { [52 x %struct.reg_default], [96 x i8] } { [52 x %struct.reg_default] [%struct.reg_default { i32 0, i32 90 }, %struct.reg_default { i32 1, i32 70 }, %struct.reg_default { i32 2, i32 81 }, %struct.reg_default { i32 3, i32 80 }, %struct.reg_default { i32 4, i32 40 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 38 }, %struct.reg_default { i32 7, i32 34 }, %struct.reg_default { i32 8, i32 13 }, %struct.reg_default { i32 9, i32 12 }, %struct.reg_default { i32 10, i32 48 }, %struct.reg_default { i32 11, i32 200 }, %struct.reg_default { i32 12, i32 21 }, %struct.reg_default { i32 13, i32 21 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 32 }, %struct.reg_default { i32 17, i32 29 }, %struct.reg_default { i32 18, i32 24 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 8 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 37, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 46, i32 0 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }], [96 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,watchdog-timeout-ms\00", [41 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ti,sc-ovp-limit-microvolt\00", [38 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1164, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SC ovp limit is out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bq25980_parse_dt\00", [47 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry_ptr = internal global ptr @bq25980_parse_dt._entry, section ".printk_index", align 4
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ti,sc-ocp-limit-microamp\00", [39 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.20, ptr @.str.5, i32 1176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SC ocp limit is out of range\0A\00", [34 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry_ptr.24 = internal global ptr @bq25980_parse_dt._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,bypass-ovp-limit-microvolt\00", [34 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.5, i32 1188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bypass ovp limit is out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry_ptr.28 = internal global ptr @bq25980_parse_dt._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,bypass-ocp-limit-microamp\00", [35 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.20, ptr @.str.5, i32 1200, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Bypass ocp limit is out of range\0A\00", [62 x i8] zeroinitializer }, align 32
@bq25980_parse_dt._entry_ptr.32 = internal global ptr @bq25980_parse_dt._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,bypass-enable\00", [47 x i8] zeroinitializer }, align 32
@bq25980_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.34], [28 x i8] zeroinitializer }, align 32
@bq25980_power_supply_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 3, ptr null, i32 0, ptr @bq25980_power_supply_props, i32 12, ptr @bq25980_get_charger_property, ptr @bq25980_set_charger_property, ptr @bq25980_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bq25980_battery_desc = internal global { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str.36, i32 1, ptr null, i32 0, ptr @bq25980_battery_props, i32 4, ptr @bq25980_get_battery_property, ptr null, ptr @bq25980_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@bq25980_power_supply_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 74, i32 73, i32 0, i32 4, i32 2, i32 39, i32 38, i32 1, i32 29, i32 31, i32 17, i32 12], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25980-battery\00", [16 x i8] zeroinitializer }, align 32
@bq25980_battery_props = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 30, i32 32, i32 17, i32 12], [16 x i8] zeroinitializer }, align 32
@bq25980_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 1111, ptr @.str.39, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"battery info missing\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25980_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bq25980_hw_init._entry_ptr = internal global ptr @bq25980_hw_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [35 x i64] [i64 33, i64 32, i64 15, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56]
@__sancov_gen_cov_switch_values.40 = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 2, i64 4, i64 12, i64 17, i64 29, i64 31, i64 38, i64 39, i64 73, i64 74]
@__sancov_gen_cov_switch_values.41 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 29, i64 31, i64 38, i64 39]
@__sancov_gen_cov_switch_values.42 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 29, i64 31, i64 38, i64 39]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 12, i64 17, i64 30, i64 32]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"bq25980_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1285, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1287, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"bq25980_of_match\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1277, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"bq25980_i2c_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1269, i32 35 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1224, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"bq25980_chip_info_tbl\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 961, i32 39 }
@___asan_gen_.65 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1229, i32 15 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1232, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1240, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1256, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1262, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"bq25980_regmap_config\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 928, i32 35 }
@___asan_gen_.110 = private unnamed_addr constant [22 x i8] c"bq25975_regmap_config\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 939, i32 35 }
@___asan_gen_.113 = private unnamed_addr constant [22 x i8] c"bq25960_regmap_config\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 950, i32 35 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"bq25980_reg_defs\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 107, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"bq25975_reg_defs\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 162, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant [17 x i8] c"bq25960_reg_defs\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 217, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1147, i32 42 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1157, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1164, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1169, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1176, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1181, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1188, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1193, i32 12 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1200, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1206, i32 13 }
@___asan_gen_.170 = private unnamed_addr constant [28 x i8] c"bq25980_charger_supplied_to\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 876, i32 14 }
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"bq25980_power_supply_desc\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 896, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant [21 x i8] c"bq25980_battery_desc\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 906, i32 33 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 877, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"bq25980_power_supply_props\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 854, i32 35 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 712, i32 17 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 907, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"bq25980_battery_props\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 869, i32 35 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [42 x i8] c"../drivers/power/supply/bq25980_charger.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 1111, i32 3 }
@llvm.compiler.used = appending global [71 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_bq25980_driver_exit, ptr @__initcall__kmod_bq25980_charger__296_1293_bq25980_driver_init6, ptr @bq25980_driver_exit, ptr @bq25980_hw_init._entry, ptr @bq25980_hw_init._entry_ptr, ptr @bq25980_parse_dt._entry, ptr @bq25980_parse_dt._entry.22, ptr @bq25980_parse_dt._entry.26, ptr @bq25980_parse_dt._entry.30, ptr @bq25980_parse_dt._entry_ptr, ptr @bq25980_parse_dt._entry_ptr.24, ptr @bq25980_parse_dt._entry_ptr.28, ptr @bq25980_parse_dt._entry_ptr.32, ptr @bq25980_probe._entry, ptr @bq25980_probe._entry.11, ptr @bq25980_probe._entry.14, ptr @bq25980_probe._entry.8, ptr @bq25980_probe._entry_ptr, ptr @bq25980_probe._entry_ptr.10, ptr @bq25980_probe._entry_ptr.13, ptr @bq25980_probe._entry_ptr.16, ptr @bq25980_driver, ptr @.str, ptr @bq25980_of_match, ptr @bq25980_i2c_ids, ptr @bq25980_probe.__key, ptr @.str.1, ptr @bq25980_chip_info_tbl, ptr @bq25980_probe._key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @bq25980_regmap_config, ptr @bq25975_regmap_config, ptr @bq25960_regmap_config, ptr @bq25980_reg_defs, ptr @bq25975_reg_defs, ptr @bq25960_reg_defs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @bq25980_charger_supplied_to, ptr @bq25980_power_supply_desc, ptr @bq25980_battery_desc, ptr @.str.34, ptr @bq25980_power_supply_props, ptr @.str.35, ptr @.str.36, ptr @bq25980_battery_props, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_i2c_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_chip_info_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25975_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25960_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_reg_defs to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25975_reg_defs to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25960_reg_defs to i32), i32 416, i32 512, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_parse_dt._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_parse_dt._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_parse_dt._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_power_supply_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_battery_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_power_supply_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_battery_props to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25980_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq25980_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq25980_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @bq25980_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %bat_info.i = alloca ptr, align 4
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %lock = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq25980_probe.__key) #8
  %model_name = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 6
  %call5 = tail call ptr @strncpy(ptr noundef %model_name, ptr noundef %id, i32 noundef 20)
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [3 x %struct.bq25980_chip_info], ptr @bq25980_chip_info_tbl, i32 0, i32 %3
  %chip_info = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 8
  %4 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %arrayidx, ptr %chip_info, align 4
  %regmap_config = getelementptr [3 x %struct.bq25980_chip_info], ptr @bq25980_chip_info_tbl, i32 0, i32 %3, i32 1
  %5 = ptrtoint ptr %regmap_config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap_config, align 4
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef %6, ptr noundef nonnull @bq25980_probe._key, ptr noundef nonnull @.str.2) #8
  %regmap = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %12 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev3, align 4
  %watchdog_timer.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 10
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %13, ptr noundef nonnull @.str.17, ptr noundef %watchdog_timer.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %watchdog_timer.i, align 4
  br label %if.end6.i

if.end.i:                                         ; preds = %if.end16
  %15 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %watchdog_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %.pr.i)
  %16 = icmp ugt i32 %.pr.i, 300000
  br i1 %16, label %if.end.i.do.end22_crit_edge, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.end.i.do.end22_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22

if.end6.i:                                        ; preds = %if.end.i.if.end6.i_crit_edge, %if.end.thread.i
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  %sc_vlim.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 7
  %call.i151.i = tail call i32 @device_property_read_u32_array(ptr noundef %18, ptr noundef nonnull @.str.18, ptr noundef %sc_vlim.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151.i)
  %tobool9.not.i = icmp eq i32 %call.i151.i, 0
  br i1 %tobool9.not.i, label %if.end6.i.if.end13.i_crit_edge, label %if.then10.i

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chip_info, align 4
  %busovp_sc_def.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %busovp_sc_def.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %busovp_sc_def.i, align 4
  %23 = ptrtoint ptr %sc_vlim.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sc_vlim.i, align 4
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end6.i.if.end13.i_crit_edge
  %24 = ptrtoint ptr %sc_vlim.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sc_vlim.i, align 4
  %26 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_info, align 4
  %busovp_sc_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %busovp_sc_max.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %busovp_sc_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp17.i = icmp ugt i32 %25, %29
  br i1 %cmp17.i, label %if.end13.i.do.end22.sink.split_crit_edge, label %lor.lhs.false18.i

if.end13.i.do.end22.sink.split_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

lor.lhs.false18.i:                                ; preds = %if.end13.i
  %busovp_sc_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %27, i32 0, i32 13
  %30 = ptrtoint ptr %busovp_sc_min.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %busovp_sc_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %31)
  %cmp22.i = icmp ult i32 %25, %31
  br i1 %cmp22.i, label %lor.lhs.false18.i.do.end22.sink.split_crit_edge, label %if.end25.i

lor.lhs.false18.i.do.end22.sink.split_crit_edge:  ; preds = %lor.lhs.false18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

if.end25.i:                                       ; preds = %lor.lhs.false18.i
  %32 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev3, align 4
  %sc_ilim.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 2
  %call.i152.i = tail call i32 @device_property_read_u32_array(ptr noundef %33, ptr noundef nonnull @.str.21, ptr noundef %sc_ilim.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %tobool29.not.i = icmp eq i32 %call.i152.i, 0
  br i1 %tobool29.not.i, label %if.end25.i.if.end34.i_crit_edge, label %if.then30.i

if.end25.i.if.end34.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34.i

if.then30.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chip_info, align 4
  %busocp_def.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %busocp_def.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %busocp_def.i, align 4
  %38 = ptrtoint ptr %sc_ilim.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %sc_ilim.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then30.i, %if.end25.i.if.end34.i_crit_edge
  %39 = ptrtoint ptr %sc_ilim.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sc_ilim.i, align 4
  %41 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info, align 4
  %busocp_sc_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %busocp_sc_max.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %busocp_sc_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %44)
  %cmp38.i = icmp ugt i32 %40, %44
  br i1 %cmp38.i, label %if.end34.i.do.end22.sink.split_crit_edge, label %lor.lhs.false39.i

if.end34.i.do.end22.sink.split_crit_edge:         ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

lor.lhs.false39.i:                                ; preds = %if.end34.i
  %busocp_sc_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %42, i32 0, i32 5
  %45 = ptrtoint ptr %busocp_sc_min.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %busocp_sc_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %46)
  %cmp43.i = icmp ult i32 %40, %46
  br i1 %cmp43.i, label %lor.lhs.false39.i.do.end22.sink.split_crit_edge, label %if.end49.i

lor.lhs.false39.i.do.end22.sink.split_crit_edge:  ; preds = %lor.lhs.false39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

if.end49.i:                                       ; preds = %lor.lhs.false39.i
  %47 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev3, align 4
  %bypass_vlim.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 6
  %call.i153.i = tail call i32 @device_property_read_u32_array(ptr noundef %48, ptr noundef nonnull @.str.25, ptr noundef %bypass_vlim.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i153.i)
  %tobool53.not.i = icmp eq i32 %call.i153.i, 0
  br i1 %tobool53.not.i, label %if.end49.i.if.end58.i_crit_edge, label %if.then54.i

if.end49.i.if.end58.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58.i

if.then54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chip_info, align 4
  %busovp_byp_def.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %50, i32 0, i32 8
  %51 = ptrtoint ptr %busovp_byp_def.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %busovp_byp_def.i, align 4
  %53 = ptrtoint ptr %bypass_vlim.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %bypass_vlim.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then54.i, %if.end49.i.if.end58.i_crit_edge
  %54 = ptrtoint ptr %bypass_vlim.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bypass_vlim.i, align 4
  %56 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chip_info, align 4
  %busovp_byp_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %57, i32 0, i32 16
  %58 = ptrtoint ptr %busovp_byp_max.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %busovp_byp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %59)
  %cmp62.i = icmp ugt i32 %55, %59
  br i1 %cmp62.i, label %if.end58.i.do.end22.sink.split_crit_edge, label %lor.lhs.false63.i

if.end58.i.do.end22.sink.split_crit_edge:         ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

lor.lhs.false63.i:                                ; preds = %if.end58.i
  %busovp_byp_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %57, i32 0, i32 15
  %60 = ptrtoint ptr %busovp_byp_min.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %busovp_byp_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %61)
  %cmp67.i = icmp ult i32 %55, %61
  br i1 %cmp67.i, label %lor.lhs.false63.i.do.end22.sink.split_crit_edge, label %if.end73.i

lor.lhs.false63.i.do.end22.sink.split_crit_edge:  ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

if.end73.i:                                       ; preds = %lor.lhs.false63.i
  %62 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev3, align 4
  %bypass_ilim.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 1
  %call.i154.i = tail call i32 @device_property_read_u32_array(ptr noundef %63, ptr noundef nonnull @.str.29, ptr noundef %bypass_ilim.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i154.i)
  %tobool77.not.i = icmp eq i32 %call.i154.i, 0
  br i1 %tobool77.not.i, label %if.end73.i.if.end83.i_crit_edge, label %if.then78.i

if.end73.i.if.end83.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83.i

if.then78.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip_info, align 4
  %busocp_def80.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %busocp_def80.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %busocp_def80.i, align 4
  %68 = ptrtoint ptr %bypass_ilim.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %bypass_ilim.i, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then78.i, %if.end73.i.if.end83.i_crit_edge
  %69 = ptrtoint ptr %bypass_ilim.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bypass_ilim.i, align 4
  %71 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %chip_info, align 4
  %busocp_byp_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %72, i32 0, i32 4
  %73 = ptrtoint ptr %busocp_byp_max.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %busocp_byp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %74)
  %cmp87.i = icmp ugt i32 %70, %74
  br i1 %cmp87.i, label %if.end83.i.do.end22.sink.split_crit_edge, label %lor.lhs.false88.i

if.end83.i.do.end22.sink.split_crit_edge:         ; preds = %if.end83.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

lor.lhs.false88.i:                                ; preds = %if.end83.i
  %busocp_byp_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %72, i32 0, i32 6
  %75 = ptrtoint ptr %busocp_byp_min.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %busocp_byp_min.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %76)
  %cmp92.i = icmp ult i32 %70, %76
  br i1 %cmp92.i, label %lor.lhs.false88.i.do.end22.sink.split_crit_edge, label %if.end23

lor.lhs.false88.i.do.end22.sink.split_crit_edge:  ; preds = %lor.lhs.false88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end22.sink.split

do.end22.sink.split:                              ; preds = %lor.lhs.false88.i.do.end22.sink.split_crit_edge, %if.end83.i.do.end22.sink.split_crit_edge, %lor.lhs.false63.i.do.end22.sink.split_crit_edge, %if.end58.i.do.end22.sink.split_crit_edge, %lor.lhs.false39.i.do.end22.sink.split_crit_edge, %if.end34.i.do.end22.sink.split_crit_edge, %lor.lhs.false18.i.do.end22.sink.split_crit_edge, %if.end13.i.do.end22.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.19, %lor.lhs.false18.i.do.end22.sink.split_crit_edge ], [ @.str.19, %if.end13.i.do.end22.sink.split_crit_edge ], [ @.str.23, %lor.lhs.false39.i.do.end22.sink.split_crit_edge ], [ @.str.23, %if.end34.i.do.end22.sink.split_crit_edge ], [ @.str.27, %lor.lhs.false63.i.do.end22.sink.split_crit_edge ], [ @.str.27, %if.end58.i.do.end22.sink.split_crit_edge ], [ @.str.31, %lor.lhs.false88.i.do.end22.sink.split_crit_edge ], [ @.str.31, %if.end83.i.do.end22.sink.split_crit_edge ]
  %77 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull %.str.19.sink) #11
  br label %do.end22

do.end22:                                         ; preds = %do.end22.sink.split, %if.end.i.do.end22_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef -22) #11
  br label %cleanup

if.end23:                                         ; preds = %lor.lhs.false88.i
  %79 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev3, align 4
  %call.i155.i = tail call zeroext i1 @device_property_present(ptr noundef %80, ptr noundef nonnull @.str.33) #8
  %bypass.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 9, i32 8
  %frombool.i = zext i1 %call.i155.i to i8
  %81 = ptrtoint ptr %bypass.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %frombool.i, ptr %bypass.i, align 4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %82 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool24.not = icmp eq i32 %83, 0
  br i1 %tobool24.not, label %if.end23.if.end33_crit_edge, label %if.then25

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then25:                                        ; preds = %if.end23
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %84 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i86 = icmp eq ptr %85, null
  br i1 %tobool.not.i86, label %if.end.i87, label %if.then25.dev_name.exit_crit_edge

if.then25.dev_name.exit_crit_edge:                ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i87:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #10
  %86 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i87, %if.then25.dev_name.exit_crit_edge
  %retval.0.i88 = phi ptr [ %87, %if.end.i87 ], [ %85, %if.then25.dev_name.exit_crit_edge ]
  %call29 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %83, ptr noundef null, ptr noundef nonnull @bq25980_irq_handler_thread, i32 noundef 8194, ptr noundef %retval.0.i88, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %dev_name.exit.if.end33_crit_edge, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dev_name.exit.if.end33_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end33:                                         ; preds = %dev_name.exit.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i) #8
  %88 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 1
  %89 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 2
  %90 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 3
  %91 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 4
  %92 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 5
  %of_node1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %93 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node1.i, align 8
  %95 = ptrtoint ptr %psy_cfg.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %94, ptr %psy_cfg.i, align 4
  %96 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %88, align 4
  %97 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i, ptr %89, align 4
  %98 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %90, align 4
  %99 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @bq25980_charger_supplied_to, ptr %91, align 4
  %100 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 1, ptr %92, align 4
  %101 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev3, align 4
  %call.i89 = call ptr @devm_power_supply_register(ptr noundef %102, ptr noundef nonnull @bq25980_power_supply_desc, ptr noundef nonnull %psy_cfg.i) #8
  %charger.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 2
  %103 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i89, ptr %charger.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end33.do.end39_crit_edge, label %if.end.i90

if.end33.do.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

if.end.i90:                                       ; preds = %if.end33
  %104 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev3, align 4
  %call8.i = call ptr @devm_power_supply_register(ptr noundef %105, ptr noundef nonnull @bq25980_battery_desc, ptr noundef nonnull %psy_cfg.i) #8
  %battery.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 3
  %106 = ptrtoint ptr %battery.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %call8.i, ptr %battery.i, align 4
  %cmp.i19.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %if.end.i90.do.end39_crit_edge, label %if.end40

if.end.i90.do.end39_crit_edge:                    ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end39

do.end39:                                         ; preds = %if.end.i90.do.end39_crit_edge, %if.end33.do.end39_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end.i90
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bat_info.i) #8
  %107 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 -1 to ptr), ptr %bat_info.i, align 4, !annotation !122
  %108 = ptrtoint ptr %watchdog_timer.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %watchdog_timer.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i93 = icmp eq i32 %109, 0
  br i1 %tobool.not.i93, label %if.end40.if.end12.i_crit_edge, label %if.then.i

if.end40.if.end12.i_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 299999, i32 %109)
  %cmp.i94 = icmp sgt i32 %109, 299999
  br i1 %cmp.i94, label %if.then.i.if.end12.i_crit_edge, label %for.body.preheader.i

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.body.preheader.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %109)
  %cmp6.i = icmp sgt i32 %109, 5000
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body.preheader.i.for.inc.2.i_crit_edge

for.body.preheader.i.for.inc.2.i_crit_edge:       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %109)
  %cmp9.i = icmp ult i32 %109, 10000
  br i1 %cmp9.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %for.inc.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %109)
  %cmp6.1.not.i = icmp eq i32 %109, 10000
  br i1 %cmp6.1.not.i, label %for.inc.i.for.inc.2.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.2.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %109)
  %cmp9.1.i = icmp ult i32 %109, 50000
  br i1 %cmp9.1.i, label %land.lhs.true.1.i.if.end12.i_crit_edge, label %for.inc.1.i

land.lhs.true.1.i.if.end12.i_crit_edge:           ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %109)
  %cmp6.2.not.i = icmp eq i32 %109, 50000
  br i1 %cmp6.2.not.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %for.inc.1.i.if.end12.i_crit_edge

for.inc.1.i.if.end12.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %for.inc.1.i.for.inc.2.i_crit_edge, %for.inc.i.for.inc.2.i_crit_edge, %for.body.preheader.i.for.inc.2.i_crit_edge
  br label %if.end12.i

if.end12.i:                                       ; preds = %for.inc.2.i, %for.inc.1.i.if.end12.i_crit_edge, %land.lhs.true.1.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge, %if.end40.if.end12.i_crit_edge
  %wd_reg_val.0.i = phi i32 [ 4, %if.end40.if.end12.i_crit_edge ], [ 3, %if.then.i.if.end12.i_crit_edge ], [ 0, %land.lhs.true.i.if.end12.i_crit_edge ], [ 1, %land.lhs.true.1.i.if.end12.i_crit_edge ], [ 4, %for.inc.2.i ], [ 2, %for.inc.1.i.if.end12.i_crit_edge ]
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call.i.i95 = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 16, i32 noundef 24, i32 noundef %wd_reg_val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %tobool13.not.i = icmp eq i32 %call.i.i95, 0
  br i1 %tobool13.not.i, label %if.end15.i, label %if.end12.i.bq25980_hw_init.exit.thread_crit_edge

if.end12.i.bq25980_hw_init.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_hw_init.exit.thread

if.end15.i:                                       ; preds = %if.end12.i
  %112 = ptrtoint ptr %charger.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %charger.i, align 4
  %call16.i = call i32 @power_supply_get_battery_info(ptr noundef %113, ptr noundef nonnull %bat_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %do.end.i98

do.end.i98:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %115, ptr noundef nonnull @.str.37) #11
  br label %bq25980_hw_init.exit.thread

if.end19.i:                                       ; preds = %if.end15.i
  %116 = ptrtoint ptr %bat_info.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %bat_info.i, align 4
  %constant_charge_current_max_ua.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %117, i32 0, i32 11
  %118 = ptrtoint ptr %constant_charge_current_max_ua.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %constant_charge_current_max_ua.i, align 4
  %ichg_max.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 8
  %120 = ptrtoint ptr %ichg_max.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %ichg_max.i, align 4
  %constant_charge_voltage_max_uv.i = getelementptr inbounds %struct.power_supply_battery_info, ptr %117, i32 0, i32 12
  %121 = ptrtoint ptr %constant_charge_voltage_max_uv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %constant_charge_voltage_max_uv.i, align 4
  %vreg_max.i = getelementptr inbounds %struct.bq25980_device, ptr %call.i, i32 0, i32 7, i32 9
  %123 = ptrtoint ptr %vreg_max.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %vreg_max.i, align 4
  %124 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %bypass.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %125)
  %tobool21.not.i = icmp eq i8 %125, 0
  br i1 %tobool21.not.i, label %if.end19.i.if.end33.i_crit_edge, label %if.then22.i

if.end19.i.if.end33.i_crit_edge:                  ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then22.i:                                      ; preds = %if.end19.i
  %126 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap, align 4
  %call.i82.i = call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef 15, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool25.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool25.not.i, label %if.then22.i.if.end33.i_crit_edge, label %if.then22.i.bq25980_hw_init.exit.thread_crit_edge

if.then22.i.bq25980_hw_init.exit.thread_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_hw_init.exit.thread

if.then22.i.if.end33.i_crit_edge:                 ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then22.i.if.end33.i_crit_edge, %if.end19.i.if.end33.i_crit_edge
  %curr_val.0.in.i = phi ptr [ %bypass_ilim.i, %if.then22.i.if.end33.i_crit_edge ], [ %sc_ilim.i, %if.end19.i.if.end33.i_crit_edge ]
  %volt_val.0.in.i = phi ptr [ %bypass_vlim.i, %if.then22.i.if.end33.i_crit_edge ], [ %sc_vlim.i, %if.end19.i.if.end33.i_crit_edge ]
  %128 = ptrtoint ptr %volt_val.0.in.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %volt_val.0.i = load i32, ptr %volt_val.0.in.i, align 4
  %129 = ptrtoint ptr %curr_val.0.in.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %curr_val.0.i = load i32, ptr %curr_val.0.in.i, align 4
  %call34.i = call fastcc i32 @bq25980_set_input_curr_lim(ptr noundef nonnull %call.i, i32 noundef %curr_val.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end33.i.bq25980_hw_init.exit.thread_crit_edge

if.end33.i.bq25980_hw_init.exit.thread_crit_edge: ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_hw_init.exit.thread

if.end37.i:                                       ; preds = %if.end33.i
  %130 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %bypass.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i = icmp eq i8 %131, 0
  %132 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %chip_info, align 4
  br i1 %tobool.not.i.i, label %if.else12.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end37.i
  %busovp_byp_step.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 11
  %134 = ptrtoint ptr %busovp_byp_step.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %busovp_byp_step.i.i, align 4
  %busovp_byp_offset.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 12
  %136 = ptrtoint ptr %busovp_byp_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %busovp_byp_offset.i.i, align 4
  %busovp_byp_max.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 16
  %138 = ptrtoint ptr %busovp_byp_max.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %busovp_byp_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %volt_val.0.i)
  %cmp.i.i104 = icmp slt i32 %139, %volt_val.0.i
  br i1 %cmp.i.i104, label %if.then.i.i.if.end28.i.i_crit_edge, label %if.else.i.i

if.then.i.i.if.end28.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %busovp_byp_min.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 15
  br label %if.end28.sink.split.i.i

if.else12.i.i:                                    ; preds = %if.end37.i
  %busovp_sc_step.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 9
  %140 = ptrtoint ptr %busovp_sc_step.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %busovp_sc_step.i.i, align 4
  %busovp_sc_offset.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 10
  %142 = ptrtoint ptr %busovp_sc_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %busovp_sc_offset.i.i, align 4
  %busovp_sc_max.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 14
  %144 = ptrtoint ptr %busovp_sc_max.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %busovp_sc_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %volt_val.0.i)
  %cmp16.i.i = icmp slt i32 %145, %volt_val.0.i
  br i1 %cmp16.i.i, label %if.else12.i.i.if.end28.i.i_crit_edge, label %if.else20.i.i

if.else12.i.i.if.end28.i.i_crit_edge:             ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i

if.else20.i.i:                                    ; preds = %if.else12.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %busovp_sc_min.i.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %133, i32 0, i32 13
  br label %if.end28.sink.split.i.i

if.end28.sink.split.i.i:                          ; preds = %if.else20.i.i, %if.else.i.i
  %busovp_sc_min.sink.i.i = phi ptr [ %busovp_sc_min.i.i, %if.else20.i.i ], [ %busovp_byp_min.i.i, %if.else.i.i ]
  %busovp_step.0.ph.i.i = phi i32 [ %141, %if.else20.i.i ], [ %135, %if.else.i.i ]
  %busovp_offset.0.ph.i.i = phi i32 [ %143, %if.else20.i.i ], [ %137, %if.else.i.i ]
  %146 = ptrtoint ptr %busovp_sc_min.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %busovp_sc_min.sink.i.i, align 4
  %148 = call i32 @llvm.smax.i32(i32 %147, i32 %volt_val.0.i) #8
  br label %if.end28.i.i

if.end28.i.i:                                     ; preds = %if.end28.sink.split.i.i, %if.else12.i.i.if.end28.i.i_crit_edge, %if.then.i.i.if.end28.i.i_crit_edge
  %busovp.addr.0.i.i = phi i32 [ %139, %if.then.i.i.if.end28.i.i_crit_edge ], [ %145, %if.else12.i.i.if.end28.i.i_crit_edge ], [ %148, %if.end28.sink.split.i.i ]
  %busovp_step.0.i.i = phi i32 [ %135, %if.then.i.i.if.end28.i.i_crit_edge ], [ %141, %if.else12.i.i.if.end28.i.i_crit_edge ], [ %busovp_step.0.ph.i.i, %if.end28.sink.split.i.i ]
  %busovp_offset.0.i.i = phi i32 [ %137, %if.then.i.i.if.end28.i.i_crit_edge ], [ %143, %if.else12.i.i.if.end28.i.i_crit_edge ], [ %busovp_offset.0.ph.i.i, %if.end28.sink.split.i.i ]
  %sub.i.i = sub i32 %busovp.addr.0.i.i, %busovp_offset.0.i.i
  %div.i.i = udiv i32 %sub.i.i, %busovp_step.0.i.i
  %149 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap, align 4
  %call.i83.i = call i32 @regmap_write(ptr noundef %150, i32 noundef 6, i32 noundef %div.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i)
  %tobool29.not.i.i = icmp eq i32 %call.i83.i, 0
  br i1 %tobool29.not.i.i, label %bq25980_set_input_volt_lim.exit.i, label %if.end28.i.i.bq25980_hw_init.exit.thread_crit_edge

if.end28.i.i.bq25980_hw_init.exit.thread_crit_edge: ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_hw_init.exit.thread

bq25980_set_input_volt_lim.exit.i:                ; preds = %if.end28.i.i
  %151 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap, align 4
  %call33.i.i = call i32 @regmap_write(ptr noundef %152, i32 noundef 7, i32 noundef %div.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool39.not.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool39.not.i, label %bq25980_hw_init.exit, label %bq25980_set_input_volt_lim.exit.i.bq25980_hw_init.exit.thread_crit_edge

bq25980_set_input_volt_lim.exit.i.bq25980_hw_init.exit.thread_crit_edge: ; preds = %bq25980_set_input_volt_lim.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_hw_init.exit.thread

bq25980_hw_init.exit.thread:                      ; preds = %bq25980_set_input_volt_lim.exit.i.bq25980_hw_init.exit.thread_crit_edge, %if.end28.i.i.bq25980_hw_init.exit.thread_crit_edge, %if.end33.i.bq25980_hw_init.exit.thread_crit_edge, %if.then22.i.bq25980_hw_init.exit.thread_crit_edge, %do.end.i98, %if.end12.i.bq25980_hw_init.exit.thread_crit_edge
  %retval.0.i105.ph = phi i32 [ %call.i83.i, %if.end28.i.i.bq25980_hw_init.exit.thread_crit_edge ], [ %call33.i.i, %bq25980_set_input_volt_lim.exit.i.bq25980_hw_init.exit.thread_crit_edge ], [ %call34.i, %if.end33.i.bq25980_hw_init.exit.thread_crit_edge ], [ %call.i82.i, %if.then22.i.bq25980_hw_init.exit.thread_crit_edge ], [ %call.i.i95, %if.end12.i.bq25980_hw_init.exit.thread_crit_edge ], [ -22, %do.end.i98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #8
  br label %do.end46

bq25980_hw_init.exit:                             ; preds = %bq25980_set_input_volt_lim.exit.i
  %153 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap, align 4
  %call.i84.i = call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 35, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bat_info.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool42.not = icmp eq i32 %call.i84.i, 0
  br i1 %tobool42.not, label %bq25980_hw_init.exit.cleanup_crit_edge, label %bq25980_hw_init.exit.do.end46_crit_edge

bq25980_hw_init.exit.do.end46_crit_edge:          ; preds = %bq25980_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end46

bq25980_hw_init.exit.cleanup_crit_edge:           ; preds = %bq25980_hw_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end46:                                         ; preds = %bq25980_hw_init.exit.do.end46_crit_edge, %bq25980_hw_init.exit.thread
  %retval.0.i105114 = phi i32 [ %retval.0.i105.ph, %bq25980_hw_init.exit.thread ], [ %call.i84.i, %bq25980_hw_init.exit.do.end46_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end46, %bq25980_hw_init.exit.cleanup_crit_edge, %do.end39, %dev_name.exit.cleanup_crit_edge, %do.end22, %do.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %do.end13 ], [ -22, %do.end22 ], [ -22, %do.end39 ], [ %retval.0.i105114, %do.end46 ], [ -12, %entry.cleanup_crit_edge ], [ %call29, %dev_name.exit.cleanup_crit_edge ], [ 0, %bq25980_hw_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_irq_handler_thread(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %state = alloca %struct.bq25980_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #8
  %0 = call ptr @memset(ptr %state, i32 255, i32 24)
  %call = call fastcc i32 @bq25980_get_state(ptr noundef %private, ptr noundef nonnull %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.irq_out_crit_edge, label %if.end

entry.irq_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_out

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %state.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %old_state.sroa.0.0.copyload68.i = load i8, ptr %state.i, align 4
  %old_state.sroa.5.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %old_state.sroa.5.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %old_state.sroa.5.0.copyload69.i = load i8, ptr %old_state.sroa.5.0.state.sroa_idx.i, align 1
  %old_state.sroa.6.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 2
  %3 = ptrtoint ptr %old_state.sroa.6.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %old_state.sroa.6.0.copyload70.i = load i8, ptr %old_state.sroa.6.0.state.sroa_idx.i, align 2
  %old_state.sroa.7.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 3
  %4 = ptrtoint ptr %old_state.sroa.7.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %old_state.sroa.7.0.copyload71.i = load i8, ptr %old_state.sroa.7.0.state.sroa_idx.i, align 1
  %old_state.sroa.8.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 4
  %5 = ptrtoint ptr %old_state.sroa.8.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %old_state.sroa.8.0.copyload72.i = load i8, ptr %old_state.sroa.8.0.state.sroa_idx.i, align 4
  %old_state.sroa.9.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 5
  %6 = ptrtoint ptr %old_state.sroa.9.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %old_state.sroa.9.0.copyload73.i = load i8, ptr %old_state.sroa.9.0.state.sroa_idx.i, align 1
  %old_state.sroa.10.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 6
  %7 = ptrtoint ptr %old_state.sroa.10.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %old_state.sroa.10.0.copyload74.i = load i8, ptr %old_state.sroa.10.0.state.sroa_idx.i, align 2
  %old_state.sroa.11.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 7
  %8 = ptrtoint ptr %old_state.sroa.11.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %old_state.sroa.11.0.copyload75.i = load i8, ptr %old_state.sroa.11.0.state.sroa_idx.i, align 1
  %old_state.sroa.12.0.state.sroa_idx.i = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 9, i32 8
  %9 = ptrtoint ptr %old_state.sroa.12.0.state.sroa_idx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %old_state.sroa.12.0.copyload76.i = load i8, ptr %old_state.sroa.12.0.state.sroa_idx.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %10 = and i8 %old_state.sroa.0.0.copyload68.i, 1
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %state, align 4, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not.i = icmp eq i8 %10, %12
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false.i:                                  ; preds = %if.end
  %13 = and i8 %old_state.sroa.5.0.copyload69.i, 1
  %ovp8.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 1
  %14 = ptrtoint ptr %ovp8.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ovp8.i, align 1, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp11.not.i = icmp eq i8 %13, %15
  br i1 %cmp11.not.i, label %lor.lhs.false13.i, label %lor.lhs.false.i.if.end3_crit_edge

lor.lhs.false.i.if.end3_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false13.i:                                ; preds = %lor.lhs.false.i
  %16 = and i8 %old_state.sroa.6.0.copyload70.i, 1
  %ocp16.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 2
  %17 = ptrtoint ptr %ocp16.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ocp16.i, align 2, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %16, i8 %18)
  %cmp19.not.i = icmp eq i8 %16, %18
  br i1 %cmp19.not.i, label %lor.lhs.false21.i, label %lor.lhs.false13.i.if.end3_crit_edge

lor.lhs.false13.i.if.end3_crit_edge:              ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false21.i:                                ; preds = %lor.lhs.false13.i
  %19 = and i8 %old_state.sroa.9.0.copyload73.i, 1
  %online24.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 5
  %20 = ptrtoint ptr %online24.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %online24.i, align 1, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp27.not.i = icmp eq i8 %19, %21
  br i1 %cmp27.not.i, label %lor.lhs.false29.i, label %lor.lhs.false21.i.if.end3_crit_edge

lor.lhs.false21.i.if.end3_crit_edge:              ; preds = %lor.lhs.false21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false29.i:                                ; preds = %lor.lhs.false21.i
  %22 = and i8 %old_state.sroa.7.0.copyload71.i, 1
  %wdt32.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 3
  %23 = ptrtoint ptr %wdt32.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %wdt32.i, align 1, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp35.not.i = icmp eq i8 %22, %24
  br i1 %cmp35.not.i, label %lor.lhs.false37.i, label %lor.lhs.false29.i.if.end3_crit_edge

lor.lhs.false29.i.if.end3_crit_edge:              ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false37.i:                                ; preds = %lor.lhs.false29.i
  %25 = and i8 %old_state.sroa.8.0.copyload72.i, 1
  %tflt40.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 4
  %26 = ptrtoint ptr %tflt40.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %tflt40.i, align 4, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp43.not.i = icmp eq i8 %25, %27
  br i1 %cmp43.not.i, label %lor.lhs.false45.i, label %lor.lhs.false37.i.if.end3_crit_edge

lor.lhs.false37.i.if.end3_crit_edge:              ; preds = %lor.lhs.false37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false45.i:                                ; preds = %lor.lhs.false37.i
  %28 = and i8 %old_state.sroa.10.0.copyload74.i, 1
  %ce48.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 6
  %29 = ptrtoint ptr %ce48.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %ce48.i, align 2, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp51.not.i = icmp eq i8 %28, %30
  br i1 %cmp51.not.i, label %lor.lhs.false53.i, label %lor.lhs.false45.i.if.end3_crit_edge

lor.lhs.false45.i.if.end3_crit_edge:              ; preds = %lor.lhs.false45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

lor.lhs.false53.i:                                ; preds = %lor.lhs.false45.i
  %31 = and i8 %old_state.sroa.11.0.copyload75.i, 1
  %hiz56.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 7
  %32 = ptrtoint ptr %hiz56.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hiz56.i, align 1, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %33)
  %cmp59.not.i = icmp eq i8 %31, %33
  br i1 %cmp59.not.i, label %bq25980_state_changed.exit, label %lor.lhs.false53.i.if.end3_crit_edge

lor.lhs.false53.i.if.end3_crit_edge:              ; preds = %lor.lhs.false53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

bq25980_state_changed.exit:                       ; preds = %lor.lhs.false53.i
  %34 = and i8 %old_state.sroa.12.0.copyload76.i, 1
  %bypass63.i = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 8
  %35 = ptrtoint ptr %bypass63.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bypass63.i, align 4, !range !123
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %36)
  %cmp66.i.not = icmp eq i8 %34, %36
  br i1 %cmp66.i.not, label %bq25980_state_changed.exit.irq_out_crit_edge, label %bq25980_state_changed.exit.if.end3_crit_edge

bq25980_state_changed.exit.if.end3_crit_edge:     ; preds = %bq25980_state_changed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

bq25980_state_changed.exit.irq_out_crit_edge:     ; preds = %bq25980_state_changed.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %irq_out

if.end3:                                          ; preds = %bq25980_state_changed.exit.if.end3_crit_edge, %lor.lhs.false53.i.if.end3_crit_edge, %lor.lhs.false45.i.if.end3_crit_edge, %lor.lhs.false37.i.if.end3_crit_edge, %lor.lhs.false29.i.if.end3_crit_edge, %lor.lhs.false21.i.if.end3_crit_edge, %lor.lhs.false13.i.if.end3_crit_edge, %lor.lhs.false.i.if.end3_crit_edge, %if.end.if.end3_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %37 = call ptr @memcpy(ptr %state.i, ptr %state, i32 24)
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %charger = getelementptr inbounds %struct.bq25980_device, ptr %private, i32 0, i32 2
  %38 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %39) #8
  br label %irq_out

irq_out:                                          ; preds = %if.end3, %bq25980_state_changed.exit.irq_out_crit_edge, %entry.irq_out_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #8
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @bq25980_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 15, label %entry.return_crit_edge
    i32 35, label %entry.return_crit_edge3
    i32 36, label %entry.return_crit_edge4
    i32 37, label %entry.return_crit_edge5
    i32 38, label %entry.return_crit_edge6
    i32 39, label %entry.return_crit_edge7
    i32 40, label %entry.return_crit_edge8
    i32 41, label %entry.return_crit_edge9
    i32 42, label %entry.return_crit_edge10
    i32 43, label %entry.return_crit_edge11
    i32 44, label %entry.return_crit_edge12
    i32 45, label %entry.return_crit_edge13
    i32 46, label %entry.return_crit_edge14
    i32 47, label %entry.return_crit_edge15
    i32 48, label %entry.return_crit_edge16
    i32 49, label %entry.return_crit_edge17
    i32 50, label %entry.return_crit_edge18
    i32 51, label %entry.return_crit_edge19
    i32 52, label %entry.return_crit_edge20
    i32 53, label %entry.return_crit_edge21
    i32 54, label %entry.return_crit_edge22
    i32 55, label %entry.return_crit_edge23
    i32 56, label %entry.return_crit_edge24
    i32 19, label %entry.return_crit_edge25
    i32 20, label %entry.return_crit_edge26
    i32 21, label %entry.return_crit_edge27
    i32 22, label %entry.return_crit_edge28
    i32 23, label %entry.return_crit_edge29
    i32 24, label %entry.return_crit_edge30
    i32 25, label %entry.return_crit_edge31
    i32 26, label %entry.return_crit_edge32
    i32 27, label %entry.return_crit_edge33
    i32 28, label %entry.return_crit_edge34
  ]

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq25980_get_state(ptr nocapture noundef readonly %bq, ptr nocapture noundef writeonly %state) unnamed_addr #2 align 64 {
entry:
  %chg_ctrl_2 = alloca i32, align 4
  %stat1 = alloca i32, align 4
  %stat2 = alloca i32, align 4
  %stat3 = alloca i32, align 4
  %stat4 = alloca i32, align 4
  %ibat_adc_msb = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chg_ctrl_2) #8
  %0 = ptrtoint ptr %chg_ctrl_2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %chg_ctrl_2, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat1) #8
  %1 = ptrtoint ptr %stat1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %stat1, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat2) #8
  %2 = ptrtoint ptr %stat2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %stat2, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat3) #8
  %3 = ptrtoint ptr %stat3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %stat3, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %stat4) #8
  %4 = ptrtoint ptr %stat4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %stat4, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibat_adc_msb) #8
  %5 = ptrtoint ptr %ibat_adc_msb to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ibat_adc_msb, align 4, !annotation !122
  %regmap = getelementptr inbounds %struct.bq25980_device, ptr %bq, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %7, i32 noundef 19, ptr noundef nonnull %stat1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %9, i32 noundef 20, ptr noundef nonnull %stat2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call7 = call i32 @regmap_read(ptr noundef %11, i32 noundef 21, ptr noundef nonnull %stat3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call12 = call i32 @regmap_read(ptr noundef %13, i32 noundef 22, ptr noundef nonnull %stat4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call17 = call i32 @regmap_read(ptr noundef %15, i32 noundef 15, ptr noundef nonnull %chg_ctrl_2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %if.end15
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call22 = call i32 @regmap_read(ptr noundef %17, i32 noundef 49, ptr noundef nonnull %ibat_adc_msb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %ibat_adc_msb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ibat_adc_msb, align 4
  %20 = trunc i32 %19 to i8
  %21 = lshr i8 %20, 7
  %22 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %state, align 4
  %23 = ptrtoint ptr %stat1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %stat1, align 4
  %and27 = and i32 %24, 97
  %25 = ptrtoint ptr %stat3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %stat3, align 4
  %and28 = and i32 %26, 192
  %or = or i32 %and28, %and27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool29 = icmp ne i32 %or, 0
  %ovp = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 1
  %frombool30 = zext i1 %tobool29 to i8
  %27 = ptrtoint ptr %ovp to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool30, ptr %ovp, align 1
  %and31 = and i32 %24, 8
  %28 = ptrtoint ptr %stat2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat2, align 4
  %and32 = and i32 %29, 66
  %or33 = or i32 %and32, %and31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or33)
  %tobool34 = icmp ne i32 %or33, 0
  %ocp = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 2
  %frombool35 = zext i1 %tobool34 to i8
  %30 = ptrtoint ptr %ocp to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %frombool35, ptr %ocp, align 2
  %31 = ptrtoint ptr %stat4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %stat4, align 4
  %and36 = and i32 %32, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37 = icmp ne i32 %and36, 0
  %tflt = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 4
  %frombool38 = zext i1 %tobool37 to i8
  %33 = ptrtoint ptr %tflt to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %frombool38, ptr %tflt, align 4
  %wdt = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 3
  %34 = trunc i32 %32 to i8
  %35 = and i8 %34, 1
  %36 = ptrtoint ptr %wdt to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %wdt, align 1
  %and42 = and i32 %26, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43 = icmp ne i32 %and42, 0
  %online = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 5
  %frombool44 = zext i1 %tobool43 to i8
  %37 = ptrtoint ptr %online to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool44, ptr %online, align 1
  %38 = ptrtoint ptr %chg_ctrl_2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chg_ctrl_2, align 4
  %ce = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 6
  %40 = trunc i32 %39 to i8
  %41 = lshr i8 %40, 4
  %42 = and i8 %41, 1
  %43 = ptrtoint ptr %ce to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ce, align 2
  %hiz = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 7
  %44 = lshr i8 %40, 6
  %45 = and i8 %44, 1
  %46 = ptrtoint ptr %hiz to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %hiz, align 1
  %bypass = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 8
  %47 = lshr i8 %40, 3
  %48 = and i8 %47, 1
  %49 = ptrtoint ptr %bypass to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %bypass, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ %call7, %if.end5.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibat_adc_msb) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat4) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat2) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %stat1) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chg_ctrl_2) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_get_charger_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %batovp_reg_code.i = alloca i32, align 4
  %batocp_reg_code.i = alloca i32, align 4
  %vbus_adc_lsb.i = alloca i32, align 4
  %vbus_adc_msb.i = alloca i32, align 4
  %ibus_adc_lsb.i = alloca i32, align 4
  %ibus_adc_msb.i = alloca i32, align 4
  %busocp_reg_code.i = alloca i32, align 4
  %busovp_reg_code.i = alloca i32, align 4
  %state = alloca %struct.bq25980_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #8
  %0 = call ptr @memset(ptr %state, i32 255, i32 24)
  %lock = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %call1 = call fastcc i32 @bq25980_get_state(ptr noundef %call, ptr noundef nonnull %state)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %psp, label %if.end.cleanup_crit_edge [
    i32 74, label %sw.bb
    i32 73, label %sw.bb3
    i32 4, label %sw.bb4
    i32 39, label %sw.bb6
    i32 38, label %sw.bb11
    i32 2, label %sw.bb17
    i32 0, label %sw.bb32
    i32 1, label %sw.bb47
    i32 17, label %sw.bb61
    i32 12, label %sw.bb67
    i32 29, label %sw.bb73
    i32 31, label %sw.bb79
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.35, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %model_name = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 6
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %model_name, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %online = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %online, align 1, !range !123
  %6 = zext i8 %5 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busovp_reg_code.i) #8
  %8 = ptrtoint ptr %busovp_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %busovp_reg_code.i, align 4, !annotation !122
  %bypass.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 9, i32 8
  %9 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bypass.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  %chip_info2.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %chip_info2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_info2.i, align 4
  %busovp_byp_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %12, i32 0, i32 11
  %busovp_byp_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %12, i32 0, i32 12
  %busovp_sc_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %12, i32 0, i32 9
  %busovp_sc_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %12, i32 0, i32 10
  %busovp_offset.0.in.i = select i1 %tobool.not.i, ptr %busovp_sc_offset.i, ptr %busovp_byp_offset.i
  %busovp_step.0.in.i = select i1 %tobool.not.i, ptr %busovp_sc_step.i, ptr %busovp_byp_step.i
  %13 = ptrtoint ptr %busovp_step.0.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %busovp_step.0.i = load i32, ptr %busovp_step.0.in.i, align 4
  %14 = ptrtoint ptr %busovp_offset.0.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %busovp_offset.0.i = load i32, ptr %busovp_offset.0.in.i, align 4
  %regmap.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %16, i32 noundef 6, ptr noundef nonnull %busovp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %sw.bb6.bq25980_get_input_volt_lim.exit_crit_edge

sw.bb6.bq25980_get_input_volt_lim.exit_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_input_volt_lim.exit

if.end6.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %busovp_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %busovp_reg_code.i, align 4
  %mul.i = mul i32 %18, %busovp_step.0.i
  %add.i = add i32 %mul.i, %busovp_offset.0.i
  br label %bq25980_get_input_volt_lim.exit

bq25980_get_input_volt_lim.exit:                  ; preds = %if.end6.i, %sw.bb6.bq25980_get_input_volt_lim.exit_crit_edge
  %retval.0.i = phi i32 [ %add.i, %if.end6.i ], [ %call.i, %sw.bb6.bq25980_get_input_volt_lim.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busovp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %bq25980_get_input_volt_lim.exit.cleanup_crit_edge, label %if.end10

bq25980_get_input_volt_lim.exit.cleanup_crit_edge: ; preds = %bq25980_get_input_volt_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %bq25980_get_input_volt_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %busocp_reg_code.i) #8
  %20 = ptrtoint ptr %busocp_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %busocp_reg_code.i, align 4, !annotation !122
  %regmap.i137 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %21 = ptrtoint ptr %regmap.i137 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i137, align 4
  %call.i138 = call i32 @regmap_read(ptr noundef %22, i32 noundef 8, ptr noundef nonnull %busocp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i138)
  %tobool.not.i139 = icmp eq i32 %call.i138, 0
  br i1 %tobool.not.i139, label %if.end.i, label %sw.bb11.bq25980_get_input_curr_lim.exit_crit_edge

sw.bb11.bq25980_get_input_curr_lim.exit_crit_edge: ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_input_curr_lim.exit

if.end.i:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %busocp_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %busocp_reg_code.i, align 4
  %mul.i140 = mul i32 %24, 250000
  %add.i141 = add i32 %mul.i140, 1000000
  br label %bq25980_get_input_curr_lim.exit

bq25980_get_input_curr_lim.exit:                  ; preds = %if.end.i, %sw.bb11.bq25980_get_input_curr_lim.exit_crit_edge
  %retval.0.i142 = phi i32 [ %add.i141, %if.end.i ], [ %call.i138, %sw.bb11.bq25980_get_input_curr_lim.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %busocp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i142)
  %cmp13 = icmp slt i32 %retval.0.i142, 0
  br i1 %cmp13, label %bq25980_get_input_curr_lim.exit.cleanup_crit_edge, label %if.end16

bq25980_get_input_curr_lim.exit.cleanup_crit_edge: ; preds = %bq25980_get_input_curr_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %bq25980_get_input_curr_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i142, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %if.end
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %val, align 4
  %tflt = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 4
  %27 = ptrtoint ptr %tflt to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tflt, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.not = icmp eq i8 %28, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb17
  %ovp = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 1
  %30 = ptrtoint ptr %ovp to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ovp, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool20.not = icmp eq i8 %31, 0
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else22:                                        ; preds = %if.else
  %ocp = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 2
  %33 = ptrtoint ptr %ocp to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ocp, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool23.not = icmp eq i8 %34, 0
  br i1 %tobool23.not, label %if.else25, label %if.then24

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 9, ptr %val, align 4
  br label %cleanup

if.else25:                                        ; preds = %if.else22
  %wdt = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 3
  %36 = ptrtoint ptr %wdt to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %wdt, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool26.not = icmp eq i8 %37, 0
  br i1 %tobool26.not, label %if.else25.cleanup_crit_edge, label %if.then27

if.else25.cleanup_crit_edge:                      ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 7, ptr %val, align 4
  br label %cleanup

sw.bb32:                                          ; preds = %if.end
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %val, align 4
  %ce = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 6
  %40 = ptrtoint ptr %ce to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ce, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool33.not = icmp eq i8 %41, 0
  br i1 %tobool33.not, label %if.else37, label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb32
  %hiz = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 7
  %42 = ptrtoint ptr %hiz to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %hiz, align 1, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool35.not = icmp eq i8 %43, 0
  br i1 %tobool35.not, label %if.then36, label %if.else37.thread

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else37:                                        ; preds = %sw.bb32
  %45 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %state, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool38.not = icmp eq i8 %46, 0
  br i1 %tobool38.not, label %if.then43, label %if.else37.if.then39_crit_edge

if.else37.if.then39_crit_edge:                    ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.else37.thread:                                 ; preds = %land.lhs.true
  %47 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %state, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool38.not175 = icmp eq i8 %48, 0
  br i1 %tobool38.not175, label %if.else37.thread.cleanup_crit_edge, label %if.else37.thread.if.then39_crit_edge

if.else37.thread.if.then39_crit_edge:             ; preds = %if.else37.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then39

if.else37.thread.cleanup_crit_edge:               ; preds = %if.else37.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %if.else37.thread.if.then39_crit_edge, %if.else37.if.then39_crit_edge
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.then43:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb47:                                          ; preds = %if.end
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val, align 4
  %ce48 = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 6
  %52 = ptrtoint ptr %ce48 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %ce48, align 2, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool49.not = icmp eq i8 %53, 0
  br i1 %tobool49.not, label %if.then50, label %if.else51

if.then50:                                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else51:                                        ; preds = %sw.bb47
  %bypass = getelementptr inbounds %struct.bq25980_state, ptr %state, i32 0, i32 8
  %55 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %bypass, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool52.not = icmp eq i8 %56, 0
  br i1 %tobool52.not, label %if.then57, label %if.then53

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.then57:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.bb61:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibus_adc_lsb.i) #8
  %59 = ptrtoint ptr %ibus_adc_lsb.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 -1, ptr %ibus_adc_lsb.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibus_adc_msb.i) #8
  %60 = ptrtoint ptr %ibus_adc_msb.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %ibus_adc_msb.i, align 4, !annotation !122
  %regmap.i143 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %61 = ptrtoint ptr %regmap.i143 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i143, align 4
  %call.i144 = call i32 @regmap_read(ptr noundef %62, i32 noundef 37, ptr noundef nonnull %ibus_adc_msb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i144)
  %tobool.not.i145 = icmp eq i32 %call.i144, 0
  br i1 %tobool.not.i145, label %if.end.i146, label %sw.bb61.bq25980_get_adc_ibus.exit_crit_edge

sw.bb61.bq25980_get_adc_ibus.exit_crit_edge:      ; preds = %sw.bb61
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_ibus.exit

if.end.i146:                                      ; preds = %sw.bb61
  %63 = ptrtoint ptr %regmap.i143 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i143, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %64, i32 noundef 38, ptr noundef nonnull %ibus_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i146.bq25980_get_adc_ibus.exit_crit_edge

if.end.i146.bq25980_get_adc_ibus.exit_crit_edge:  ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_ibus.exit

if.end5.i:                                        ; preds = %if.end.i146
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %ibus_adc_msb.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ibus_adc_msb.i, align 4
  %shl.i = shl i32 %66, 8
  %67 = ptrtoint ptr %ibus_adc_lsb.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ibus_adc_lsb.i, align 4
  %or.i = or i32 %shl.i, %68
  %and.i = and i32 %66, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  %conv10.i = and i32 %or.i, 65535
  %add.i147 = sub nuw nsw i32 65536, %conv10.i
  %retval.0.i149.ph.v = select i1 %tobool6.not.i, i32 %conv10.i, i32 %add.i147
  %retval.0.i149.ph = mul nuw nsw i32 %retval.0.i149.ph.v, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibus_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibus_adc_lsb.i) #8
  br label %if.end66

bq25980_get_adc_ibus.exit:                        ; preds = %if.end.i146.bq25980_get_adc_ibus.exit_crit_edge, %sw.bb61.bq25980_get_adc_ibus.exit_crit_edge
  %retval.0.i149 = phi i32 [ %call.i144, %sw.bb61.bq25980_get_adc_ibus.exit_crit_edge ], [ %call2.i, %if.end.i146.bq25980_get_adc_ibus.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibus_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibus_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i149)
  %cmp63 = icmp slt i32 %retval.0.i149, 0
  br i1 %cmp63, label %bq25980_get_adc_ibus.exit.cleanup_crit_edge, label %bq25980_get_adc_ibus.exit.if.end66_crit_edge

bq25980_get_adc_ibus.exit.if.end66_crit_edge:     ; preds = %bq25980_get_adc_ibus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

bq25980_get_adc_ibus.exit.cleanup_crit_edge:      ; preds = %bq25980_get_adc_ibus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %bq25980_get_adc_ibus.exit.if.end66_crit_edge, %if.end5.i
  %retval.0.i149178 = phi i32 [ %retval.0.i149.ph, %if.end5.i ], [ %retval.0.i149, %bq25980_get_adc_ibus.exit.if.end66_crit_edge ]
  %69 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %retval.0.i149178, ptr %val, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_adc_lsb.i) #8
  %70 = ptrtoint ptr %vbus_adc_lsb.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 -1, ptr %vbus_adc_lsb.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vbus_adc_msb.i) #8
  %71 = ptrtoint ptr %vbus_adc_msb.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %vbus_adc_msb.i, align 4, !annotation !122
  %regmap.i150 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %72 = ptrtoint ptr %regmap.i150 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i150, align 4
  %call.i151 = call i32 @regmap_read(ptr noundef %73, i32 noundef 39, ptr noundef nonnull %vbus_adc_msb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end.i155, label %sw.bb67.bq25980_get_adc_vbus.exit_crit_edge

sw.bb67.bq25980_get_adc_vbus.exit_crit_edge:      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_vbus.exit

if.end.i155:                                      ; preds = %sw.bb67
  %74 = ptrtoint ptr %regmap.i150 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i150, align 4
  %call2.i153 = call i32 @regmap_read(ptr noundef %75, i32 noundef 40, ptr noundef nonnull %vbus_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i153)
  %tobool3.not.i154 = icmp eq i32 %call2.i153, 0
  br i1 %tobool3.not.i154, label %bq25980_get_adc_vbus.exit.thread, label %if.end.i155.bq25980_get_adc_vbus.exit_crit_edge

if.end.i155.bq25980_get_adc_vbus.exit_crit_edge:  ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_vbus.exit

bq25980_get_adc_vbus.exit.thread:                 ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %vbus_adc_msb.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vbus_adc_msb.i, align 4
  %shl.i156 = shl i32 %77, 8
  %78 = ptrtoint ptr %vbus_adc_lsb.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %vbus_adc_lsb.i, align 4
  %or.i157 = or i32 %shl.i156, %79
  %conv6.i = and i32 %or.i157, 65535
  %mul.i158 = mul nuw nsw i32 %conv6.i, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_adc_lsb.i) #8
  br label %if.end72

bq25980_get_adc_vbus.exit:                        ; preds = %if.end.i155.bq25980_get_adc_vbus.exit_crit_edge, %sw.bb67.bq25980_get_adc_vbus.exit_crit_edge
  %retval.0.i160 = phi i32 [ %call.i151, %sw.bb67.bq25980_get_adc_vbus.exit_crit_edge ], [ %call2.i153, %if.end.i155.bq25980_get_adc_vbus.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vbus_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i160)
  %cmp69 = icmp slt i32 %retval.0.i160, 0
  br i1 %cmp69, label %bq25980_get_adc_vbus.exit.cleanup_crit_edge, label %bq25980_get_adc_vbus.exit.if.end72_crit_edge

bq25980_get_adc_vbus.exit.if.end72_crit_edge:     ; preds = %bq25980_get_adc_vbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end72

bq25980_get_adc_vbus.exit.cleanup_crit_edge:      ; preds = %bq25980_get_adc_vbus.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %bq25980_get_adc_vbus.exit.if.end72_crit_edge, %bq25980_get_adc_vbus.exit.thread
  %retval.0.i160181 = phi i32 [ %mul.i158, %bq25980_get_adc_vbus.exit.thread ], [ %retval.0.i160, %bq25980_get_adc_vbus.exit.if.end72_crit_edge ]
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i160181, ptr %val, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batocp_reg_code.i) #8
  %81 = ptrtoint ptr %batocp_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %batocp_reg_code.i, align 4, !annotation !122
  %regmap.i161 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %82 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i161, align 4
  %call.i162 = call i32 @regmap_read(ptr noundef %83, i32 noundef 2, ptr noundef nonnull %batocp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %bq25980_get_const_charge_curr.exit.thread, label %bq25980_get_const_charge_curr.exit

bq25980_get_const_charge_curr.exit.thread:        ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %batocp_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %batocp_reg_code.i, align 4
  %and.i164 = and i32 %85, 127
  %mul.i165 = mul nuw nsw i32 %and.i164, 100000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batocp_reg_code.i) #8
  br label %if.end78

bq25980_get_const_charge_curr.exit:               ; preds = %sw.bb73
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batocp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %cmp75 = icmp slt i32 %call.i162, 0
  br i1 %cmp75, label %bq25980_get_const_charge_curr.exit.cleanup_crit_edge, label %bq25980_get_const_charge_curr.exit.if.end78_crit_edge

bq25980_get_const_charge_curr.exit.if.end78_crit_edge: ; preds = %bq25980_get_const_charge_curr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

bq25980_get_const_charge_curr.exit.cleanup_crit_edge: ; preds = %bq25980_get_const_charge_curr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end78:                                         ; preds = %bq25980_get_const_charge_curr.exit.if.end78_crit_edge, %bq25980_get_const_charge_curr.exit.thread
  %retval.0.i167184 = phi i32 [ %mul.i165, %bq25980_get_const_charge_curr.exit.thread ], [ %call.i162, %bq25980_get_const_charge_curr.exit.if.end78_crit_edge ]
  %86 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i167184, ptr %val, align 4
  br label %cleanup

sw.bb79:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batovp_reg_code.i) #8
  %87 = ptrtoint ptr %batovp_reg_code.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %batovp_reg_code.i, align 4, !annotation !122
  %regmap.i168 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %88 = ptrtoint ptr %regmap.i168 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i168, align 4
  %call.i169 = call i32 @regmap_read(ptr noundef %89, i32 noundef 0, ptr noundef nonnull %batovp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i169)
  %tobool.not.i170 = icmp eq i32 %call.i169, 0
  br i1 %tobool.not.i170, label %if.end.i173, label %sw.bb79.bq25980_get_const_charge_volt.exit_crit_edge

sw.bb79.bq25980_get_const_charge_volt.exit_crit_edge: ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_const_charge_volt.exit

if.end.i173:                                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %batovp_reg_code.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %batovp_reg_code.i, align 4
  %chip_info.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 8
  %92 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chip_info.i, align 4
  %batovp_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %93, i32 0, i32 20
  %94 = ptrtoint ptr %batovp_step.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %batovp_step.i, align 4
  %mul.i171 = mul i32 %95, %91
  %batovp_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %93, i32 0, i32 21
  %96 = ptrtoint ptr %batovp_offset.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %batovp_offset.i, align 4
  %add.i172 = add i32 %mul.i171, %97
  br label %bq25980_get_const_charge_volt.exit

bq25980_get_const_charge_volt.exit:               ; preds = %if.end.i173, %sw.bb79.bq25980_get_const_charge_volt.exit_crit_edge
  %retval.0.i174 = phi i32 [ %add.i172, %if.end.i173 ], [ %call.i169, %sw.bb79.bq25980_get_const_charge_volt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batovp_reg_code.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i174)
  %cmp81 = icmp slt i32 %retval.0.i174, 0
  br i1 %cmp81, label %bq25980_get_const_charge_volt.exit.cleanup_crit_edge, label %if.end84

bq25980_get_const_charge_volt.exit.cleanup_crit_edge: ; preds = %bq25980_get_const_charge_volt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end84:                                         ; preds = %bq25980_get_const_charge_volt.exit
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %retval.0.i174, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end84, %bq25980_get_const_charge_volt.exit.cleanup_crit_edge, %if.end78, %bq25980_get_const_charge_curr.exit.cleanup_crit_edge, %if.end72, %bq25980_get_adc_vbus.exit.cleanup_crit_edge, %if.end66, %bq25980_get_adc_ibus.exit.cleanup_crit_edge, %if.then57, %if.then53, %if.then50, %if.then43, %if.then39, %if.else37.thread.cleanup_crit_edge, %if.then36, %if.then27, %if.else25.cleanup_crit_edge, %if.then24, %if.then21, %if.then19, %if.end16, %bq25980_get_input_curr_lim.exit.cleanup_crit_edge, %if.end10, %bq25980_get_input_volt_lim.exit.cleanup_crit_edge, %sw.bb4, %sw.bb3, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %retval.0.i, %bq25980_get_input_volt_lim.exit.cleanup_crit_edge ], [ %retval.0.i142, %bq25980_get_input_curr_lim.exit.cleanup_crit_edge ], [ %retval.0.i149, %bq25980_get_adc_ibus.exit.cleanup_crit_edge ], [ %retval.0.i160, %bq25980_get_adc_vbus.exit.cleanup_crit_edge ], [ %call.i162, %bq25980_get_const_charge_curr.exit.cleanup_crit_edge ], [ %retval.0.i174, %bq25980_get_const_charge_volt.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i174, %if.end84 ], [ %retval.0.i167184, %if.end78 ], [ %retval.0.i160181, %if.end72 ], [ %retval.0.i149178, %if.end66 ], [ 0, %if.then53 ], [ 0, %if.then57 ], [ 0, %if.then50 ], [ 0, %if.then39 ], [ 0, %if.then43 ], [ 0, %if.then36 ], [ 0, %if.then19 ], [ 0, %if.then21 ], [ 0, %if.then24 ], [ 0, %if.then27 ], [ 0, %if.else25.cleanup_crit_edge ], [ %retval.0.i142, %if.end16 ], [ %retval.0.i, %if.end10 ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb ], [ 0, %if.else37.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_set_charger_property(ptr noundef %psy, i32 noundef %prop, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %prop, label %entry.cleanup_crit_edge [
    i32 38, label %sw.bb
    i32 39, label %sw.bb2
    i32 1, label %sw.bb7
    i32 0, label %sw.bb13
    i32 29, label %sw.bb19
    i32 31, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %call1 = tail call fastcc i32 @bq25980_set_input_curr_lim(ptr noundef %call, i32 noundef %2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %bypass.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 9, i32 8
  %5 = ptrtoint ptr %bypass.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %bypass.i, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %chip_info13.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 8
  %7 = ptrtoint ptr %chip_info13.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chip_info13.i, align 4
  br i1 %tobool.not.i, label %if.else12.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb2
  %busovp_byp_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %busovp_byp_step.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %busovp_byp_step.i, align 4
  %busovp_byp_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 12
  %11 = ptrtoint ptr %busovp_byp_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %busovp_byp_offset.i, align 4
  %busovp_byp_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 16
  %13 = ptrtoint ptr %busovp_byp_max.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %busovp_byp_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %4)
  %cmp.i = icmp slt i32 %14, %4
  br i1 %cmp.i, label %if.then.i.if.end28.i_crit_edge, label %if.else.i

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %busovp_byp_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 15
  br label %if.end28.sink.split.i

if.else12.i:                                      ; preds = %sw.bb2
  %busovp_sc_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 9
  %15 = ptrtoint ptr %busovp_sc_step.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %busovp_sc_step.i, align 4
  %busovp_sc_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 10
  %17 = ptrtoint ptr %busovp_sc_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %busovp_sc_offset.i, align 4
  %busovp_sc_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 14
  %19 = ptrtoint ptr %busovp_sc_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %busovp_sc_max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %4)
  %cmp16.i = icmp slt i32 %20, %4
  br i1 %cmp16.i, label %if.else12.i.if.end28.i_crit_edge, label %if.else20.i

if.else12.i.if.end28.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.else20.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  %busovp_sc_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %8, i32 0, i32 13
  br label %if.end28.sink.split.i

if.end28.sink.split.i:                            ; preds = %if.else20.i, %if.else.i
  %busovp_sc_min.sink.i = phi ptr [ %busovp_sc_min.i, %if.else20.i ], [ %busovp_byp_min.i, %if.else.i ]
  %busovp_step.0.ph.i = phi i32 [ %16, %if.else20.i ], [ %10, %if.else.i ]
  %busovp_offset.0.ph.i = phi i32 [ %18, %if.else20.i ], [ %12, %if.else.i ]
  %21 = ptrtoint ptr %busovp_sc_min.sink.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %busovp_sc_min.sink.i, align 4
  %23 = tail call i32 @llvm.smax.i32(i32 %22, i32 %4) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.end28.sink.split.i, %if.else12.i.if.end28.i_crit_edge, %if.then.i.if.end28.i_crit_edge
  %busovp.addr.0.i = phi i32 [ %14, %if.then.i.if.end28.i_crit_edge ], [ %20, %if.else12.i.if.end28.i_crit_edge ], [ %23, %if.end28.sink.split.i ]
  %busovp_step.0.i = phi i32 [ %10, %if.then.i.if.end28.i_crit_edge ], [ %16, %if.else12.i.if.end28.i_crit_edge ], [ %busovp_step.0.ph.i, %if.end28.sink.split.i ]
  %busovp_offset.0.i = phi i32 [ %12, %if.then.i.if.end28.i_crit_edge ], [ %18, %if.else12.i.if.end28.i_crit_edge ], [ %busovp_offset.0.ph.i, %if.end28.sink.split.i ]
  %sub.i = sub i32 %busovp.addr.0.i, %busovp_offset.0.i
  %div.i = udiv i32 %sub.i, %busovp_step.0.i
  %regmap.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 6, i32 noundef %div.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool29.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool29.not.i, label %bq25980_set_input_volt_lim.exit, label %if.end28.i.cleanup_crit_edge

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_input_volt_lim.exit:                  ; preds = %if.end28.i
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call33.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 7, i32 noundef %div.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool4.not = icmp eq i32 %call33.i, 0
  br i1 %tobool4.not, label %bq25980_set_input_volt_lim.exit.sw.epilog_crit_edge, label %bq25980_set_input_volt_lim.exit.cleanup_crit_edge

bq25980_set_input_volt_lim.exit.cleanup_crit_edge: ; preds = %bq25980_set_input_volt_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_input_volt_lim.exit.sw.epilog_crit_edge: ; preds = %bq25980_set_input_volt_lim.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8 = icmp ne i32 %29, 0
  %regmap.i52 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %30 = ptrtoint ptr %regmap.i52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i52, align 4
  %..i = select i1 %tobool8, i32 8, i32 0
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 15, i32 noundef 8, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %tobool4.not.i = icmp eq i32 %call.i19.i, 0
  br i1 %tobool4.not.i, label %bq25980_set_bypass.exit, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_bypass.exit:                          ; preds = %sw.bb7
  %frombool.i = zext i1 %tobool8 to i8
  %bypass.i53 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 9, i32 8
  %32 = ptrtoint ptr %bypass.i53 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %bypass.i53, align 4
  br i1 %tobool8, label %bq25980_set_bypass.exit.cleanup_crit_edge, label %bq25980_set_bypass.exit.sw.epilog_crit_edge

bq25980_set_bypass.exit.sw.epilog_crit_edge:      ; preds = %bq25980_set_bypass.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

bq25980_set_bypass.exit.cleanup_crit_edge:        ; preds = %bq25980_set_bypass.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool14 = icmp ne i32 %34, 0
  %regmap.i55 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %35 = ptrtoint ptr %regmap.i55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i55, align 4
  %..i56 = select i1 %tobool14, i32 16, i32 0
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 15, i32 noundef 16, i32 noundef %..i56, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool4.not.i57 = icmp eq i32 %call.i14.i, 0
  br i1 %tobool4.not.i57, label %bq25980_set_chg_en.exit.thread, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_chg_en.exit.thread:                   ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #10
  %frombool.i58 = zext i1 %tobool14 to i8
  %ce.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 9, i32 6
  %37 = ptrtoint ptr %ce.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool.i58, ptr %ce.i, align 2
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 2000000) #8
  %chip_info.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 8
  %41 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chip_info.i, align 4
  %batocp_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %42, i32 0, i32 23
  %43 = ptrtoint ptr %batocp_max.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %batocp_max.i, align 4
  %45 = tail call i32 @llvm.smin.i32(i32 %40, i32 %44) #8
  %div.i60 = sdiv i32 %45, 100000
  %regmap.i61 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %46 = ptrtoint ptr %regmap.i61 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i61, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 2, i32 noundef 127, i32 noundef %div.i60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i62 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i62, label %bq25980_set_const_charge_curr.exit, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_const_charge_curr.exit:               ; preds = %sw.bb19
  %48 = ptrtoint ptr %regmap.i61 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i61, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 3, i32 noundef 127, i32 noundef %div.i60, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool21.not = icmp eq i32 %call.i20.i, 0
  br i1 %tobool21.not, label %bq25980_set_const_charge_curr.exit.sw.epilog_crit_edge, label %bq25980_set_const_charge_curr.exit.cleanup_crit_edge

bq25980_set_const_charge_curr.exit.cleanup_crit_edge: ; preds = %bq25980_set_const_charge_curr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_const_charge_curr.exit.sw.epilog_crit_edge: ; preds = %bq25980_set_const_charge_curr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %50 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val, align 4
  %chip_info.i64 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 8
  %52 = ptrtoint ptr %chip_info.i64 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info.i64, align 4
  %batovp_min.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %53, i32 0, i32 19
  %54 = ptrtoint ptr %batovp_min.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %batovp_min.i, align 4
  %56 = tail call i32 @llvm.smax.i32(i32 %55, i32 %51) #8
  %batovp_max.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %53, i32 0, i32 18
  %57 = ptrtoint ptr %batovp_max.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %batovp_max.i, align 4
  %59 = tail call i32 @llvm.smin.i32(i32 %56, i32 %58) #8
  %batovp_offset.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %53, i32 0, i32 21
  %60 = ptrtoint ptr %batovp_offset.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %batovp_offset.i, align 4
  %sub.i65 = sub i32 %59, %61
  %batovp_step.i = getelementptr inbounds %struct.bq25980_chip_info, ptr %53, i32 0, i32 20
  %62 = ptrtoint ptr %batovp_step.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %batovp_step.i, align 4
  %div.i66 = sdiv i32 %sub.i65, %63
  %regmap.i67 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %64 = ptrtoint ptr %regmap.i67 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i67, align 4
  %call.i68 = tail call i32 @regmap_write(ptr noundef %65, i32 noundef 0, i32 noundef %div.i66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %tobool.not.i69 = icmp eq i32 %call.i68, 0
  br i1 %tobool.not.i69, label %bq25980_set_const_charge_volt.exit, label %sw.bb24.cleanup_crit_edge

sw.bb24.cleanup_crit_edge:                        ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_const_charge_volt.exit:               ; preds = %sw.bb24
  %66 = ptrtoint ptr %regmap.i67 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i67, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 1, i32 noundef %div.i66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool26.not = icmp eq i32 %call14.i, 0
  br i1 %tobool26.not, label %bq25980_set_const_charge_volt.exit.sw.epilog_crit_edge, label %bq25980_set_const_charge_volt.exit.cleanup_crit_edge

bq25980_set_const_charge_volt.exit.cleanup_crit_edge: ; preds = %bq25980_set_const_charge_volt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

bq25980_set_const_charge_volt.exit.sw.epilog_crit_edge: ; preds = %bq25980_set_const_charge_volt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %bq25980_set_const_charge_volt.exit.sw.epilog_crit_edge, %bq25980_set_const_charge_curr.exit.sw.epilog_crit_edge, %bq25980_set_chg_en.exit.thread, %bq25980_set_bypass.exit.sw.epilog_crit_edge, %bq25980_set_input_volt_lim.exit.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %bq25980_set_const_charge_volt.exit.cleanup_crit_edge, %sw.bb24.cleanup_crit_edge, %bq25980_set_const_charge_curr.exit.cleanup_crit_edge, %sw.bb19.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %bq25980_set_bypass.exit.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %bq25980_set_input_volt_lim.exit.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call33.i, %bq25980_set_input_volt_lim.exit.cleanup_crit_edge ], [ 1, %bq25980_set_bypass.exit.cleanup_crit_edge ], [ %call.i20.i, %bq25980_set_const_charge_curr.exit.cleanup_crit_edge ], [ %call14.i, %bq25980_set_const_charge_volt.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call.i14.i, %sw.bb13.cleanup_crit_edge ], [ %call.i, %if.end28.i.cleanup_crit_edge ], [ %call.i19.i, %sw.bb7.cleanup_crit_edge ], [ %call.i.i, %sw.bb19.cleanup_crit_edge ], [ %call.i68, %sw.bb24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @bq25980_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %prop) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %prop to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %prop, label %sw.default [
    i32 38, label %entry.return_crit_edge
    i32 31, label %entry.return_crit_edge1
    i32 29, label %entry.return_crit_edge2
    i32 1, label %entry.return_crit_edge3
    i32 0, label %entry.return_crit_edge4
    i32 39, label %entry.return_crit_edge5
  ]

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq25980_set_input_curr_lim(ptr nocapture noundef readonly %bq, i32 noundef %busocp) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %busocp)
  %tobool.not = icmp eq i32 %busocp, 0
  %regmap.i = getelementptr inbounds %struct.bq25980_device, ptr %bq, i32 0, i32 5
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 64, i32 noundef 255, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 15, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %2 = tail call i32 @llvm.smax.i32(i32 %busocp, i32 1000000)
  %bypass = getelementptr inbounds %struct.bq25980_device, ptr %bq, i32 0, i32 9, i32 8
  %3 = ptrtoint ptr %bypass to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bypass, align 4, !range !123
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool4.not = icmp eq i8 %4, 0
  %chip_info7 = getelementptr inbounds %struct.bq25980_device, ptr %bq, i32 0, i32 8
  %5 = ptrtoint ptr %chip_info7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info7, align 4
  %busocp_byp_max = getelementptr inbounds %struct.bq25980_chip_info, ptr %6, i32 0, i32 4
  %busocp_sc_max = getelementptr inbounds %struct.bq25980_chip_info, ptr %6, i32 0, i32 3
  %busocp_byp_max.sink = select i1 %tobool4.not, ptr %busocp_byp_max, ptr %busocp_sc_max
  %7 = ptrtoint ptr %busocp_byp_max.sink to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %busocp_byp_max.sink, align 4
  %9 = tail call i32 @llvm.smin.i32(i32 %2, i32 %8)
  %sub = add i32 %9, -1000000
  %div = sdiv i32 %sub, 250000
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 8, i32 noundef %div) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 9, i32 noundef %div) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call20, %if.end18 ], [ %call.i.i, %if.then ], [ %call15, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25980_get_battery_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %vsys_adc_lsb.i = alloca i32, align 4
  %vsys_adc_msb.i = alloca i32, align 4
  %ibat_adc_lsb.i = alloca i32, align 4
  %ibat_adc_msb.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #8
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 30, label %sw.bb
    i32 32, label %sw.bb1
    i32 17, label %sw.bb3
    i32 12, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ichg_max = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 7, i32 8
  %1 = ptrtoint ptr %ichg_max to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ichg_max, align 4
  br label %cleanup.sink.split

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vreg_max = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 7, i32 9
  %3 = ptrtoint ptr %vreg_max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %vreg_max, align 4
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibat_adc_lsb.i) #8
  %5 = ptrtoint ptr %ibat_adc_lsb.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ibat_adc_lsb.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ibat_adc_msb.i) #8
  %6 = ptrtoint ptr %ibat_adc_msb.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ibat_adc_msb.i, align 4, !annotation !122
  %regmap.i = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %8, i32 noundef 49, ptr noundef nonnull %ibat_adc_msb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.bq25980_get_ibat_adc.exit_crit_edge

sw.bb3.bq25980_get_ibat_adc.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_ibat_adc.exit

if.end.i:                                         ; preds = %sw.bb3
  %9 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 50, ptr noundef nonnull %ibat_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.bq25980_get_ibat_adc.exit_crit_edge

if.end.i.bq25980_get_ibat_adc.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_ibat_adc.exit

if.end5.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %ibat_adc_msb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ibat_adc_msb.i, align 4
  %shl.i = shl i32 %12, 8
  %13 = ptrtoint ptr %ibat_adc_lsb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ibat_adc_lsb.i, align 4
  %or.i = or i32 %shl.i, %14
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %xor.i = xor i32 %or.i, 65535
  %15 = mul i32 %xor.i, 1000
  %mul.i = add i32 %15, 1000
  br label %bq25980_get_ibat_adc.exit

if.end8.i:                                        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul9.i = mul i32 %or.i, 1000
  br label %bq25980_get_ibat_adc.exit

bq25980_get_ibat_adc.exit:                        ; preds = %if.end8.i, %if.then7.i, %if.end.i.bq25980_get_ibat_adc.exit_crit_edge, %sw.bb3.bq25980_get_ibat_adc.exit_crit_edge
  %retval.0.i = phi i32 [ %mul.i, %if.then7.i ], [ %mul9.i, %if.end8.i ], [ %call.i, %sw.bb3.bq25980_get_ibat_adc.exit_crit_edge ], [ %call2.i, %if.end.i.bq25980_get_ibat_adc.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibat_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ibat_adc_lsb.i) #8
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsys_adc_lsb.i) #8
  %16 = ptrtoint ptr %vsys_adc_lsb.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %vsys_adc_lsb.i, align 4, !annotation !122
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vsys_adc_msb.i) #8
  %17 = ptrtoint ptr %vsys_adc_msb.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %vsys_adc_msb.i, align 4, !annotation !122
  %regmap.i18 = getelementptr inbounds %struct.bq25980_device, ptr %call, i32 0, i32 5
  %18 = ptrtoint ptr %regmap.i18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i18, align 4
  %call.i19 = call i32 @regmap_read(ptr noundef %19, i32 noundef 47, ptr noundef nonnull %vsys_adc_msb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool.not.i20 = icmp eq i32 %call.i19, 0
  br i1 %tobool.not.i20, label %if.end.i23, label %sw.bb5.bq25980_get_adc_vbat.exit_crit_edge

sw.bb5.bq25980_get_adc_vbat.exit_crit_edge:       ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_vbat.exit

if.end.i23:                                       ; preds = %sw.bb5
  %20 = ptrtoint ptr %regmap.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i18, align 4
  %call2.i21 = call i32 @regmap_read(ptr noundef %21, i32 noundef 48, ptr noundef nonnull %vsys_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i21)
  %tobool3.not.i22 = icmp eq i32 %call2.i21, 0
  br i1 %tobool3.not.i22, label %bq25980_get_adc_vbat.exit.thread, label %if.end.i23.bq25980_get_adc_vbat.exit_crit_edge

if.end.i23.bq25980_get_adc_vbat.exit_crit_edge:   ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %bq25980_get_adc_vbat.exit

bq25980_get_adc_vbat.exit.thread:                 ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %vsys_adc_msb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vsys_adc_msb.i, align 4
  %shl.i24 = shl i32 %23, 8
  %24 = ptrtoint ptr %vsys_adc_lsb.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vsys_adc_lsb.i, align 4
  %or.i25 = or i32 %shl.i24, %25
  %conv6.i = and i32 %or.i25, 65535
  %mul.i26 = mul nuw nsw i32 %conv6.i, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsys_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsys_adc_lsb.i) #8
  br label %cleanup.sink.split

bq25980_get_adc_vbat.exit:                        ; preds = %if.end.i23.bq25980_get_adc_vbat.exit_crit_edge, %sw.bb5.bq25980_get_adc_vbat.exit_crit_edge
  %retval.0.i28 = phi i32 [ %call.i19, %sw.bb5.bq25980_get_adc_vbat.exit_crit_edge ], [ %call2.i21, %if.end.i23.bq25980_get_adc_vbat.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsys_adc_msb.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vsys_adc_lsb.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i28)
  %cmp = icmp slt i32 %retval.0.i28, 0
  br i1 %cmp, label %bq25980_get_adc_vbat.exit.cleanup_crit_edge, label %bq25980_get_adc_vbat.exit.cleanup.sink.split_crit_edge

bq25980_get_adc_vbat.exit.cleanup.sink.split_crit_edge: ; preds = %bq25980_get_adc_vbat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

bq25980_get_adc_vbat.exit.cleanup_crit_edge:      ; preds = %bq25980_get_adc_vbat.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %bq25980_get_adc_vbat.exit.cleanup.sink.split_crit_edge, %bq25980_get_adc_vbat.exit.thread, %bq25980_get_ibat_adc.exit, %sw.bb1, %sw.bb
  %.sink = phi i32 [ %2, %sw.bb ], [ %4, %sw.bb1 ], [ %retval.0.i, %bq25980_get_ibat_adc.exit ], [ %mul.i26, %bq25980_get_adc_vbat.exit.thread ], [ %retval.0.i28, %bq25980_get_adc_vbat.exit.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %sw.bb ], [ 0, %sw.bb1 ], [ %retval.0.i, %bq25980_get_ibat_adc.exit ], [ %mul.i26, %bq25980_get_adc_vbat.exit.thread ], [ %retval.0.i28, %bq25980_get_adc_vbat.exit.cleanup.sink.split_crit_edge ]
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %bq25980_get_adc_vbat.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28, %bq25980_get_adc_vbat.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !75, !76, !77, !79, !81, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !104, !105, !106, !107, !109, !111}
!llvm.module.flags = !{!113, !114, !115, !116, !117, !118, !119, !120}
!llvm.ident = !{!121}

!0 = !{ptr @__initcall__kmod_bq25980_charger__296_1293_bq25980_driver_init6, !1, !"__initcall__kmod_bq25980_charger__296_1293_bq25980_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1293, i32 1}
!2 = !{ptr @__exitcall_bq25980_driver_exit, !1, !"__exitcall_bq25980_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1295, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1296, i32 1}
!7 = !{ptr @__UNIQUE_ID_description299, !8, !"__UNIQUE_ID_description299", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1297, i32 1}
!9 = !{ptr @__UNIQUE_ID_file300, !10, !"__UNIQUE_ID_file300", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1298, i32 1}
!11 = !{ptr @__UNIQUE_ID_license301, !10, !"__UNIQUE_ID_license301", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1287, i32 11}
!14 = !{ptr @bq25980_driver, !15, !"bq25980_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1285, i32 26}
!16 = !{ptr @bq25980_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1224, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @bq25980_probe._key, !20, !"_key", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1229, i32 15}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1232, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @bq25980_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @bq25980_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1240, i32 3}
!32 = !{ptr @bq25980_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @bq25980_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1256, i32 3}
!36 = !{ptr @bq25980_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bq25980_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1262, i32 3}
!40 = !{ptr @bq25980_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @bq25980_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @bq25980_chip_info_tbl, !43, !"bq25980_chip_info_tbl", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/bq25980_charger.c", i32 961, i32 39}
!44 = !{ptr @bq25980_regmap_config, !45, !"bq25980_regmap_config", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bq25980_charger.c", i32 928, i32 35}
!46 = !{ptr @bq25980_reg_defs, !47, !"bq25980_reg_defs", i1 false, i1 false}
!47 = !{!"../drivers/power/supply/bq25980_charger.c", i32 107, i32 27}
!48 = !{ptr @bq25975_regmap_config, !49, !"bq25975_regmap_config", i1 false, i1 false}
!49 = !{!"../drivers/power/supply/bq25980_charger.c", i32 939, i32 35}
!50 = !{ptr @bq25975_reg_defs, !51, !"bq25975_reg_defs", i1 false, i1 false}
!51 = !{!"../drivers/power/supply/bq25980_charger.c", i32 162, i32 27}
!52 = !{ptr @bq25960_regmap_config, !53, !"bq25960_regmap_config", i1 false, i1 false}
!53 = !{!"../drivers/power/supply/bq25980_charger.c", i32 950, i32 35}
!54 = !{ptr @bq25960_reg_defs, !55, !"bq25960_reg_defs", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/bq25980_charger.c", i32 217, i32 27}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1147, i32 42}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1157, i32 12}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1164, i32 3}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @bq25980_parse_dt._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @bq25980_parse_dt._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1169, i32 12}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1176, i32 3}
!69 = !{ptr @bq25980_parse_dt._entry.22, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bq25980_parse_dt._entry_ptr.24, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1181, i32 12}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1188, i32 3}
!75 = !{ptr @bq25980_parse_dt._entry.26, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @bq25980_parse_dt._entry_ptr.28, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1193, i32 12}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1200, i32 3}
!81 = !{ptr @bq25980_parse_dt._entry.30, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @bq25980_parse_dt._entry_ptr.32, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1206, i32 13}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/bq25980_charger.c", i32 877, i32 2}
!87 = !{ptr @bq25980_charger_supplied_to, !88, !"bq25980_charger_supplied_to", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bq25980_charger.c", i32 876, i32 14}
!89 = !{ptr @bq25980_power_supply_desc, !90, !"bq25980_power_supply_desc", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bq25980_charger.c", i32 896, i32 39}
!91 = !{ptr @bq25980_power_supply_props, !92, !"bq25980_power_supply_props", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bq25980_charger.c", i32 854, i32 35}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bq25980_charger.c", i32 712, i32 17}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/bq25980_charger.c", i32 907, i32 12}
!97 = !{ptr @bq25980_battery_desc, !98, !"bq25980_battery_desc", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/bq25980_charger.c", i32 906, i32 33}
!99 = !{ptr @bq25980_battery_props, !100, !"bq25980_battery_props", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bq25980_charger.c", i32 869, i32 35}
!101 = !{ptr @.str.37, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1111, i32 3}
!103 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @bq25980_hw_init._entry, !102, !"_entry", i1 false, i1 false}
!106 = !{ptr @bq25980_hw_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!107 = distinct !{null, !108, !"bq25980_watchdog_time", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/bq25980_charger.c", i32 272, i32 12}
!109 = !{ptr @bq25980_of_match, !110, !"bq25980_of_match", i1 false, i1 false}
!110 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1277, i32 34}
!111 = !{ptr @bq25980_i2c_ids, !112, !"bq25980_i2c_ids", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/bq25980_charger.c", i32 1269, i32 35}
!113 = !{i32 1, !"wchar_size", i32 2}
!114 = !{i32 1, !"min_enum_size", i32 4}
!115 = !{i32 8, !"branch-target-enforcement", i32 0}
!116 = !{i32 8, !"sign-return-address", i32 0}
!117 = !{i32 8, !"sign-return-address-all", i32 0}
!118 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!119 = !{i32 7, !"uwtable", i32 1}
!120 = !{i32 7, !"frame-pointer", i32 2}
!121 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!122 = !{!"auto-init"}
!123 = !{i8 0, i8 2}
