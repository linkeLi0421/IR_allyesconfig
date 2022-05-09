; ModuleID = '/llk/IR_all_yes/drivers/power/supply/max77976_charger.c_pt.bc'
source_filename = "../drivers/power/supply/max77976_charger.c"
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
%struct.reg_field = type { i32, i32, i32, i32, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max77976 = type { ptr, ptr, [9 x ptr] }

@__initcall__kmod_max77976_charger__296_505_max77976_driver_init6 = internal global ptr @max77976_driver_init, section ".initcall6.init", align 4
@max77976_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max77976_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77976_of_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max77976_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max77976_driver_exit = internal global ptr @max77976_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [62 x i8] c"max77976_charger.author=Luca Ceresoli <luca@lucaceresoli.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [59 x i8] c"max77976_charger.description=Maxim MAX77976 charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [60 x i8] c"max77976_charger.file=drivers/power/supply/max77976_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [32 x i8] c"max77976_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max77976-charger\00", [47 x i8] zeroinitializer }, align 32
@max77976_of_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77976\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max77976_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max77976-charger\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max77976_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max77976_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"max77976_charger:457:(&max77976_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot allocate regmap\0A\00", [40 x i8] zeroinitializer }, align 32
@max77976_reg_field = internal constant { [9 x %struct.reg_field], [44 x i8] } { [9 x %struct.reg_field] [%struct.reg_field { i32 1, i32 4, i32 7, i32 0, i32 0 }, %struct.reg_field { i32 1, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 18, i32 6, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 4, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 20, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 22, i32 0, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 24, i32 0, i32 6, i32 0, i32 0 }, %struct.reg_field { i32 28, i32 2, i32 3, i32 0, i32 0 }, %struct.reg_field { i32 31, i32 0, i32 5, i32 0, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate regmap field\0A\00", [34 x i8] zeroinitializer }, align 32
@max77976_psy_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @max77976_psy_props, i32 9, ptr @max77976_get_property, ptr @max77976_set_property, ptr @max77976_property_is_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cannot register\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cannot read chip ID\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unknown model ID 0x%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot read version/revision\0A\00", [34 x i8] zeroinitializer }, align 32
@max77976_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 411, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"detected model MAX779%02x ver %u rev %u\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max77976_detect\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/power/supply/max77976_charger.c\00", [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77976_detect._entry_ptr = internal global ptr @max77976_detect._entry, section ".printk_index", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error while configuring\00", [40 x i8] zeroinitializer }, align 32
@max77976_psy_props = internal global { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 1, i32 2, i32 4, i32 33, i32 34, i32 38, i32 73, i32 74], [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MAX77976\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Maxim Integrated\00", [47 x i8] zeroinitializer }, align 32
@switch.table.max77976_get_property = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 1, i32 1, i32 1, i32 1, i32 4, i32 0, i32 3, i32 3, i32 2, i32 0, i32 2, i32 2, i32 3, i32 3, i32 3], [36 x i8] zeroinitializer }, align 32
@switch.table.max77976_get_property.16 = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 2, i32 3, i32 3, i32 4, i32 1, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1], [36 x i8] zeroinitializer }, align 32
@switch.table.max77976_get_property.17 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 14, i32 0, i32 8, i32 1, i32 1, i32 4, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 4, i64 33, i64 34, i64 38, i64 73, i64 74]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 33, i64 38]
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"max77976_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 497, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 499, i32 12 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"max77976_of_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 491, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [16 x i8] c"max77976_i2c_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 485, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [23 x i8] c"max77976_regmap_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 104, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 457, i32 16 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 460, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"max77976_reg_field\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 92, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 467, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"max77976_psy_desc\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 378, i32 39 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 480, i32 43 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 400, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 403, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 409, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 411, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 437, i32 33 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"max77976_psy_props\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 366, i32 35 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 18, i32 38 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [43 x i8] c"../drivers/power/supply/max77976_charger.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 17, i32 44 }
@___asan_gen_.94 = private unnamed_addr constant [35 x i8] c"switch.table.max77976_get_property\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [38 x i8] c"switch.table.max77976_get_property.16\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [38 x i8] c"switch.table.max77976_get_property.17\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_max77976_driver_exit, ptr @__initcall__kmod_max77976_charger__296_505_max77976_driver_init6, ptr @max77976_detect._entry, ptr @max77976_detect._entry_ptr, ptr @max77976_driver_exit, ptr @max77976_driver, ptr @.str, ptr @max77976_of_id, ptr @max77976_i2c_id, ptr @max77976_probe._key, ptr @max77976_regmap_config, ptr @.str.1, ptr @.str.2, ptr @max77976_reg_field, ptr @.str.3, ptr @max77976_psy_desc, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @max77976_psy_props, ptr @.str.14, ptr @.str.15, ptr @switch.table.max77976_get_property, ptr @switch.table.max77976_get_property.16, ptr @switch.table.max77976_get_property.17], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_of_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_reg_field to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_psy_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77976_psy_props to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77976_get_property to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77976_get_property.16 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max77976_get_property.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77976_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max77976_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77976_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max77976_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77976_probe(ptr noundef %client) #2 align 64 {
entry:
  %id.i = alloca i32, align 4
  %ver.i = alloca i32, align 4
  %rev.i = alloca i32, align 4
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #7
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
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %2 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %drv_data, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @max77976_regmap_config, ptr noundef nonnull @max77976_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.max77976, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call3, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call3 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.2) #7
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.090, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.090 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %arrayidx = getelementptr [9 x %struct.reg_field], ptr @max77976_reg_field, i32 0, i32 %i.090
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %.unpack = load i32, ptr %arrayidx, align 4
  %9 = insertvalue [5 x i32] undef, i32 %.unpack, 0
  %.elt71 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 1
  %10 = ptrtoint ptr %.elt71 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.unpack72 = load i32, ptr %.elt71, align 4
  %11 = insertvalue [5 x i32] %9, i32 %.unpack72, 1
  %.elt73 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 2
  %12 = ptrtoint ptr %.elt73 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.unpack74 = load i32, ptr %.elt73, align 4
  %13 = insertvalue [5 x i32] %11, i32 %.unpack74, 2
  %.elt75 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 3
  %14 = ptrtoint ptr %.elt75 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.unpack76 = load i32, ptr %.elt75, align 4
  %15 = insertvalue [5 x i32] %13, i32 %.unpack76, 3
  %.elt77 = getelementptr inbounds [5 x i32], ptr %arrayidx, i32 0, i32 4
  %16 = ptrtoint ptr %.elt77 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.unpack78 = load i32, ptr %.elt77, align 4
  %17 = insertvalue [5 x i32] %15, i32 %.unpack78, 4
  %call12 = tail call ptr @devm_regmap_field_alloc(ptr noundef %dev1, ptr noundef %7, [5 x i32] %17) #7
  %arrayidx13 = getelementptr %struct.max77976, ptr %call.i, i32 0, i32 2, i32 %i.090
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call12, ptr %arrayidx13, align 4
  %cmp.i79 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then17, label %for.cond

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call12 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @.str.3) #7
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id.i) #7
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %id.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver.i) #7
  %23 = ptrtoint ptr %ver.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %ver.i, align 4, !annotation !68
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rev.i) #7
  %24 = ptrtoint ptr %rev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %rev.i, align 4, !annotation !68
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i80 = call i32 @regmap_read(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool.not.i = icmp eq i32 %call.i80, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call2.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1.i, i32 noundef %call.i80, ptr noundef nonnull @.str.5) #7
  br label %max77976_detect.exit

