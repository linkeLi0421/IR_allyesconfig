; ModuleID = '/llk/IR_all_yes/drivers/power/supply/bd99954-charger.c_pt.bc'
source_filename = "../drivers/power/supply/bd99954-charger.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range_cfg = type { ptr, i32, i32, i32, i32, i32, i32, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.linear_range = type { i32, i32, i32, i32 }
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
%struct.bd9995x_device = type { ptr, ptr, ptr, ptr, [342 x ptr], i32, i32, %struct.bd9995x_init_data, %struct.bd9995x_state, %struct.mutex }
%struct.bd9995x_init_data = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bd9995x_state = type { i8, i16, i16, i16 }
%struct.battery_init = type { ptr, ptr, ptr, i32, ptr }
%struct.power_supply_battery_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [20 x i32], i32, i32, i32, i32, i32, i32, [20 x ptr], [20 x i32], ptr, i32 }
%struct.anon.86 = type { i32, i16 }

@__initcall__kmod_bd99954_charger__296_1140_bd9995x_driver_init6 = internal global ptr @bd9995x_driver_init, section ".initcall6.init", align 4
@bd9995x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @bd9995x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bd9995x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_bd9995x_driver_exit = internal global ptr @bd9995x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [69 x i8] c"bd99954_charger.author=Laine Markus <markus.laine@fi.rohmeurope.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [56 x i8] c"bd99954_charger.description=ROHM BD99954 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [58 x i8] c"bd99954_charger.file=drivers/power/supply/bd99954-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"bd99954_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd9995x-charger\00", [16 x i8] zeroinitializer }, align 32
@bd9995x_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rohm,bd99954\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bd9995x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&bd->lock\00", [22 x i8] zeroinitializer }, align 32
@bd9995x_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@bd9995x_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 1, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 768, ptr @bd9995x_writeable_regs, ptr null, ptr @bd9995x_volatile_regs, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr @regmap_range_cfg, i32 1, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"bd99954_charger:1054:(&bd9995x_regmap_config)->lock\00", [44 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1056, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to setup register access via i2c\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bd9995x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/bd99954-charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr = internal global ptr @bd9995x_probe._entry, section ".printk_index", align 4
@bd9995x_reg_fields = internal constant { [342 x %struct.reg_field], [1704 x i8] } { [342 x %struct.reg_field] [%struct.reg_field { i32 256, i32 8, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 256, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 257, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 258, i32 0, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 259, i32 8, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 259, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 259, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 259, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 260, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 260, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 261, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 262, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 263, i32 5, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 264, i32 5, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 265, i32 5, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 12, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 266, i32 0, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 267, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 12, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 268, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 269, i32 7, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 270, i32 7, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 271, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 271, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 272, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 272, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 273, i32 6, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 274, i32 6, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 275, i32 6, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 276, i32 6, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 277, i32 6, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 278, i32 6, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 279, i32 6, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 280, i32 6, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 281, i32 6, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 282, i32 4, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 283, i32 4, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 284, i32 4, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 285, i32 4, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 286, i32 4, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 287, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 288, i32 14, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 288, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 288, i32 8, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 288, i32 0, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 289, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 290, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 291, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 292, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 4, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 293, i32 0, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 294, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 295, i32 0, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 296, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 12, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 297, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 298, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 298, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 298, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 298, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 300, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 304, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 12, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 305, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 306, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 306, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 306, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 306, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 299, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 308, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 312, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 313, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 314, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 315, i32 4, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 315, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 316, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 316, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 316, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 316, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 316, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 62, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 63, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 14, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 12, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 10, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 320, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 321, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 321, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 322, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 322, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 323, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 323, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 324, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 324, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 325, i32 8, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 325, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 326, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 327, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 328, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 329, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 330, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 331, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 332, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 333, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 334, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 335, i32 0, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 336, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 337, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 338, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 339, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 340, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 341, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 342, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 343, i32 0, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 344, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 345, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 346, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 347, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 348, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 349, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 350, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 351, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 352, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 353, i32 0, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 354, i32 0, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 355, i32 0, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 356, i32 7, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 360, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 361, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 362, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 363, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 364, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 365, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 13, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 12, i32 12, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 366, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 15, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 14, i32 14, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 11, i32 11, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 10, i32 10, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 9, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 8, i32 8, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 7, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 5, i32 5, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 4, i32 4, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 3, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 2, i32 2, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 1, i32 1, i32 0, i32 0 }, %struct.reg_field { i32 367, i32 0, i32 0, i32 0, i32 0 }, %struct.reg_field { i32 375, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 374, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 373, i32 0, i32 13, i32 0, i32 0 }, %struct.reg_field { i32 372, i32 0, i32 9, i32 0, i32 0 }, %struct.reg_field { i32 371, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 370, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 369, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 368, i32 0, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 378, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 379, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 380, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 383, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 532, i32 0, i32 15, i32 0, i32 0 }, %struct.reg_field { i32 538, i32 0, i32 15, i32 0, i32 0 }], [1704 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1066, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate regmap field\0A\00", [34 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.10 = internal global ptr @bd9995x_probe._entry.8, section ".printk_index", align 4
@bd9995x_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 1075, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot read chip ID.\0A\00", [42 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.13 = internal global ptr @bd9995x_probe._entry.11, section ".printk_index", align 4
@bd9995x_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 1081, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Chip with ID=0x%x, not supported!\0A\00", [61 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.16 = internal global ptr @bd9995x_probe._entry.14, section ".printk_index", align 4
@bd9995x_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 1087, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot read revision.\0A\00", [41 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.19 = internal global ptr @bd9995x_probe._entry.17, section ".printk_index", align 4
@bd9995x_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.4, ptr @.str.5, i32 1091, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Found BD99954 chip rev %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.23 = internal global ptr @bd9995x_probe._entry.20, section ".printk_index", align 4
@bd9995x_power_supply_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @bd9995x_power_supply_props, i32 16, ptr @bd9995x_power_supply_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.4, ptr @.str.5, i32 1101, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.26 = internal global ptr @bd9995x_probe._entry.24, section ".printk_index", align 4
@bd9995x_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.4, ptr @.str.5, i32 1107, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot read device properties.\0A\00", [32 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.29 = internal global ptr @bd9995x_probe._entry.27, section ".printk_index", align 4
@bd9995x_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.4, ptr @.str.5, i32 1113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot initialize the chip.\0A\00", [35 x i8] zeroinitializer }, align 32
@bd9995x_probe._entry_ptr.32 = internal global ptr @bd9995x_probe._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bd9995x_irq\00", [20 x i8] zeroinitializer }, align 32
@bd9995x_writeable_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr null, i32 0, ptr @bd9995x_readonly_reg_ranges, i32 8 }, [16 x i8] zeroinitializer }, align 32
@bd9995x_volatile_regs = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @bd9995x_volatile_reg_ranges, i32 6, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@regmap_range_cfg = internal constant { [1 x %struct.regmap_range_cfg], [32 x i8] } { [1 x %struct.regmap_range_cfg] [%struct.regmap_range_cfg { ptr null, i32 0, i32 768, i32 63, i32 65535, i32 0, i32 0, i32 256 }], [32 x i8] zeroinitializer }, align 32
@bd9995x_readonly_reg_ranges = internal constant { [8 x %struct.regmap_range], [32 x i8] } { [8 x %struct.regmap_range] [%struct.regmap_range { i32 256, i32 262 }, %struct.regmap_range { i32 295, i32 295 }, %struct.regmap_range { i32 297, i32 298 }, %struct.regmap_range { i32 305, i32 306 }, %struct.regmap_range { i32 312, i32 313 }, %struct.regmap_range { i32 316, i32 316 }, %struct.regmap_range { i32 336, i32 341 }, %struct.regmap_range { i32 343, i32 355 }], [32 x i8] zeroinitializer }, align 32
@bd9995x_volatile_reg_ranges = internal constant { [6 x %struct.regmap_range], [48 x i8] } { [6 x %struct.regmap_range] [%struct.regmap_range { i32 256, i32 260 }, %struct.regmap_range { i32 297, i32 298 }, %struct.regmap_range { i32 305, i32 306 }, %struct.regmap_range { i32 368, i32 375 }, %struct.regmap_range { i32 316, i32 317 }, %struct.regmap_range { i32 336, i32 355 }], [48 x i8] zeroinitializer }, align 32
@bd9995x_power_supply_props = internal global { [16 x i32], [32 x i8] } { [16 x i32] [i32 74, i32 0, i32 4, i32 29, i32 27, i32 30, i32 31, i32 68, i32 3, i32 12, i32 17, i32 1, i32 2, i32 52, i32 6, i32 73], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Rohm Semiconductor\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bd99954\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"trickle-charging current\00", [39 x i8] zeroinitializer }, align 32
@charging_current_ranges = internal constant { [2 x %struct.linear_range], [32 x i8] } { [2 x %struct.linear_range] [%struct.linear_range { i32 0, i32 0, i32 16, i32 64000 }, %struct.linear_range { i32 1024000, i32 17, i32 31, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pre-charging current\00", [43 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pre-to-trickle charge voltage threshold\00", [56 x i8] zeroinitializer }, align 32
@trickle_to_pre_threshold_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 2048000, i32 0, i32 32, i32 0 }, %struct.linear_range { i32 2048000, i32 32, i32 300, i32 64000 }, %struct.linear_range { i32 19200000, i32 300, i32 511, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"charging termination current\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"charging re-start voltage\00", [38 x i8] zeroinitializer }, align 32
@charge_voltage_regulation_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 2560000, i32 0, i32 160, i32 0 }, %struct.linear_range { i32 2560000, i32 160, i32 1200, i32 16000 }, %struct.linear_range { i32 19200000, i32 1200, i32 2047, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"battery overvoltage limit\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"fast-charging max current\00", [38 x i8] zeroinitializer }, align 32
@fast_charge_current_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 0, i32 0, i32 255, i32 64000 }], [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fast-charging voltage\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"rohm,vsys-regulation-microvolt\00", [33 x i8] zeroinitializer }, align 32
@vsys_voltage_regulation_ranges = internal constant { [3 x %struct.linear_range], [48 x i8] } { [3 x %struct.linear_range] [%struct.linear_range { i32 2560000, i32 0, i32 40, i32 0 }, %struct.linear_range { i32 2560000, i32 40, i32 300, i32 64000 }, %struct.linear_range { i32 19200000, i32 300, i32 511, i32 0 }], [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rohm,vbus-input-current-limit-microamp\00", [57 x i8] zeroinitializer }, align 32
@input_current_limit_ranges = internal constant { [1 x %struct.linear_range], [16 x i8] } { [1 x %struct.linear_range] [%struct.linear_range { i32 0, i32 0, i32 511, i32 32000 }], [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"rohm,vcc-input-current-limit-microamp\00", [58 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.5, i32 983, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported value for %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bd9995x_fw_probe\00", [47 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry_ptr = internal global ptr @bd9995x_fw_probe._entry, section ".printk_index", align 4
@bd9995x_fw_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.5, i32 991, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unsupported value for %s - using smaller\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry_ptr.52 = internal global ptr @bd9995x_fw_probe._entry.49, section ".printk_index", align 4
@bd9995x_fw_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.48, ptr @.str.5, i32 1002, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"failed to read %s\00", [46 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry_ptr.55 = internal global ptr @bd9995x_fw_probe._entry.53, section ".printk_index", align 4
@bd9995x_fw_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.48, ptr @.str.5, i32 1013, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported value for '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry_ptr.58 = internal global ptr @bd9995x_fw_probe._entry.56, section ".printk_index", align 4
@bd9995x_fw_probe._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.48, ptr @.str.5, i32 1021, ptr @.str.51, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported value for '%s' - using smaller\0A\00", [52 x i8] zeroinitializer }, align 32
@bd9995x_fw_probe._entry_ptr.61 = internal global ptr @bd9995x_fw_probe._entry.59, section ".printk_index", align 4
@bd9995x_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.5, i32 717, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to initialize charger (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bd9995x_hw_init\00", [16 x i8] zeroinitializer }, align 32
@bd9995x_hw_init._entry_ptr = internal global ptr @bd9995x_hw_init._entry, section ".printk_index", align 4
@__bd9995x_chip_reset._entry = internal constant %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 623, ptr @.str.6, ptr @.str.7 }, align 1
@.str.64 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chip reset not completed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__bd9995x_chip_reset\00", [43 x i8] zeroinitializer }, align 32
@__bd9995x_chip_reset._entry_ptr = internal global ptr @__bd9995x_chip_reset._entry, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.5, i32 505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read IRQ status\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bd9995x_irq_handler_thread\00", [37 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr = internal global ptr @bd9995x_irq_handler_thread._entry, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.5, i32 511, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to read IRQ mask\0A\00", [39 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.70 = internal global ptr @bd9995x_irq_handler_thread._entry.68, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.5, i32 527, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to mask F_INT0\0A\00", [41 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.73 = internal global ptr @bd9995x_irq_handler_thread._entry.71, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.5, i32 533, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to ack F_INT0\0A\00", [42 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.76 = internal global ptr @bd9995x_irq_handler_thread._entry.74, section ".printk_index", align 4
@__const.bd9995x_irq_handler_thread.sub_status_reg = private unnamed_addr constant [7 x i32] [i32 369, i32 370, i32 371, i32 372, i32 373, i32 374, i32 375], align 4
@bd9995x_irq_handler_thread._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.5, i32 556, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read IRQ sub-status\0A\00", [33 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.79 = internal global ptr @bd9995x_irq_handler_thread._entry.77, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.5, i32 562, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to read IRQ sub-mask\0A\00", [35 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.82 = internal global ptr @bd9995x_irq_handler_thread._entry.80, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.67, ptr @.str.5, i32 571, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to ack sub-IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.85 = internal global ptr @bd9995x_irq_handler_thread._entry.83, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.67, ptr @.str.5, i32 584, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to read chip state\0A\00", [37 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.88 = internal global ptr @bd9995x_irq_handler_thread._entry.86, section ".printk_index", align 4
@bd9995x_irq_handler_thread._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.67, ptr @.str.5, i32 599, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Failed to un-mask F_INT0 - IRQ permanently disabled\0A\00", [43 x i8] zeroinitializer }, align 32
@bd9995x_irq_handler_thread._entry_ptr.91 = internal global ptr @bd9995x_irq_handler_thread._entry.89, section ".printk_index", align 4
@switch.table.bd9995x_power_supply_get_property = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 2, i32 3, i32 1, i32 1], [40 x i8] zeroinitializer }, align 32
@switch.table.bd9995x_power_supply_get_property.92 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 2, i32 2, i32 6, i32 6], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6, i64 12, i64 17, i64 27, i64 29, i64 30, i64 31, i64 52, i64 68, i64 73, i64 74]
@__sancov_gen_cov_switch_values.93 = internal global [23 x i64] [i64 21, i64 16, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 24, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 40, i64 64]
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"bd9995x_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1133, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1135, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"bd9995x_of_match\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1127, i32 34 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1052, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"bd9995x_regmap_config\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 160, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1054, i32 13 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1056, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"bd9995x_reg_fields\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [42 x i8] c"../drivers/power/supply/bd99954-charger.h\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.137, i32 481, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1066, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1075, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1080, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1087, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1091, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"bd9995x_power_supply_desc\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 753, i32 39 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1101, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1107, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1113, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1124, i32 7 }
@___asan_gen_.196 = private unnamed_addr constant [23 x i8] c"bd9995x_writeable_regs\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 129, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant [22 x i8] c"bd9995x_volatile_regs\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 143, i32 41 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"regmap_range_cfg\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 148, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"bd9995x_readonly_reg_ranges\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 118, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"bd9995x_volatile_reg_ranges\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 134, i32 34 }
@___asan_gen_.211 = private unnamed_addr constant [27 x i8] c"bd9995x_power_supply_props\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 733, i32 35 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 332, i32 17 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 432, i32 17 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 893, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"charging_current_ranges\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 780, i32 34 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 898, i32 12 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 903, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant [32 x i8] c"trickle_to_pre_threshold_ranges\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 838, i32 34 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 908, i32 12 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 913, i32 12 }
@___asan_gen_.241 = private unnamed_addr constant [33 x i8] c"charge_voltage_regulation_ranges\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 798, i32 34 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 918, i32 12 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 923, i32 12 }
@___asan_gen_.250 = private unnamed_addr constant [27 x i8] c"fast_charge_current_ranges\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 858, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 928, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 936, i32 12 }
@___asan_gen_.259 = private unnamed_addr constant [31 x i8] c"vsys_voltage_regulation_ranges\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 818, i32 34 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 941, i32 12 }
@___asan_gen_.265 = private unnamed_addr constant [27 x i8] c"input_current_limit_ranges\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 770, i32 34 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 946, i32 12 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 982, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 989, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1002, i32 4 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1012, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 1019, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 716, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 623, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 505, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 511, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 527, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 533, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 556, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 562, i32 4 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 571, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 584, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.377 = private constant [42 x i8] c"../drivers/power/supply/bd99954-charger.c\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.377, i32 598, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant [47 x i8] c"switch.table.bd9995x_power_supply_get_property\00", align 1
@___asan_gen_.380 = private unnamed_addr constant [50 x i8] c"switch.table.bd9995x_power_supply_get_property.92\00", align 1
@llvm.compiler.used = appending global [130 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__bd9995x_chip_reset._entry, ptr @__bd9995x_chip_reset._entry_ptr, ptr @__exitcall_bd9995x_driver_exit, ptr @__initcall__kmod_bd99954_charger__296_1140_bd9995x_driver_init6, ptr @bd9995x_driver_exit, ptr @bd9995x_fw_probe._entry, ptr @bd9995x_fw_probe._entry.49, ptr @bd9995x_fw_probe._entry.53, ptr @bd9995x_fw_probe._entry.56, ptr @bd9995x_fw_probe._entry.59, ptr @bd9995x_fw_probe._entry_ptr, ptr @bd9995x_fw_probe._entry_ptr.52, ptr @bd9995x_fw_probe._entry_ptr.55, ptr @bd9995x_fw_probe._entry_ptr.58, ptr @bd9995x_fw_probe._entry_ptr.61, ptr @bd9995x_hw_init._entry, ptr @bd9995x_hw_init._entry_ptr, ptr @bd9995x_irq_handler_thread._entry, ptr @bd9995x_irq_handler_thread._entry.68, ptr @bd9995x_irq_handler_thread._entry.71, ptr @bd9995x_irq_handler_thread._entry.74, ptr @bd9995x_irq_handler_thread._entry.77, ptr @bd9995x_irq_handler_thread._entry.80, ptr @bd9995x_irq_handler_thread._entry.83, ptr @bd9995x_irq_handler_thread._entry.86, ptr @bd9995x_irq_handler_thread._entry.89, ptr @bd9995x_irq_handler_thread._entry_ptr, ptr @bd9995x_irq_handler_thread._entry_ptr.70, ptr @bd9995x_irq_handler_thread._entry_ptr.73, ptr @bd9995x_irq_handler_thread._entry_ptr.76, ptr @bd9995x_irq_handler_thread._entry_ptr.79, ptr @bd9995x_irq_handler_thread._entry_ptr.82, ptr @bd9995x_irq_handler_thread._entry_ptr.85, ptr @bd9995x_irq_handler_thread._entry_ptr.88, ptr @bd9995x_irq_handler_thread._entry_ptr.91, ptr @bd9995x_probe._entry, ptr @bd9995x_probe._entry.11, ptr @bd9995x_probe._entry.14, ptr @bd9995x_probe._entry.17, ptr @bd9995x_probe._entry.20, ptr @bd9995x_probe._entry.24, ptr @bd9995x_probe._entry.27, ptr @bd9995x_probe._entry.30, ptr @bd9995x_probe._entry.8, ptr @bd9995x_probe._entry_ptr, ptr @bd9995x_probe._entry_ptr.10, ptr @bd9995x_probe._entry_ptr.13, ptr @bd9995x_probe._entry_ptr.16, ptr @bd9995x_probe._entry_ptr.19, ptr @bd9995x_probe._entry_ptr.23, ptr @bd9995x_probe._entry_ptr.26, ptr @bd9995x_probe._entry_ptr.29, ptr @bd9995x_probe._entry_ptr.32, ptr @bd9995x_driver, ptr @.str, ptr @bd9995x_of_match, ptr @bd9995x_probe.__key, ptr @.str.1, ptr @bd9995x_probe._key, ptr @bd9995x_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @bd9995x_reg_fields, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @bd9995x_power_supply_desc, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @bd9995x_writeable_regs, ptr @bd9995x_volatile_regs, ptr @regmap_range_cfg, ptr @bd9995x_readonly_reg_ranges, ptr @bd9995x_volatile_reg_ranges, ptr @bd9995x_power_supply_props, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @charging_current_ranges, ptr @.str.37, ptr @.str.38, ptr @trickle_to_pre_threshold_ranges, ptr @.str.39, ptr @.str.40, ptr @charge_voltage_regulation_ranges, ptr @.str.41, ptr @.str.42, ptr @fast_charge_current_ranges, ptr @.str.43, ptr @.str.44, ptr @vsys_voltage_regulation_ranges, ptr @.str.45, ptr @input_current_limit_ranges, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @switch.table.bd9995x_power_supply_get_property, ptr @switch.table.bd9995x_power_supply_get_property.92], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_reg_fields to i32), i32 6840, i32 8544, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_power_supply_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_writeable_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_volatile_regs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @regmap_range_cfg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_readonly_reg_ranges to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_volatile_reg_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_power_supply_props to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charging_current_ranges to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trickle_to_pre_threshold_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charge_voltage_regulation_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fast_charge_current_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vsys_voltage_regulation_ranges to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_current_limit_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_fw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_fw_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_fw_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_fw_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_fw_probe._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bd9995x_irq_handler_thread._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bd9995x_power_supply_get_property to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bd9995x_power_supply_get_property.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9995x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @bd9995x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bd9995x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @bd9995x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9995x_probe(ptr noundef %client) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1516, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup90_crit_edge, label %if.end

entry.cleanup90_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %dev3 = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %drv_data, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %7 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %psy_cfg, align 4
  %lock = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @bd9995x_probe.__key) #7
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @bd9995x_regmap_config, ptr noundef nonnull @bd9995x_probe._key, ptr noundef nonnull @.str.2) #7
  %rmap = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %rmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %rmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  %9 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rmap, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup90

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0165, 1
  %exitcond.not = icmp eq i32 %inc, 342
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0165 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %12 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmap, align 4
  %arrayidx = getelementptr %struct.reg_field, ptr @bd9995x_reg_fields, i32 %i.0165
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack = load i32, ptr %arrayidx, align 4
  %15 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt154 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %.elt154 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack155 = load i32, ptr %.elt154, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack155, 1
  %.elt156 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %.elt156 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.unpack157 = load i32, ptr %.elt156, align 4
  %19 = insertvalue [5 x i32] %17, i32 %.unpack157, 2
  %.elt158 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %20 = ptrtoint ptr %.elt158 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.unpack159 = load i32, ptr %.elt158, align 4
  %21 = insertvalue [5 x i32] %19, i32 %.unpack159, 3
  %.elt160 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %22 = ptrtoint ptr %.elt160 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.unpack161 = load i32, ptr %.elt160, align 4
  %23 = insertvalue [5 x i32] %21, i32 %.unpack161, 4
  %call16 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %13, [5 x i32] %23) #7
  %arrayidx17 = getelementptr %struct.bd9995x_device, ptr %call.i, i32 0, i32 4, i32 %i.0165
  %24 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call16, ptr %arrayidx17, align 4
  %cmp.i162 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i162, label %cleanup.thread, label %for.cond

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  %25 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx17, align 4
  %27 = ptrtoint ptr %26 to i32
  br label %cleanup90

for.end:                                          ; preds = %for.cond
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %28 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx30 = getelementptr %struct.bd9995x_device, ptr %call.i, i32 0, i32 4, i32 170
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx30, align 4
  %chip_id = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 5
  %call31 = tail call i32 @regmap_field_read(ptr noundef %30, ptr noundef %chip_id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #10
  br label %cleanup90

if.end37:                                         ; preds = %for.end
  %31 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 838, i32 %32)
  %cmp39.not = icmp eq i32 %32, 838
  br i1 %cmp39.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %32) #10
  br label %cleanup90

