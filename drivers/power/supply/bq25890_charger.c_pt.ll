; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bq25890_charger.c_pt.bc'
source_filename = "../drivers/power/supply/bq25890_charger.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%union.anon.87 = type { %struct.bq25890_range }
%struct.bq25890_range = type { i32, i32, i32 }
%struct.bq25890_lookup = type { ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.86 = type { ptr, i8, i32, ptr }
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
%struct.bq25890_device = type { ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.work_struct, i32, ptr, [75 x ptr], i32, %struct.bq25890_init_data, %struct.bq25890_state, %struct.mutex }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.bq25890_init_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.bq25890_state = type { i8, i8, i8, i8, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.anon.88 = type { i32, i32 }

@__initcall__kmod_bq25890_charger__299_1138_bq25890_driver_init6 = internal global ptr @bq25890_driver_init, section ".initcall6.init", align 4
@bq25890_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @bq25890_probe, ptr @bq25890_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bq25890_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bq25890_pm, ptr null, ptr null }, ptr @bq25890_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bq25890_driver_exit = internal global ptr @bq25890_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author300 = internal constant [67 x i8] c"bq25890_charger.author=Laurentiu Palcu <laurentiu.palcu@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description301 = internal constant [51 x i8] c"bq25890_charger.description=bq25890 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [58 x i8] c"bq25890_charger.file=drivers/power/supply/bq25890_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [28 x i8] c"bq25890_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25890-charger\00", [16 x i8] zeroinitializer }, align 32
@bq25890_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25890\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25892\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25895\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,bq25896\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@bq25890_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @bq25890_suspend, ptr @bq25890_resume, ptr @bq25890_suspend, ptr @bq25890_resume, ptr @bq25890_suspend, ptr @bq25890_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@bq25890_i2c_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"bq25890\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25892\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25895\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"bq25896\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@bq25890_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bq->lock\00", [22 x i8] zeroinitializer }, align 32
@bq25890_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bq25890_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 20, ptr @bq25890_writeable_regs, ptr null, ptr @bq25890_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"bq25890_charger:966:(&bq25890_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@bq25890_reg_fields = internal constant { [75 x %struct.reg_field], [356 x i8] } { [75 x %struct.reg_field] [%struct.reg_field { i32 0, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 0, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 6, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 0, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 2, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 1, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 3, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 4, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 5, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 2, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 6, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 1, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 7, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 5, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 2, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 8, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 9, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 10, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 5, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 3, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 11, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field zeroinitializer, %struct.reg_field { i32 11, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 12, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 13, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 14, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 15, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 16, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 17, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 17, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 18, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 19, i32 0, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 3, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 1, i32 0, i32 0 }], [356 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate regmap field\0A\00", [34 x i8] zeroinitializer }, align 32
@bq25890_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 985, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Cannot read chip ID or unknown chip: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bq25890_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bq25890_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bq25890_probe._entry_ptr = internal global ptr @bq25890_probe._entry, section ".printk_index", align 4
@bq25890_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.7, i32 993, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Cannot read device properties: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@bq25890_probe._entry_ptr.12 = internal global ptr @bq25890_probe._entry.10, section ".printk_index", align 4
@bq25890_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.7, i32 1002, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot initialize the chip: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@bq25890_probe._entry_ptr.15 = internal global ptr @bq25890_probe._entry.13, section ".printk_index", align 4
@bq25890_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.6, ptr @.str.7, i32 1010, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No irq resource found.\0A\00", [40 x i8] zeroinitializer }, align 32
@bq25890_probe._entry_ptr.18 = internal global ptr @bq25890_probe._entry.16, section ".printk_index", align 4
@bq25890_probe.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"(work_completion)(&bq->usb_work)\00", [63 x i8] zeroinitializer }, align 32
@bq25890_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.7, i32 1024, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bq25890_probe._entry_ptr.23 = internal global ptr @bq25890_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bq25890_irq\00", [20 x i8] zeroinitializer }, align 32
@bq25890_writeable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @bq25890_readonly_reg_ranges, i32 2 }, [16 x i8] zeroinitializer }, align 32
@bq25890_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bq25890_volatile_reg_ranges, i32 4, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@bq25890_readonly_reg_ranges = internal constant { [2 x %struct.regmap_range], [16 x i8] } { [2 x %struct.regmap_range] [%struct.regmap_range { i32 11, i32 12 }, %struct.regmap_range { i32 14, i32 19 }], [16 x i8] zeroinitializer }, align 32
@bq25890_volatile_reg_ranges = internal constant { [4 x %struct.regmap_range], [32 x i8] } { [4 x %struct.regmap_range] [%struct.regmap_range zeroinitializer, %struct.regmap_range { i32 2, i32 2 }, %struct.regmap_range { i32 9, i32 9 }, %struct.regmap_range { i32 11, i32 20 }], [32 x i8] zeroinitializer }, align 32
@bq25890_get_chip_version._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.7, i32 827, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Cannot read chip ID: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bq25890_get_chip_version\00", [39 x i8] zeroinitializer }, align 32
@bq25890_get_chip_version._entry_ptr = internal global ptr @bq25890_get_chip_version._entry, section ".printk_index", align 4
@bq25890_get_chip_version._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.7, i32 833, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cannot read chip revision: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@bq25890_get_chip_version._entry_ptr.29 = internal global ptr @bq25890_get_chip_version._entry.27, section ".printk_index", align 4
@bq25890_get_chip_version._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.7, i32 854, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unknown device revision %d, assume BQ25892\0A\00", [52 x i8] zeroinitializer }, align 32
@bq25890_get_chip_version._entry_ptr.32 = internal global ptr @bq25890_get_chip_version._entry.30, section ".printk_index", align 4
@bq25890_get_chip_version._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.26, ptr @.str.7, i32 864, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown chip ID %d\0A\00", [44 x i8] zeroinitializer }, align 32
@bq25890_get_chip_version._entry_ptr.35 = internal global ptr @bq25890_get_chip_version._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,use-ilim-pin\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,boost-low-freq\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,charge-current\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,battery-regulation-voltage\00", [34 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,termination-current\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,precharge-current\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,minimum-sys-voltage\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,boost-voltage\00", [47 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti,boost-max-current\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ti,thermal-regulation-threshold\00", [32 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,ibatcomp-micro-ohms\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti,ibatcomp-clamp-microvolt\00", [36 x i8] zeroinitializer }, align 32
@bq25890_fw_read_u32_props._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 922, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to read property %d %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bq25890_fw_read_u32_props\00", [38 x i8] zeroinitializer }, align 32
@bq25890_fw_read_u32_props._entry_ptr = internal global ptr @bq25890_fw_read_u32_props._entry, section ".printk_index", align 4
@bq25890_treg_tbl = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 60, i32 80, i32 100, i32 120], [16 x i8] zeroinitializer }, align 32
@bq25890_boosti_tbl = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 500000, i32 700000, i32 1100000, i32 1300000, i32 1600000, i32 1800000, i32 2100000, i32 2400000], [32 x i8] zeroinitializer }, align 32
@bq25890_tspct_tbl = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 850, i32 840, i32 830, i32 820, i32 810, i32 800, i32 790, i32 780, i32 770, i32 760, i32 750, i32 740, i32 730, i32 720, i32 710, i32 700, i32 690, i32 685, i32 680, i32 675, i32 670, i32 660, i32 650, i32 645, i32 640, i32 630, i32 620, i32 615, i32 610, i32 600, i32 590, i32 585, i32 580, i32 570, i32 565, i32 560, i32 550, i32 540, i32 535, i32 530, i32 520, i32 515, i32 510, i32 500, i32 495, i32 490, i32 480, i32 475, i32 470, i32 460, i32 455, i32 450, i32 440, i32 435, i32 430, i32 425, i32 420, i32 410, i32 405, i32 400, i32 390, i32 385, i32 380, i32 370, i32 365, i32 360, i32 355, i32 350, i32 340, i32 335, i32 330, i32 320, i32 310, i32 305, i32 300, i32 290, i32 285, i32 280, i32 275, i32 270, i32 260, i32 250, i32 245, i32 240, i32 230, i32 225, i32 220, i32 210, i32 205, i32 200, i32 190, i32 180, i32 175, i32 170, i32 160, i32 150, i32 145, i32 140, i32 130, i32 120, i32 115, i32 110, i32 100, i32 90, i32 80, i32 70, i32 60, i32 50, i32 40, i32 30, i32 20, i32 10, i32 0, i32 -10, i32 -20, i32 -30, i32 -40, i32 -60, i32 -70, i32 -80, i32 -90, i32 -10, i32 -120, i32 -140, i32 -150, i32 -170, i32 -190, i32 -210], [128 x i8] zeroinitializer }, align 32
@bq25890_tables = internal constant { <{ %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, { %struct.bq25890_lookup, [4 x i8] }, { %struct.bq25890_lookup, [4 x i8] }, { %struct.bq25890_lookup, [4 x i8] } }>, [60 x i8] } { <{ %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, %union.anon.87, { %struct.bq25890_lookup, [4 x i8] }, { %struct.bq25890_lookup, [4 x i8] }, { %struct.bq25890_lookup, [4 x i8] } }> <{ %union.anon.87 { %struct.bq25890_range { i32 0, i32 5056000, i32 64000 } }, %union.anon.87 { %struct.bq25890_range { i32 64000, i32 1024000, i32 64000 } }, %union.anon.87 { %struct.bq25890_range { i32 100000, i32 3250000, i32 50000 } }, %union.anon.87 { %struct.bq25890_range { i32 3840000, i32 4608000, i32 16000 } }, %union.anon.87 { %struct.bq25890_range { i32 4550000, i32 5510000, i32 64000 } }, %union.anon.87 { %struct.bq25890_range { i32 3000000, i32 3700000, i32 100000 } }, %union.anon.87 { %struct.bq25890_range { i32 0, i32 224000, i32 32000 } }, %union.anon.87 { %struct.bq25890_range { i32 0, i32 140000, i32 20000 } }, { %struct.bq25890_lookup, [4 x i8] } { %struct.bq25890_lookup { ptr @bq25890_treg_tbl, i32 4 }, [4 x i8] undef }, { %struct.bq25890_lookup, [4 x i8] } { %struct.bq25890_lookup { ptr @bq25890_boosti_tbl, i32 8 }, [4 x i8] undef }, { %struct.bq25890_lookup, [4 x i8] } { %struct.bq25890_lookup { ptr @bq25890_tspct_tbl, i32 128 }, [4 x i8] undef } }>, [60 x i8] zeroinitializer }, align 32
@bq25890_hw_init.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.7, ptr @.str.53, i8 0, i8 -82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25890_charger\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bq25890_hw_init\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Reset failed %d\0A\00", [47 x i8] zeroinitializer }, align 32
@bq25890_hw_init.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.7, ptr @.str.54, i8 0, i8 -80, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Disabling watchdog failed %d\0A\00", [34 x i8] zeroinitializer }, align 32
@bq25890_hw_init.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.7, ptr @.str.55, i8 0, i8 -78, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Writing init data failed %d\0A\00", [35 x i8] zeroinitializer }, align 32
@bq25890_hw_init.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.7, ptr @.str.56, i8 0, i8 -76, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Get state failed %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bq25890_hw_init.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.52, ptr @.str.7, ptr @.str.57, i8 0, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Config ADC failed %d\0A\00", [42 x i8] zeroinitializer }, align 32
@bq25890_get_chip_state.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.51, ptr @.str.58, ptr @.str.7, ptr @.str.59, i8 0, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"bq25890_get_chip_state\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"S:CHG/PG/VSYS=%d/%d/%d, F:CHG/BOOST/BAT=%d/%d/%d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not probe irq pin.\0A\00", [38 x i8] zeroinitializer }, align 32
@bq25890_usb_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.7, i32 806, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error switching to boost/charger mode.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bq25890_usb_work\00", [47 x i8] zeroinitializer }, align 32
@bq25890_usb_work._entry_ptr = internal global ptr @bq25890_usb_work._entry, section ".printk_index", align 4
@system_power_efficient_wq = external dso_local local_unnamed_addr global ptr, align 4
@bq25890_charger_supplied_to = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@bq25890_power_supply_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @bq25890_power_supply_props, i32 15, ptr @bq25890_power_supply_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main-battery\00", [19 x i8] zeroinitializer }, align 32
@bq25890_power_supply_props = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 74, i32 73, i32 0, i32 1, i32 4, i32 2, i32 30, i32 31, i32 32, i32 67, i32 68, i32 38, i32 12, i32 17, i32 52], [36 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Texas Instruments\00", [46 x i8] zeroinitializer }, align 32
@bq25890_chip_name = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [16 x i8] zeroinitializer }, align 32
@__bq25890_handle_irq._entry = internal constant %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.7, i32 634, ptr @.str.8, ptr @.str.9 }, align 1
@.str.65 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Error communicating with the chip: %pe\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__bq25890_handle_irq\00", [43 x i8] zeroinitializer }, align 32
@__bq25890_handle_irq._entry_ptr = internal global ptr @__bq25890_handle_irq._entry, section ".printk_index", align 4
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BQ25890\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BQ25892\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BQ25895\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"BQ25896\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 3, i64 7]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 32, i64 12, i64 17, i64 52]
@__sancov_gen_cov_switch_values.74 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 4, i64 12, i64 17, i64 30, i64 31, i64 32, i64 38, i64 52, i64 67, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.75 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 3]
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"bq25890_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1127, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1129, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"bq25890_of_match\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1110, i32 34 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"bq25890_pm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1097, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"bq25890_i2c_ids\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1101, i32 35 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 964, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"bq25890_regmap_config\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 141, i32 35 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 966, i32 13 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 969, i32 10 }
@___asan_gen_.111 = private unnamed_addr constant [19 x i8] c"bq25890_reg_fields\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 152, i32 31 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 978, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 985, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 992, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1002, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1010, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1017, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1024, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 1031, i32 6 }
@___asan_gen_.168 = private unnamed_addr constant [23 x i8] c"bq25890_writeable_regs\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 124, i32 41 }
@___asan_gen_.171 = private unnamed_addr constant [22 x i8] c"bq25890_volatile_regs\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 136, i32 41 }
@___asan_gen_.174 = private unnamed_addr constant [28 x i8] c"bq25890_readonly_reg_ranges\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 119, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"bq25890_volatile_reg_ranges\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 129, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 827, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 833, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 852, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 864, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 943, i32 53 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 944, i32 52 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 896, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 897, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 898, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 899, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 900, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 901, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 902, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 905, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 906, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 907, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 921, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"bq25890_treg_tbl\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 273, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant [19 x i8] c"bq25890_boosti_tbl\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 278, i32 18 }
@___asan_gen_.258 = private unnamed_addr constant [18 x i8] c"bq25890_tspct_tbl\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 285, i32 18 }
@___asan_gen_.261 = private unnamed_addr constant [15 x i8] c"bq25890_tables\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 320, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 698, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 705, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 714, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 721, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 728, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 597, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 878, i32 10 }
@___asan_gen_.294 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 806, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [28 x i8] c"bq25890_charger_supplied_to\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 753, i32 14 }
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"bq25890_power_supply_desc\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 757, i32 39 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 754, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"bq25890_power_supply_props\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 735, i32 41 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 476, i32 17 }
@___asan_gen_.318 = private unnamed_addr constant [18 x i8] c"bq25890_chip_name\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 35, i32 26 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 633, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 36, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 37, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 38, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [42 x i8] c"../drivers/power/supply/bq25890_charger.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 39, i32 2 }
@llvm.compiler.used = appending global [107 x ptr] [ptr @__UNIQUE_ID_author300, ptr @__UNIQUE_ID_description301, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__bq25890_handle_irq._entry, ptr @__bq25890_handle_irq._entry_ptr, ptr @__exitcall_bq25890_driver_exit, ptr @__initcall__kmod_bq25890_charger__299_1138_bq25890_driver_init6, ptr @bq25890_driver_exit, ptr @bq25890_fw_read_u32_props._entry, ptr @bq25890_fw_read_u32_props._entry_ptr, ptr @bq25890_get_chip_version._entry, ptr @bq25890_get_chip_version._entry.27, ptr @bq25890_get_chip_version._entry.30, ptr @bq25890_get_chip_version._entry.33, ptr @bq25890_get_chip_version._entry_ptr, ptr @bq25890_get_chip_version._entry_ptr.29, ptr @bq25890_get_chip_version._entry_ptr.32, ptr @bq25890_get_chip_version._entry_ptr.35, ptr @bq25890_probe._entry, ptr @bq25890_probe._entry.10, ptr @bq25890_probe._entry.13, ptr @bq25890_probe._entry.16, ptr @bq25890_probe._entry.21, ptr @bq25890_probe._entry_ptr, ptr @bq25890_probe._entry_ptr.12, ptr @bq25890_probe._entry_ptr.15, ptr @bq25890_probe._entry_ptr.18, ptr @bq25890_probe._entry_ptr.23, ptr @bq25890_usb_work._entry, ptr @bq25890_usb_work._entry_ptr, ptr @bq25890_driver, ptr @.str, ptr @bq25890_of_match, ptr @bq25890_pm, ptr @bq25890_i2c_ids, ptr @bq25890_probe.__key, ptr @.str.1, ptr @bq25890_probe._key, ptr @bq25890_regmap_config, ptr @.str.2, ptr @.str.3, ptr @bq25890_reg_fields, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @bq25890_probe.__key.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @bq25890_writeable_regs, ptr @bq25890_volatile_regs, ptr @bq25890_readonly_reg_ranges, ptr @bq25890_volatile_reg_ranges, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @bq25890_treg_tbl, ptr @bq25890_boosti_tbl, ptr @bq25890_tspct_tbl, ptr @bq25890_tables, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @bq25890_charger_supplied_to, ptr @bq25890_power_supply_desc, ptr @.str.63, ptr @bq25890_power_supply_props, ptr @.str.64, ptr @bq25890_chip_name, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_i2c_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_reg_fields to i32), i32 1500, i32 1856, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_writeable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_readonly_reg_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_volatile_reg_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_get_chip_version._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_get_chip_version._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_get_chip_version._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_get_chip_version._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_fw_read_u32_props._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_treg_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_boosti_tbl to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_tspct_tbl to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_tables to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_usb_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_charger_supplied_to to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_power_supply_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_power_supply_props to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bq25890_chip_name to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bq25890_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bq25890_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bq25890_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %psy_cfg.i = alloca %struct.power_supply_config, align 4
  %property.i.i = alloca i32, align 4
  %props.i.i = alloca [10 x %struct.anon.86], align 4
  %val.i46.i = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 496, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %if.end

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %lock = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bq25890_probe.__key) #7
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @bq25890_regmap_config, ptr noundef nonnull @bq25890_probe._key, ptr noundef nonnull @.str.2) #7
  %rmap = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 7
  %2 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call4, ptr %rmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %call4 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %3, ptr noundef nonnull @.str.3) #7
  br label %cleanup95

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0201, 1
  %exitcond.not = icmp eq i32 %inc, 75
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0201 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rmap, align 4
  %arrayidx = getelementptr %struct.reg_field, ptr @bq25890_reg_fields, i32 %i.0201
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %.unpack = load i32, ptr %arrayidx, align 4
  %7 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt165 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %8 = ptrtoint ptr %.elt165 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack166 = load i32, ptr %.elt165, align 4
  %9 = insertvalue [5 x i32] %7, i32 %.unpack166, 1
  %.elt167 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %10 = ptrtoint ptr %.elt167 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack168 = load i32, ptr %.elt167, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack168, 2
  %.elt169 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %12 = ptrtoint ptr %.elt169 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack170 = load i32, ptr %.elt169, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack170, 3
  %.elt171 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %14 = ptrtoint ptr %.elt171 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack172 = load i32, ptr %.elt171, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack172, 4
  %call13 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %5, [5 x i32] %15) #7
  %arrayidx14 = getelementptr %struct.bq25890_device, ptr %call.i, i32 0, i32 8, i32 %i.0201
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %arrayidx14, align 4
  %cmp.i173 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call13 to i32
  %call22 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %17, ptr noundef nonnull @.str.4) #7
  br label %cleanup95