if.end.i:                                         ; preds = %for.end
  %27 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 118, i32 %28)
  %cmp.not.i = icmp eq i32 %28, 118
  br i1 %cmp.not.i, label %if.end5.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1.i, i32 noundef -6, ptr noundef nonnull @.str.6, i32 noundef %28) #7
  br label %max77976_detect.exit

if.end5.i:                                        ; preds = %if.end.i
  %rfield.i = getelementptr inbounds %struct.max77976, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %rfield.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rfield.i, align 4
  %call6.i = call i32 @regmap_field_read(ptr noundef %30, ptr noundef nonnull %ver.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end12.i, label %if.end5.i.if.then14.i_crit_edge

if.end5.i.if.then14.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.end12.i:                                       ; preds = %if.end5.i
  %arrayidx10.i = getelementptr %struct.max77976, ptr %call.i, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx10.i, align 4
  %call11.i = call i32 @regmap_field_read(ptr noundef %32, ptr noundef nonnull %rev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool13.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool13.not.i, label %max77976_detect.exit.thread, label %if.end12.i.if.then14.i_crit_edge

if.end12.i.if.then14.i_crit_edge:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i.if.then14.i_crit_edge, %if.end5.i.if.then14.i_crit_edge
  %call15.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1.i, i32 noundef -6, ptr noundef nonnull @.str.7) #7
  br label %max77976_detect.exit

max77976_detect.exit.thread:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i, align 4
  %35 = ptrtoint ptr %ver.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ver.i, align 4
  %37 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rev.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1.i, ptr noundef nonnull @.str.8, i32 noundef %34, i32 noundef %36, i32 noundef %38) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  br label %if.end26