if.end45:                                         ; preds = %if.end37
  %arrayidx47 = getelementptr %struct.bd9995x_device, ptr %call.i, i32 0, i32 4, i32 171
  %33 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx47, align 4
  %chip_rev = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 6
  %call48 = tail call i32 @regmap_field_read(ptr noundef %34, ptr noundef %chip_rev) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end57, label %do.end53

do.end53:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #10
  br label %cleanup90

do.end57:                                         ; preds = %if.end45
  %35 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev3, align 4
  %37 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip_rev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %36, ptr noundef nonnull @.str.21, i32 noundef %38) #10
  %39 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev3, align 4
  %call61 = call ptr @devm_power_supply_register(ptr noundef %40, ptr noundef nonnull @bd9995x_power_supply_desc, ptr noundef nonnull %psy_cfg) #7
  %charger = getelementptr inbounds %struct.bd9995x_device, ptr %call.i, i32 0, i32 2
  %41 = ptrtoint ptr %charger to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call61, ptr %charger, align 4
  %cmp.i163 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i163, label %do.end67, label %if.end70

do.end67:                                         ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25) #10
  %42 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %charger, align 4
  %44 = ptrtoint ptr %43 to i32
  br label %cleanup90

if.end70:                                         ; preds = %do.end57
  %call71 = call fastcc i32 @bd9995x_fw_probe(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %do.end76, label %if.end77

do.end76:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.28) #10
  br label %cleanup90

if.end77:                                         ; preds = %if.end70
  %call78 = call fastcc i32 @bd9995x_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %cmp79 = icmp slt i32 %call78, 0
  br i1 %cmp79, label %do.end83, label %if.end84

do.end83:                                         ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31) #10
  br label %cleanup90

if.end84:                                         ; preds = %if.end77
  %call85 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.cleanup90_crit_edge

if.end84.cleanup90_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup90

if.end88:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %call89 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %46, ptr noundef null, ptr noundef nonnull @bd9995x_irq_handler_thread, i32 noundef 8200, ptr noundef nonnull @.str.33, ptr noundef nonnull %call.i) #7
  br label %cleanup90