for.end:                                          ; preds = %for.cond
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %19 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val.i.i, align 4, !annotation !187
  %arrayidx.i.i = getelementptr %struct.bq25890_device, ptr %call.i, i32 0, i32 8, i32 72
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %21, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bq25890_field_read.exit.thread.i, label %bq25890_field_read.exit.i

bq25890_field_read.exit.thread.i:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %do.end.i

bq25890_field_read.exit.i:                        ; preds = %for.end
  %22 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i174 = icmp slt i32 %23, 0
  br i1 %cmp.i174, label %bq25890_field_read.exit.i.do.end.i_crit_edge, label %if.end.i

bq25890_field_read.exit.i.do.end.i_crit_edge:     ; preds = %bq25890_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %bq25890_field_read.exit.i.do.end.i_crit_edge, %bq25890_field_read.exit.thread.i
  %retval.0.i55.i = phi i32 [ %call.i.i, %bq25890_field_read.exit.thread.i ], [ %23, %bq25890_field_read.exit.i.do.end.i_crit_edge ]
  %24 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i55.i) #10
  br label %do.end29

if.end.i:                                         ; preds = %bq25890_field_read.exit.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i46.i) #7
  %26 = ptrtoint ptr %val.i46.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %val.i46.i, align 4, !annotation !187
  %arrayidx.i47.i = getelementptr %struct.bq25890_device, ptr %call.i, i32 0, i32 8, i32 74
  %27 = ptrtoint ptr %arrayidx.i47.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i47.i, align 4
  %call.i48.i = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %val.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i)
  %cmp.i49.i = icmp slt i32 %call.i48.i, 0
  br i1 %cmp.i49.i, label %bq25890_field_read.exit52.thread.i, label %bq25890_field_read.exit52.i

bq25890_field_read.exit52.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46.i) #7
  br label %do.end6.i

bq25890_field_read.exit52.i:                      ; preds = %if.end.i
  %29 = ptrtoint ptr %val.i46.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val.i46.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i46.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp2.i = icmp slt i32 %30, 0
  br i1 %cmp2.i, label %bq25890_field_read.exit52.i.do.end6.i_crit_edge, label %if.end8.i

bq25890_field_read.exit52.i.do.end6.i_crit_edge:  ; preds = %bq25890_field_read.exit52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end6.i

do.end6.i:                                        ; preds = %bq25890_field_read.exit52.i.do.end6.i_crit_edge, %bq25890_field_read.exit52.thread.i
  %retval.0.i5158.i = phi i32 [ %call.i48.i, %bq25890_field_read.exit52.thread.i ], [ %30, %bq25890_field_read.exit52.i.do.end6.i_crit_edge ]
  %31 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.28, i32 noundef %retval.0.i5158.i) #10
  br label %do.end29

if.end8.i:                                        ; preds = %bq25890_field_read.exit52.i
  %33 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %do.end24.i [
    i32 3, label %if.end8.i.if.end30_crit_edge
    i32 0, label %sw.bb9.i
    i32 7, label %sw.bb19.i
  ]

if.end8.i.if.end30_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

sw.bb9.i:                                         ; preds = %if.end8.i
  %34 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %30, label %do.end16.i [
    i32 2, label %sw.bb9.i.if.end30_crit_edge
    i32 1, label %sw.bb12.i
  ]

sw.bb9.i.if.end30_crit_edge:                      ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

sw.bb12.i:                                        ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end16.i:                                       ; preds = %sw.bb9.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.31, i32 noundef %30) #10
  br label %if.end30

sw.bb19.i:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

do.end24.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.34, i32 noundef %23) #10
  br label %do.end29

do.end29:                                         ; preds = %do.end24.i, %do.end6.i, %do.end.i
  %retval.0.i = phi i32 [ %retval.0.i55.i, %do.end.i ], [ %retval.0.i5158.i, %do.end6.i ], [ -19, %do.end24.i ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %retval.0.i) #10
  br label %cleanup95

if.end30:                                         ; preds = %sw.bb19.i, %do.end16.i, %sw.bb12.i, %sw.bb9.i.if.end30_crit_edge, %if.end8.i.if.end30_crit_edge
  %.sink = phi i32 [ 1, %sw.bb12.i ], [ 1, %do.end16.i ], [ 2, %sw.bb19.i ], [ 0, %if.end8.i.if.end30_crit_edge ], [ 3, %sw.bb9.i.if.end30_crit_edge ]
  %chip_version11.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %chip_version11.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %.sink, ptr %chip_version11.i, align 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %40 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %platform_data, align 8
  %tobool31.not = icmp eq ptr %41, null
  br i1 %tobool31.not, label %if.then32, label %if.end30.cleanup95_crit_edge

if.end30.cleanup95_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

