; ModuleID = '/llk/IR_all_yes/drivers/power/supply/sbs-charger.c_pt.bc'
source_filename = "../drivers/power/supply/sbs-charger.c"
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
%struct.sbs_info = type { ptr, ptr, ptr, %struct.delayed_work, i32 }

@__initcall__kmod_sbs_charger__288_255_sbs_driver_init6 = internal global ptr @sbs_driver_init, section ".initcall6.init", align 4
@sbs_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sbs_probe, ptr @sbs_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sbs_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sbs_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sbs_driver_exit = internal global ptr @sbs_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [68 x i8] c"sbs_charger.author=Nicolas Saenz Julienne <nicolassaenzj@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [49 x i8] c"sbs_charger.description=SBS smart charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [50 x i8] c"sbs_charger.file=drivers/power/supply/sbs-charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [27 x i8] c"sbs_charger.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sbs-charger\00", [20 x i8] zeroinitializer }, align 32
@sbs_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sbs,sbs-charger\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sbs_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sbs-charger\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sbs_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sbs_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @sbs_readable_reg, ptr @sbs_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 2, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"sbs_charger:181:(&sbs_regmap)->lock\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get device status\0A\00", [35 x i8] zeroinitializer }, align 32
@sbs_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 3, ptr null, i32 0, ptr @sbs_properties, i32 4, ptr @sbs_get_property, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request irq\0A\00", [41 x i8] zeroinitializer }, align 32
@sbs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&(&chip->work)->work)\00", [56 x i8] zeroinitializer }, align 32
@sbs_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&(&chip->work)->timer\00", [42 x i8] zeroinitializer }, align 32
@sbs_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 218, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: smart charger device registered\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sbs_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/power/supply/sbs-charger.c\00", [61 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sbs_probe._entry_ptr = internal global ptr @sbs_probe._entry, section ".printk_index", align 4
@sbs_properties = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 3, i32 4, i32 2], [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"sbs_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 246, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 251, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"sbs_dt_ids\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 233, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [7 x i8] c"sbs_id\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 240, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"sbs_regmap\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 147, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 181, i32 17 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 191, i32 43 }
@___asan_gen_.37 = private unnamed_addr constant [9 x i8] c"sbs_desc\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 156, i32 39 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 197, i32 10 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 210, i32 44 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 212, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 217, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"sbs_properties\00", align 1
@___asan_gen_.77 = private constant [38 x i8] c"../drivers/power/supply/sbs-charger.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 125, i32 35 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_sbs_driver_exit, ptr @__initcall__kmod_sbs_charger__288_255_sbs_driver_init6, ptr @sbs_driver_exit, ptr @sbs_probe._entry, ptr @sbs_probe._entry_ptr, ptr @sbs_driver, ptr @.str, ptr @sbs_dt_ids, ptr @sbs_id, ptr @sbs_probe._key, ptr @sbs_regmap, ptr @.str.1, ptr @.str.2, ptr @sbs_desc, ptr @.str.3, ptr @.str.4, ptr @sbs_probe.__key, ptr @.str.5, ptr @sbs_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @sbs_properties], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sbs_properties to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sbs_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sbs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sbs_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #6
  %0 = getelementptr inbounds i8, ptr %psy_cfg, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !55
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %6 = ptrtoint ptr %psy_cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %psy_cfg, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %7 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %drv_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call4 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sbs_regmap, ptr noundef nonnull @sbs_probe._key, ptr noundef nonnull @.str.1) #6
  %regmap = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call12 = call i32 @regmap_read(ptr noundef %call4, i32 noundef 19, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end17, label %if.then14

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call12, ptr noundef nonnull @.str.2) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %last_state = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 4
  %13 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_state, align 4
  %call19 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @sbs_desc, ptr noundef nonnull %psy_cfg) #6
  %power_supply = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %power_supply to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call19, ptr %power_supply, align 4
  %cmp.i104 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then22, label %if.end27

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %call19 to i32
  %call26 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %15, ptr noundef nonnull @.str.3) #6
  br label %cleanup

if.end27:                                         ; preds = %if.end17
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool28.not = icmp eq i32 %17, 0
  br i1 %tobool28.not, label %do.body40, label %if.then29

if.then29:                                        ; preds = %if.end27
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %18 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then29.dev_name.exit_crit_edge

if.then29.dev_name.exit_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then29.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %21, %if.end.i ], [ %19, %if.then29.dev_name.exit_crit_edge ]
  %call34 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %17, ptr noundef null, ptr noundef nonnull @sbs_irq_thread, i32 noundef 8194, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %dev_name.exit.do.end63_crit_edge, label %if.then36

dev_name.exit.do.end63_crit_edge:                 ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end63

if.then36:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call34, ptr noundef nonnull @.str.4) #6
  br label %cleanup

do.body40:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  %work = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3
  call void @__init_work(ptr noundef %work, i32 noundef 0) #6
  %22 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @sbs_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry48 = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %23 = ptrtoint ptr %entry48 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry48, ptr %entry48, align 4
  %prev.i = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry48, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sbs_delayed_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.sbs_info, ptr %call.i, i32 0, i32 3, i32 1
  call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @sbs_probe.__key.6) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %26 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %26, ptr noundef %work, i32 noundef 50) #6
  br label %do.end63