cleanup90:                                        ; preds = %if.end88, %if.end84.cleanup90_crit_edge, %do.end83, %do.end76, %do.end67, %do.end53, %do.end43, %do.end36, %cleanup.thread, %do.end11, %entry.cleanup90_crit_edge
  %retval.2 = phi i32 [ %11, %do.end11 ], [ %call31, %do.end36 ], [ -19, %do.end43 ], [ %call48, %do.end53 ], [ %44, %do.end67 ], [ %call71, %do.end76 ], [ %call78, %do.end83 ], [ %call89, %if.end88 ], [ -12, %entry.cleanup90_crit_edge ], [ %call85, %if.end84.cleanup90_crit_edge ], [ %27, %cleanup.thread ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd9995x_fw_probe(ptr noundef %bd) unnamed_addr #2 align 64 {
entry:
  %info = alloca ptr, align 4
  %property = alloca i32, align 4
  %regval = alloca i32, align 4
  %found = alloca i8, align 1
  %battery_inits = alloca [8 x %struct.battery_init], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #7
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %info, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property) #7
  %1 = ptrtoint ptr %property to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %property, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %found) #7
  %3 = ptrtoint ptr %found to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %found, align 1, !annotation !199
  %init_data = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %battery_inits) #7
  %4 = ptrtoint ptr %battery_inits to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.36, ptr %battery_inits, align 4
  %info_data = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 0, i32 1
  %5 = ptrtoint ptr %info_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %info_data, align 4
  %range = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 0, i32 2
  %6 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @charging_current_ranges, ptr %range, align 4
  %ranges = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 0, i32 3
  %7 = ptrtoint ptr %ranges to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %ranges, align 4
  %data = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 0, i32 4
  %itrich_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %itrich_set, ptr %data, align 4
  %arrayinit.element = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 1
  %9 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.37, ptr %arrayinit.element, align 4
  %info_data2 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 1, i32 1
  %10 = ptrtoint ptr %info_data2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %info_data2, align 4
  %range3 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 1, i32 2
  %11 = ptrtoint ptr %range3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @charging_current_ranges, ptr %range3, align 4
  %ranges4 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 1, i32 3
  %12 = ptrtoint ptr %ranges4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %ranges4, align 4
  %data5 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 1, i32 4
  %iprech_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 4
  %13 = ptrtoint ptr %data5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %iprech_set, ptr %data5, align 4
  %arrayinit.element6 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 2
  %14 = ptrtoint ptr %arrayinit.element6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.38, ptr %arrayinit.element6, align 4
  %info_data8 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 2, i32 1
  %15 = ptrtoint ptr %info_data8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %info_data8, align 4
  %range9 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 2, i32 2
  %16 = ptrtoint ptr %range9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @trickle_to_pre_threshold_ranges, ptr %range9, align 4
  %ranges10 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 2, i32 3
  %17 = ptrtoint ptr %ranges10 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %ranges10, align 4
  %data11 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 2, i32 4
  %vprechg_th_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 7
  %18 = ptrtoint ptr %data11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vprechg_th_set, ptr %data11, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 3
  %19 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @.str.39, ptr %arrayinit.element12, align 4
  %info_data14 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 3, i32 1
  %20 = ptrtoint ptr %info_data14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %info_data14, align 4
  %range15 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 3, i32 2
  %21 = ptrtoint ptr %range15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @charging_current_ranges, ptr %range15, align 4
  %ranges16 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 3, i32 3
  %22 = ptrtoint ptr %ranges16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %ranges16, align 4
  %data17 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 3, i32 4
  %iterm_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 10
  %23 = ptrtoint ptr %data17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %iterm_set, ptr %data17, align 4
  %arrayinit.element18 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 4
  %24 = ptrtoint ptr %arrayinit.element18 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.40, ptr %arrayinit.element18, align 4
  %info_data20 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 4, i32 1
  %25 = ptrtoint ptr %info_data20 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %info_data20, align 4
  %range21 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 4, i32 2
  %26 = ptrtoint ptr %range21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @charge_voltage_regulation_ranges, ptr %range21, align 4
  %ranges22 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 4, i32 3
  %27 = ptrtoint ptr %ranges22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %ranges22, align 4
  %data23 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 4, i32 4
  %vrechg_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 8
  %28 = ptrtoint ptr %data23 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vrechg_set, ptr %data23, align 4
  %arrayinit.element24 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 5
  %29 = ptrtoint ptr %arrayinit.element24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @.str.41, ptr %arrayinit.element24, align 4
  %info_data26 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 5, i32 1
  %30 = ptrtoint ptr %info_data26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %info_data26, align 4
  %range27 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 5, i32 2
  %31 = ptrtoint ptr %range27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @charge_voltage_regulation_ranges, ptr %range27, align 4
  %ranges28 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 5, i32 3
  %32 = ptrtoint ptr %ranges28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %ranges28, align 4
  %data29 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 5, i32 4
  %vbatovp_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 9
  %33 = ptrtoint ptr %data29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vbatovp_set, ptr %data29, align 4
  %arrayinit.element30 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 6
  %34 = ptrtoint ptr %arrayinit.element30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @.str.42, ptr %arrayinit.element30, align 4
  %info_data32 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 6, i32 1
  %35 = ptrtoint ptr %info_data32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %info_data32, align 4
  %range33 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 6, i32 2
  %36 = ptrtoint ptr %range33 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @fast_charge_current_ranges, ptr %range33, align 4
  %ranges34 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 6, i32 3
  %37 = ptrtoint ptr %ranges34 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %ranges34, align 4
  %data35 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 6, i32 4
  %ichg_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 5
  %38 = ptrtoint ptr %data35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ichg_set, ptr %data35, align 4
  %arrayinit.element36 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 7
  %39 = ptrtoint ptr %arrayinit.element36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.43, ptr %arrayinit.element36, align 4
  %info_data38 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 7, i32 1
  %40 = ptrtoint ptr %info_data38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %info_data38, align 4
  %range39 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 7, i32 2
  %41 = ptrtoint ptr %range39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @charge_voltage_regulation_ranges, ptr %range39, align 4
  %ranges40 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 7, i32 3
  %42 = ptrtoint ptr %ranges40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %ranges40, align 4
  %data41 = getelementptr inbounds %struct.battery_init, ptr %battery_inits, i32 7, i32 4
  %vfastchg_reg_set1 = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 6
  %43 = ptrtoint ptr %data41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %vfastchg_reg_set1, ptr %data41, align 4
  %ibus_lim_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 1
  %icc_lim_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 2
  %charger = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 2
  %44 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %charger, align 4
  %call = call i32 @power_supply_get_battery_info(ptr noundef %45, ptr noundef nonnull %info) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup150_crit_edge, label %if.end

entry.cleanup150_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup150

if.end:                                           ; preds = %entry
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  %tricklecharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 5
  %48 = ptrtoint ptr %info_data to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %tricklecharge_current_ua, ptr %info_data, align 4
  %precharge_current_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 6
  %49 = ptrtoint ptr %info_data2 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %precharge_current_ua, ptr %info_data2, align 4
  %precharge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 7
  %50 = ptrtoint ptr %info_data8 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %precharge_voltage_max_uv, ptr %info_data8, align 4
  %charge_term_current_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 8
  %51 = ptrtoint ptr %info_data14 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %charge_term_current_ua, ptr %info_data14, align 4
  %charge_restart_voltage_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 9
  %52 = ptrtoint ptr %info_data20 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %charge_restart_voltage_uv, ptr %info_data20, align 4
  %overvoltage_limit_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 10
  %53 = ptrtoint ptr %info_data26 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %overvoltage_limit_uv, ptr %info_data26, align 4
  %constant_charge_current_max_ua = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 11
  %54 = ptrtoint ptr %info_data32 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %constant_charge_current_max_ua, ptr %info_data32, align 4
  %constant_charge_voltage_max_uv = getelementptr inbounds %struct.power_supply_battery_info, ptr %47, i32 0, i32 12
  %55 = ptrtoint ptr %info_data38 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %constant_charge_voltage_max_uv, ptr %info_data38, align 4
  %dev94 = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0204 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx72 = getelementptr [8 x %struct.battery_init], ptr %battery_inits, i32 0, i32 %i.0204
  %info_data73 = getelementptr [8 x %struct.battery_init], ptr %battery_inits, i32 0, i32 %i.0204, i32 1
  %56 = ptrtoint ptr %info_data73 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info_data73, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %59)
  %cmp80 = icmp eq i32 %59, -22
  br i1 %cmp80, label %for.body.for.inc_crit_edge, label %if.end82

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end82:                                         ; preds = %for.body
  %ranges79 = getelementptr [8 x %struct.battery_init], ptr %battery_inits, i32 0, i32 %i.0204, i32 3
  %60 = ptrtoint ptr %ranges79 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ranges79, align 4
  %range76 = getelementptr [8 x %struct.battery_init], ptr %battery_inits, i32 0, i32 %i.0204, i32 2
  %62 = ptrtoint ptr %range76 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %range76, align 4
  %call83 = call i32 @linear_range_get_selector_low_array(ptr noundef %63, i32 noundef %61, i32 noundef %59, ptr noundef nonnull %regval, ptr noundef nonnull %found) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool.not = icmp eq i32 %call83, 0
  br i1 %tobool.not, label %if.end88, label %cleanup

if.end88:                                         ; preds = %if.end82
  %64 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %found, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool89.not = icmp eq i8 %65, 0
  br i1 %tobool89.not, label %do.end93, label %if.end88.if.end97_crit_edge

if.end88.if.end97_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end97

do.end93:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev94, align 4
  %68 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx72, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %67, ptr noundef nonnull @.str.50, ptr noundef %69) #10
  br label %if.end97

if.end97:                                         ; preds = %do.end93, %if.end88.if.end97_crit_edge
  %70 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %regval, align 4
  %conv = trunc i32 %71 to i16
  %data99 = getelementptr [8 x %struct.battery_init], ptr %battery_inits, i32 0, i32 %i.0204, i32 4
  %72 = ptrtoint ptr %data99 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data99, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %conv, ptr %73, align 2
  br label %for.inc

cleanup:                                          ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev94, align 4
  %77 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx72, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.47, ptr noundef %78) #10
  %79 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %charger, align 4
  %81 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %info, align 4
  call void @power_supply_put_battery_info(ptr noundef %80, ptr noundef %82) #7
  br label %cleanup150

for.inc:                                          ; preds = %if.end97, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0204, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %83 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %charger, align 4
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info, align 4
  call void @power_supply_put_battery_info(ptr noundef %84, ptr noundef %86) #7
  %87 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev94, align 4
  %call.i = call i32 @device_property_read_u32_array(ptr noundef %88, ptr noundef nonnull @.str.44, ptr noundef nonnull %property, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp111 = icmp slt i32 %call.i, 0
  br i1 %cmp111, label %for.end.do.end116_crit_edge, label %if.end120

for.end.do.end116_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

do.end116:                                        ; preds = %if.end143.1.do.end116_crit_edge, %if.end143.do.end116_crit_edge, %for.end.do.end116_crit_edge
  %.lcssa = phi ptr [ @.str.44, %for.end.do.end116_crit_edge ], [ @.str.45, %if.end143.do.end116_crit_edge ], [ @.str.46, %if.end143.1.do.end116_crit_edge ]
  %call.i.lcssa = phi i32 [ %call.i, %for.end.do.end116_crit_edge ], [ %call.i.1, %if.end143.do.end116_crit_edge ], [ %call.i.2, %if.end143.1.do.end116_crit_edge ]
  %89 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.54, ptr noundef nonnull %.lcssa) #10
  br label %cleanup150

if.end120:                                        ; preds = %for.end
  %91 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %property, align 4
  %call125 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @vsys_voltage_regulation_ranges, i32 noundef 2, i32 noundef %92, ptr noundef nonnull %regval, ptr noundef nonnull %found) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end134, label %if.end120.do.end130_crit_edge

if.end120.do.end130_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

do.end130:                                        ; preds = %if.end120.2.do.end130_crit_edge, %if.end120.1.do.end130_crit_edge, %if.end120.do.end130_crit_edge
  %.lcssa209 = phi ptr [ @.str.44, %if.end120.do.end130_crit_edge ], [ @.str.45, %if.end120.1.do.end130_crit_edge ], [ @.str.46, %if.end120.2.do.end130_crit_edge ]
  %93 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.57, ptr noundef nonnull %.lcssa209) #10
  br label %cleanup150

if.end134:                                        ; preds = %if.end120
  %95 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %found, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool135.not = icmp eq i8 %96, 0
  br i1 %tobool135.not, label %do.end139, label %if.end134.if.end143_crit_edge

if.end134.if.end143_crit_edge:                    ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

do.end139:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %98, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.44) #10
  br label %if.end143

if.end143:                                        ; preds = %do.end139, %if.end134.if.end143_crit_edge
  %99 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %regval, align 4
  %conv144 = trunc i32 %100 to i16
  %101 = ptrtoint ptr %init_data to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv144, ptr %init_data, align 2
  %102 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev94, align 4
  %call.i.1 = call i32 @device_property_read_u32_array(ptr noundef %103, ptr noundef nonnull @.str.45, ptr noundef nonnull %property, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp111.1 = icmp slt i32 %call.i.1, 0
  br i1 %cmp111.1, label %if.end143.do.end116_crit_edge, label %if.end120.1

if.end143.do.end116_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

if.end120.1:                                      ; preds = %if.end143
  %104 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %property, align 4
  %call125.1 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @input_current_limit_ranges, i32 noundef 1, i32 noundef %105, ptr noundef nonnull %regval, ptr noundef nonnull %found) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.1)
  %tobool126.not.1 = icmp eq i32 %call125.1, 0
  br i1 %tobool126.not.1, label %if.end134.1, label %if.end120.1.do.end130_crit_edge