if.then32:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i.i) #7
  %42 = ptrtoint ptr %property.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 -1, ptr %property.i.i, align 4, !annotation !187
  %init_data.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %props.i.i) #7
  %43 = getelementptr inbounds i8, ptr %props.i.i, i32 4
  %44 = call ptr @memset(ptr %43, i32 255, i32 148)
  %45 = ptrtoint ptr %props.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @.str.38, ptr %props.i.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %43, align 4
  %tbl_id.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %tbl_id.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %tbl_id.i.i, align 4
  %conv_data.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 0, i32 3
  %48 = ptrtoint ptr %conv_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %init_data.i.i, ptr %conv_data.i.i, align 4
  %arrayinit.element.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 1
  %49 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.39, ptr %arrayinit.element.i.i, align 4
  %optional2.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 1, i32 1
  %50 = ptrtoint ptr %optional2.i.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %optional2.i.i, align 4
  %tbl_id3.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 1, i32 2
  %51 = ptrtoint ptr %tbl_id3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 3, ptr %tbl_id3.i.i, align 4
  %conv_data4.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 1, i32 3
  %vreg.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 1
  %52 = ptrtoint ptr %conv_data4.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %vreg.i.i, ptr %conv_data4.i.i, align 4
  %arrayinit.element5.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 2
  %53 = ptrtoint ptr %arrayinit.element5.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.40, ptr %arrayinit.element5.i.i, align 4
  %optional7.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 2, i32 1
  %54 = ptrtoint ptr %optional7.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %optional7.i.i, align 4
  %tbl_id8.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 2, i32 2
  %55 = ptrtoint ptr %tbl_id8.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1, ptr %tbl_id8.i.i, align 4
  %conv_data9.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 2, i32 3
  %iterm.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 2
  %56 = ptrtoint ptr %conv_data9.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %iterm.i.i, ptr %conv_data9.i.i, align 4
  %arrayinit.element10.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 3
  %57 = ptrtoint ptr %arrayinit.element10.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @.str.41, ptr %arrayinit.element10.i.i, align 4
  %optional12.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 3, i32 1
  %58 = ptrtoint ptr %optional12.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %optional12.i.i, align 4
  %tbl_id13.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 3, i32 2
  %59 = ptrtoint ptr %tbl_id13.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %tbl_id13.i.i, align 4
  %conv_data14.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 3, i32 3
  %iprechg.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 3
  %60 = ptrtoint ptr %conv_data14.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %iprechg.i.i, ptr %conv_data14.i.i, align 4
  %arrayinit.element15.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 4
  %61 = ptrtoint ptr %arrayinit.element15.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @.str.42, ptr %arrayinit.element15.i.i, align 4
  %optional17.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 4, i32 1
  %62 = ptrtoint ptr %optional17.i.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %optional17.i.i, align 4
  %tbl_id18.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 4, i32 2
  %63 = ptrtoint ptr %tbl_id18.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %tbl_id18.i.i, align 4
  %conv_data19.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 4, i32 3
  %sysvmin.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 4
  %64 = ptrtoint ptr %conv_data19.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %sysvmin.i.i, ptr %conv_data19.i.i, align 4
  %arrayinit.element20.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 5
  %65 = ptrtoint ptr %arrayinit.element20.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @.str.43, ptr %arrayinit.element20.i.i, align 4
  %optional22.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 5, i32 1
  %66 = ptrtoint ptr %optional22.i.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %optional22.i.i, align 4
  %tbl_id23.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 5, i32 2
  %67 = ptrtoint ptr %tbl_id23.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %tbl_id23.i.i, align 4
  %conv_data24.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 5, i32 3
  %boostv.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 5
  %68 = ptrtoint ptr %conv_data24.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %boostv.i.i, ptr %conv_data24.i.i, align 4
  %arrayinit.element25.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 6
  %69 = ptrtoint ptr %arrayinit.element25.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @.str.44, ptr %arrayinit.element25.i.i, align 4
  %optional27.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 6, i32 1
  %70 = ptrtoint ptr %optional27.i.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %optional27.i.i, align 4
  %tbl_id28.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 6, i32 2
  %71 = ptrtoint ptr %tbl_id28.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 9, ptr %tbl_id28.i.i, align 4
  %conv_data29.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 6, i32 3
  %boosti.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 6
  %72 = ptrtoint ptr %conv_data29.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %boosti.i.i, ptr %conv_data29.i.i, align 4
  %arrayinit.element30.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 7
  %73 = ptrtoint ptr %arrayinit.element30.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @.str.45, ptr %arrayinit.element30.i.i, align 4
  %optional32.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 7, i32 1
  %74 = ptrtoint ptr %optional32.i.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %optional32.i.i, align 4
  %tbl_id33.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 7, i32 2
  %75 = ptrtoint ptr %tbl_id33.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 8, ptr %tbl_id33.i.i, align 4
  %conv_data34.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 7, i32 3
  %treg.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 9
  %76 = ptrtoint ptr %conv_data34.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %treg.i.i, ptr %conv_data34.i.i, align 4
  %arrayinit.element35.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 8
  %77 = ptrtoint ptr %arrayinit.element35.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.46, ptr %arrayinit.element35.i.i, align 4
  %optional37.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 8, i32 1
  %78 = ptrtoint ptr %optional37.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %optional37.i.i, align 4
  %tbl_id38.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 8, i32 2
  %79 = ptrtoint ptr %tbl_id38.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 7, ptr %tbl_id38.i.i, align 4
  %conv_data39.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 8, i32 3
  %rbatcomp.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 10
  %80 = ptrtoint ptr %conv_data39.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %rbatcomp.i.i, ptr %conv_data39.i.i, align 4
  %arrayinit.element40.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 9
  %81 = ptrtoint ptr %arrayinit.element40.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.47, ptr %arrayinit.element40.i.i, align 4
  %optional42.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 9, i32 1
  %82 = ptrtoint ptr %optional42.i.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 1, ptr %optional42.i.i, align 4
  %tbl_id43.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 9, i32 2
  %83 = ptrtoint ptr %tbl_id43.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 6, ptr %tbl_id43.i.i, align 4
  %conv_data44.i.i = getelementptr inbounds %struct.anon.86, ptr %props.i.i, i32 9, i32 3
  %vclamp.i.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 11
  %84 = ptrtoint ptr %conv_data44.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %vclamp.i.i, ptr %conv_data44.i.i, align 4
  %85 = ptrtoint ptr %treg.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 3, ptr %treg.i.i, align 1
  %86 = ptrtoint ptr %vclamp.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %vclamp.i.i, align 1
  %87 = ptrtoint ptr %rbatcomp.i.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %rbatcomp.i.i, align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then32
  %i.090.i.i = phi i32 [ 0, %if.then32 ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %88 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev3, align 4
  %arrayidx.i.i175 = getelementptr [10 x %struct.anon.86], ptr %props.i.i, i32 0, i32 %i.090.i.i
  %90 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.i.i175, align 4
  %call.i.i.i = call i32 @device_property_read_u32_array(ptr noundef %89, ptr noundef %91, ptr noundef nonnull %property.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp49.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp49.i.i, label %if.then.i.i, label %if.end56.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %optional51.i.i = getelementptr [10 x %struct.anon.86], ptr %props.i.i, i32 0, i32 %i.090.i.i, i32 1
  %92 = ptrtoint ptr %optional51.i.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %optional51.i.i, align 4, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i.i, label %do.end38, label %if.then.i.i.for.inc.i.i_crit_edge

if.then.i.i.for.inc.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.i

if.end56.i.i:                                     ; preds = %for.body.i.i
  %94 = ptrtoint ptr %property.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %property.i.i, align 4
  %tbl_id58.i.i = getelementptr [10 x %struct.anon.86], ptr %props.i.i, i32 0, i32 %i.090.i.i, i32 2
  %96 = ptrtoint ptr %tbl_id58.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %tbl_id58.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %97)
  %cmp.i.i.i = icmp ugt i32 %97, 7
  %arrayidx.i.i.i = getelementptr [11 x %union.anon.87], ptr @bq25890_tables, i32 0, i32 %97
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end56.i.i
  %98 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i.i.i, align 4
  %size.i.i.i = getelementptr inbounds %struct.bq25890_lookup, ptr %arrayidx.i.i.i, i32 0, i32 1
  %100 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp349.i.i.i = icmp ugt i32 %101, 1
  br i1 %cmp349.i.i.i, label %if.then.i.i.i.land.rhs.i.i.i_crit_edge, label %if.then.i.i.i.bq25890_find_idx.exit.i.i_crit_edge

if.then.i.i.i.bq25890_find_idx.exit.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_find_idx.exit.i.i

if.then.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  br label %land.rhs.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, %if.then.i.i.i.land.rhs.i.i.i_crit_edge
  %conv51.i.i.i = phi i32 [ %conv.i.i.i, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ], [ 1, %if.then.i.i.i.land.rhs.i.i.i_crit_edge ]
  %idx.050.i.i.i = phi i8 [ %inc.i.i.i, %for.inc.i.i.i.land.rhs.i.i.i_crit_edge ], [ 1, %if.then.i.i.i.land.rhs.i.i.i_crit_edge ]
  %arrayidx5.i.i.i = getelementptr i32, ptr %99, i32 %conv51.i.i.i
  %102 = ptrtoint ptr %arrayidx5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx5.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %103, i32 %95)
  %cmp6.not.i.i.i = icmp ugt i32 %103, %95
  br i1 %cmp6.not.i.i.i, label %land.rhs.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, label %for.inc.i.i.i

land.rhs.i.i.i.bq25890_find_idx.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_find_idx.exit.i.i

for.inc.i.i.i:                                    ; preds = %land.rhs.i.i.i
  %inc.i.i.i = add i8 %idx.050.i.i.i, 1
  %conv.i.i.i = zext i8 %inc.i.i.i to i32
  %cmp3.i.i.i = icmp ugt i32 %101, %conv.i.i.i
  br i1 %cmp3.i.i.i, label %for.inc.i.i.i.land.rhs.i.i.i_crit_edge, label %for.inc.i.i.i.bq25890_find_idx.exit.i.i_crit_edge

for.inc.i.i.i.bq25890_find_idx.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_find_idx.exit.i.i

for.inc.i.i.i.land.rhs.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i.i.i

if.else.i.i.i:                                    ; preds = %if.end56.i.i
  %max.i.i.i = getelementptr inbounds %struct.bq25890_range, ptr %arrayidx.i.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %max.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %max.i.i.i, align 4
  %106 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx.i.i.i, align 4
  %sub.i.i.i = sub i32 %105, %107
  %step.i.i.i = getelementptr inbounds %struct.bq25890_range, ptr %arrayidx.i.i.i, i32 0, i32 2
  %108 = ptrtoint ptr %step.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %step.i.i.i, align 4
  %div.i.i.i = udiv i32 %sub.i.i.i, %109
  %conv9.i.i.i = add i32 %div.i.i.i, 1
  %conv12.i.i.i = and i32 %conv9.i.i.i, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv12.i.i.i)
  %cmp1345.not.i.i.i = icmp eq i32 %conv12.i.i.i, 0
  br i1 %cmp1345.not.i.i.i, label %if.else.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, label %land.rhs15.preheader.i.i.i

if.else.i.i.i.bq25890_find_idx.exit.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_find_idx.exit.i.i

land.rhs15.preheader.i.i.i:                       ; preds = %if.else.i.i.i
  %110 = trunc i32 %conv9.i.i.i to i8
  %umax.i.i = call i8 @llvm.umax.i8(i8 %110, i8 2) #7
  %wide.trip.count.i.i = zext i8 %umax.i.i to i32
  br label %land.rhs15.i.i.i

land.rhs15.i.i.i:                                 ; preds = %for.inc24.i.i.i.land.rhs15.i.i.i_crit_edge, %land.rhs15.preheader.i.i.i
  %indvars.iv.i.i = phi i32 [ %indvars.iv.next.i.i, %for.inc24.i.i.i.land.rhs15.i.i.i_crit_edge ], [ 1, %land.rhs15.preheader.i.i.i ]
  %idx.146.i.i.i = phi i8 [ %inc25.i.i.i, %for.inc24.i.i.i.land.rhs15.i.i.i_crit_edge ], [ 1, %land.rhs15.preheader.i.i.i ]
  %mul.i.i.i = mul i32 %indvars.iv.i.i, %109
  %add19.i.i.i = add i32 %mul.i.i.i, %107
  call void @__sanitizer_cov_trace_cmp4(i32 %add19.i.i.i, i32 %95)
  %cmp20.not.i.i.i = icmp ugt i32 %add19.i.i.i, %95
  br i1 %cmp20.not.i.i.i, label %bq25890_find_idx.exit.loopexit97.split.loop.exit101.i.i, label %for.inc24.i.i.i

for.inc24.i.i.i:                                  ; preds = %land.rhs15.i.i.i
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %inc25.i.i.i = add nuw i8 %idx.146.i.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %for.inc24.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, label %for.inc24.i.i.i.land.rhs15.i.i.i_crit_edge

for.inc24.i.i.i.land.rhs15.i.i.i_crit_edge:       ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs15.i.i.i

for.inc24.i.i.i.bq25890_find_idx.exit.i.i_crit_edge: ; preds = %for.inc24.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_find_idx.exit.i.i