do.end63:                                         ; preds = %do.body40, %dev_name.exit.do.end63_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %if.then36, %if.then22, %if.then14, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.then7 ], [ %call16, %if.then14 ], [ %call26, %if.then22 ], [ %call38, %if.then36 ], [ 0, %do.end63 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %work = getelementptr inbounds %struct.sbs_info, ptr %1, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_irq_thread(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !55
  %regmap.i = getelementptr inbounds %struct.sbs_info, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 19, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.sbs_check_state.exit_crit_edge

entry.sbs_check_state.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sbs_check_state.exit

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %last_state.i = getelementptr inbounds %struct.sbs_info, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %last_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i = icmp eq i32 %4, %6
  br i1 %cmp.not.i, label %land.lhs.true.i.sbs_check_state.exit_crit_edge, label %if.then.i

land.lhs.true.i.sbs_check_state.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sbs_check_state.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %last_state.i, align 4
  %power_supply.i = getelementptr inbounds %struct.sbs_info, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_supply.i, align 4
  call void @power_supply_changed(ptr noundef %9) #6
  br label %sbs_check_state.exit

sbs_check_state.exit:                             ; preds = %if.then.i, %land.lhs.true.i.sbs_check_state.exit_crit_edge, %entry.sbs_check_state.exit_crit_edge
  %tobool.not = phi i32 [ 0, %entry.sbs_check_state.exit_crit_edge ], [ 0, %land.lhs.true.i.sbs_check_state.exit_crit_edge ], [ 1, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  ret i32 %tobool.not
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sbs_delayed_work(ptr noundef %work) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !55
  %regmap.i = getelementptr i8, ptr %work, i32 -4
  %1 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef 19, ptr noundef nonnull %reg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.sbs_check_state.exit_crit_edge

entry.sbs_check_state.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sbs_check_state.exit

land.lhs.true.i:                                  ; preds = %entry
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %last_state.i = getelementptr i8, ptr %work, i32 100
  %5 = ptrtoint ptr %last_state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not.i = icmp eq i32 %4, %6
  br i1 %cmp.not.i, label %land.lhs.true.i.sbs_check_state.exit_crit_edge, label %if.then.i

land.lhs.true.i.sbs_check_state.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sbs_check_state.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %4, ptr %last_state.i, align 4
  %power_supply.i = getelementptr i8, ptr %work, i32 -8
  %8 = ptrtoint ptr %power_supply.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %power_supply.i, align 4
  call void @power_supply_changed(ptr noundef %9) #6
  br label %sbs_check_state.exit

sbs_check_state.exit:                             ; preds = %if.then.i, %land.lhs.true.i.sbs_check_state.exit_crit_edge, %entry.sbs_check_state.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %work, i32 noundef 50) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sbs_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %reg)
  %cmp = icmp ugt i32 %reg, 16
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sbs_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %reg)
  %cond = icmp eq i32 %reg, 19
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sbs_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #6
  %last_state = getelementptr inbounds %struct.sbs_info, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %last_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_state, align 4
  %2 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb2
    i32 0, label %sw.bb9
    i32 2, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and = lshr i32 %1, 14
  %and.lobit = and i32 %and, 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and3 = lshr i32 %1, 15
  %and3.lobit = and i32 %and3, 1
  br label %cleanup.sink.split

sw.bb9:                                           ; preds = %entry
  %and10 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb9.cleanup.sink.split_crit_edge, label %if.else

sw.bb9.cleanup.sink.split_crit_edge:              ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.else:                                          ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  %3 = and i32 %1, 32770
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %3)
  %4 = icmp eq i32 %3, 32768
  %. = select i1 %4, i32 1, i32 2
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = and i32 %1, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  %.44 = select i1 %tobool25.not, i32 1, i32 2
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb19, %if.else, %sw.bb9.cleanup.sink.split_crit_edge, %sw.bb2, %sw.bb
  %and.lobit.sink = phi i32 [ %and.lobit, %sw.bb ], [ %and3.lobit, %sw.bb2 ], [ 3, %sw.bb9.cleanup.sink.split_crit_edge ], [ %., %if.else ], [ %.44, %sw.bb19 ]
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and.lobit.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @__initcall__kmod_sbs_charger__288_255_sbs_driver_init6, !1, !"__initcall__kmod_sbs_charger__288_255_sbs_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/sbs-charger.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_sbs_driver_exit, !1, !"__exitcall_sbs_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/sbs-charger.c", i32 257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/sbs-charger.c", i32 258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/sbs-charger.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/sbs-charger.c", i32 251, i32 11}
!12 = !{ptr @sbs_driver, !13, !"sbs_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/sbs-charger.c", i32 246, i32 26}
!14 = !{ptr @sbs_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/sbs-charger.c", i32 181, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/sbs-charger.c", i32 191, i32 43}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/power/supply/sbs-charger.c", i32 197, i32 10}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/power/supply/sbs-charger.c", i32 210, i32 44}
!23 = !{ptr @sbs_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/power/supply/sbs-charger.c", i32 212, i32 3}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sbs_probe.__key.6, !24, !"__key", i1 false, i1 false}
!27 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/sbs-charger.c", i32 217, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sbs_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @sbs_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @sbs_regmap, !37, !"sbs_regmap", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/sbs-charger.c", i32 147, i32 35}
!38 = !{ptr @sbs_desc, !39, !"sbs_desc", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/sbs-charger.c", i32 156, i32 39}
!40 = !{ptr @sbs_properties, !41, !"sbs_properties", i1 false, i1 false}
!41 = !{!"../drivers/power/supply/sbs-charger.c", i32 125, i32 35}
!42 = !{ptr @sbs_dt_ids, !43, !"sbs_dt_ids", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/sbs-charger.c", i32 233, i32 34}
!44 = !{ptr @sbs_id, !45, !"sbs_id", i1 false, i1 false}
!45 = !{!"../drivers/power/supply/sbs-charger.c", i32 240, i32 35}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"auto-init"}