if.end120.1.do.end130_crit_edge:                  ; preds = %if.end120.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

if.end134.1:                                      ; preds = %if.end120.1
  %106 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %found, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %107)
  %tobool135.not.1 = icmp eq i8 %107, 0
  br i1 %tobool135.not.1, label %do.end139.1, label %if.end134.1.if.end143.1_crit_edge

if.end134.1.if.end143.1_crit_edge:                ; preds = %if.end134.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.1

do.end139.1:                                      ; preds = %if.end134.1
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.45) #10
  br label %if.end143.1

if.end143.1:                                      ; preds = %do.end139.1, %if.end134.1.if.end143.1_crit_edge
  %110 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %regval, align 4
  %conv144.1 = trunc i32 %111 to i16
  %112 = ptrtoint ptr %ibus_lim_set to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv144.1, ptr %ibus_lim_set, align 2
  %113 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev94, align 4
  %call.i.2 = call i32 @device_property_read_u32_array(ptr noundef %114, ptr noundef nonnull @.str.46, ptr noundef nonnull %property, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp111.2 = icmp slt i32 %call.i.2, 0
  br i1 %cmp111.2, label %if.end143.1.do.end116_crit_edge, label %if.end120.2

if.end143.1.do.end116_crit_edge:                  ; preds = %if.end143.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end116

if.end120.2:                                      ; preds = %if.end143.1
  %115 = ptrtoint ptr %property to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %property, align 4
  %call125.2 = call i32 @linear_range_get_selector_low_array(ptr noundef nonnull @input_current_limit_ranges, i32 noundef 1, i32 noundef %116, ptr noundef nonnull %regval, ptr noundef nonnull %found) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125.2)
  %tobool126.not.2 = icmp eq i32 %call125.2, 0
  br i1 %tobool126.not.2, label %if.end134.2, label %if.end120.2.do.end130_crit_edge

if.end120.2.do.end130_crit_edge:                  ; preds = %if.end120.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end130

if.end134.2:                                      ; preds = %if.end120.2
  %117 = ptrtoint ptr %found to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %found, align 1, !range !200
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %tobool135.not.2 = icmp eq i8 %118, 0
  br i1 %tobool135.not.2, label %do.end139.2, label %if.end134.2.if.end143.2_crit_edge

if.end134.2.if.end143.2_crit_edge:                ; preds = %if.end134.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143.2

do.end139.2:                                      ; preds = %if.end134.2
  call void @__sanitizer_cov_trace_pc() #9
  %119 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %120, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.46) #10
  br label %if.end143.2

if.end143.2:                                      ; preds = %do.end139.2, %if.end134.2.if.end143.2_crit_edge
  %121 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %regval, align 4
  %conv144.2 = trunc i32 %122 to i16
  %123 = ptrtoint ptr %icc_lim_set to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv144.2, ptr %icc_lim_set, align 2
  br label %cleanup150