bq25890_find_idx.exit.loopexit97.split.loop.exit101.i.i: ; preds = %land.rhs15.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = trunc i32 %indvars.iv.i.i to i8
  br label %bq25890_find_idx.exit.i.i

bq25890_find_idx.exit.i.i:                        ; preds = %bq25890_find_idx.exit.loopexit97.split.loop.exit101.i.i, %for.inc24.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, %if.else.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, %for.inc.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, %land.rhs.i.i.i.bq25890_find_idx.exit.i.i_crit_edge, %if.then.i.i.i.bq25890_find_idx.exit.i.i_crit_edge
  %idx.2.i.i.i = phi i8 [ 1, %if.then.i.i.i.bq25890_find_idx.exit.i.i_crit_edge ], [ 1, %if.else.i.i.i.bq25890_find_idx.exit.i.i_crit_edge ], [ %111, %bq25890_find_idx.exit.loopexit97.split.loop.exit101.i.i ], [ %idx.050.i.i.i, %land.rhs.i.i.i.bq25890_find_idx.exit.i.i_crit_edge ], [ %inc.i.i.i, %for.inc.i.i.i.bq25890_find_idx.exit.i.i_crit_edge ], [ %inc25.i.i.i, %for.inc24.i.i.i.bq25890_find_idx.exit.i.i_crit_edge ]
  %sub28.i.i.i = add i8 %idx.2.i.i.i, -1
  %conv_data61.i.i = getelementptr [10 x %struct.anon.86], ptr %props.i.i, i32 0, i32 %i.090.i.i, i32 3
  %112 = ptrtoint ptr %conv_data61.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %conv_data61.i.i, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %sub28.i.i.i, ptr %113, align 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %bq25890_find_idx.exit.i.i, %if.then.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.090.i.i, 1
  %exitcond96.not.i.i = icmp eq i32 %inc.i.i, 10
  br i1 %exitcond96.not.i.i, label %if.end40, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

do.end38:                                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %115 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev3, align 4
  %117 = ptrtoint ptr %arrayidx.i.i175 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %arrayidx.i.i175, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.48, i32 noundef %call.i.i.i, ptr noundef %118) #10
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %props.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call.i.i.i) #10
  br label %cleanup95

if.end40:                                         ; preds = %for.inc.i.i
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %props.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i.i) #7
  %119 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev3, align 4
  %call.i.i176 = call zeroext i1 @device_property_present(ptr noundef %120, ptr noundef nonnull @.str.36) #7
  %conv.i = zext i1 %call.i.i176 to i8
  %ilim_en.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 8
  %121 = ptrtoint ptr %ilim_en.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv.i, ptr %ilim_en.i, align 1
  %122 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev3, align 4
  %call.i11.i = call zeroext i1 @device_property_present(ptr noundef %123, ptr noundef nonnull @.str.37) #7
  %conv4.i = zext i1 %call.i11.i to i8
  %boostf.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 10, i32 7
  %124 = ptrtoint ptr %boostf.i to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %conv4.i, ptr %boostf.i, align 1
  %call41 = call fastcc i32 @bq25890_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end47

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call41) #10
  br label %cleanup95

if.end47:                                         ; preds = %if.end40
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %125 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %126)
  %cmp48 = icmp slt i32 %126, 1
  br i1 %cmp48, label %if.end52, label %if.end47.if.end60_crit_edge

if.end47.if.end60_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.end52:                                         ; preds = %if.end47
  %call50 = call fastcc i32 @bq25890_irq_probe(ptr noundef nonnull %call.i)
  %127 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %call50, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp54 = icmp slt i32 %call50, 0
  br i1 %cmp54, label %do.end58, label %if.end52.if.end60_crit_edge

if.end52.if.end60_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

do.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #10
  %128 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irq, align 4
  br label %cleanup95

if.end60:                                         ; preds = %if.end52.if.end60_crit_edge, %if.end47.if.end60_crit_edge
  %call61 = call ptr @devm_usb_get_phy(ptr noundef %dev1, i32 noundef 1) #7
  %usb_phy = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 3
  %130 = ptrtoint ptr %usb_phy to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call61, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %call61, null
  %cmp.i179 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i179
  br i1 %spec.select.i, label %if.end60.if.end76_crit_edge, label %do.body65

if.end60.if.end76_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

do.body65:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %usb_work = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 5
  call void @__init_work(ptr noundef %usb_work, i32 noundef 0) #7
  %131 = ptrtoint ptr %usb_work to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -64, ptr %usb_work, align 4
  %lockdep_map = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 5, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @bq25890_probe.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry69 = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 5, i32 1
  %132 = ptrtoint ptr %entry69 to i32
  call void @__asan_store4_noabort(i32 %132)
  store volatile ptr %entry69, ptr %entry69, align 4
  %prev.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 5, i32 1, i32 1
  %133 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %entry69, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 5, i32 2
  %134 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @bq25890_usb_work, ptr %func, align 4
  %usb_nb = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 4
  %135 = ptrtoint ptr %usb_nb to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @bq25890_usb_notifier, ptr %usb_nb, align 4
  %136 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %usb_phy, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %137, i32 0, i32 18
  %call.i180 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %usb_nb) #7
  br label %if.end76

if.end76:                                         ; preds = %do.body65, %if.end60.if.end76_crit_edge
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg.i) #7
  %138 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 2
  %139 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 4
  %140 = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg.i, i32 0, i32 5
  %141 = call ptr @memset(ptr %psy_cfg.i, i32 0, i32 16)
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %call.i, ptr %138, align 4
  %143 = ptrtoint ptr %139 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @bq25890_charger_supplied_to, ptr %139, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %140, align 4
  %145 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev3, align 4
  %call.i182 = call ptr @devm_power_supply_register(ptr noundef %146, ptr noundef nonnull @bq25890_power_supply_desc, ptr noundef nonnull %psy_cfg.i) #7
  %charger.i = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 2
  %147 = ptrtoint ptr %charger.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %call.i182, ptr %charger.i, align 4
  %cmp.i.i.i183 = icmp ugt ptr %call.i182, inttoptr (i32 -4096 to ptr)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg.i) #7
  %cmp78196 = icmp slt ptr %call.i182, null
  %cmp78 = and i1 %cmp.i.i.i183, %cmp78196
  br i1 %cmp78, label %do.end82, label %if.end83

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %call.i182 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #10
  br label %err_unregister_usb_notifier

if.end83:                                         ; preds = %if.end76
  %149 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %irq, align 4
  %call85 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %150, ptr noundef null, ptr noundef nonnull @bq25890_irq_handler_thread, i32 noundef 8194, ptr noundef nonnull @.str.24, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end83.cleanup95_crit_edge, label %if.end83.err_unregister_usb_notifier_crit_edge

if.end83.err_unregister_usb_notifier_crit_edge:   ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unregister_usb_notifier

if.end83.cleanup95_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

err_unregister_usb_notifier:                      ; preds = %if.end83.err_unregister_usb_notifier_crit_edge, %do.end82
  %ret.0 = phi i32 [ %148, %do.end82 ], [ %call85, %if.end83.err_unregister_usb_notifier_crit_edge ]
  %151 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i184 = icmp eq ptr %152, null
  %cmp.i185 = icmp ugt ptr %152, inttoptr (i32 -4096 to ptr)
  %spec.select.i186 = or i1 %tobool.not.i184, %cmp.i185
  br i1 %spec.select.i186, label %err_unregister_usb_notifier.cleanup95_crit_edge, label %if.then91

err_unregister_usb_notifier.cleanup95_crit_edge:  ; preds = %err_unregister_usb_notifier
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup95

if.then91:                                        ; preds = %err_unregister_usb_notifier
  call void @__sanitizer_cov_trace_pc() #9
  %usb_nb93 = getelementptr inbounds %struct.bq25890_device, ptr %call.i, i32 0, i32 4
  %notifier.i187 = getelementptr inbounds %struct.usb_phy, ptr %152, i32 0, i32 18
  %call.i188 = call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i187, ptr noundef %usb_nb93) #7
  br label %cleanup95

cleanup95:                                        ; preds = %if.then91, %err_unregister_usb_notifier.cleanup95_crit_edge, %if.end83.cleanup95_crit_edge, %do.end58, %do.end46, %do.end38, %if.end30.cleanup95_crit_edge, %do.end29, %cleanup.thread, %if.then7, %entry.cleanup95_crit_edge
  %retval.2 = phi i32 [ %call10, %if.then7 ], [ %retval.0.i, %do.end29 ], [ %call.i.i.i, %do.end38 ], [ %call41, %do.end46 ], [ %129, %do.end58 ], [ -12, %entry.cleanup95_crit_edge ], [ -19, %if.end30.cleanup95_crit_edge ], [ 0, %if.end83.cleanup95_crit_edge ], [ %ret.0, %if.then91 ], [ %ret.0, %err_unregister_usb_notifier.cleanup95_crit_edge ], [ %call22, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %usb_phy = getelementptr inbounds %struct.bq25890_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %usb_phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %usb_phy, align 4
  %tobool.not.i = icmp eq ptr %3, null
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %usb_nb = getelementptr inbounds %struct.bq25890_device, ptr %1, i32 0, i32 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %usb_nb) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx.i.i = getelementptr %struct.bq25890_device, ptr %1, i32 0, i32 8, i32 70
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i7 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i7, label %if.end.bq25890_chip_reset.exit_crit_edge, label %if.end.do.body.i_crit_edge

if.end.do.body.i_crit_edge:                       ; preds = %if.end
  br label %do.body.i

if.end.bq25890_chip_reset.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_chip_reset.exit