max77976_detect.exit:                             ; preds = %if.then14.i, %if.then3.i, %if.then.i
  %retval.0.i = phi i32 [ %call2.i, %if.then.i ], [ %call4.i, %if.then3.i ], [ %call15.i, %if.then14.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rev.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool24.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool24.not, label %max77976_detect.exit.if.end26_crit_edge, label %max77976_detect.exit.cleanup_crit_edge

max77976_detect.exit.cleanup_crit_edge:           ; preds = %max77976_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

max77976_detect.exit.if.end26_crit_edge:          ; preds = %max77976_detect.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.end26:                                         ; preds = %max77976_detect.exit.if.end26_crit_edge, %max77976_detect.exit.thread
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %dev1.i81 = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4
  %arrayidx.i = getelementptr %struct.max77976, ptr %call.i, i32 0, i32 2, i32 7
  %41 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i = call i32 @regmap_field_update_bits_base(ptr noundef %42, i32 noundef -1, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i82 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i82, label %if.end.i83, label %if.end26.max77976_configure.exit_crit_edge

if.end26.max77976_configure.exit_crit_edge:       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_configure.exit

if.end.i83:                                       ; preds = %if.end26
  %arrayidx3.i = getelementptr %struct.max77976, ptr %call.i, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx3.i, align 4
  %call.i15.i = call i32 @regmap_field_update_bits_base(ptr noundef %44, i32 noundef -1, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool5.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool5.not.i, label %if.end.i83.if.end30_crit_edge, label %if.end.i83.max77976_configure.exit_crit_edge

if.end.i83.max77976_configure.exit_crit_edge:     ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_configure.exit

if.end.i83.if.end30_crit_edge:                    ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

max77976_configure.exit:                          ; preds = %if.end.i83.max77976_configure.exit_crit_edge, %if.end26.max77976_configure.exit_crit_edge
  %err.0.i = phi i32 [ %call.i.i, %if.end26.max77976_configure.exit_crit_edge ], [ %call.i15.i, %if.end.i83.max77976_configure.exit_crit_edge ]
  %call9.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1.i81, i32 noundef %err.0.i, ptr noundef nonnull @.str.13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool28.not = icmp eq i32 %call9.i, 0
  br i1 %tobool28.not, label %max77976_configure.exit.if.end30_crit_edge, label %max77976_configure.exit.cleanup_crit_edge

max77976_configure.exit.cleanup_crit_edge:        ; preds = %max77976_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

max77976_configure.exit.if.end30_crit_edge:       ; preds = %max77976_configure.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.end30:                                         ; preds = %max77976_configure.exit.if.end30_crit_edge, %if.end.i83.if.end30_crit_edge
  %call31 = call ptr @devm_power_supply_register_no_ws(ptr noundef %dev1, ptr noundef nonnull @max77976_psy_desc, ptr noundef nonnull %psy_cfg) #7
  %cmp.i85 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then33, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call31 to i32
  %call35 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %45, ptr noundef nonnull @.str.4) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %if.end30.cleanup_crit_edge, %max77976_configure.exit.cleanup_crit_edge, %max77976_detect.exit.cleanup_crit_edge, %if.then17, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then6 ], [ %call21, %if.then17 ], [ %call35, %if.then33 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %max77976_detect.exit.cleanup_crit_edge ], [ %call9.i, %max77976_configure.exit.cleanup_crit_edge ], [ 0, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regmap_field_alloc(ptr noundef, ptr noundef, [5 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register_no_ws(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_read(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_field_update_bits_base(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77976_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i64 = alloca i32, align 4
  %regval.i58 = alloca i32, align 4
  %regval.i52 = alloca i32, align 4
  %regval.i40 = alloca i32, align 4
  %regval.i28 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 4, label %sw.bb6
    i32 34, label %sw.bb8
    i32 33, label %sw.bb9
    i32 38, label %sw.bb11
    i32 73, label %sw.bb13
    i32 74, label %sw.bb14
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %1 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %regval.i, align 4, !annotation !68
  %arrayidx.i = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 4
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %call.i = call i32 @regmap_field_read(ptr noundef %3, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.max77976_get_status.exit_crit_edge, label %if.end.i

sw.bb.max77976_get_status.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_status.exit

if.end.i:                                         ; preds = %sw.bb
  %4 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %regval.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %5)
  %6 = icmp ult i32 %5, 15
  br i1 %6, label %switch.lookup, label %if.end.i.cleanup.sink.split.i_crit_edge

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

switch.lookup:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [15 x i32], ptr @switch.table.max77976_get_property, i32 0, i32 %5
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %val, align 4
  br label %max77976_get_status.exit

max77976_get_status.exit:                         ; preds = %cleanup.sink.split.i, %sw.bb.max77976_get_status.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %sw.bb.max77976_get_status.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i28) #7
  %9 = ptrtoint ptr %regval.i28 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %regval.i28, align 4, !annotation !68
  %arrayidx.i29 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %arrayidx.i29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i29, align 4
  %call.i30 = call i32 @regmap_field_read(ptr noundef %11, ptr noundef nonnull %regval.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp.i31 = icmp slt i32 %call.i30, 0
  br i1 %cmp.i31, label %sw.bb2.max77976_get_charge_type.exit_crit_edge, label %if.end.i32

sw.bb2.max77976_get_charge_type.exit_crit_edge:   ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_charge_type.exit

if.end.i32:                                       ; preds = %sw.bb2
  %12 = ptrtoint ptr %regval.i28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regval.i28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %13)
  %14 = icmp ult i32 %13, 15
  br i1 %14, label %switch.lookup72, label %if.end.i32.cleanup.sink.split.i38_crit_edge

if.end.i32.cleanup.sink.split.i38_crit_edge:      ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i38

switch.lookup72:                                  ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep73 = getelementptr inbounds [15 x i32], ptr @switch.table.max77976_get_property.16, i32 0, i32 %13
  %15 = ptrtoint ptr %switch.gep73 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load74 = load i32, ptr %switch.gep73, align 4
  br label %cleanup.sink.split.i38

cleanup.sink.split.i38:                           ; preds = %switch.lookup72, %if.end.i32.cleanup.sink.split.i38_crit_edge
  %.sink.i37 = phi i32 [ %switch.load74, %switch.lookup72 ], [ 0, %if.end.i32.cleanup.sink.split.i38_crit_edge ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink.i37, ptr %val, align 4
  br label %max77976_get_charge_type.exit

max77976_get_charge_type.exit:                    ; preds = %cleanup.sink.split.i38, %sw.bb2.max77976_get_charge_type.exit_crit_edge
  %retval.0.i39 = phi i32 [ %call.i30, %sw.bb2.max77976_get_charge_type.exit_crit_edge ], [ 0, %cleanup.sink.split.i38 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i28) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i40) #7
  %17 = ptrtoint ptr %regval.i40 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %regval.i40, align 4, !annotation !68
  %arrayidx.i41 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %arrayidx.i41 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i41, align 4
  %call.i42 = call i32 @regmap_field_read(ptr noundef %19, ptr noundef nonnull %regval.i40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp.i43, label %sw.bb4.max77976_get_health.exit_crit_edge, label %if.end.i44

sw.bb4.max77976_get_health.exit_crit_edge:        ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_health.exit

if.end.i44:                                       ; preds = %sw.bb4
  %20 = ptrtoint ptr %regval.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regval.i40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %22 = icmp ult i32 %21, 8
  br i1 %22, label %switch.lookup75, label %if.end.i44.cleanup.sink.split.i50_crit_edge

if.end.i44.cleanup.sink.split.i50_crit_edge:      ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i50

switch.lookup75:                                  ; preds = %if.end.i44
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep76 = getelementptr inbounds [8 x i32], ptr @switch.table.max77976_get_property.17, i32 0, i32 %21
  %23 = ptrtoint ptr %switch.gep76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load77 = load i32, ptr %switch.gep76, align 4
  br label %cleanup.sink.split.i50

cleanup.sink.split.i50:                           ; preds = %switch.lookup75, %if.end.i44.cleanup.sink.split.i50_crit_edge
  %.sink.i49 = phi i32 [ %switch.load77, %switch.lookup75 ], [ 0, %if.end.i44.cleanup.sink.split.i50_crit_edge ]
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i49, ptr %val, align 4
  br label %max77976_get_health.exit

max77976_get_health.exit:                         ; preds = %cleanup.sink.split.i50, %sw.bb4.max77976_get_health.exit_crit_edge
  %retval.0.i51 = phi i32 [ %call.i42, %sw.bb4.max77976_get_health.exit_crit_edge ], [ 0, %cleanup.sink.split.i50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i40) #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i52) #7
  %25 = ptrtoint ptr %regval.i52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %regval.i52, align 4, !annotation !68
  %arrayidx.i53 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %arrayidx.i53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.i53, align 4
  %call.i54 = call i32 @regmap_field_read(ptr noundef %27, ptr noundef nonnull %regval.i52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %cmp.i55 = icmp slt i32 %call.i54, 0
  br i1 %cmp.i55, label %sw.bb6.max77976_get_online.exit_crit_edge, label %if.end.i56

sw.bb6.max77976_get_online.exit_crit_edge:        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_online.exit

if.end.i56:                                       ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %regval.i52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %regval.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp ne i32 %29, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %cond.i, ptr %val, align 4
  br label %max77976_get_online.exit

max77976_get_online.exit:                         ; preds = %if.end.i56, %sw.bb6.max77976_get_online.exit_crit_edge
  %retval.0.i57 = phi i32 [ 0, %if.end.i56 ], [ %call.i54, %sw.bb6.max77976_get_online.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i52) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5500000, ptr %val, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i58) #7
  %32 = ptrtoint ptr %regval.i58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %regval.i58, align 4, !annotation !68
  %arrayidx.i59 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 6
  %33 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i59, align 4
  %call.i60 = call i32 @regmap_field_read(ptr noundef %34, ptr noundef nonnull %regval.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %cmp.i61 = icmp slt i32 %call.i60, 0
  br i1 %cmp.i61, label %sw.bb9.max77976_get_integer.exit_crit_edge, label %if.end.i62

sw.bb9.max77976_get_integer.exit_crit_edge:       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_integer.exit

if.end.i62:                                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regval.i58 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regval.i58, align 4
  %mul.i = mul i32 %36, 50000
  %37 = call i32 @llvm.umax.i32(i32 %mul.i, i32 100000) #7
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 5500000) #7
  %39 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val, align 4
  br label %max77976_get_integer.exit

max77976_get_integer.exit:                        ; preds = %if.end.i62, %sw.bb9.max77976_get_integer.exit_crit_edge
  %retval.0.i63 = phi i32 [ 0, %if.end.i62 ], [ %call.i60, %sw.bb9.max77976_get_integer.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i58) #7
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i64) #7
  %40 = ptrtoint ptr %regval.i64 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %regval.i64, align 4, !annotation !68
  %arrayidx.i65 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 8
  %41 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i65, align 4
  %call.i66 = call i32 @regmap_field_read(ptr noundef %42, ptr noundef nonnull %regval.i64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %cmp.i67 = icmp slt i32 %call.i66, 0
  br i1 %cmp.i67, label %sw.bb11.max77976_get_integer.exit71_crit_edge, label %if.end.i69

sw.bb11.max77976_get_integer.exit71_crit_edge:    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  br label %max77976_get_integer.exit71

if.end.i69:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %regval.i64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regval.i64, align 4
  %mul.i68 = mul i32 %44, 100000
  %45 = call i32 @llvm.umax.i32(i32 %mul.i68, i32 100000) #7
  %46 = call i32 @llvm.umin.i32(i32 %45, i32 3200000) #7
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val, align 4
  br label %max77976_get_integer.exit71

max77976_get_integer.exit71:                      ; preds = %if.end.i69, %sw.bb11.max77976_get_integer.exit71_crit_edge
  %retval.0.i70 = phi i32 [ 0, %if.end.i69 ], [ %call.i66, %sw.bb11.max77976_get_integer.exit71_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i64) #7
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @.str.14, ptr %val, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @.str.15, ptr %val, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %max77976_get_integer.exit71, %max77976_get_integer.exit, %sw.bb8, %max77976_get_online.exit, %max77976_get_health.exit, %max77976_get_charge_type.exit, %max77976_get_status.exit, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %sw.bb14 ], [ 0, %sw.bb13 ], [ %retval.0.i70, %max77976_get_integer.exit71 ], [ %retval.0.i63, %max77976_get_integer.exit ], [ 0, %sw.bb8 ], [ %retval.0.i57, %max77976_get_online.exit ], [ %retval.0.i51, %max77976_get_health.exit ], [ %retval.0.i39, %max77976_get_charge_type.exit ], [ %retval.0.i, %max77976_get_status.exit ], [ -22, %entry.sw.epilog_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77976_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %psp, label %entry.sw.epilog_crit_edge [
    i32 33, label %sw.bb
    i32 38, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  %3 = tail call i32 @llvm.smax.i32(i32 %2, i32 100000) #7
  %4 = tail call i32 @llvm.smin.i32(i32 %3, i32 5500000) #7
  %div7.i = udiv i32 %4, 50000
  %arrayidx.i = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 6
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 100000) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 3200000) #7
  %div7.i6 = udiv i32 %8, 100000
  %arrayidx.i7 = getelementptr %struct.max77976, ptr %call, i32 0, i32 2, i32 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %arrayidx.i7.sink = phi ptr [ %arrayidx.i7, %sw.bb2 ], [ %arrayidx.i, %sw.bb ]
  %div7.i6.sink = phi i32 [ %div7.i6, %sw.bb2 ], [ %div7.i, %sw.bb ]
  %9 = ptrtoint ptr %arrayidx.i7.sink to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i7.sink, align 4
  %call.i.i8 = tail call i32 @regmap_field_update_bits_base(ptr noundef %10, i32 noundef -1, i32 noundef %div7.i6.sink, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i.i8, %sw.epilog.sink.split ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max77976_property_is_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %psp)
  %switch.selectcmp.case1 = icmp eq i32 %psp, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %psp)
  %switch.selectcmp.case2 = icmp eq i32 %psp, 38
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %0 = zext i1 %switch.selectcmp to i32
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_max77976_charger__296_505_max77976_driver_init6, !1, !"__initcall__kmod_max77976_charger__296_505_max77976_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/max77976_charger.c", i32 505, i32 1}
!2 = !{ptr @__exitcall_max77976_driver_exit, !1, !"__exitcall_max77976_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/max77976_charger.c", i32 507, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/max77976_charger.c", i32 508, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/max77976_charger.c", i32 509, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/max77976_charger.c", i32 499, i32 12}
!12 = !{ptr @max77976_driver, !13, !"max77976_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/max77976_charger.c", i32 497, i32 26}
!14 = !{ptr @max77976_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/max77976_charger.c", i32 457, i32 16}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/max77976_charger.c", i32 460, i32 10}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/max77976_charger.c", i32 467, i32 11}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/max77976_charger.c", i32 480, i32 43}
!23 = !{ptr @max77976_regmap_config, !24, !"max77976_regmap_config", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/max77976_charger.c", i32 104, i32 35}
!25 = !{ptr @max77976_reg_field, !26, !"max77976_reg_field", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/max77976_charger.c", i32 92, i32 31}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/power/supply/max77976_charger.c", i32 400, i32 34}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/max77976_charger.c", i32 403, i32 37}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/max77976_charger.c", i32 409, i32 37}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/max77976_charger.c", i32 411, i32 2}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @max77976_detect._entry, !34, !"_entry", i1 false, i1 false}
!40 = !{ptr @max77976_detect._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/max77976_charger.c", i32 437, i32 33}
!43 = !{ptr @max77976_psy_desc, !44, !"max77976_psy_desc", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/max77976_charger.c", i32 378, i32 39}
!45 = !{ptr @max77976_psy_props, !46, !"max77976_psy_props", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/max77976_charger.c", i32 366, i32 35}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/max77976_charger.c", i32 18, i32 38}
!49 = distinct !{null, !50, !"max77976_model", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/max77976_charger.c", i32 18, i32 20}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/max77976_charger.c", i32 17, i32 44}
!53 = distinct !{null, !54, !"max77976_manufacturer", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/max77976_charger.c", i32 17, i32 20}
!55 = !{ptr @max77976_of_id, !56, !"max77976_of_id", i1 false, i1 false}
!56 = !{!"../drivers/power/supply/max77976_charger.c", i32 491, i32 34}
!57 = !{ptr @max77976_i2c_id, !58, !"max77976_i2c_id", i1 false, i1 false}
!58 = !{!"../drivers/power/supply/max77976_charger.c", i32 485, i32 35}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"auto-init"}