cleanup150:                                       ; preds = %if.end143.2, %do.end130, %do.end116, %cleanup, %entry.cleanup150_crit_edge
  %retval.2 = phi i32 [ -22, %cleanup ], [ %call.i.lcssa, %do.end116 ], [ -22, %do.end130 ], [ %call, %entry.cleanup150_crit_edge ], [ 0, %if.end143.2 ]
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %battery_inits) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %found) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bd9995x_hw_init(ptr noundef %bd) unnamed_addr #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %init_data1 = alloca [34 x %struct.anon.86], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %init_data = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %init_data1) #7
  %0 = getelementptr inbounds i8, ptr %init_data1, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 268)
  %2 = ptrtoint ptr %init_data1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 30, ptr %init_data1, align 4
  %value = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 0, i32 1
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 1, ptr %value, align 4
  %arrayinit.element = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 1
  %4 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 31, ptr %arrayinit.element, align 4
  %value4 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 1, i32 1
  %5 = ptrtoint ptr %value4 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %value4, align 4
  %arrayinit.element5 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 2
  %6 = ptrtoint ptr %arrayinit.element5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 29, ptr %arrayinit.element5, align 4
  %value7 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 2, i32 1
  %7 = ptrtoint ptr %value7 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %value7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 3
  %8 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 28, ptr %arrayinit.element8, align 4
  %value10 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 3, i32 1
  %9 = ptrtoint ptr %value10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 1, ptr %value10, align 4
  %arrayinit.element11 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 4
  %10 = ptrtoint ptr %arrayinit.element11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 27, ptr %arrayinit.element11, align 4
  %value13 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 4, i32 1
  %11 = ptrtoint ptr %value13 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 1, ptr %value13, align 4
  %arrayinit.element14 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 5
  %12 = ptrtoint ptr %arrayinit.element14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 26, ptr %arrayinit.element14, align 4
  %value16 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 5, i32 1
  %13 = ptrtoint ptr %value16 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %value16, align 4
  %arrayinit.element17 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 6
  %14 = ptrtoint ptr %arrayinit.element17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 25, ptr %arrayinit.element17, align 4
  %value19 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 6, i32 1
  %15 = ptrtoint ptr %value19 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %value19, align 4
  %arrayinit.element20 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 7
  %16 = ptrtoint ptr %arrayinit.element20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 52, ptr %arrayinit.element20, align 4
  %value22 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 7, i32 1
  %17 = ptrtoint ptr %init_data to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %init_data, align 2
  %19 = ptrtoint ptr %value22 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %value22, align 4
  %arrayinit.element23 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 8
  %20 = ptrtoint ptr %arrayinit.element23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 40, ptr %arrayinit.element23, align 4
  %value25 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 8, i32 1
  %21 = ptrtoint ptr %value25 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %value25, align 4
  %arrayinit.element26 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 9
  %22 = ptrtoint ptr %arrayinit.element26 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 43, ptr %arrayinit.element26, align 4
  %value28 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 9, i32 1
  %23 = ptrtoint ptr %value28 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 3, ptr %value28, align 4
  %arrayinit.element29 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 10
  %24 = ptrtoint ptr %arrayinit.element29 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 39, ptr %arrayinit.element29, align 4
  %value31 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 10, i32 1
  %25 = ptrtoint ptr %value31 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 1, ptr %value31, align 4
  %arrayinit.element32 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 11
  %26 = ptrtoint ptr %arrayinit.element32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 190, ptr %arrayinit.element32, align 4
  %value34 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 11, i32 1
  %27 = ptrtoint ptr %value34 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %value34, align 4
  %arrayinit.element35 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 12
  %28 = ptrtoint ptr %arrayinit.element35 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 22, ptr %arrayinit.element35, align 4
  %value37 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 12, i32 1
  %29 = ptrtoint ptr %value37 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 1, ptr %value37, align 4
  %arrayinit.element38 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 13
  %30 = ptrtoint ptr %arrayinit.element38 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 12, ptr %arrayinit.element38, align 4
  %value40 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 13, i32 1
  %ibus_lim_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %ibus_lim_set to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %ibus_lim_set, align 2
  %33 = ptrtoint ptr %value40 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %value40, align 4
  %arrayinit.element41 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 14
  %34 = ptrtoint ptr %arrayinit.element41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 13, ptr %arrayinit.element41, align 4
  %value43 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 14, i32 1
  %icc_lim_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 2
  %35 = ptrtoint ptr %icc_lim_set to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %icc_lim_set, align 2
  %37 = ptrtoint ptr %value43 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %value43, align 4
  %arrayinit.element44 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 15
  %38 = ptrtoint ptr %arrayinit.element44 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 58, ptr %arrayinit.element44, align 4
  %value46 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 15, i32 1
  %iterm_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 10
  %39 = ptrtoint ptr %iterm_set to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %iterm_set, align 2
  %41 = ptrtoint ptr %value46 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %value46, align 4
  %arrayinit.element47 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 16
  %42 = ptrtoint ptr %arrayinit.element47 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 55, ptr %arrayinit.element47, align 4
  %value49 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 16, i32 1
  %itrich_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %itrich_set to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %itrich_set, align 2
  %45 = ptrtoint ptr %value49 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %44, ptr %value49, align 4
  %arrayinit.element50 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 17
  %46 = ptrtoint ptr %arrayinit.element50 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 56, ptr %arrayinit.element50, align 4
  %value52 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 17, i32 1
  %iprech_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 4
  %47 = ptrtoint ptr %iprech_set to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %iprech_set, align 2
  %49 = ptrtoint ptr %value52 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %value52, align 4
  %arrayinit.element53 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 18
  %50 = ptrtoint ptr %arrayinit.element53 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 57, ptr %arrayinit.element53, align 4
  %value55 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 18, i32 1
  %ichg_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 5
  %51 = ptrtoint ptr %ichg_set to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ichg_set, align 2
  %53 = ptrtoint ptr %value55 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %value55, align 4
  %arrayinit.element56 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 19
  %54 = ptrtoint ptr %arrayinit.element56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 61, ptr %arrayinit.element56, align 4
  %value58 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 19, i32 1
  %vfastchg_reg_set1 = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 6
  %55 = ptrtoint ptr %vfastchg_reg_set1 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vfastchg_reg_set1, align 2
  %57 = ptrtoint ptr %value58 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %value58, align 4
  %arrayinit.element59 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 20
  %58 = ptrtoint ptr %arrayinit.element59 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 59, ptr %arrayinit.element59, align 4
  %value61 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 20, i32 1
  %vprechg_th_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 7
  %59 = ptrtoint ptr %vprechg_th_set to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %vprechg_th_set, align 2
  %61 = ptrtoint ptr %value61 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %value61, align 4
  %arrayinit.element62 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 21
  %62 = ptrtoint ptr %arrayinit.element62 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 64, ptr %arrayinit.element62, align 4
  %value64 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 21, i32 1
  %vrechg_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 8
  %63 = ptrtoint ptr %vrechg_set to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %vrechg_set, align 2
  %65 = ptrtoint ptr %value64 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %value64, align 4
  %arrayinit.element65 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 22
  %66 = ptrtoint ptr %arrayinit.element65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 65, ptr %arrayinit.element65, align 4
  %value67 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 22, i32 1
  %vbatovp_set = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 7, i32 9
  %67 = ptrtoint ptr %vbatovp_set to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %vbatovp_set, align 2
  %69 = ptrtoint ptr %value67 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %68, ptr %value67, align 4
  %arrayinit.element68 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 23
  %70 = ptrtoint ptr %arrayinit.element68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 60, ptr %arrayinit.element68, align 4
  %value70 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 23, i32 1
  %71 = ptrtoint ptr %value70 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 0, ptr %value70, align 4
  %arrayinit.element71 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 24
  %72 = ptrtoint ptr %arrayinit.element71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 48, ptr %arrayinit.element71, align 4
  %value73 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 24, i32 1
  %73 = ptrtoint ptr %value73 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 0, ptr %value73, align 4
  %arrayinit.element74 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 25
  %74 = ptrtoint ptr %arrayinit.element74 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 49, ptr %arrayinit.element74, align 4
  %value76 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 25, i32 1
  %75 = ptrtoint ptr %value76 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %value76, align 4
  %arrayinit.element77 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 26
  %76 = ptrtoint ptr %arrayinit.element77 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 338, ptr %arrayinit.element77, align 4
  %value79 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 26, i32 1
  %77 = ptrtoint ptr %value79 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %value79, align 4
  %arrayinit.element80 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 27
  %78 = ptrtoint ptr %arrayinit.element80 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 247, ptr %arrayinit.element80, align 4
  %value82 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 27, i32 1
  %79 = ptrtoint ptr %value82 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 -15489, ptr %value82, align 4
  %arrayinit.element83 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 28
  %80 = ptrtoint ptr %arrayinit.element83 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 246, ptr %arrayinit.element83, align 4
  %value85 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 28, i32 1
  %81 = ptrtoint ptr %value85 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 -15489, ptr %value85, align 4
  %arrayinit.element86 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 29
  %82 = ptrtoint ptr %arrayinit.element86 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 245, ptr %arrayinit.element86, align 4
  %value88 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 29, i32 1
  %83 = ptrtoint ptr %value88 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 -12292, ptr %value88, align 4
  %arrayinit.element89 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 30
  %84 = ptrtoint ptr %arrayinit.element89 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 244, ptr %arrayinit.element89, align 4
  %value91 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 30, i32 1
  %85 = ptrtoint ptr %value91 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 831, ptr %value91, align 4
  %arrayinit.element92 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 31
  %86 = ptrtoint ptr %arrayinit.element92 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 243, ptr %arrayinit.element92, align 4
  %value94 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 31, i32 1
  %87 = ptrtoint ptr %value94 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 15359, ptr %value94, align 4
  %arrayinit.element95 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 32
  %88 = ptrtoint ptr %arrayinit.element95 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 242, ptr %arrayinit.element95, align 4
  %value97 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 32, i32 1
  %89 = ptrtoint ptr %value97 to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 15677, ptr %value97, align 4
  %arrayinit.element98 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 33
  %90 = ptrtoint ptr %arrayinit.element98 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 241, ptr %arrayinit.element98, align 4
  %value100 = getelementptr inbounds %struct.anon.86, ptr %init_data1, i32 33, i32 1
  %91 = ptrtoint ptr %value100 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -12289, ptr %value100, align 4
  %call = tail call fastcc i32 @__bd9995x_chip_reset(ptr noundef %bd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0158, 1
  %exitcond.not = icmp eq i32 %inc, 34
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0158 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [34 x %struct.anon.86], ptr %init_data1, i32 0, i32 %i.0158
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx, align 4
  %arrayidx103 = getelementptr %struct.bd9995x_device, ptr %bd, i32 0, i32 4, i32 %93
  %94 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx103, align 4
  %value105 = getelementptr [34 x %struct.anon.86], ptr %init_data1, i32 0, i32 %i.0158, i32 1
  %96 = ptrtoint ptr %value105 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %value105, align 4
  %conv = zext i16 %97 to i32
  %call.i = tail call i32 @regmap_field_update_bits_base(ptr noundef %95, i32 noundef -1, i32 noundef %conv, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 1
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.62, i32 noundef %call.i) #10
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %100 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %tmp.i, align 4, !annotation !199
  %arrayidx.i = getelementptr %struct.bd9995x_device, ptr %bd, i32 0, i32 4, i32 1
  %101 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.bd9995x_device, ptr %bd, i32 0, i32 4, i32 2
  %103 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx8.i = getelementptr %struct.bd9995x_device, ptr %bd, i32 0, i32 4, i32 3
  %105 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx8.i, align 4
  %call.i146 = call i32 @regmap_field_read(ptr noundef %102, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i146)
  %tobool.not.i = icmp eq i32 %call.i146, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.end.bd9995x_get_chip_state.exit_crit_edge

for.end.bd9995x_get_chip_state.exit_crit_edge:    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

if.end.i:                                         ; preds = %for.end
  %107 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %108 to i16
  %call.1.i = call i32 @regmap_field_read(ptr noundef %104, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i.bd9995x_get_chip_state.exit_crit_edge

if.end.i.bd9995x_get_chip_state.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

if.end.1.i:                                       ; preds = %if.end.i
  %109 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tmp.i, align 4
  %conv.1.i = trunc i32 %110 to i16
  %call.2.i = call i32 @regmap_field_read(ptr noundef %106, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %bd9995x_get_chip_state.exit.thread, label %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge

if.end.1.i.bd9995x_get_chip_state.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

bd9995x_get_chip_state.exit.thread:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %111 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %tmp.i, align 4
  %conv.2.i = trunc i32 %112 to i16
  %113 = and i16 %conv.2.i, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %114 = icmp ne i16 %113, 0
  %storemerge.i = zext i1 %114 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.end113

bd9995x_get_chip_state.exit:                      ; preds = %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge, %if.end.i.bd9995x_get_chip_state.exit_crit_edge, %for.end.bd9995x_get_chip_state.exit_crit_edge
  %state.sroa.6.0 = phi i16 [ %conv.1.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %for.end.bd9995x_get_chip_state.exit_crit_edge ]
  %state.sroa.5147.0 = phi i16 [ %conv.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ %conv.i, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %for.end.bd9995x_get_chip_state.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call.2.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ %call.1.i, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ %call.i146, %for.end.bd9995x_get_chip_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp110 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp110, label %bd9995x_get_chip_state.exit.cleanup_crit_edge, label %bd9995x_get_chip_state.exit.if.end113_crit_edge

bd9995x_get_chip_state.exit.if.end113_crit_edge:  ; preds = %bd9995x_get_chip_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

bd9995x_get_chip_state.exit.cleanup_crit_edge:    ; preds = %bd9995x_get_chip_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end113:                                        ; preds = %bd9995x_get_chip_state.exit.if.end113_crit_edge, %bd9995x_get_chip_state.exit.thread
  %state.sroa.0.0157 = phi i8 [ %storemerge.i, %bd9995x_get_chip_state.exit.thread ], [ -1, %bd9995x_get_chip_state.exit.if.end113_crit_edge ]
  %state.sroa.5147.0156 = phi i16 [ %conv.i, %bd9995x_get_chip_state.exit.thread ], [ %state.sroa.5147.0, %bd9995x_get_chip_state.exit.if.end113_crit_edge ]
  %state.sroa.6.0155 = phi i16 [ %conv.1.i, %bd9995x_get_chip_state.exit.thread ], [ %state.sroa.6.0, %bd9995x_get_chip_state.exit.if.end113_crit_edge ]
  %state.sroa.7.0154 = phi i16 [ %conv.2.i, %bd9995x_get_chip_state.exit.thread ], [ -1, %bd9995x_get_chip_state.exit.if.end113_crit_edge ]
  %lock = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state114 = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 8
  %state.sroa.7.0.insert.ext = zext i16 %state.sroa.7.0154 to i64
  %state.sroa.6.0.insert.ext = zext i16 %state.sroa.6.0155 to i64
  %state.sroa.6.0.insert.shift = shl nuw nsw i64 %state.sroa.6.0.insert.ext, 16
  %state.sroa.6.0.insert.insert = or i64 %state.sroa.6.0.insert.shift, %state.sroa.7.0.insert.ext
  %state.sroa.5147.0.insert.ext = zext i16 %state.sroa.5147.0156 to i64
  %state.sroa.5147.0.insert.shift = shl nuw nsw i64 %state.sroa.5147.0.insert.ext, 32
  %state.sroa.5147.0.insert.insert = or i64 %state.sroa.6.0.insert.insert, %state.sroa.5147.0.insert.shift
  %state.sroa.0.0.insert.ext = zext i8 %state.sroa.0.0157 to i64
  %state.sroa.0.0.insert.shift = shl nuw i64 %state.sroa.0.0.insert.ext, 56
  %state.sroa.5.0.insert.insert = or i64 %state.sroa.5147.0.insert.insert, %state.sroa.0.0.insert.shift
  %state.sroa.0.0.insert.insert = or i64 %state.sroa.5.0.insert.insert, 71776119061217280
  %115 = ptrtoint ptr %state114 to i32
  call void @__asan_storeN_noabort(i32 %115, i32 8)
  store i64 %state.sroa.0.0.insert.insert, ptr %state114, align 2
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end113, %bd9995x_get_chip_state.exit.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ 0, %if.end113 ], [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i, %bd9995x_get_chip_state.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %init_data1) #7
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @bd9995x_chip_reset, ptr noundef %data) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @__bd9995x_chip_reset(ptr noundef %data) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bd9995x_chip_reset(ptr nocapture noundef readonly %bd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @__bd9995x_chip_reset(ptr noundef %bd)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9995x_irq_handler_thread(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %status = alloca i32, align 4
  %mask = alloca i32, align 4
  %tmp = alloca i32, align 4
  %sub_status = alloca i32, align 4
  %sub_mask = alloca i32, align 4
  %sub_mask_f = alloca [7 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %status, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #7
  %1 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mask, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %rmap = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 3
  %2 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmap, align 4
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef 368, ptr noundef nonnull %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.66) #10
  br label %cleanup108

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 248
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %7, ptr noundef nonnull %mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev7 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %8 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.69) #10
  br label %cleanup108

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask, align 4
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 4
  %and = and i32 %13, %11
  store i32 %and, ptr %status, align 4
  %shr = lshr i32 %and, 1
  %14 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr, ptr %tmp, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %call.i = call i32 @regmap_field_update_bits_base(ptr noundef %16, i32 noundef -1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %17 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev17, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.72) #10
  br label %cleanup108

if.end18:                                         ; preds = %if.end8
  %19 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rmap, align 4
  %21 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %status, align 4
  %call20 = call i32 @regmap_write(ptr noundef %20, i32 noundef 368, i32 noundef %22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end27, label %do.end25

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %23 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.75) #10
  br label %err_umask

if.end27:                                         ; preds = %if.end18
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp, i32 noundef 7, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call28)
  %cmp171 = icmp slt i32 %call28, 7
  br i1 %cmp171, label %for.body.lr.ph, label %if.end27.for.end_crit_edge

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end27
  %25 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 1
  %26 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 2
  %27 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 3
  %28 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 4
  %29 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 5
  %30 = getelementptr inbounds [7 x ptr], ptr %sub_mask_f, i32 0, i32 6
  %arrayidx30 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 247
  %arrayidx32 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 246
  %arrayidx35 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 245
  %arrayidx38 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 244
  %arrayidx41 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 243
  %arrayidx44 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 242
  %arrayidx47 = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 241
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0172 = phi i32 [ %call28, %for.body.lr.ph ], [ %call81, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub_status) #7
  %31 = ptrtoint ptr %sub_status to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %sub_status, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sub_mask) #7
  %32 = ptrtoint ptr %sub_mask to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %sub_mask, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %sub_mask_f) #7
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx30, align 4
  %35 = ptrtoint ptr %sub_mask_f to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %sub_mask_f, align 4
  %36 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx32, align 4
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %25, align 4
  %39 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx35, align 4
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %26, align 4
  %42 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx38, align 4
  %44 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %27, align 4
  %45 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx41, align 4
  %47 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %28, align 4
  %48 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx44, align 4
  %50 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %49, ptr %29, align 4
  %51 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx47, align 4
  %53 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %30, align 4
  %54 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmap, align 4
  %arrayidx49 = getelementptr [7 x i32], ptr @__const.bd9995x_irq_handler_thread.sub_status_reg, i32 0, i32 %i.0172
  %56 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx49, align 4
  %call50 = call i32 @regmap_read(ptr noundef %55, i32 noundef %57, ptr noundef nonnull %sub_status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end57, label %for.body.cleanup.thread_crit_edge

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end57:                                         ; preds = %for.body
  %arrayidx58 = getelementptr [7 x ptr], ptr %sub_mask_f, i32 0, i32 %i.0172
  %58 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx58, align 4
  %call59 = call i32 @regmap_field_read(ptr noundef %59, ptr noundef nonnull %sub_mask) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end66, label %if.end57.cleanup.thread_crit_edge

if.end57.cleanup.thread_crit_edge:                ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end66:                                         ; preds = %if.end57
  %60 = ptrtoint ptr %sub_mask to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %sub_mask, align 4
  %62 = ptrtoint ptr %sub_status to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sub_status, align 4
  %and67 = and i32 %63, %61
  store i32 %and67, ptr %sub_status, align 4
  %64 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %rmap, align 4
  %call70 = call i32 @regmap_write(ptr noundef %65, i32 noundef %57, i32 noundef %and67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %for.inc, label %if.end66.cleanup.thread_crit_edge

if.end66.cleanup.thread_crit_edge:                ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end66.cleanup.thread_crit_edge, %if.end57.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  %.str.78.sink = phi ptr [ @.str.78, %for.body.cleanup.thread_crit_edge ], [ @.str.81, %if.end57.cleanup.thread_crit_edge ], [ @.str.84, %if.end66.cleanup.thread_crit_edge ]
  %dev56 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %66 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev56, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull %.str.78.sink) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sub_mask_f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_status) #7
  br label %err_umask