do.body.i:                                        ; preds = %if.end4.i.do.body.i_crit_edge, %if.end.do.body.i_crit_edge
  %rst_check_counter.0.i = phi i32 [ %dec.i, %if.end4.i.do.body.i_crit_edge ], [ 10, %if.end.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i.i, align 4, !annotation !187
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bq25890_field_read.exit.thread.i, label %bq25890_field_read.exit.i

bq25890_field_read.exit.thread.i:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %bq25890_chip_reset.exit

bq25890_field_read.exit.i:                        ; preds = %do.body.i
  %9 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.i = icmp slt i32 %10, 0
  br i1 %cmp2.i, label %bq25890_field_read.exit.i.bq25890_chip_reset.exit_crit_edge, label %if.end4.i

bq25890_field_read.exit.i.bq25890_chip_reset.exit_crit_edge: ; preds = %bq25890_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_chip_reset.exit

if.end4.i:                                        ; preds = %bq25890_field_read.exit.i
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp5.i = icmp ne i32 %10, 1
  %dec.i = add nsw i32 %rst_check_counter.0.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i8 = icmp eq i32 %dec.i, 0
  %or.cond = select i1 %cmp5.i, i1 true, i1 %tobool.not.i8
  br i1 %or.cond, label %if.end4.i.bq25890_chip_reset.exit_crit_edge, label %if.end4.i.do.body.i_crit_edge

if.end4.i.do.body.i_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

if.end4.i.bq25890_chip_reset.exit_crit_edge:      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_chip_reset.exit

bq25890_chip_reset.exit:                          ; preds = %if.end4.i.bq25890_chip_reset.exit_crit_edge, %bq25890_field_read.exit.i.bq25890_chip_reset.exit_crit_edge, %bq25890_field_read.exit.thread.i, %if.end.bq25890_chip_reset.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq25890_hw_init(ptr noundef %bq) unnamed_addr #2 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %init_data = alloca [12 x %struct.anon.88], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %init_data) #7
  %0 = ptrtoint ptr %init_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 21, ptr %init_data, align 4
  %value = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 0, i32 1
  %init_data1 = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10
  %1 = ptrtoint ptr %init_data1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %init_data1, align 4
  %conv = zext i8 %2 to i32
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %value, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 24, ptr %arrayinit.element, align 4
  %value3 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 1, i32 1
  %vreg = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %vreg to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %vreg, align 1
  %conv5 = zext i8 %6 to i32
  %7 = ptrtoint ptr %value3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv5, ptr %value3, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 2
  %8 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 23, ptr %arrayinit.element6, align 4
  %value8 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 2, i32 1
  %iterm = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 2
  %9 = ptrtoint ptr %iterm to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iterm, align 2
  %conv10 = zext i8 %10 to i32
  %11 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv10, ptr %value8, align 4
  %arrayinit.element11 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 3
  %12 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 22, ptr %arrayinit.element11, align 4
  %value13 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 3, i32 1
  %iprechg = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 3
  %13 = ptrtoint ptr %iprechg to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %iprechg, align 1
  %conv15 = zext i8 %14 to i32
  %15 = ptrtoint ptr %value13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv15, ptr %value13, align 4
  %arrayinit.element16 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 4
  %16 = ptrtoint ptr %arrayinit.element16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 18, ptr %arrayinit.element16, align 4
  %value18 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 4, i32 1
  %sysvmin = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 4
  %17 = ptrtoint ptr %sysvmin to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %sysvmin, align 4
  %conv20 = zext i8 %18 to i32
  %19 = ptrtoint ptr %value18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv20, ptr %value18, align 4
  %arrayinit.element21 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 5
  %20 = ptrtoint ptr %arrayinit.element21 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 44, ptr %arrayinit.element21, align 4
  %value23 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 5, i32 1
  %boostv = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %boostv to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %boostv, align 1
  %conv25 = zext i8 %22 to i32
  %23 = ptrtoint ptr %value23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv25, ptr %value23, align 4
  %arrayinit.element26 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 6
  %24 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 46, ptr %arrayinit.element26, align 4
  %value28 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 6, i32 1
  %boosti = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 6
  %25 = ptrtoint ptr %boosti to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %boosti, align 2
  %conv30 = zext i8 %26 to i32
  %27 = ptrtoint ptr %value28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv30, ptr %value28, align 4
  %arrayinit.element31 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 7
  %28 = ptrtoint ptr %arrayinit.element31 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %arrayinit.element31, align 4
  %value33 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 7, i32 1
  %boostf = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 7
  %29 = ptrtoint ptr %boostf to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %boostf, align 1
  %conv35 = zext i8 %30 to i32
  %31 = ptrtoint ptr %value33 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv35, ptr %value33, align 4
  %arrayinit.element36 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 8
  %32 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %arrayinit.element36, align 4
  %value38 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 8, i32 1
  %ilim_en = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 8
  %33 = ptrtoint ptr %ilim_en to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ilim_en, align 4
  %conv40 = zext i8 %34 to i32
  %35 = ptrtoint ptr %value38 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv40, ptr %value38, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 9
  %36 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 35, ptr %arrayinit.element41, align 4
  %value43 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 9, i32 1
  %treg = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 9
  %37 = ptrtoint ptr %treg to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %treg, align 1
  %conv45 = zext i8 %38 to i32
  %39 = ptrtoint ptr %value43 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv45, ptr %value43, align 4
  %arrayinit.element46 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 10
  %40 = ptrtoint ptr %arrayinit.element46 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 33, ptr %arrayinit.element46, align 4
  %value48 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 10, i32 1
  %rbatcomp = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 10
  %41 = ptrtoint ptr %rbatcomp to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %rbatcomp, align 2
  %conv50 = zext i8 %42 to i32
  %43 = ptrtoint ptr %value48 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv50, ptr %value48, align 4
  %arrayinit.element51 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 11
  %44 = ptrtoint ptr %arrayinit.element51 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 34, ptr %arrayinit.element51, align 4
  %value53 = getelementptr inbounds %struct.anon.88, ptr %init_data, i32 11, i32 1
  %vclamp = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 10, i32 11
  %45 = ptrtoint ptr %vclamp to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vclamp, align 1
  %conv55 = zext i8 %46 to i32
  %47 = ptrtoint ptr %value53 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv55, ptr %value53, align 4
  %arrayidx.i.i = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 70
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %49, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %entry.do.body.i_crit_edge

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %rst_check_counter.0.i = phi i32 [ %dec.i, %land.rhs.i.do.body.i_crit_edge ], [ 10, %entry.do.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #7
  %50 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %val.i.i, align 4, !annotation !187
  %51 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = call i32 @regmap_field_read(ptr noundef %52, ptr noundef nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %bq25890_field_read.exit.thread.i, label %bq25890_field_read.exit.i

bq25890_field_read.exit.thread.i:                 ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  br label %do.body

bq25890_field_read.exit.i:                        ; preds = %do.body.i
  %53 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %val.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp2.i = icmp slt i32 %54, 0
  br i1 %cmp2.i, label %bq25890_field_read.exit.i.do.body_crit_edge, label %if.end4.i

bq25890_field_read.exit.i.do.body_crit_edge:      ; preds = %bq25890_field_read.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end4.i:                                        ; preds = %bq25890_field_read.exit.i
  call void @usleep_range_state(i32 noundef 5, i32 noundef 10, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %54)
  %cmp5.i = icmp eq i32 %54, 1
  br i1 %cmp5.i, label %land.rhs.i, label %if.end62

land.rhs.i:                                       ; preds = %if.end4.i
  %dec.i = add nsw i32 %rst_check_counter.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %land.rhs.i.do.body_crit_edge, label %land.rhs.i.do.body.i_crit_edge

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

land.rhs.i.do.body_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %land.rhs.i.do.body_crit_edge, %bq25890_field_read.exit.i.do.body_crit_edge, %bq25890_field_read.exit.thread.i, %entry.do.body_crit_edge
  %retval.0.i226.ph = phi i32 [ %call.i.i, %bq25890_field_read.exit.thread.i ], [ %call.i.i.i, %entry.do.body_crit_edge ], [ -110, %land.rhs.i.do.body_crit_edge ], [ %54, %bq25890_field_read.exit.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_hw_init.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_hw_init, %cleanup)) #7
          to label %if.then61 [label %cleanup], !srcloc !189

if.then61:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_hw_init.__UNIQUE_ID_ddebug294, ptr noundef %56, ptr noundef nonnull @.str.53, i32 noundef %retval.0.i226.ph) #7
  br label %cleanup

if.end62:                                         ; preds = %if.end4.i
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 29
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i227 = call i32 @regmap_field_update_bits_base(ptr noundef %58, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i227)
  %cmp64 = icmp slt i32 %call.i.i227, 0
  br i1 %cmp64, label %do.body67, label %if.end62.for.body_crit_edge

if.end62.for.body_crit_edge:                      ; preds = %if.end62
  br label %for.body

do.body67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_hw_init.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_hw_init, %cleanup)) #7
          to label %if.then81 [label %cleanup], !srcloc !189

if.then81:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #9
  %dev82 = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %59 = ptrtoint ptr %dev82 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev82, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_hw_init.__UNIQUE_ID_ddebug295, ptr noundef %60, ptr noundef nonnull @.str.54, i32 noundef %call.i.i227) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0243, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end62.for.body_crit_edge
  %i.0243 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end62.for.body_crit_edge ]
  %arrayidx = getelementptr [12 x %struct.anon.88], ptr %init_data, i32 0, i32 %i.0243
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx, align 4
  %value91 = getelementptr [12 x %struct.anon.88], ptr %init_data, i32 0, i32 %i.0243, i32 1
  %63 = ptrtoint ptr %value91 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %value91, align 4
  %arrayidx.i228 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 %62
  %65 = ptrtoint ptr %arrayidx.i228 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.i228, align 4
  %conv.i = and i32 %64, 255
  %call.i.i229 = call i32 @regmap_field_update_bits_base(ptr noundef %66, i32 noundef -1, i32 noundef %conv.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i229)
  %cmp94 = icmp slt i32 %call.i.i229, 0
  br i1 %cmp94, label %do.body97, label %for.cond

do.body97:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_hw_init.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_hw_init, %cleanup)) #7
          to label %if.then111 [label %cleanup], !srcloc !189

if.then111:                                       ; preds = %do.body97
  call void @__sanitizer_cov_trace_pc() #9
  %dev112 = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %67 = ptrtoint ptr %dev112 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev112, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_hw_init.__UNIQUE_ID_ddebug296, ptr noundef %68, ptr noundef nonnull @.str.55, i32 noundef %call.i.i229) #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %state = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 11
  %call117 = call fastcc i32 @bq25890_get_chip_state(ptr noundef %bq, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %cmp118 = icmp slt i32 %call117, 0
  br i1 %cmp118, label %do.body121, label %if.end140

do.body121:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_hw_init.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_hw_init, %cleanup)) #7
          to label %if.then135 [label %cleanup], !srcloc !189

if.then135:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #9
  %dev136 = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %69 = ptrtoint ptr %dev136 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev136, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_hw_init.__UNIQUE_ID_ddebug297, ptr noundef %70, ptr noundef nonnull @.str.56, i32 noundef %call117) #7
  br label %cleanup

if.end140:                                        ; preds = %for.end
  %71 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool142 = icmp ne i8 %72, 0
  %arrayidx.i230 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 7
  %73 = ptrtoint ptr %arrayidx.i230 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i230, align 4
  %conv.i231 = zext i1 %tobool142 to i32
  %call.i.i232 = call i32 @regmap_field_update_bits_base(ptr noundef %74, i32 noundef -1, i32 noundef %conv.i231, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i232)
  %cmp149 = icmp slt i32 %call.i.i232, 0
  br i1 %cmp149, label %do.body152, label %if.end140.cleanup_crit_edge

if.end140.cleanup_crit_edge:                      ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body152:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_hw_init.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_hw_init, %cleanup)) #7
          to label %if.then166 [label %cleanup], !srcloc !189

if.then166:                                       ; preds = %do.body152
  call void @__sanitizer_cov_trace_pc() #9
  %dev167 = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %75 = ptrtoint ptr %dev167 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev167, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_hw_init.__UNIQUE_ID_ddebug298, ptr noundef %76, ptr noundef nonnull @.str.57, i32 noundef %call.i.i232) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %do.body152, %if.end140.cleanup_crit_edge, %if.then135, %do.body121, %if.then111, %do.body97, %if.then81, %do.body67, %if.then61, %do.body
  %retval.0 = phi i32 [ %retval.0.i226.ph, %if.then61 ], [ %call.i.i227, %if.then81 ], [ %call.i.i229, %if.then111 ], [ %call117, %if.then135 ], [ %call.i.i232, %if.then166 ], [ 0, %if.end140.cleanup_crit_edge ], [ %retval.0.i226.ph, %do.body ], [ %call.i.i227, %do.body67 ], [ %call.i.i229, %do.body97 ], [ %call117, %do.body121 ], [ %call.i.i232, %do.body152 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %init_data) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq25890_irq_probe(ptr nocapture noundef readonly %bq) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @devm_gpiod_get(ptr noundef %1, ptr noundef nonnull @.str.24, i32 noundef 1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %call to i32
  %call4 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %3, i32 noundef %4, ptr noundef nonnull @.str.60) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call5 = tail call i32 @gpiod_to_irq(ptr noundef %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bq25890_usb_work(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_event = getelementptr i8, ptr %data, i32 44
  %0 = ptrtoint ptr %usb_event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usb_event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 0, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx.i = getelementptr i8, ptr %data, i32 116
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %4, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sw.bb.do.end_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.do.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

sw.bb1:                                           ; preds = %entry
  %arrayidx.i12 = getelementptr i8, ptr %data, i32 116
  %5 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i12, align 4
  %call.i.i13 = tail call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i13)
  %cmp3 = icmp slt i32 %call.i.i13, 0
  br i1 %cmp3, label %sw.bb1.do.end_crit_edge, label %if.end5

sw.bb1.do.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %charger = getelementptr i8, ptr %data, i32 -20
  %7 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %8) #7
  br label %cleanup