for.inc:                                          ; preds = %if.end66
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %sub_mask_f) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sub_status) #7
  %add = add nsw i32 %i.0172, 1
  %call81 = call i32 @_find_next_bit_be(ptr noundef nonnull %tmp, i32 noundef 7, i32 noundef %add) #7
  %cmp = icmp slt i32 %call81, 7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end27.for.end_crit_edge
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mask, align 4
  %call.i156 = call i32 @regmap_field_update_bits_base(ptr noundef %69, i32 noundef -1, i32 noundef %71, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool85.not = icmp eq i32 %call.i156, 0
  br i1 %tobool85.not, label %if.end87, label %for.end.err_umask_crit_edge

for.end.err_umask_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_umask

if.end87:                                         ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %72 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -1, ptr %tmp.i, align 4, !annotation !199
  %arrayidx.i = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 1
  %73 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 2
  %75 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx3.i, align 4
  %arrayidx8.i = getelementptr %struct.bd9995x_device, ptr %private, i32 0, i32 4, i32 3
  %77 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx8.i, align 4
  %call.i157 = call i32 @regmap_field_read(ptr noundef %74, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i157)
  %tobool.not.i = icmp eq i32 %call.i157, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end87.bd9995x_get_chip_state.exit_crit_edge

if.end87.bd9995x_get_chip_state.exit_crit_edge:   ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

if.end.i:                                         ; preds = %if.end87
  %79 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tmp.i, align 4
  %conv.i = trunc i32 %80 to i16
  %call.1.i = call i32 @regmap_field_read(ptr noundef %76, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i.bd9995x_get_chip_state.exit_crit_edge

if.end.i.bd9995x_get_chip_state.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

if.end.1.i:                                       ; preds = %if.end.i
  %81 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tmp.i, align 4
  %conv.1.i = trunc i32 %82 to i16
  %call.2.i = call i32 @regmap_field_read(ptr noundef %78, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %bd9995x_get_chip_state.exit.thread, label %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge

if.end.1.i.bd9995x_get_chip_state.exit_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_chip_state.exit

bd9995x_get_chip_state.exit.thread:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %tmp.i, align 4
  %conv.2.i = trunc i32 %84 to i16
  %85 = and i16 %conv.2.i, 257
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %85)
  %86 = icmp ne i16 %85, 0
  %storemerge.i = zext i1 %86 to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  br label %if.else

bd9995x_get_chip_state.exit:                      ; preds = %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge, %if.end.i.bd9995x_get_chip_state.exit_crit_edge, %if.end87.bd9995x_get_chip_state.exit_crit_edge
  %state.sroa.6.0 = phi i16 [ %conv.1.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %if.end87.bd9995x_get_chip_state.exit_crit_edge ]
  %state.sroa.5159.0 = phi i16 [ %conv.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ %conv.i, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ -1, %if.end87.bd9995x_get_chip_state.exit_crit_edge ]
  %retval.0.i = phi i32 [ %call.2.i, %if.end.1.i.bd9995x_get_chip_state.exit_crit_edge ], [ %call.1.i, %if.end.i.bd9995x_get_chip_state.exit_crit_edge ], [ %call.i157, %if.end87.bd9995x_get_chip_state.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp89 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp89, label %do.end93, label %bd9995x_get_chip_state.exit.if.else_crit_edge

bd9995x_get_chip_state.exit.if.else_crit_edge:    ; preds = %bd9995x_get_chip_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.end93:                                         ; preds = %bd9995x_get_chip_state.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev94 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %87 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.87) #10
  br label %cleanup108

if.else:                                          ; preds = %bd9995x_get_chip_state.exit.if.else_crit_edge, %bd9995x_get_chip_state.exit.thread
  %state.sroa.0.0170 = phi i8 [ %storemerge.i, %bd9995x_get_chip_state.exit.thread ], [ -1, %bd9995x_get_chip_state.exit.if.else_crit_edge ]
  %state.sroa.5159.0169 = phi i16 [ %conv.i, %bd9995x_get_chip_state.exit.thread ], [ %state.sroa.5159.0, %bd9995x_get_chip_state.exit.if.else_crit_edge ]
  %state.sroa.6.0168 = phi i16 [ %conv.1.i, %bd9995x_get_chip_state.exit.thread ], [ %state.sroa.6.0, %bd9995x_get_chip_state.exit.if.else_crit_edge ]
  %state.sroa.7.0167 = phi i16 [ %conv.2.i, %bd9995x_get_chip_state.exit.thread ], [ -1, %bd9995x_get_chip_state.exit.if.else_crit_edge ]
  %lock = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 9
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state95 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 8
  %state.sroa.7.0.insert.ext = zext i16 %state.sroa.7.0167 to i64
  %state.sroa.6.0.insert.ext = zext i16 %state.sroa.6.0168 to i64
  %state.sroa.6.0.insert.shift = shl nuw nsw i64 %state.sroa.6.0.insert.ext, 16
  %state.sroa.6.0.insert.insert = or i64 %state.sroa.6.0.insert.shift, %state.sroa.7.0.insert.ext
  %state.sroa.5159.0.insert.ext = zext i16 %state.sroa.5159.0169 to i64
  %state.sroa.5159.0.insert.shift = shl nuw nsw i64 %state.sroa.5159.0.insert.ext, 32
  %state.sroa.5159.0.insert.insert = or i64 %state.sroa.6.0.insert.insert, %state.sroa.5159.0.insert.shift
  %state.sroa.0.0.insert.ext = zext i8 %state.sroa.0.0170 to i64
  %state.sroa.0.0.insert.shift = shl nuw i64 %state.sroa.0.0.insert.ext, 56
  %state.sroa.5.0.insert.insert = or i64 %state.sroa.5159.0.insert.insert, %state.sroa.0.0.insert.shift
  %state.sroa.0.0.insert.insert = or i64 %state.sroa.5.0.insert.insert, 71776119061217280
  %89 = ptrtoint ptr %state95 to i32
  call void @__asan_storeN_noabort(i32 %89, i32 8)
  store i64 %state.sroa.0.0.insert.insert, ptr %state95, align 2
  call void @mutex_unlock(ptr noundef %lock) #7
  %charger = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 2
  %90 = ptrtoint ptr %charger to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %charger, align 4
  call void @power_supply_changed(ptr noundef %91) #7
  br label %cleanup108

err_umask:                                        ; preds = %for.end.err_umask_crit_edge, %cleanup.thread, %do.end25
  %92 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx, align 4
  %94 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %mask, align 4
  %call.i158 = call i32 @regmap_field_update_bits_base(ptr noundef %93, i32 noundef -1, i32 noundef %95, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i158)
  %tobool101.not = icmp eq i32 %call.i158, 0
  br i1 %tobool101.not, label %err_umask.cleanup108_crit_edge, label %do.end105

err_umask.cleanup108_crit_edge:                   ; preds = %err_umask
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup108

do.end105:                                        ; preds = %err_umask
  call void @__sanitizer_cov_trace_pc() #9
  %dev106 = getelementptr inbounds %struct.bd9995x_device, ptr %private, i32 0, i32 1
  %96 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev106, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.90) #10
  br label %cleanup108

cleanup108:                                       ; preds = %do.end105, %err_umask.cleanup108_crit_edge, %if.else, %do.end93, %do.end16, %do.end6, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end6 ], [ 0, %do.end16 ], [ 1, %if.else ], [ 1, %do.end93 ], [ 0, %do.end105 ], [ 0, %err_umask.cleanup108_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bd9995x_power_supply_get_property(ptr noundef %psy, i32 noundef %psp, ptr noundef writeonly %val) #2 align 64 {
entry:
  %tmp.i169 = alloca i32, align 4
  %tmp.i160 = alloca i32, align 4
  %tmp.i154 = alloca i32, align 4
  %tmp.i147 = alloca i32, align 4
  %tmp.i141 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !199
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %lock = getelementptr inbounds %struct.bd9995x_device, ptr %call, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %state1 = getelementptr inbounds %struct.bd9995x_device, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %state1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %state.sroa.0.0.copyload91 = load i8, ptr %state1, align 2
  %state.sroa.692.0.state1.sroa_idx = getelementptr inbounds %struct.bd9995x_device, ptr %call, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %state.sroa.692.0.state1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %2)
  %state.sroa.692.0.copyload93140 = load i16, ptr %state.sroa.692.0.state1.sroa_idx, align 2
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %3 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 74, label %sw.bb6
    i32 4, label %sw.bb7
    i32 29, label %sw.bb9
    i32 27, label %sw.bb11
    i32 30, label %sw.bb19
    i32 31, label %sw.bb27
    i32 68, label %sw.bb48
    i32 3, label %sw.bb64
    i32 12, label %sw.bb67
    i32 17, label %sw.bb69
    i32 1, label %sw.bb71
    i32 2, label %sw.bb73
    i32 52, label %sw.bb75
    i32 6, label %sw.bb77
    i32 73, label %sw.bb78
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %4 = zext i16 %state.sroa.692.0.copyload93140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.93)
  switch i16 %state.sroa.692.0.copyload93140, label %sw.default [
    i16 1, label %sw.bb.sw.bb3_crit_edge
    i16 2, label %sw.bb.sw.bb3_crit_edge179
    i16 3, label %sw.bb.sw.bb3_crit_edge180
    i16 4, label %sw.bb.sw.bb3_crit_edge181
    i16 5, label %sw.bb4
    i16 0, label %sw.bb.sw.bb5_crit_edge
    i16 16, label %sw.bb.sw.bb5_crit_edge182
    i16 17, label %sw.bb.sw.bb5_crit_edge183
    i16 18, label %sw.bb.sw.bb5_crit_edge184
    i16 19, label %sw.bb.sw.bb5_crit_edge185
    i16 20, label %sw.bb.sw.bb5_crit_edge186
    i16 21, label %sw.bb.sw.bb5_crit_edge187
    i16 24, label %sw.bb.sw.bb5_crit_edge188
    i16 32, label %sw.bb.sw.bb5_crit_edge189
    i16 33, label %sw.bb.sw.bb5_crit_edge190
    i16 34, label %sw.bb.sw.bb5_crit_edge191
    i16 35, label %sw.bb.sw.bb5_crit_edge192
    i16 36, label %sw.bb.sw.bb5_crit_edge193
    i16 37, label %sw.bb.sw.bb5_crit_edge194
    i16 40, label %sw.bb.sw.bb5_crit_edge195
    i16 64, label %sw.bb.sw.bb5_crit_edge196
  ]

sw.bb.sw.bb5_crit_edge196:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge195:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge194:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge193:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge192:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge191:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge190:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge189:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge188:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge187:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge186:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge185:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge184:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge183:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge182:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb5_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

sw.bb.sw.bb3_crit_edge181:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge180:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge179:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb.sw.bb3_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3

sw.bb3:                                           ; preds = %sw.bb.sw.bb3_crit_edge, %sw.bb.sw.bb3_crit_edge179, %sw.bb.sw.bb3_crit_edge180, %sw.bb.sw.bb3_crit_edge181
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %sw.bb.sw.bb5_crit_edge, %sw.bb.sw.bb5_crit_edge182, %sw.bb.sw.bb5_crit_edge183, %sw.bb.sw.bb5_crit_edge184, %sw.bb.sw.bb5_crit_edge185, %sw.bb.sw.bb5_crit_edge186, %sw.bb.sw.bb5_crit_edge187, %sw.bb.sw.bb5_crit_edge188, %sw.bb.sw.bb5_crit_edge189, %sw.bb.sw.bb5_crit_edge190, %sw.bb.sw.bb5_crit_edge191, %sw.bb.sw.bb5_crit_edge192, %sw.bb.sw.bb5_crit_edge193, %sw.bb.sw.bb5_crit_edge194, %sw.bb.sw.bb5_crit_edge195, %sw.bb.sw.bb5_crit_edge196
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.34, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv8 = zext i8 %state.sroa.0.0.copyload91 to i32
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv8, ptr %val, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 220
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %call10 = call i32 @regmap_field_read(ptr noundef %12, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp, align 4
  %mul = mul i32 %14, 1000
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %val, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  %arrayidx13 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 221
  %16 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx13, align 4
  %call14 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tmp, align 4
  %mul18 = mul i32 %19, 1000
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul18, ptr %val, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %arrayidx21 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 11
  %21 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx21, align 4
  %call22 = call i32 @regmap_field_read(ptr noundef %22, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %sw.bb19.cleanup_crit_edge

sw.bb19.cleanup_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %mul26 = mul i32 %24, 1000
  %25 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul26, ptr %val, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %state.sroa.0.0.copyload91)
  %tobool29.not = icmp eq i8 %state.sroa.0.0.copyload91, 0
  br i1 %tobool29.not, label %if.then30, label %if.end31

if.then30:                                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.end31:                                         ; preds = %sw.bb27
  %arrayidx33 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 61
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx33, align 4
  %call34 = call i32 @regmap_field_read(ptr noundef %28, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tmp, align 4
  %shl = shl i32 %30, 4
  %31 = call i32 @llvm.smax.i32(i32 %shl, i32 2560)
  %32 = call i32 @llvm.umin.i32(i32 %31, i32 19200)
  %mul47 = mul nuw nsw i32 %32, 1000
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul47, ptr %val, align 4
  br label %cleanup

sw.bb48:                                          ; preds = %entry
  %arrayidx50 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 58
  %34 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx50, align 4
  %call51 = call i32 @regmap_field_read(ptr noundef %35, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end54:                                         ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp, align 4
  %shl55 = shl i32 %37, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %shl55)
  %cmp57 = icmp slt i32 %shl55, 1024
  %phi.bo = mul i32 %37, 64000
  %cond62 = select i1 %cmp57, i32 %phi.bo, i32 1024000
  %38 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond62, ptr %val, align 4
  br label %cleanup

sw.bb64:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #7
  %39 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %tmp.i, align 4, !annotation !199
  %arrayidx.i = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 4
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %tmp.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb64.bd9995x_get_prop_batt_present.exit_crit_edge

sw.bb64.bd9995x_get_prop_batt_present.exit_crit_edge: ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_present.exit

if.end.i:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %tmp.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp.i = icmp ne i32 %43, 7
  %phi.cast = zext i1 %cmp.i to i32
  br label %bd9995x_get_prop_batt_present.exit

bd9995x_get_prop_batt_present.exit:               ; preds = %if.end.i, %sw.bb64.bd9995x_get_prop_batt_present.exit_crit_edge
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %sw.bb64.bd9995x_get_prop_batt_present.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #7
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i, ptr %val, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i141) #7
  %45 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tmp.i141, align 4, !annotation !199
  %arrayidx.i142 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 224
  %46 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i142, align 4
  %call.i143 = call i32 @regmap_field_read(ptr noundef %47, ptr noundef nonnull %tmp.i141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i143)
  %tobool.not.i144 = icmp eq i32 %call.i143, 0
  br i1 %tobool.not.i144, label %if.end.i145, label %sw.bb67.bd9995x_get_prop_batt_voltage.exit_crit_edge

sw.bb67.bd9995x_get_prop_batt_voltage.exit_crit_edge: ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_voltage.exit

if.end.i145:                                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %tmp.i141 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tmp.i141, align 4
  %50 = call i32 @llvm.smin.i32(i32 %49, i32 19200) #7
  %mul.i = mul i32 %50, 1000
  br label %bd9995x_get_prop_batt_voltage.exit

bd9995x_get_prop_batt_voltage.exit:               ; preds = %if.end.i145, %sw.bb67.bd9995x_get_prop_batt_voltage.exit_crit_edge
  %retval.0.i146 = phi i32 [ %mul.i, %if.end.i145 ], [ 0, %sw.bb67.bd9995x_get_prop_batt_voltage.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i141) #7
  %51 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i146, ptr %val, align 4
  br label %cleanup

sw.bb69:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i147) #7
  %52 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %tmp.i147, align 4, !annotation !199
  %arrayidx.i148 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 220
  %53 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i148, align 4
  %call.i149 = call i32 @regmap_field_read(ptr noundef %54, ptr noundef nonnull %tmp.i147) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i150 = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i150, label %if.end.i152, label %sw.bb69.bd9995x_get_prop_batt_current.exit_crit_edge