do.end:                                           ; preds = %sw.bb1.do.end_crit_edge, %sw.bb.do.end_crit_edge
  %dev = getelementptr i8, ptr %data, i32 -24
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.61) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_usb_notifier(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %usb_event = getelementptr i8, ptr %nb, i32 56
  %0 = ptrtoint ptr %usb_event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %val, ptr %usb_event, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_power_efficient_wq to i32))
  %1 = load ptr, ptr @system_power_efficient_wq, align 4
  %usb_work = getelementptr i8, ptr %nb, i32 12
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %usb_work) #7
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_irq_handler_thread(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.bq25890_device, ptr %private, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call = tail call fastcc i32 @__bq25890_handle_irq(ptr noundef %private)
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bq25890_get_chip_state(ptr nocapture noundef readonly %bq, ptr noundef %state) unnamed_addr #2 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chrg_status = getelementptr inbounds %struct.bq25890_state, ptr %state, i32 0, i32 1
  %vsys_status = getelementptr inbounds %struct.bq25890_state, ptr %state, i32 0, i32 3
  %boost_fault = getelementptr inbounds %struct.bq25890_state, ptr %state, i32 0, i32 4
  %bat_fault = getelementptr inbounds %struct.bq25890_state, ptr %state, i32 0, i32 5
  %chrg_fault = getelementptr inbounds %struct.bq25890_state, ptr %state, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 48
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %2, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit

entry.bq25890_field_read.exit.thread_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.thread:                   ; preds = %if.end.4.bq25890_field_read.exit.thread_crit_edge, %if.end.3.bq25890_field_read.exit.thread_crit_edge, %if.end.2.bq25890_field_read.exit.thread_crit_edge, %if.end.1.bq25890_field_read.exit.thread_crit_edge, %if.end.bq25890_field_read.exit.thread_crit_edge, %entry.bq25890_field_read.exit.thread_crit_edge
  %call.i.lcssa = phi i32 [ %call.i, %entry.bq25890_field_read.exit.thread_crit_edge ], [ %call.i.1, %if.end.bq25890_field_read.exit.thread_crit_edge ], [ %call.i.2, %if.end.1.bq25890_field_read.exit.thread_crit_edge ], [ %call.i.3, %if.end.2.bq25890_field_read.exit.thread_crit_edge ], [ %call.i.4, %if.end.3.bq25890_field_read.exit.thread_crit_edge ], [ %call.i.5, %if.end.4.bq25890_field_read.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  br label %cleanup

bq25890_field_read.exit:                          ; preds = %entry
  %3 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16 = icmp slt i32 %4, 0
  br i1 %cmp16, label %bq25890_field_read.exit.cleanup_crit_edge, label %if.end

bq25890_field_read.exit.cleanup_crit_edge:        ; preds = %bq25890_field_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %bq25890_field_read.exit
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %chrg_status to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %chrg_status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %6 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i.1 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 49
  %7 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.1, align 4
  %call.i.1 = call i32 @regmap_field_read(ptr noundef %8, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp.i.1, label %if.end.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit.1

if.end.bq25890_field_read.exit.thread_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.1:                        ; preds = %if.end
  %9 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp16.1 = icmp slt i32 %10, 0
  br i1 %cmp16.1, label %bq25890_field_read.exit.1.cleanup_crit_edge, label %if.end.1

bq25890_field_read.exit.1.cleanup_crit_edge:      ; preds = %bq25890_field_read.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.1:                                         ; preds = %bq25890_field_read.exit.1
  %conv.1 = trunc i32 %10 to i8
  %11 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.1, ptr %state, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %12 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i.2 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 52
  %13 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.2, align 4
  %call.i.2 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp.i.2, label %if.end.1.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit.2

if.end.1.bq25890_field_read.exit.thread_crit_edge: ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.2:                        ; preds = %if.end.1
  %15 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp16.2 = icmp slt i32 %16, 0
  br i1 %cmp16.2, label %bq25890_field_read.exit.2.cleanup_crit_edge, label %if.end.2

bq25890_field_read.exit.2.cleanup_crit_edge:      ; preds = %bq25890_field_read.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.2:                                         ; preds = %bq25890_field_read.exit.2
  %conv.2 = trunc i32 %16 to i8
  %17 = ptrtoint ptr %vsys_status to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.2, ptr %vsys_status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %18 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i.3 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 54
  %19 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.3, align 4
  %call.i.3 = call i32 @regmap_field_read(ptr noundef %20, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3)
  %cmp.i.3 = icmp slt i32 %call.i.3, 0
  br i1 %cmp.i.3, label %if.end.2.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit.3

if.end.2.bq25890_field_read.exit.thread_crit_edge: ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.3:                        ; preds = %if.end.2
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp16.3 = icmp slt i32 %22, 0
  br i1 %cmp16.3, label %bq25890_field_read.exit.3.cleanup_crit_edge, label %if.end.3

bq25890_field_read.exit.3.cleanup_crit_edge:      ; preds = %bq25890_field_read.exit.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.3:                                         ; preds = %bq25890_field_read.exit.3
  %conv.3 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %boost_fault to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.3, ptr %boost_fault, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %24 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i.4 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 56
  %25 = ptrtoint ptr %arrayidx.i.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i.4, align 4
  %call.i.4 = call i32 @regmap_field_read(ptr noundef %26, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4)
  %cmp.i.4 = icmp slt i32 %call.i.4, 0
  br i1 %cmp.i.4, label %if.end.3.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit.4

if.end.3.bq25890_field_read.exit.thread_crit_edge: ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.4:                        ; preds = %if.end.3
  %27 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp16.4 = icmp slt i32 %28, 0
  br i1 %cmp16.4, label %bq25890_field_read.exit.4.cleanup_crit_edge, label %if.end.4

bq25890_field_read.exit.4.cleanup_crit_edge:      ; preds = %bq25890_field_read.exit.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.4:                                         ; preds = %bq25890_field_read.exit.4
  %conv.4 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %bat_fault to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv.4, ptr %bat_fault, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %30 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i.5 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 55
  %31 = ptrtoint ptr %arrayidx.i.5 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx.i.5, align 4
  %call.i.5 = call i32 @regmap_field_read(ptr noundef %32, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5)
  %cmp.i.5 = icmp slt i32 %call.i.5, 0
  br i1 %cmp.i.5, label %if.end.4.bq25890_field_read.exit.thread_crit_edge, label %bq25890_field_read.exit.5

if.end.4.bq25890_field_read.exit.thread_crit_edge: ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bq25890_field_read.exit.thread

bq25890_field_read.exit.5:                        ; preds = %if.end.4
  %33 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp16.5 = icmp slt i32 %34, 0
  br i1 %cmp16.5, label %bq25890_field_read.exit.5.cleanup_crit_edge, label %if.end.5

bq25890_field_read.exit.5.cleanup_crit_edge:      ; preds = %bq25890_field_read.exit.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.5:                                         ; preds = %bq25890_field_read.exit.5
  call void @__sanitizer_cov_trace_pc() #9
  %conv.5 = trunc i32 %34 to i8
  %35 = ptrtoint ptr %chrg_fault to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.5, ptr %chrg_fault, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bq25890_get_chip_state.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@bq25890_get_chip_state, %cleanup)) #7
          to label %if.then23 [label %cleanup], !srcloc !189

if.then23:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  %38 = ptrtoint ptr %chrg_status to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %chrg_status, align 1
  %conv25 = zext i8 %39 to i32
  %40 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %state, align 1
  %conv27 = zext i8 %41 to i32
  %42 = ptrtoint ptr %vsys_status to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %vsys_status, align 1
  %conv29 = zext i8 %43 to i32
  %44 = ptrtoint ptr %chrg_fault to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %chrg_fault, align 1
  %conv31 = zext i8 %45 to i32
  %46 = ptrtoint ptr %boost_fault to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %boost_fault, align 1
  %conv33 = zext i8 %47 to i32
  %48 = ptrtoint ptr %bat_fault to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %bat_fault, align 1
  %conv35 = zext i8 %49 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bq25890_get_chip_state.__UNIQUE_ID_ddebug293, ptr noundef %37, ptr noundef nonnull @.str.59, i32 noundef %conv25, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31, i32 noundef %conv33, i32 noundef %conv35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %if.end.5, %bq25890_field_read.exit.5.cleanup_crit_edge, %bq25890_field_read.exit.4.cleanup_crit_edge, %bq25890_field_read.exit.3.cleanup_crit_edge, %bq25890_field_read.exit.2.cleanup_crit_edge, %bq25890_field_read.exit.1.cleanup_crit_edge, %bq25890_field_read.exit.cleanup_crit_edge, %bq25890_field_read.exit.thread
  %retval.0 = phi i32 [ 0, %if.then23 ], [ %call.i.lcssa, %bq25890_field_read.exit.thread ], [ 0, %if.end.5 ], [ %4, %bq25890_field_read.exit.cleanup_crit_edge ], [ %10, %bq25890_field_read.exit.1.cleanup_crit_edge ], [ %16, %bq25890_field_read.exit.2.cleanup_crit_edge ], [ %22, %bq25890_field_read.exit.3.cleanup_crit_edge ], [ %28, %bq25890_field_read.exit.4.cleanup_crit_edge ], [ %34, %bq25890_field_read.exit.5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_power_supply_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %val.i303 = alloca i32, align 4
  %val.i296 = alloca i32, align 4
  %val.i289 = alloca i32, align 4
  %val.i277 = alloca i32, align 4
  %val.i = alloca i32, align 4
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ret, align 4, !annotation !187
  %lock = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call1 = tail call fastcc i32 @__bq25890_handle_irq(ptr noundef %call)
  %state2 = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 11
  %1 = ptrtoint ptr %state2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %state.sroa.0.0.copyload = load i8, ptr %state2, align 4
  %state.sroa.9.0.state2.sroa_idx = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 11, i32 1
  %2 = ptrtoint ptr %state.sroa.9.0.state2.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %2)
  %state.sroa.9.0.copyload = load i8, ptr %state.sroa.9.0.state2.sroa_idx, align 1
  %state.sroa.18.0.state2.sroa_idx = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 11, i32 2
  %3 = ptrtoint ptr %state.sroa.18.0.state2.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %3)
  %state.sroa.18.0.copyload = load i8, ptr %state.sroa.18.0.state2.sroa_idx, align 2
  %state.sroa.23.0.state2.sroa_idx = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %state.sroa.23.0.state2.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %4)
  %state.sroa.23.0.copyload = load i8, ptr %state.sroa.23.0.state2.sroa_idx, align 4
  %state.sroa.25.0.state2.sroa_idx = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 11, i32 5
  %5 = ptrtoint ptr %state.sroa.25.0.state2.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %state.sroa.25.0.copyload = load i8, ptr %state.sroa.25.0.state2.sroa_idx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.0.0.copyload)
  %tobool.not = icmp eq i8 %state.sroa.0.0.copyload, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end41.critedge_crit_edge

entry.if.end41.critedge_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.critedge

land.rhs:                                         ; preds = %entry
  %6 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.73)
  switch i32 %psp, label %land.rhs.if.end41.critedge_crit_edge [
    i32 12, label %land.rhs.if.then_crit_edge
    i32 17, label %land.rhs.if.then_crit_edge324
    i32 52, label %land.rhs.if.then_crit_edge325
  ]

land.rhs.if.then_crit_edge325:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.then_crit_edge324:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.then_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

land.rhs.if.end41.critedge_crit_edge:             ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41.critedge

if.then:                                          ; preds = %land.rhs.if.then_crit_edge, %land.rhs.if.then_crit_edge324, %land.rhs.if.then_crit_edge325
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 6
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %call9 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call9, 1000000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.7, i32 noundef 445) #7
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i, align 4
  %call19322 = call i32 @regmap_field_read(ptr noundef %10, ptr noundef nonnull %ret) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19322)
  %tobool20.not323 = icmp eq i32 %call19322, 0
  br i1 %tobool20.not323, label %if.then.lor.lhs.false_crit_edge, label %if.then.if.end41_crit_edge

if.then.if.end41_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then34.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %lor.lhs.false.if.end41_crit_edge, label %land.lhs.true

lor.lhs.false.if.end41_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call25 = call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call25, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call25, %add.i
  br i1 %cmp3.i, label %if.then28, label %if.then34

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %call31 = call i32 @regmap_field_read(ptr noundef %14, ptr noundef nonnull %ret) #7
  br label %if.end41

if.then34:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 6251, i32 noundef 25000, i32 noundef 2) #7
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call19 = call i32 @regmap_field_read(ptr noundef %16, ptr noundef nonnull %ret) #7
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then34.lor.lhs.false_crit_edge, label %if.then34.if.end41_crit_edge

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then34.lor.lhs.false_crit_edge:                ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.end41.critedge:                                ; preds = %land.rhs.if.end41.critedge_crit_edge, %entry.if.end41.critedge_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %if.end41

if.end41:                                         ; preds = %if.end41.critedge, %if.then34.if.end41_crit_edge, %if.then28, %lor.lhs.false.if.end41_crit_edge, %if.then.if.end41_crit_edge
  %17 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %psp, label %if.end41.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb70
    i32 74, label %sw.bb100
    i32 73, label %sw.bb101
    i32 4, label %sw.bb103
    i32 2, label %sw.bb106
    i32 30, label %sw.bb134
    i32 31, label %sw.bb136
    i32 32, label %sw.bb147
    i32 67, label %sw.bb150
    i32 68, label %sw.bb153
    i32 38, label %sw.bb156
    i32 12, label %sw.bb164
    i32 17, label %sw.bb172
    i32 52, label %sw.bb179
  ]

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end41
  br i1 %tobool.not, label %if.then44, label %if.else

if.then44:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb
  %19 = zext i8 %state.sroa.9.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %state.sroa.9.0.copyload, label %if.else65 [
    i8 0, label %if.then47
    i8 1, label %if.else.if.then58_crit_edge
    i8 2, label %if.else.if.then58_crit_edge326
    i8 3, label %if.then64
  ]

if.else.if.then58_crit_edge326:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.else.if.then58_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then58

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.then58:                                        ; preds = %if.else.if.then58_crit_edge, %if.else.if.then58_crit_edge326
  %21 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb70:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.9.0.copyload)
  %cmp76 = icmp eq i8 %state.sroa.9.0.copyload, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp76
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %state.sroa.9.0.copyload)
  %cmp81 = icmp eq i8 %state.sroa.9.0.copyload, 3
  %or.cond254 = select i1 %or.cond, i1 true, i1 %cmp81
  br i1 %or.cond254, label %if.then83, label %if.else84

if.then83:                                        ; preds = %sw.bb70
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else84:                                        ; preds = %sw.bb70
  %25 = zext i8 %state.sroa.9.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %state.sroa.9.0.copyload, label %if.else96 [
    i8 1, label %if.then89
    i8 2, label %if.then95
  ]

if.then89:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.then95:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 3, ptr %val, align 4
  br label %cleanup

if.else96:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb100:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.64, ptr %val, align 4
  br label %cleanup

sw.bb101:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %chip_version = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 9
  %30 = ptrtoint ptr %chip_version to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %chip_version, align 4
  %arrayidx102 = getelementptr [4 x ptr], ptr @bq25890_chip_name, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx102, align 4
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %val, align 4
  br label %cleanup

sw.bb103:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %conv105 = zext i8 %state.sroa.0.0.copyload to i32
  %35 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv105, ptr %val, align 4
  br label %cleanup

sw.bb106:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.18.0.copyload)
  %tobool107.not = icmp eq i8 %state.sroa.18.0.copyload, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.25.0.copyload)
  %tobool109.not = icmp eq i8 %state.sroa.25.0.copyload, 0
  %or.cond255 = select i1 %tobool107.not, i1 %tobool109.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.23.0.copyload)
  %tobool111.not = icmp eq i8 %state.sroa.23.0.copyload, 0
  %or.cond256 = select i1 %or.cond255, i1 %tobool111.not, i1 false
  br i1 %or.cond256, label %if.then112, label %if.else113

if.then112:                                       ; preds = %sw.bb106
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %val, align 4
  br label %cleanup

if.else113:                                       ; preds = %sw.bb106
  br i1 %tobool109.not, label %if.else117, label %if.then116

if.then116:                                       ; preds = %if.else113
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %val, align 4
  br label %cleanup

if.else117:                                       ; preds = %if.else113
  %38 = zext i8 %state.sroa.18.0.copyload to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %state.sroa.18.0.copyload, label %if.else129 [
    i8 3, label %if.then122
    i8 2, label %if.then128
  ]

if.then122:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 8, ptr %val, align 4
  br label %cleanup

if.then128:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %val, align 4
  br label %cleanup

if.else129:                                       ; preds = %if.else117
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 5, ptr %val, align 4
  br label %cleanup

sw.bb134:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %init_data = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 10
  %42 = ptrtoint ptr %init_data to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %init_data, align 4
  %conv.i = zext i8 %43 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 64000
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mul.i, ptr %val, align 4
  br label %cleanup

sw.bb136:                                         ; preds = %if.end41
  br i1 %tobool.not, label %if.then139, label %if.end140

if.then139:                                       ; preds = %sw.bb136
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.end140:                                        ; preds = %sw.bb136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #7
  %46 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %val.i, align 4, !annotation !187
  %arrayidx.i259 = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 61
  %47 = ptrtoint ptr %arrayidx.i259 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i259, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %48, ptr noundef nonnull %val.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i260 = icmp slt i32 %call.i, 0
  br i1 %cmp.i260, label %bq25890_field_read.exit.thread, label %bq25890_field_read.exit

bq25890_field_read.exit.thread:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %49 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call.i, ptr %ret, align 4
  br label %cleanup

bq25890_field_read.exit:                          ; preds = %if.end140
  %50 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %val.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #7
  %52 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp142 = icmp slt i32 %51, 0
  br i1 %cmp142, label %bq25890_field_read.exit.cleanup_crit_edge, label %if.end145

bq25890_field_read.exit.cleanup_crit_edge:        ; preds = %bq25890_field_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end145:                                        ; preds = %bq25890_field_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul i32 %51, 20000
  %add146 = add i32 %mul, 2304000
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add146, ptr %val, align 4
  br label %cleanup

sw.bb147:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %vreg = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 10, i32 1
  %54 = ptrtoint ptr %vreg to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %vreg, align 1
  %conv.i262 = zext i8 %55 to i32
  %mul.i263 = mul nuw nsw i32 %conv.i262, 16000
  %add.i264 = add nuw nsw i32 %mul.i263, 3840000
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add.i264, ptr %val, align 4
  br label %cleanup

sw.bb150:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %iprechg = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 10, i32 3
  %57 = ptrtoint ptr %iprechg to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iprechg, align 1
  %conv.i267 = zext i8 %58 to i32
  %mul.i268 = mul nuw nsw i32 %conv.i267, 64000
  %add.i269 = add nuw nsw i32 %mul.i268, 64000
  %59 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add.i269, ptr %val, align 4
  br label %cleanup

sw.bb153:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %iterm = getelementptr inbounds %struct.bq25890_device, ptr %call, i32 0, i32 10, i32 2
  %60 = ptrtoint ptr %iterm to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %iterm, align 2
  %conv.i272 = zext i8 %61 to i32
  %mul.i273 = mul nuw nsw i32 %conv.i272, 64000
  %add.i274 = add nuw nsw i32 %mul.i273, 64000
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %add.i274, ptr %val, align 4
  br label %cleanup

sw.bb156:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i277) #7
  %63 = ptrtoint ptr %val.i277 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %val.i277, align 4, !annotation !187
  %arrayidx.i278 = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 2
  %64 = ptrtoint ptr %arrayidx.i278 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i278, align 4
  %call.i279 = call i32 @regmap_field_read(ptr noundef %65, ptr noundef nonnull %val.i277) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i279)
  %cmp.i280 = icmp slt i32 %call.i279, 0
  br i1 %cmp.i280, label %bq25890_field_read.exit283.thread, label %bq25890_field_read.exit283

bq25890_field_read.exit283.thread:                ; preds = %sw.bb156
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i277) #7
  %66 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call.i279, ptr %ret, align 4
  br label %cleanup

bq25890_field_read.exit283:                       ; preds = %sw.bb156
  %67 = ptrtoint ptr %val.i277 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i277, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i277) #7
  %69 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp158 = icmp slt i32 %68, 0
  br i1 %cmp158, label %bq25890_field_read.exit283.cleanup_crit_edge, label %if.end161

bq25890_field_read.exit283.cleanup_crit_edge:     ; preds = %bq25890_field_read.exit283
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end161:                                        ; preds = %bq25890_field_read.exit283
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i284 = and i32 %68, 255
  %mul.i285 = mul nuw nsw i32 %conv.i284, 50000
  %add.i286 = add nuw nsw i32 %mul.i285, 100000
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %add.i286, ptr %val, align 4
  br label %cleanup

sw.bb164:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i289) #7
  %71 = ptrtoint ptr %val.i289 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %val.i289, align 4, !annotation !187
  %arrayidx.i290 = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 62
  %72 = ptrtoint ptr %arrayidx.i290 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i290, align 4
  %call.i291 = call i32 @regmap_field_read(ptr noundef %73, ptr noundef nonnull %val.i289) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %cmp.i292 = icmp slt i32 %call.i291, 0
  br i1 %cmp.i292, label %bq25890_field_read.exit295.thread, label %bq25890_field_read.exit295

bq25890_field_read.exit295.thread:                ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i289) #7
  %74 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i291, ptr %ret, align 4
  br label %cleanup

bq25890_field_read.exit295:                       ; preds = %sw.bb164
  %75 = ptrtoint ptr %val.i289 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %val.i289, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i289) #7
  %77 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp166 = icmp slt i32 %76, 0
  br i1 %cmp166, label %bq25890_field_read.exit295.cleanup_crit_edge, label %if.end169

bq25890_field_read.exit295.cleanup_crit_edge:     ; preds = %bq25890_field_read.exit295
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end169:                                        ; preds = %bq25890_field_read.exit295
  call void @__sanitizer_cov_trace_pc() #9
  %mul170 = mul i32 %76, 20000
  %add171 = add i32 %mul170, 2304000
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add171, ptr %val, align 4
  br label %cleanup

sw.bb172:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i296) #7
  %79 = ptrtoint ptr %val.i296 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %val.i296, align 4, !annotation !187
  %arrayidx.i297 = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 66
  %80 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.i297, align 4
  %call.i298 = call i32 @regmap_field_read(ptr noundef %81, ptr noundef nonnull %val.i296) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i298)
  %cmp.i299 = icmp slt i32 %call.i298, 0
  br i1 %cmp.i299, label %bq25890_field_read.exit302.thread, label %bq25890_field_read.exit302

bq25890_field_read.exit302.thread:                ; preds = %sw.bb172
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i296) #7
  %82 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call.i298, ptr %ret, align 4
  br label %cleanup

bq25890_field_read.exit302:                       ; preds = %sw.bb172
  %83 = ptrtoint ptr %val.i296 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %val.i296, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i296) #7
  %85 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp174 = icmp slt i32 %84, 0
  br i1 %cmp174, label %bq25890_field_read.exit302.cleanup_crit_edge, label %if.end177

bq25890_field_read.exit302.cleanup_crit_edge:     ; preds = %bq25890_field_read.exit302
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end177:                                        ; preds = %bq25890_field_read.exit302
  call void @__sanitizer_cov_trace_pc() #9
  %mul178 = mul i32 %84, -50000
  %86 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %mul178, ptr %val, align 4
  br label %cleanup

sw.bb179:                                         ; preds = %if.end41
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i303) #7
  %87 = ptrtoint ptr %val.i303 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %val.i303, align 4, !annotation !187
  %arrayidx.i304 = getelementptr %struct.bq25890_device, ptr %call, i32 0, i32 8, i32 63
  %88 = ptrtoint ptr %arrayidx.i304 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i304, align 4
  %call.i305 = call i32 @regmap_field_read(ptr noundef %89, ptr noundef nonnull %val.i303) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i305)
  %cmp.i306 = icmp slt i32 %call.i305, 0
  br i1 %cmp.i306, label %bq25890_field_read.exit309.thread, label %bq25890_field_read.exit309

bq25890_field_read.exit309.thread:                ; preds = %sw.bb179
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i303) #7
  %90 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %call.i305, ptr %ret, align 4
  br label %cleanup

bq25890_field_read.exit309:                       ; preds = %sw.bb179
  %91 = ptrtoint ptr %val.i303 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %val.i303, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i303) #7
  %93 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp181 = icmp slt i32 %92, 0
  br i1 %cmp181, label %bq25890_field_read.exit309.cleanup_crit_edge, label %if.end184

bq25890_field_read.exit309.cleanup_crit_edge:     ; preds = %bq25890_field_read.exit309
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end184:                                        ; preds = %bq25890_field_read.exit309
  call void @__sanitizer_cov_trace_pc() #9
  %idxprom.i = and i32 %92, 255
  %arrayidx1.i = getelementptr i32, ptr @bq25890_tspct_tbl, i32 %idxprom.i
  %94 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx1.i, align 4
  %96 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end184, %bq25890_field_read.exit309.cleanup_crit_edge, %bq25890_field_read.exit309.thread, %if.end177, %bq25890_field_read.exit302.cleanup_crit_edge, %bq25890_field_read.exit302.thread, %if.end169, %bq25890_field_read.exit295.cleanup_crit_edge, %bq25890_field_read.exit295.thread, %if.end161, %bq25890_field_read.exit283.cleanup_crit_edge, %bq25890_field_read.exit283.thread, %sw.bb153, %sw.bb150, %sw.bb147, %if.end145, %bq25890_field_read.exit.cleanup_crit_edge, %bq25890_field_read.exit.thread, %if.then139, %sw.bb134, %if.else129, %if.then128, %if.then122, %if.then116, %if.then112, %sw.bb103, %sw.bb101, %sw.bb100, %if.else96, %if.then95, %if.then89, %if.then83, %if.else65, %if.then64, %if.then58, %if.then47, %if.then44, %if.end41.cleanup_crit_edge
  %retval.0 = phi i32 [ %51, %bq25890_field_read.exit.cleanup_crit_edge ], [ %68, %bq25890_field_read.exit283.cleanup_crit_edge ], [ %76, %bq25890_field_read.exit295.cleanup_crit_edge ], [ %84, %bq25890_field_read.exit302.cleanup_crit_edge ], [ %92, %bq25890_field_read.exit309.cleanup_crit_edge ], [ -22, %if.end41.cleanup_crit_edge ], [ 0, %if.then112 ], [ 0, %if.then122 ], [ 0, %if.else129 ], [ 0, %if.then128 ], [ 0, %if.then116 ], [ 0, %if.then83 ], [ 0, %if.then95 ], [ 0, %if.else96 ], [ 0, %if.then89 ], [ 0, %if.then44 ], [ 0, %if.then58 ], [ 0, %if.else65 ], [ 0, %if.then64 ], [ 0, %if.then47 ], [ 0, %if.end184 ], [ 0, %if.end177 ], [ 0, %if.end169 ], [ 0, %if.end161 ], [ 0, %sw.bb153 ], [ 0, %sw.bb150 ], [ 0, %sw.bb147 ], [ 0, %if.end145 ], [ 0, %if.then139 ], [ 0, %sw.bb134 ], [ 0, %sw.bb103 ], [ 0, %sw.bb101 ], [ 0, %sw.bb100 ], [ %call.i, %bq25890_field_read.exit.thread ], [ %call.i279, %bq25890_field_read.exit283.thread ], [ %call.i291, %bq25890_field_read.exit295.thread ], [ %call.i298, %bq25890_field_read.exit302.thread ], [ %call.i305, %bq25890_field_read.exit309.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bq25890_handle_irq(ptr nocapture noundef %bq) unnamed_addr #2 align 64 {
entry:
  %new_state = alloca %struct.bq25890_state, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %new_state) #7
  %0 = call ptr @memset(ptr %new_state, i32 255, i32 6)
  %call = call fastcc i32 @bq25890_get_chip_state(ptr noundef %bq, ptr noundef nonnull %new_state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 11
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(6) %state, ptr noundef nonnull dereferenceable(6) %new_state, i32 6) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = ptrtoint ptr %new_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %new_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool4.not = icmp eq i8 %2, 0
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool4.not, label %land.lhs.true, label %land.lhs.true17