sw.bb69.bd9995x_get_prop_batt_current.exit_crit_edge: ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_current.exit

if.end.i152:                                      ; preds = %sw.bb69
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %tmp.i147 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tmp.i147, align 4
  %mul.i151 = mul i32 %56, 1000
  br label %bd9995x_get_prop_batt_current.exit

bd9995x_get_prop_batt_current.exit:               ; preds = %if.end.i152, %sw.bb69.bd9995x_get_prop_batt_current.exit_crit_edge
  %retval.0.i153 = phi i32 [ %mul.i151, %if.end.i152 ], [ 0, %sw.bb69.bd9995x_get_prop_batt_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i147) #7
  %57 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %retval.0.i153, ptr %val, align 4
  br label %cleanup

sw.bb71:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i154) #7
  %58 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 -1, ptr %tmp.i154, align 4, !annotation !199
  %arrayidx.i155 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %arrayidx.i155 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i155, align 4
  %call.i156 = call i32 @regmap_field_read(ptr noundef %60, ptr noundef nonnull %tmp.i154) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i157 = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i157, label %if.end.i158, label %sw.bb71.bd9995x_get_prop_charge_type.exit_crit_edge

sw.bb71.bd9995x_get_prop_charge_type.exit_crit_edge: ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_charge_type.exit

if.end.i158:                                      ; preds = %sw.bb71
  %61 = ptrtoint ptr %tmp.i154 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tmp.i154, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %62)
  %63 = icmp ult i32 %62, 6
  br i1 %63, label %switch.lookup, label %if.end.i158.bd9995x_get_prop_charge_type.exit_crit_edge

if.end.i158.bd9995x_get_prop_charge_type.exit_crit_edge: ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_charge_type.exit

switch.lookup:                                    ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.bd9995x_power_supply_get_property, i32 0, i32 %62
  %64 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %bd9995x_get_prop_charge_type.exit

bd9995x_get_prop_charge_type.exit:                ; preds = %switch.lookup, %if.end.i158.bd9995x_get_prop_charge_type.exit_crit_edge, %sw.bb71.bd9995x_get_prop_charge_type.exit_crit_edge
  %retval.0.i159 = phi i32 [ 0, %sw.bb71.bd9995x_get_prop_charge_type.exit_crit_edge ], [ %switch.load, %switch.lookup ], [ 1, %if.end.i158.bd9995x_get_prop_charge_type.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i154) #7
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i159, ptr %val, align 4
  br label %cleanup

sw.bb73:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i160) #7
  %66 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %tmp.i160, align 4, !annotation !199
  %arrayidx.i161 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 4
  %67 = ptrtoint ptr %arrayidx.i161 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i161, align 4
  %call.i162 = call i32 @regmap_field_read(ptr noundef %68, ptr noundef nonnull %tmp.i160) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i162)
  %tobool.not.i163 = icmp eq i32 %call.i162, 0
  br i1 %tobool.not.i163, label %if.end.i164, label %sw.bb73.bd9995x_get_prop_batt_health.exit_crit_edge

sw.bb73.bd9995x_get_prop_batt_health.exit_crit_edge: ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_health.exit

if.end.i164:                                      ; preds = %sw.bb73
  %69 = ptrtoint ptr %tmp.i160 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %tmp.i160, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %70)
  %71 = icmp ult i32 %70, 6
  br i1 %71, label %switch.lookup176, label %if.end.i164.bd9995x_get_prop_batt_health.exit_crit_edge

if.end.i164.bd9995x_get_prop_batt_health.exit_crit_edge: ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_health.exit

switch.lookup176:                                 ; preds = %if.end.i164
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep177 = getelementptr inbounds [6 x i32], ptr @switch.table.bd9995x_power_supply_get_property.92, i32 0, i32 %70
  %72 = ptrtoint ptr %switch.gep177 to i32
  call void @__asan_load4_noabort(i32 %72)
  %switch.load178 = load i32, ptr %switch.gep177, align 4
  br label %bd9995x_get_prop_batt_health.exit

bd9995x_get_prop_batt_health.exit:                ; preds = %switch.lookup176, %if.end.i164.bd9995x_get_prop_batt_health.exit_crit_edge, %sw.bb73.bd9995x_get_prop_batt_health.exit_crit_edge
  %retval.0.i168 = phi i32 [ 0, %sw.bb73.bd9995x_get_prop_batt_health.exit_crit_edge ], [ %switch.load178, %switch.lookup176 ], [ 0, %if.end.i164.bd9995x_get_prop_batt_health.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i160) #7
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %retval.0.i168, ptr %val, align 4
  br label %cleanup

sw.bb75:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i169) #7
  %74 = ptrtoint ptr %tmp.i169 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %tmp.i169, align 4, !annotation !199
  %arrayidx.i170 = getelementptr %struct.bd9995x_device, ptr %call, i32 0, i32 4, i32 226
  %75 = ptrtoint ptr %arrayidx.i170 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i170, align 4
  %call.i171 = call i32 @regmap_field_read(ptr noundef %76, ptr noundef nonnull %tmp.i169) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171)
  %tobool.not.i172 = icmp eq i32 %call.i171, 0
  br i1 %tobool.not.i172, label %if.end.i174, label %sw.bb75.bd9995x_get_prop_batt_temp.exit_crit_edge

sw.bb75.bd9995x_get_prop_batt_temp.exit_crit_edge: ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #9
  br label %bd9995x_get_prop_batt_temp.exit

if.end.i174:                                      ; preds = %sw.bb75
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %tmp.i169 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %tmp.i169, align 4
  %sub.i = sub i32 200, %78
  %mul.i173 = mul i32 %sub.i, 10
  br label %bd9995x_get_prop_batt_temp.exit

bd9995x_get_prop_batt_temp.exit:                  ; preds = %if.end.i174, %sw.bb75.bd9995x_get_prop_batt_temp.exit_crit_edge
  %retval.0.i175 = phi i32 [ %mul.i173, %if.end.i174 ], [ 250, %sw.bb75.bd9995x_get_prop_batt_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i169) #7
  %79 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %retval.0.i175, ptr %val, align 4
  br label %cleanup