land.lhs.true:                                    ; preds = %if.end3
  br i1 %tobool7.not, label %land.lhs.true.if.end28_crit_edge, label %if.then8

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then8:                                         ; preds = %land.lhs.true
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 7
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %6, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp10 = icmp slt i32 %call.i.i, 0
  br i1 %cmp10, label %if.then8.do.end_crit_edge, label %if.then8.if.end28_crit_edge

if.then8.if.end28_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then8.do.end_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true17:                                  ; preds = %if.end3
  br i1 %tobool7.not, label %if.then21, label %land.lhs.true17.if.end28_crit_edge

land.lhs.true17.if.end28_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21:                                        ; preds = %land.lhs.true17
  %arrayidx.i43 = getelementptr %struct.bq25890_device, ptr %bq, i32 0, i32 8, i32 7
  %7 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i43, align 4
  %call.i.i44 = call i32 @regmap_field_update_bits_base(ptr noundef %8, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %cmp23 = icmp slt i32 %call.i.i44, 0
  br i1 %cmp23, label %if.then21.do.end_crit_edge, label %if.then21.if.end28_crit_edge

if.then21.if.end28_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then21.do.end_crit_edge:                       ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end28:                                         ; preds = %if.then21.if.end28_crit_edge, %land.lhs.true17.if.end28_crit_edge, %if.then8.if.end28_crit_edge, %land.lhs.true.if.end28_crit_edge
  %9 = call ptr @memcpy(ptr %state, ptr %new_state, i32 6)
  %charger = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 2
  %10 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %11) #7
  br label %cleanup

do.end:                                           ; preds = %if.then21.do.end_crit_edge, %if.then8.do.end_crit_edge
  %ret.0 = phi i32 [ %call.i.i44, %if.then21.do.end_crit_edge ], [ %call.i.i, %if.then8.do.end_crit_edge ]
  %dev = getelementptr inbounds %struct.bq25890_device, ptr %bq, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = inttoptr i32 %ret.0 to ptr
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.65, ptr noundef %14) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end28, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end28 ], [ 1, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %new_state) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %1, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %3, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bq25890_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.bq25890_device, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state = getelementptr inbounds %struct.bq25890_device, ptr %1, i32 0, i32 11
  %call1 = tail call fastcc i32 @bq25890_get_chip_state(ptr noundef %1, ptr noundef %state)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.unlock_crit_edge, label %if.end

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %arrayidx.i = getelementptr %struct.bq25890_device, ptr %1, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %5, i32 noundef -1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp5 = icmp slt i32 %call.i.i, 0
  br i1 %cmp5, label %if.then3.unlock_crit_edge, label %if.then3.if.end8_crit_edge

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then3.unlock_crit_edge:                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %if.then3.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ]
  %charger = getelementptr inbounds %struct.bq25890_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %charger, align 4
  tail call void @power_supply_changed(ptr noundef %7) #7
  br label %unlock

unlock:                                           ; preds = %if.end8, %if.then3.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.1 = phi i32 [ %call1, %entry.unlock_crit_edge ], [ %call.i.i, %if.then3.unlock_crit_edge ], [ %ret.0, %if.end8 ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !110, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !144, !145, !146, !147, !149, !151, !153, !155, !157, !159, !160, !161, !162, !164, !166, !168, !170, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_bq25890_charger__299_1138_bq25890_driver_init6, !1, !"__initcall__kmod_bq25890_charger__299_1138_bq25890_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1138, i32 1}
!2 = !{ptr @__exitcall_bq25890_driver_exit, !1, !"__exitcall_bq25890_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author300, !4, !"__UNIQUE_ID_author300", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1140, i32 1}
!5 = !{ptr @__UNIQUE_ID_description301, !6, !"__UNIQUE_ID_description301", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1141, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1142, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1129, i32 11}
!12 = !{ptr @bq25890_driver, !13, !"bq25890_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1127, i32 26}
!14 = !{ptr @bq25890_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bq25890_charger.c", i32 964, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bq25890_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/bq25890_charger.c", i32 966, i32 13}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/bq25890_charger.c", i32 969, i32 10}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/power/supply/bq25890_charger.c", i32 978, i32 11}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/power/supply/bq25890_charger.c", i32 985, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @bq25890_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @bq25890_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bq25890_charger.c", i32 992, i32 4}
!34 = !{ptr @bq25890_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bq25890_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1002, i32 3}
!38 = !{ptr @bq25890_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bq25890_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1010, i32 3}
!42 = !{ptr @bq25890_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bq25890_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @bq25890_probe.__key.19, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1017, i32 3}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1024, i32 3}
!49 = !{ptr @bq25890_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bq25890_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1031, i32 6}
!53 = !{ptr @bq25890_regmap_config, !54, !"bq25890_regmap_config", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/bq25890_charger.c", i32 141, i32 35}
!55 = !{ptr @bq25890_writeable_regs, !56, !"bq25890_writeable_regs", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/bq25890_charger.c", i32 124, i32 41}
!57 = !{ptr @bq25890_readonly_reg_ranges, !58, !"bq25890_readonly_reg_ranges", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/bq25890_charger.c", i32 119, i32 34}
!59 = !{ptr @bq25890_volatile_regs, !60, !"bq25890_volatile_regs", i1 false, i1 false}
!60 = !{!"../drivers/power/supply/bq25890_charger.c", i32 136, i32 41}
!61 = !{ptr @bq25890_volatile_reg_ranges, !62, !"bq25890_volatile_reg_ranges", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/bq25890_charger.c", i32 129, i32 34}
!63 = !{ptr @bq25890_reg_fields, !64, !"bq25890_reg_fields", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/bq25890_charger.c", i32 152, i32 31}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bq25890_charger.c", i32 827, i32 3}
!67 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @bq25890_get_chip_version._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @bq25890_get_chip_version._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/power/supply/bq25890_charger.c", i32 833, i32 3}
!72 = !{ptr @bq25890_get_chip_version._entry.27, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @bq25890_get_chip_version._entry_ptr.29, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/power/supply/bq25890_charger.c", i32 852, i32 4}
!76 = !{ptr @bq25890_get_chip_version._entry.30, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @bq25890_get_chip_version._entry_ptr.32, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/power/supply/bq25890_charger.c", i32 864, i32 3}
!80 = !{ptr @bq25890_get_chip_version._entry.33, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @bq25890_get_chip_version._entry_ptr.35, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/power/supply/bq25890_charger.c", i32 943, i32 53}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/power/supply/bq25890_charger.c", i32 944, i32 52}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/power/supply/bq25890_charger.c", i32 896, i32 4}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/power/supply/bq25890_charger.c", i32 897, i32 4}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/power/supply/bq25890_charger.c", i32 898, i32 4}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/power/supply/bq25890_charger.c", i32 899, i32 4}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/power/supply/bq25890_charger.c", i32 900, i32 4}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/power/supply/bq25890_charger.c", i32 901, i32 4}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/power/supply/bq25890_charger.c", i32 902, i32 4}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/power/supply/bq25890_charger.c", i32 905, i32 4}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/power/supply/bq25890_charger.c", i32 906, i32 4}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/power/supply/bq25890_charger.c", i32 907, i32 4}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/power/supply/bq25890_charger.c", i32 921, i32 4}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @bq25890_fw_read_u32_props._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @bq25890_fw_read_u32_props._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @bq25890_tables, !112, !"bq25890_tables", i1 false, i1 false}
!112 = !{!"../drivers/power/supply/bq25890_charger.c", i32 320, i32 3}
!113 = !{ptr @bq25890_treg_tbl, !114, !"bq25890_treg_tbl", i1 false, i1 false}
!114 = !{!"../drivers/power/supply/bq25890_charger.c", i32 273, i32 18}
!115 = !{ptr @bq25890_boosti_tbl, !116, !"bq25890_boosti_tbl", i1 false, i1 false}
!116 = !{!"../drivers/power/supply/bq25890_charger.c", i32 278, i32 18}
!117 = !{ptr @bq25890_tspct_tbl, !118, !"bq25890_tspct_tbl", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/bq25890_charger.c", i32 285, i32 18}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/power/supply/bq25890_charger.c", i32 698, i32 3}
!121 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @bq25890_hw_init.__UNIQUE_ID_ddebug294, !120, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!124 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/power/supply/bq25890_charger.c", i32 705, i32 3}
!126 = !{ptr @bq25890_hw_init.__UNIQUE_ID_ddebug295, !125, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/power/supply/bq25890_charger.c", i32 714, i32 4}
!129 = !{ptr @bq25890_hw_init.__UNIQUE_ID_ddebug296, !128, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!130 = !{ptr @.str.56, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/power/supply/bq25890_charger.c", i32 721, i32 3}
!132 = !{ptr @bq25890_hw_init.__UNIQUE_ID_ddebug297, !131, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/bq25890_charger.c", i32 728, i32 3}
!135 = !{ptr @bq25890_hw_init.__UNIQUE_ID_ddebug298, !134, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/power/supply/bq25890_charger.c", i32 597, i32 2}
!138 = !{ptr @.str.59, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @bq25890_get_chip_state.__UNIQUE_ID_ddebug293, !137, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/power/supply/bq25890_charger.c", i32 878, i32 10}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/power/supply/bq25890_charger.c", i32 806, i32 2}
!144 = !{ptr @.str.62, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @bq25890_usb_work._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @bq25890_usb_work._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/power/supply/bq25890_charger.c", i32 754, i32 2}
!149 = !{ptr @bq25890_charger_supplied_to, !150, !"bq25890_charger_supplied_to", i1 false, i1 false}
!150 = !{!"../drivers/power/supply/bq25890_charger.c", i32 753, i32 14}
!151 = !{ptr @bq25890_power_supply_desc, !152, !"bq25890_power_supply_desc", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/bq25890_charger.c", i32 757, i32 39}
!153 = !{ptr @bq25890_power_supply_props, !154, !"bq25890_power_supply_props", i1 false, i1 false}
!154 = !{!"../drivers/power/supply/bq25890_charger.c", i32 735, i32 41}
!155 = !{ptr @.str.64, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/power/supply/bq25890_charger.c", i32 476, i32 17}
!157 = !{ptr @.str.65, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/power/supply/bq25890_charger.c", i32 633, i32 2}
!159 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @__bq25890_handle_irq._entry, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @__bq25890_handle_irq._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.67, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/power/supply/bq25890_charger.c", i32 36, i32 2}
!164 = !{ptr @.str.68, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/bq25890_charger.c", i32 37, i32 2}
!166 = !{ptr @.str.69, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/power/supply/bq25890_charger.c", i32 38, i32 2}
!168 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/bq25890_charger.c", i32 39, i32 2}
!170 = !{ptr @bq25890_chip_name, !171, !"bq25890_chip_name", i1 false, i1 false}
!171 = !{!"../drivers/power/supply/bq25890_charger.c", i32 35, i32 26}
!172 = !{ptr @bq25890_of_match, !173, !"bq25890_of_match", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1110, i32 34}
!174 = !{ptr @bq25890_pm, !175, !"bq25890_pm", i1 false, i1 false}
!175 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1097, i32 32}
!176 = !{ptr @bq25890_i2c_ids, !177, !"bq25890_i2c_ids", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/bq25890_charger.c", i32 1101, i32 35}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i8 0, i8 2}
!189 = !{i64 2148981197, i64 2148981202, i64 2148981215, i64 2148981259, i64 2148981293, i64 2148981314}