sw.bb77:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb78:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @.str.35, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb78, %sw.bb77, %bd9995x_get_prop_batt_temp.exit, %bd9995x_get_prop_batt_health.exit, %bd9995x_get_prop_charge_type.exit, %bd9995x_get_prop_batt_current.exit, %bd9995x_get_prop_batt_voltage.exit, %bd9995x_get_prop_batt_present.exit, %if.end54, %sw.bb48.cleanup_crit_edge, %if.end37, %if.end31.cleanup_crit_edge, %if.then30, %if.end25, %sw.bb19.cleanup_crit_edge, %if.end17, %sw.bb11.cleanup_crit_edge, %if.end, %sw.bb9.cleanup_crit_edge, %sw.bb7, %sw.bb6, %sw.default, %sw.bb5, %sw.bb4, %sw.bb3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %sw.bb9.cleanup_crit_edge ], [ %call14, %sw.bb11.cleanup_crit_edge ], [ %call22, %sw.bb19.cleanup_crit_edge ], [ %call34, %if.end31.cleanup_crit_edge ], [ %call51, %sw.bb48.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb3 ], [ 0, %sw.bb4 ], [ 0, %sw.bb5 ], [ 0, %sw.default ], [ 0, %sw.bb78 ], [ 0, %sw.bb77 ], [ 0, %bd9995x_get_prop_batt_temp.exit ], [ 0, %bd9995x_get_prop_batt_health.exit ], [ 0, %bd9995x_get_prop_charge_type.exit ], [ 0, %bd9995x_get_prop_batt_current.exit ], [ 0, %bd9995x_get_prop_batt_voltage.exit ], [ 0, %bd9995x_get_prop_batt_present.exit ], [ 0, %if.end54 ], [ 0, %if.end37 ], [ 0, %if.then30 ], [ 0, %if.end25 ], [ 0, %if.end17 ], [ 0, %if.end ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @power_supply_get_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @linear_range_get_selector_low_array(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_put_battery_info(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__bd9995x_chip_reset(ptr nocapture noundef readonly %bd) unnamed_addr #2 align 64 {
entry:
  %state = alloca i32, align 4
  %tmp = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !199
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp) #7
  %1 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 3, ptr %tmp, align 2
  %rmap = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 3
  %2 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rmap, align 4
  %call = call i32 @regmap_raw_write(ptr noundef %3, i32 noundef 317, ptr noundef nonnull %tmp, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body.preheader:                                ; preds = %entry
  %arrayidx = getelementptr %struct.bd9995x_device, ptr %bd, i32 0, i32 4, i32 183
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @regmap_field_read(ptr noundef %5, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %do.body.preheader.cleanup_crit_edge

do.body.preheader.cleanup_crit_edge:              ; preds = %do.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %do.body.preheader
  call void @msleep(i32 noundef 10) #7
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4 = icmp eq i32 %7, 0
  br i1 %cmp4, label %land.rhs, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call1.1 = call i32 @regmap_field_read(ptr noundef %9, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %tobool.not.1 = icmp eq i32 %call1.1, 0
  br i1 %tobool.not.1, label %if.end3.1, label %land.rhs.cleanup_crit_edge

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.1:                                        ; preds = %land.rhs
  call void @msleep(i32 noundef 10) #7
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp4.1 = icmp eq i32 %11, 0
  br i1 %cmp4.1, label %land.rhs.1, label %if.end3.1.if.end11_crit_edge

if.end3.1.if.end11_crit_edge:                     ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.1:                                       ; preds = %if.end3.1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %call1.2 = call i32 @regmap_field_read(ptr noundef %13, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %tobool.not.2 = icmp eq i32 %call1.2, 0
  br i1 %tobool.not.2, label %if.end3.2, label %land.rhs.1.cleanup_crit_edge

land.rhs.1.cleanup_crit_edge:                     ; preds = %land.rhs.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.2:                                        ; preds = %land.rhs.1
  call void @msleep(i32 noundef 10) #7
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp4.2 = icmp eq i32 %15, 0
  br i1 %cmp4.2, label %land.rhs.2, label %if.end3.2.if.end11_crit_edge

if.end3.2.if.end11_crit_edge:                     ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.2:                                       ; preds = %if.end3.2
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call1.3 = call i32 @regmap_field_read(ptr noundef %17, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.3)
  %tobool.not.3 = icmp eq i32 %call1.3, 0
  br i1 %tobool.not.3, label %if.end3.3, label %land.rhs.2.cleanup_crit_edge

land.rhs.2.cleanup_crit_edge:                     ; preds = %land.rhs.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.3:                                        ; preds = %land.rhs.2
  call void @msleep(i32 noundef 10) #7
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp4.3 = icmp eq i32 %19, 0
  br i1 %cmp4.3, label %land.rhs.3, label %if.end3.3.if.end11_crit_edge

if.end3.3.if.end11_crit_edge:                     ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.3:                                       ; preds = %if.end3.3
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %call1.4 = call i32 @regmap_field_read(ptr noundef %21, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.4)
  %tobool.not.4 = icmp eq i32 %call1.4, 0
  br i1 %tobool.not.4, label %if.end3.4, label %land.rhs.3.cleanup_crit_edge

land.rhs.3.cleanup_crit_edge:                     ; preds = %land.rhs.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.4:                                        ; preds = %land.rhs.3
  call void @msleep(i32 noundef 10) #7
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp4.4 = icmp eq i32 %23, 0
  br i1 %cmp4.4, label %land.rhs.4, label %if.end3.4.if.end11_crit_edge

if.end3.4.if.end11_crit_edge:                     ; preds = %if.end3.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.4:                                       ; preds = %if.end3.4
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %call1.5 = call i32 @regmap_field_read(ptr noundef %25, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.5)
  %tobool.not.5 = icmp eq i32 %call1.5, 0
  br i1 %tobool.not.5, label %if.end3.5, label %land.rhs.4.cleanup_crit_edge

land.rhs.4.cleanup_crit_edge:                     ; preds = %land.rhs.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.5:                                        ; preds = %land.rhs.4
  call void @msleep(i32 noundef 10) #7
  %26 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp4.5 = icmp eq i32 %27, 0
  br i1 %cmp4.5, label %land.rhs.5, label %if.end3.5.if.end11_crit_edge

if.end3.5.if.end11_crit_edge:                     ; preds = %if.end3.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.5:                                       ; preds = %if.end3.5
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %call1.6 = call i32 @regmap_field_read(ptr noundef %29, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.6)
  %tobool.not.6 = icmp eq i32 %call1.6, 0
  br i1 %tobool.not.6, label %if.end3.6, label %land.rhs.5.cleanup_crit_edge

land.rhs.5.cleanup_crit_edge:                     ; preds = %land.rhs.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.6:                                        ; preds = %land.rhs.5
  call void @msleep(i32 noundef 10) #7
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp4.6 = icmp eq i32 %31, 0
  br i1 %cmp4.6, label %land.rhs.6, label %if.end3.6.if.end11_crit_edge

if.end3.6.if.end11_crit_edge:                     ; preds = %if.end3.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.6:                                       ; preds = %if.end3.6
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx, align 4
  %call1.7 = call i32 @regmap_field_read(ptr noundef %33, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.7)
  %tobool.not.7 = icmp eq i32 %call1.7, 0
  br i1 %tobool.not.7, label %if.end3.7, label %land.rhs.6.cleanup_crit_edge

land.rhs.6.cleanup_crit_edge:                     ; preds = %land.rhs.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.7:                                        ; preds = %land.rhs.6
  call void @msleep(i32 noundef 10) #7
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.7 = icmp eq i32 %35, 0
  br i1 %cmp4.7, label %land.rhs.7, label %if.end3.7.if.end11_crit_edge

if.end3.7.if.end11_crit_edge:                     ; preds = %if.end3.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.7:                                       ; preds = %if.end3.7
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call1.8 = call i32 @regmap_field_read(ptr noundef %37, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.8)
  %tobool.not.8 = icmp eq i32 %call1.8, 0
  br i1 %tobool.not.8, label %if.end3.8, label %land.rhs.7.cleanup_crit_edge

land.rhs.7.cleanup_crit_edge:                     ; preds = %land.rhs.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.8:                                        ; preds = %land.rhs.7
  call void @msleep(i32 noundef 10) #7
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp4.8 = icmp eq i32 %39, 0
  br i1 %cmp4.8, label %land.rhs.8, label %if.end3.8.if.end11_crit_edge

if.end3.8.if.end11_crit_edge:                     ; preds = %if.end3.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.8:                                       ; preds = %if.end3.8
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call1.9 = call i32 @regmap_field_read(ptr noundef %41, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.9)
  %tobool.not.9 = icmp eq i32 %call1.9, 0
  br i1 %tobool.not.9, label %if.end3.9, label %land.rhs.8.cleanup_crit_edge

land.rhs.8.cleanup_crit_edge:                     ; preds = %land.rhs.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3.9:                                        ; preds = %land.rhs.8
  call void @msleep(i32 noundef 10) #7
  %42 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp4.9 = icmp eq i32 %43, 0
  br i1 %cmp4.9, label %land.rhs.9, label %if.end3.9.if.end11_crit_edge

if.end3.9.if.end11_crit_edge:                     ; preds = %if.end3.9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

land.rhs.9:                                       ; preds = %if.end3.9
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.bd9995x_device, ptr %bd, i32 0, i32 1
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.64) #10
  br label %cleanup

if.end11:                                         ; preds = %if.end3.9.if.end11_crit_edge, %if.end3.8.if.end11_crit_edge, %if.end3.7.if.end11_crit_edge, %if.end3.6.if.end11_crit_edge, %if.end3.5.if.end11_crit_edge, %if.end3.4.if.end11_crit_edge, %if.end3.3.if.end11_crit_edge, %if.end3.2.if.end11_crit_edge, %if.end3.1.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %46 = ptrtoint ptr %tmp to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 0, ptr %tmp, align 2
  %47 = ptrtoint ptr %rmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmap, align 4
  %call13 = call i32 @regmap_raw_write(ptr noundef %48, i32 noundef 317, ptr noundef nonnull %tmp, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %land.rhs.9, %land.rhs.8.cleanup_crit_edge, %land.rhs.7.cleanup_crit_edge, %land.rhs.6.cleanup_crit_edge, %land.rhs.5.cleanup_crit_edge, %land.rhs.4.cleanup_crit_edge, %land.rhs.3.cleanup_crit_edge, %land.rhs.2.cleanup_crit_edge, %land.rhs.1.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %do.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end11 ], [ -110, %land.rhs.9 ], [ %call, %entry.cleanup_crit_edge ], [ %call1, %do.body.preheader.cleanup_crit_edge ], [ %call1.1, %land.rhs.cleanup_crit_edge ], [ %call1.2, %land.rhs.1.cleanup_crit_edge ], [ %call1.3, %land.rhs.2.cleanup_crit_edge ], [ %call1.4, %land.rhs.3.cleanup_crit_edge ], [ %call1.5, %land.rhs.4.cleanup_crit_edge ], [ %call1.6, %land.rhs.5.cleanup_crit_edge ], [ %call1.7, %land.rhs.6.cleanup_crit_edge ], [ %call1.8, %land.rhs.7.cleanup_crit_edge ], [ %call1.9, %land.rhs.8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !114, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !148, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188}
!llvm.module.flags = !{!190, !191, !192, !193, !194, !195, !196, !197}
!llvm.ident = !{!198}

!0 = !{ptr @__initcall__kmod_bd99954_charger__296_1140_bd9995x_driver_init6, !1, !"__initcall__kmod_bd99954_charger__296_1140_bd9995x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1140, i32 1}
!2 = !{ptr @__exitcall_bd9995x_driver_exit, !1, !"__exitcall_bd9995x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1142, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1143, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1144, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1135, i32 11}
!12 = !{ptr @bd9995x_driver, !13, !"bd9995x_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1133, i32 26}
!14 = !{ptr @bd9995x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1052, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bd9995x_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1054, i32 13}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1056, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @bd9995x_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @bd9995x_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1066, i32 4}
!30 = !{ptr @bd9995x_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @bd9995x_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1075, i32 3}
!34 = !{ptr @bd9995x_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @bd9995x_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1080, i32 3}
!38 = !{ptr @bd9995x_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bd9995x_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1087, i32 3}
!42 = !{ptr @bd9995x_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @bd9995x_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1091, i32 2}
!46 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @bd9995x_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @bd9995x_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1101, i32 3}
!51 = !{ptr @bd9995x_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @bd9995x_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1107, i32 3}
!55 = !{ptr @bd9995x_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bd9995x_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1113, i32 3}
!59 = !{ptr @bd9995x_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @bd9995x_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1124, i32 7}
!63 = !{ptr @bd9995x_regmap_config, !64, !"bd9995x_regmap_config", i1 false, i1 false}
!64 = !{!"../drivers/power/supply/bd99954-charger.c", i32 160, i32 35}
!65 = !{ptr @bd9995x_writeable_regs, !66, !"bd9995x_writeable_regs", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/bd99954-charger.c", i32 129, i32 41}
!67 = !{ptr @bd9995x_readonly_reg_ranges, !68, !"bd9995x_readonly_reg_ranges", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/bd99954-charger.c", i32 118, i32 34}
!69 = !{ptr @bd9995x_volatile_regs, !70, !"bd9995x_volatile_regs", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/bd99954-charger.c", i32 143, i32 41}
!71 = !{ptr @bd9995x_volatile_reg_ranges, !72, !"bd9995x_volatile_reg_ranges", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/bd99954-charger.c", i32 134, i32 34}
!73 = !{ptr @regmap_range_cfg, !74, !"regmap_range_cfg", i1 false, i1 false}
!74 = !{!"../drivers/power/supply/bd99954-charger.c", i32 148, i32 38}
!75 = !{ptr @bd9995x_reg_fields, !76, !"bd9995x_reg_fields", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/bd99954-charger.h", i32 481, i32 31}
!77 = !{ptr @bd9995x_power_supply_desc, !78, !"bd9995x_power_supply_desc", i1 false, i1 false}
!78 = !{!"../drivers/power/supply/bd99954-charger.c", i32 753, i32 39}
!79 = !{ptr @bd9995x_power_supply_props, !80, !"bd9995x_power_supply_props", i1 false, i1 false}
!80 = !{!"../drivers/power/supply/bd99954-charger.c", i32 733, i32 35}
!81 = !{ptr @.str.34, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/power/supply/bd99954-charger.c", i32 332, i32 17}
!83 = !{ptr @.str.35, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/power/supply/bd99954-charger.c", i32 432, i32 17}
!85 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/power/supply/bd99954-charger.c", i32 893, i32 12}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/power/supply/bd99954-charger.c", i32 898, i32 12}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/power/supply/bd99954-charger.c", i32 903, i32 12}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/power/supply/bd99954-charger.c", i32 908, i32 12}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/power/supply/bd99954-charger.c", i32 913, i32 12}
!95 = !{ptr @.str.41, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/power/supply/bd99954-charger.c", i32 918, i32 12}
!97 = !{ptr @.str.42, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/power/supply/bd99954-charger.c", i32 923, i32 12}
!99 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/power/supply/bd99954-charger.c", i32 928, i32 12}
!101 = !{ptr @.str.44, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/power/supply/bd99954-charger.c", i32 936, i32 12}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/power/supply/bd99954-charger.c", i32 941, i32 12}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/power/supply/bd99954-charger.c", i32 946, i32 12}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/power/supply/bd99954-charger.c", i32 982, i32 4}
!109 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @bd9995x_fw_probe._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @bd9995x_fw_probe._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/power/supply/bd99954-charger.c", i32 989, i32 4}
!114 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @bd9995x_fw_probe._entry.49, !113, !"_entry", i1 false, i1 false}
!116 = !{ptr @bd9995x_fw_probe._entry_ptr.52, !113, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1002, i32 4}
!119 = !{ptr @bd9995x_fw_probe._entry.53, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @bd9995x_fw_probe._entry_ptr.55, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1012, i32 4}
!123 = !{ptr @bd9995x_fw_probe._entry.56, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @bd9995x_fw_probe._entry_ptr.58, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1019, i32 4}
!127 = !{ptr @bd9995x_fw_probe._entry.59, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @bd9995x_fw_probe._entry_ptr.61, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @charging_current_ranges, !130, !"charging_current_ranges", i1 false, i1 false}
!130 = !{!"../drivers/power/supply/bd99954-charger.c", i32 780, i32 34}
!131 = !{ptr @trickle_to_pre_threshold_ranges, !132, !"trickle_to_pre_threshold_ranges", i1 false, i1 false}
!132 = !{!"../drivers/power/supply/bd99954-charger.c", i32 838, i32 34}
!133 = !{ptr @charge_voltage_regulation_ranges, !134, !"charge_voltage_regulation_ranges", i1 false, i1 false}
!134 = !{!"../drivers/power/supply/bd99954-charger.c", i32 798, i32 34}
!135 = !{ptr @fast_charge_current_ranges, !136, !"fast_charge_current_ranges", i1 false, i1 false}
!136 = !{!"../drivers/power/supply/bd99954-charger.c", i32 858, i32 34}
!137 = !{ptr @vsys_voltage_regulation_ranges, !138, !"vsys_voltage_regulation_ranges", i1 false, i1 false}
!138 = !{!"../drivers/power/supply/bd99954-charger.c", i32 818, i32 34}
!139 = !{ptr @input_current_limit_ranges, !140, !"input_current_limit_ranges", i1 false, i1 false}
!140 = !{!"../drivers/power/supply/bd99954-charger.c", i32 770, i32 34}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/power/supply/bd99954-charger.c", i32 716, i32 4}
!143 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @bd9995x_hw_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @bd9995x_hw_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/power/supply/bd99954-charger.c", i32 623, i32 3}
!148 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @__bd9995x_chip_reset._entry, !147, !"_entry", i1 false, i1 false}
!150 = !{ptr @__bd9995x_chip_reset._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/power/supply/bd99954-charger.c", i32 505, i32 3}
!153 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @bd9995x_irq_handler_thread._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @bd9995x_irq_handler_thread._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.69, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/power/supply/bd99954-charger.c", i32 511, i32 3}
!158 = !{ptr @bd9995x_irq_handler_thread._entry.68, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.70, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/power/supply/bd99954-charger.c", i32 527, i32 3}
!162 = !{ptr @bd9995x_irq_handler_thread._entry.71, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.73, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/power/supply/bd99954-charger.c", i32 533, i32 3}
!166 = !{ptr @bd9995x_irq_handler_thread._entry.74, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.76, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/power/supply/bd99954-charger.c", i32 556, i32 4}
!170 = !{ptr @bd9995x_irq_handler_thread._entry.77, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.79, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/power/supply/bd99954-charger.c", i32 562, i32 4}
!174 = !{ptr @bd9995x_irq_handler_thread._entry.80, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.82, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/power/supply/bd99954-charger.c", i32 571, i32 4}
!178 = !{ptr @bd9995x_irq_handler_thread._entry.83, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.85, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/power/supply/bd99954-charger.c", i32 584, i32 3}
!182 = !{ptr @bd9995x_irq_handler_thread._entry.86, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.88, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/power/supply/bd99954-charger.c", i32 598, i32 3}
!186 = !{ptr @bd9995x_irq_handler_thread._entry.89, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @bd9995x_irq_handler_thread._entry_ptr.91, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @bd9995x_of_match, !189, !"bd9995x_of_match", i1 false, i1 false}
!189 = !{!"../drivers/power/supply/bd99954-charger.c", i32 1127, i32 34}
!190 = !{i32 1, !"wchar_size", i32 2}
!191 = !{i32 1, !"min_enum_size", i32 4}
!192 = !{i32 8, !"branch-target-enforcement", i32 0}
!193 = !{i32 8, !"sign-return-address", i32 0}
!194 = !{i32 8, !"sign-return-address-all", i32 0}
!195 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!196 = !{i32 7, !"uwtable", i32 1}
!197 = !{i32 7, !"frame-pointer", i32 2}
!198 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!199 = !{!"auto-init"}
!200 = !{i8 0, i8 2}
