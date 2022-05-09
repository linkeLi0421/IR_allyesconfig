; ModuleID = '/llk/IR_all_yes/drivers/power/supply/adp5061.c_pt.bc'
source_filename = "../drivers/power/supply/adp5061.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.adp5061_state = type { ptr, ptr, ptr }

@__initcall__kmod_adp5061__288_740_adp5061_driver_init6 = internal global ptr @adp5061_driver_init, section ".initcall6.init", align 4
@adp5061_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @adp5061_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adp5061_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adp5061_driver_exit = internal global ptr @adp5061_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description289 = internal constant [66 x i8] c"adp5061.description=Analog Devices adp5061 battery charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author290 = internal constant [52 x i8] c"adp5061.author=Stefan Popa <stefan.popa@analog.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [42 x i8] c"adp5061.file=drivers/power/supply/adp5061\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"adp5061.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adp5061\00", [24 x i8] zeroinitializer }, align 32
@adp5061_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adp5061\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@adp5061_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adp5061_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"adp5061:706:(&adp5061_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@adp5061_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 708, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize register map\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adp5061_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/power/supply/adp5061.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adp5061_probe._entry_ptr = internal global ptr @adp5061_probe._entry, section ".printk_index", align 4
@adp5061_desc = internal constant { %struct.power_supply_desc, [44 x i8] } { %struct.power_supply_desc { ptr @.str, i32 4, ptr null, i32 0, ptr @adp5061_props, i32 12, ptr @adp5061_get_property, ptr @adp5061_set_property, ptr @adp5061_prop_writeable, ptr null, ptr null, i8 0, i32 0 }, [44 x i8] zeroinitializer }, align 32
@adp5061_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 720, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register power supply\0A\00", [63 x i8] zeroinitializer }, align 32
@adp5061_probe._entry_ptr.9 = internal global ptr @adp5061_probe._entry.7, section ".printk_index", align 4
@adp5061_props = internal global { [12 x i32], [48 x i8] } { [12 x i32] [i32 3, i32 1, i32 38, i32 8, i32 9, i32 32, i32 29, i32 67, i32 13, i32 0, i32 51, i32 68], [48 x i8] zeroinitializer }, align 32
@adp5061_chg_type = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 3, i32 3], [16 x i8] zeroinitializer }, align 32
@adp5061_in_current_lim = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 100, i32 150, i32 200, i32 250, i32 300, i32 400, i32 500, i32 600, i32 700, i32 800, i32 900, i32 1000, i32 1200, i32 1500, i32 1800, i32 2100], [32 x i8] zeroinitializer }, align 32
@adp5061_vmax = internal constant { [36 x i32], [48 x i8] } { [36 x i32] [i32 3800, i32 3820, i32 3840, i32 3860, i32 3880, i32 3900, i32 3920, i32 3940, i32 3960, i32 3980, i32 4000, i32 4020, i32 4040, i32 4060, i32 4080, i32 4100, i32 4120, i32 4140, i32 4160, i32 4180, i32 4200, i32 4220, i32 4240, i32 4260, i32 4280, i32 4300, i32 4320, i32 4340, i32 4360, i32 4380, i32 4400, i32 4420, i32 4440, i32 4460, i32 4480, i32 4500], [48 x i8] zeroinitializer }, align 32
@adp5061_vmin = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2000, i32 2500, i32 2600, i32 2900], [16 x i8] zeroinitializer }, align 32
@adp5061_const_chg_vmax = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 3200, i32 3400, i32 3700, i32 3800], [16 x i8] zeroinitializer }, align 32
@adp5061_const_ichg = internal constant { [24 x i32], [32 x i8] } { [24 x i32] [i32 50, i32 100, i32 150, i32 200, i32 250, i32 300, i32 350, i32 400, i32 450, i32 500, i32 550, i32 600, i32 650, i32 700, i32 750, i32 800, i32 850, i32 900, i32 950, i32 1000, i32 1050, i32 1100, i32 1200, i32 1300], [32 x i8] zeroinitializer }, align 32
@adp5061_prechg_current = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 10, i32 20, i32 80], [16 x i8] zeroinitializer }, align 32
@adp5061_vweak_th = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 2700, i32 2800, i32 2900, i32 3000, i32 3100, i32 3200, i32 3300, i32 3400], [32 x i8] zeroinitializer }, align 32
@adp5061_iend = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 12500, i32 32500, i32 52500, i32 72500, i32 92500, i32 117500, i32 142500, i32 170000], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [14 x i64] [i64 12, i64 32, i64 0, i64 1, i64 3, i64 8, i64 9, i64 13, i64 29, i64 32, i64 38, i64 51, i64 67, i64 68]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.11 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.12 = internal global [10 x i64] [i64 8, i64 32, i64 8, i64 9, i64 13, i64 29, i64 32, i64 38, i64 67, i64 68]
@__sancov_gen_cov_switch_values.13 = internal global [10 x i64] [i64 8, i64 32, i64 8, i64 9, i64 13, i64 29, i64 32, i64 38, i64 67, i64 68]
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"adp5061_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 733, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 735, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"adp5061_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 727, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"adp5061_regmap_config\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 679, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 705, i32 15 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 708, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"adp5061_desc\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 684, i32 39 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 720, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"adp5061_props\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 664, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"adp5061_chg_type\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 95, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [23 x i8] c"adp5061_in_current_lim\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 130, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"adp5061_vmax\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 123, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"adp5061_vmin\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 110, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"adp5061_const_chg_vmax\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 114, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [19 x i8] c"adp5061_const_ichg\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 118, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant [23 x i8] c"adp5061_prechg_current\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 106, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"adp5061_vweak_th\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 102, i32 18 }
@___asan_gen_.86 = private unnamed_addr constant [13 x i8] c"adp5061_iend\00", align 1
@___asan_gen_.87 = private constant [34 x i8] c"../drivers/power/supply/adp5061.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 135, i32 18 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description289, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_adp5061_driver_exit, ptr @__initcall__kmod_adp5061__288_740_adp5061_driver_init6, ptr @adp5061_driver_exit, ptr @adp5061_probe._entry, ptr @adp5061_probe._entry.7, ptr @adp5061_probe._entry_ptr, ptr @adp5061_probe._entry_ptr.9, ptr @adp5061_driver, ptr @.str, ptr @adp5061_id, ptr @adp5061_probe._key, ptr @adp5061_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adp5061_desc, ptr @.str.8, ptr @adp5061_props, ptr @adp5061_chg_type, ptr @adp5061_in_current_lim, ptr @adp5061_vmax, ptr @adp5061_vmin, ptr @adp5061_const_chg_vmax, ptr @adp5061_const_ichg, ptr @adp5061_prechg_current, ptr @adp5061_vweak_th, ptr @adp5061_iend], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_desc to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_props to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_chg_type to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_in_current_lim to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_vmax to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_vmin to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_const_chg_vmax to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_const_ichg to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_prechg_current to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_vweak_th to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adp5061_iend to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5061_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adp5061_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adp5061_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adp5061_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5061_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @adp5061_regmap_config, ptr noundef nonnull @adp5061_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.adp5061_state, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call2, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %drv_data, align 4
  %call9 = call ptr @devm_power_supply_register(ptr noundef %dev, ptr noundef nonnull @adp5061_desc, ptr noundef nonnull %psy_cfg) #7
  %psy = getelementptr inbounds %struct.adp5061_state, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call9, ptr %psy, align 4
  %cmp.i35 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %do.end15, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end15:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %6 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %psy, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %if.end7.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %do.end15 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5061_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i130 = alloca i32, align 4
  %buf.i.i119 = alloca [2 x i8], align 1
  %buf.i.i112 = alloca [2 x i8], align 1
  %regval.i104 = alloca i32, align 4
  %regval.i96 = alloca i32, align 4
  %regval.i87 = alloca i32, align 4
  %regval.i79 = alloca i32, align 4
  %regval.i70 = alloca i32, align 4
  %regval.i62 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb6
    i32 38, label %sw.bb8
    i32 8, label %sw.bb10
    i32 9, label %sw.bb12
    i32 32, label %sw.bb14
    i32 29, label %sw.bb16
    i32 67, label %sw.bb18
    i32 13, label %sw.bb20
    i32 0, label %sw.bb22
    i32 51, label %sw.bb24
    i32 68, label %sw.bb26
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %1 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %buf.i, align 1, !annotation !64
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !64
  %regmap.i = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %5, i32 noundef 11, ptr noundef nonnull %buf.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %adp5061_get_status.exit.thread, label %if.end

adp5061_get_status.exit.thread:                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %2, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %8 = and i8 %7, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp2 = icmp ne i8 %8, 1
  %. = zext i1 %cmp2 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %., ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %10 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -1, ptr %buf.i.i, align 1, !annotation !64
  %11 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %11, align 1, !annotation !64
  %regmap.i.i = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %13 = ptrtoint ptr %regmap.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i.i, align 4
  %call.i.i = call i32 @regmap_bulk_read(ptr noundef %14, i32 noundef 11, ptr noundef nonnull %buf.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %adp5061_get_status.exit.thread.i, label %if.else.i

adp5061_get_status.exit.thread.i:                 ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  %17 = and i8 %16, 7
  %and.i = zext i8 %17 to i32
  %arrayidx.i = getelementptr [4 x i32], ptr @adp5061_chg_type, i32 0, i32 %and.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %val, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %21 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %regval.i, align 4, !annotation !64
  %regmap.i56 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i56 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i56, align 4
  %call.i57 = call i32 @regmap_read(ptr noundef %23, i32 noundef 2, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %cmp.i58 = icmp slt i32 %call.i57, 0
  br i1 %cmp.i58, label %sw.bb8.adp5061_get_input_current_limit.exit_crit_edge, label %if.end.i61

sw.bb8.adp5061_get_input_current_limit.exit_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_input_current_limit.exit

if.end.i61:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %regval.i, align 4
  %and.i59 = and i32 %25, 15
  %arrayidx.i60 = getelementptr [16 x i32], ptr @adp5061_in_current_lim, i32 0, i32 %and.i59
  %26 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i60, align 4
  %mul.i = mul i32 %27, 1000
  %28 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul.i, ptr %val, align 4
  br label %adp5061_get_input_current_limit.exit

adp5061_get_input_current_limit.exit:             ; preds = %if.end.i61, %sw.bb8.adp5061_get_input_current_limit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i62) #7
  %29 = ptrtoint ptr %regval.i62 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %regval.i62, align 4, !annotation !64
  %regmap.i63 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i63 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i63, align 4
  %call.i64 = call i32 @regmap_read(ptr noundef %31, i32 noundef 3, ptr noundef nonnull %regval.i62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp.i65 = icmp slt i32 %call.i64, 0
  br i1 %cmp.i65, label %sw.bb10.adp5061_get_max_voltage.exit_crit_edge, label %if.end.i69

sw.bb10.adp5061_get_max_voltage.exit_crit_edge:   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_max_voltage.exit

if.end.i69:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %regval.i62 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regval.i62, align 4
  %and.i66 = lshr i32 %33, 2
  %shr.i = and i32 %and.i66, 63
  %sub.i = add nsw i32 %shr.i, -15
  %34 = call i32 @llvm.umin.i32(i32 %sub.i, i32 35) #7
  %arrayidx.i67 = getelementptr [36 x i32], ptr @adp5061_vmax, i32 0, i32 %34
  %35 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i67, align 4
  %mul.i68 = mul i32 %36, 1000
  %37 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul.i68, ptr %val, align 4
  br label %adp5061_get_max_voltage.exit

adp5061_get_max_voltage.exit:                     ; preds = %if.end.i69, %sw.bb10.adp5061_get_max_voltage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i62) #7
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i70) #7
  %38 = ptrtoint ptr %regval.i70 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %regval.i70, align 4, !annotation !64
  %regmap.i71 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %39 = ptrtoint ptr %regmap.i71 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i71, align 4
  %call.i72 = call i32 @regmap_read(ptr noundef %40, i32 noundef 5, ptr noundef nonnull %regval.i70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp.i73 = icmp slt i32 %call.i72, 0
  br i1 %cmp.i73, label %sw.bb12.adp5061_get_min_voltage.exit_crit_edge, label %if.end.i78

sw.bb12.adp5061_get_min_voltage.exit_crit_edge:   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_min_voltage.exit

if.end.i78:                                       ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %regval.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regval.i70, align 4
  %and.i74 = lshr i32 %42, 3
  %shr.i75 = and i32 %and.i74, 3
  %arrayidx.i76 = getelementptr [4 x i32], ptr @adp5061_vmin, i32 0, i32 %shr.i75
  %43 = ptrtoint ptr %arrayidx.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.i76, align 4
  %mul.i77 = mul i32 %44, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i77, ptr %val, align 4
  br label %adp5061_get_min_voltage.exit

adp5061_get_min_voltage.exit:                     ; preds = %if.end.i78, %sw.bb12.adp5061_get_min_voltage.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i70) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i79) #7
  %46 = ptrtoint ptr %regval.i79 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %regval.i79, align 4, !annotation !64
  %regmap.i80 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %47 = ptrtoint ptr %regmap.i80 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i80, align 4
  %call.i81 = call i32 @regmap_read(ptr noundef %48, i32 noundef 3, ptr noundef nonnull %regval.i79) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i82 = icmp slt i32 %call.i81, 0
  br i1 %cmp.i82, label %sw.bb14.adp5061_get_chg_volt_lim.exit_crit_edge, label %if.end.i86

sw.bb14.adp5061_get_chg_volt_lim.exit_crit_edge:  ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_chg_volt_lim.exit

if.end.i86:                                       ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %regval.i79 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %regval.i79, align 4
  %and.i83 = and i32 %50, 3
  %arrayidx.i84 = getelementptr [4 x i32], ptr @adp5061_const_chg_vmax, i32 0, i32 %and.i83
  %51 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.i84, align 4
  %mul.i85 = mul i32 %52, 1000
  %53 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %mul.i85, ptr %val, align 4
  br label %adp5061_get_chg_volt_lim.exit

adp5061_get_chg_volt_lim.exit:                    ; preds = %if.end.i86, %sw.bb14.adp5061_get_chg_volt_lim.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i79) #7
  br label %cleanup

sw.bb16:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i87) #7
  %54 = ptrtoint ptr %regval.i87 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %regval.i87, align 4, !annotation !64
  %regmap.i88 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %55 = ptrtoint ptr %regmap.i88 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i88, align 4
  %call.i89 = call i32 @regmap_read(ptr noundef %56, i32 noundef 4, ptr noundef nonnull %regval.i87) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i90 = icmp slt i32 %call.i89, 0
  br i1 %cmp.i90, label %sw.bb16.adp5061_get_const_chg_current.exit_crit_edge, label %if.end.i95

sw.bb16.adp5061_get_const_chg_current.exit_crit_edge: ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_const_chg_current.exit

if.end.i95:                                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %regval.i87 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %regval.i87, align 4
  %and.i91 = lshr i32 %58, 2
  %shr.i92 = and i32 %and.i91, 31
  %59 = call i32 @llvm.umin.i32(i32 %shr.i92, i32 23) #7
  %arrayidx.i93 = getelementptr [24 x i32], ptr @adp5061_const_ichg, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i93 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx.i93, align 4
  %mul.i94 = mul i32 %61, 1000
  %62 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %mul.i94, ptr %val, align 4
  br label %adp5061_get_const_chg_current.exit

adp5061_get_const_chg_current.exit:               ; preds = %if.end.i95, %sw.bb16.adp5061_get_const_chg_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i87) #7
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i96) #7
  %63 = ptrtoint ptr %regval.i96 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %regval.i96, align 4, !annotation !64
  %regmap.i97 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %64 = ptrtoint ptr %regmap.i97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i97, align 4
  %call.i98 = call i32 @regmap_read(ptr noundef %65, i32 noundef 4, ptr noundef nonnull %regval.i96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %cmp.i99 = icmp slt i32 %call.i98, 0
  br i1 %cmp.i99, label %sw.bb18.adp5061_get_prechg_current.exit_crit_edge, label %if.end.i103

sw.bb18.adp5061_get_prechg_current.exit_crit_edge: ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_prechg_current.exit

if.end.i103:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %regval.i96 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %regval.i96, align 4
  %and.i100 = and i32 %67, 3
  %arrayidx.i101 = getelementptr [4 x i32], ptr @adp5061_prechg_current, i32 0, i32 %and.i100
  %68 = ptrtoint ptr %arrayidx.i101 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx.i101, align 4
  %mul.i102 = mul i32 %69, 1000
  %70 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %mul.i102, ptr %val, align 4
  br label %adp5061_get_prechg_current.exit

adp5061_get_prechg_current.exit:                  ; preds = %if.end.i103, %sw.bb18.adp5061_get_prechg_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i96) #7
  br label %cleanup

sw.bb20:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i104) #7
  %71 = ptrtoint ptr %regval.i104 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %regval.i104, align 4, !annotation !64
  %regmap.i105 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %72 = ptrtoint ptr %regmap.i105 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i105, align 4
  %call.i106 = call i32 @regmap_read(ptr noundef %73, i32 noundef 5, ptr noundef nonnull %regval.i104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %sw.bb20.adp5061_get_vweak_th.exit_crit_edge, label %if.end.i111

sw.bb20.adp5061_get_vweak_th.exit_crit_edge:      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_vweak_th.exit

if.end.i111:                                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %regval.i104 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %regval.i104, align 4
  %and.i108 = and i32 %75, 7
  %arrayidx.i109 = getelementptr [8 x i32], ptr @adp5061_vweak_th, i32 0, i32 %and.i108
  %76 = ptrtoint ptr %arrayidx.i109 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i109, align 4
  %mul.i110 = mul i32 %77, 1000
  %78 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %mul.i110, ptr %val, align 4
  br label %adp5061_get_vweak_th.exit

adp5061_get_vweak_th.exit:                        ; preds = %if.end.i111, %sw.bb20.adp5061_get_vweak_th.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i104) #7
  br label %cleanup

sw.bb22:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i112) #7
  %79 = ptrtoint ptr %buf.i.i112 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 -1, ptr %buf.i.i112, align 1, !annotation !64
  %80 = getelementptr inbounds [2 x i8], ptr %buf.i.i112, i32 0, i32 1
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 -1, ptr %80, align 1, !annotation !64
  %regmap.i.i113 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %82 = ptrtoint ptr %regmap.i.i113 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap.i.i113, align 4
  %call.i.i114 = call i32 @regmap_bulk_read(ptr noundef %83, i32 noundef 11, ptr noundef nonnull %buf.i.i112, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i114)
  %cmp.i.i115 = icmp slt i32 %call.i.i114, 0
  br i1 %cmp.i.i115, label %adp5061_get_status.exit.thread.i116, label %if.end.i118

adp5061_get_status.exit.thread.i116:              ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i112) #7
  br label %cleanup

if.end.i118:                                      ; preds = %sw.bb22
  %84 = ptrtoint ptr %buf.i.i112 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %buf.i.i112, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i112) #7
  %86 = and i8 %85, 7
  %and.i117 = zext i8 %86 to i32
  %87 = zext i32 %and.i117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %and.i117, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %if.end.i118.sw.bb1.i_crit_edge
    i32 2, label %if.end.i118.sw.bb1.i_crit_edge139
    i32 3, label %if.end.i118.sw.bb1.i_crit_edge140
    i32 4, label %sw.bb2.i
    i32 6, label %sw.bb3.i
  ]

if.end.i118.sw.bb1.i_crit_edge140:                ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.i118.sw.bb1.i_crit_edge139:                ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

if.end.i118.sw.bb1.i_crit_edge:                   ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i:                                          ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end.i118.sw.bb1.i_crit_edge, %if.end.i118.sw.bb1.i_crit_edge139, %if.end.i118.sw.bb1.i_crit_edge140
  %89 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 4, ptr %val, align 4
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.default.i:                                     ; preds = %if.end.i118
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb24:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i119) #7
  %93 = ptrtoint ptr %buf.i.i119 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 -1, ptr %buf.i.i119, align 1, !annotation !64
  %94 = getelementptr inbounds [2 x i8], ptr %buf.i.i119, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 -1, ptr %94, align 1, !annotation !64
  %regmap.i.i120 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %96 = ptrtoint ptr %regmap.i.i120 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap.i.i120, align 4
  %call.i.i121 = call i32 @regmap_bulk_read(ptr noundef %97, i32 noundef 11, ptr noundef nonnull %buf.i.i119, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i121)
  %cmp.i.i122 = icmp slt i32 %call.i.i121, 0
  br i1 %cmp.i.i122, label %adp5061_get_status.exit.thread.i123, label %if.end.i125

adp5061_get_status.exit.thread.i123:              ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i119) #7
  br label %cleanup

if.end.i125:                                      ; preds = %sw.bb24
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %94, align 1
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i119) #7
  %100 = and i8 %99, 7
  %and.i124 = zext i8 %100 to i32
  %101 = zext i32 %and.i124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %and.i124, label %if.end.i125.cleanup_crit_edge [
    i32 0, label %if.end.i125.sw.bb.i126_crit_edge
    i32 1, label %if.end.i125.sw.bb.i126_crit_edge141
    i32 2, label %sw.bb1.i127
    i32 3, label %sw.bb2.i128
    i32 4, label %sw.bb3.i129
  ]

if.end.i125.sw.bb.i126_crit_edge141:              ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i126

if.end.i125.sw.bb.i126_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i126

if.end.i125.cleanup_crit_edge:                    ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i126:                                       ; preds = %if.end.i125.sw.bb.i126_crit_edge, %if.end.i125.sw.bb.i126_crit_edge141
  %102 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 0, ptr %val, align 4
  br label %cleanup

sw.bb1.i127:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 1, ptr %val, align 4
  br label %cleanup

sw.bb2.i128:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  %104 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 2, ptr %val, align 4
  br label %cleanup

sw.bb3.i129:                                      ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #9
  %105 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 3, ptr %val, align 4
  br label %cleanup

sw.bb26:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i130) #7
  %106 = ptrtoint ptr %regval.i130 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %regval.i130, align 4, !annotation !64
  %regmap.i131 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %107 = ptrtoint ptr %regmap.i131 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i131, align 4
  %call.i132 = call i32 @regmap_read(ptr noundef %108, i32 noundef 17, ptr noundef nonnull %regval.i130) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %cmp.i133 = icmp slt i32 %call.i132, 0
  br i1 %cmp.i133, label %sw.bb26.adp5061_get_termination_current.exit_crit_edge, label %if.end.i137

sw.bb26.adp5061_get_termination_current.exit_crit_edge: ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_termination_current.exit

if.end.i137:                                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %regval.i130 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %regval.i130, align 4
  %and.i134 = lshr i32 %110, 5
  %shr.i135 = and i32 %and.i134, 7
  %arrayidx.i136 = getelementptr [8 x i32], ptr @adp5061_iend, i32 0, i32 %shr.i135
  %111 = ptrtoint ptr %arrayidx.i136 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i136, align 4
  %113 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %val, align 4
  br label %adp5061_get_termination_current.exit

adp5061_get_termination_current.exit:             ; preds = %if.end.i137, %sw.bb26.adp5061_get_termination_current.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i130) #7
  br label %cleanup

cleanup:                                          ; preds = %adp5061_get_termination_current.exit, %sw.bb3.i129, %sw.bb2.i128, %sw.bb1.i127, %sw.bb.i126, %if.end.i125.cleanup_crit_edge, %adp5061_get_status.exit.thread.i123, %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %adp5061_get_status.exit.thread.i116, %adp5061_get_vweak_th.exit, %adp5061_get_prechg_current.exit, %adp5061_get_const_chg_current.exit, %adp5061_get_chg_volt_lim.exit, %adp5061_get_min_voltage.exit, %adp5061_get_max_voltage.exit, %adp5061_get_input_current_limit.exit, %if.else.i, %adp5061_get_status.exit.thread.i, %if.end, %adp5061_get_status.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i132, %adp5061_get_termination_current.exit ], [ %call.i106, %adp5061_get_vweak_th.exit ], [ %call.i98, %adp5061_get_prechg_current.exit ], [ %call.i89, %adp5061_get_const_chg_current.exit ], [ %call.i81, %adp5061_get_chg_volt_lim.exit ], [ %call.i72, %adp5061_get_min_voltage.exit ], [ %call.i64, %adp5061_get_max_voltage.exit ], [ %call.i57, %adp5061_get_input_current_limit.exit ], [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %adp5061_get_status.exit.thread ], [ %call.i.i, %adp5061_get_status.exit.thread.i ], [ %call.i.i, %if.else.i ], [ %call.i.i114, %adp5061_get_status.exit.thread.i116 ], [ %call.i.i114, %sw.bb.i ], [ %call.i.i114, %sw.bb1.i ], [ %call.i.i114, %sw.bb2.i ], [ %call.i.i114, %sw.bb3.i ], [ %call.i.i114, %sw.default.i ], [ %call.i.i121, %adp5061_get_status.exit.thread.i123 ], [ %call.i.i121, %if.end.i125.cleanup_crit_edge ], [ %call.i.i121, %sw.bb.i126 ], [ %call.i.i121, %sw.bb1.i127 ], [ %call.i.i121, %sw.bb2.i128 ], [ %call.i.i121, %sw.bb3.i129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adp5061_set_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef readonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 38, label %sw.bb
    i32 8, label %sw.bb2
    i32 9, label %sw.bb4
    i32 32, label %sw.bb6
    i32 29, label %sw.bb8
    i32 67, label %sw.bb10
    i32 13, label %sw.bb12
    i32 68, label %sw.bb14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %1 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 150000, i32 %2)
  %cmp2.i.i = icmp slt i32 %2, 150000
  br i1 %cmp2.i.i, label %sw.bb.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.i

sw.bb.adp5061_get_array_index.exit.i_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.i:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %2)
  %cmp2.i.1.i = icmp ult i32 %2, 200000
  br i1 %cmp2.i.1.i, label %for.inc.i.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.1.i

for.inc.i.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.1.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %2)
  %cmp2.i.2.i = icmp ult i32 %2, 250000
  br i1 %cmp2.i.2.i, label %for.inc.i.1.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.2.i

for.inc.i.1.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.2.i:                                    ; preds = %for.inc.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %2)
  %cmp2.i.3.i = icmp ult i32 %2, 300000
  br i1 %cmp2.i.3.i, label %for.inc.i.2.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.3.i

for.inc.i.2.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.3.i:                                    ; preds = %for.inc.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %2)
  %cmp2.i.4.i = icmp ult i32 %2, 400000
  br i1 %cmp2.i.4.i, label %for.inc.i.3.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.4.i

for.inc.i.3.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.4.i:                                    ; preds = %for.inc.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000, i32 %2)
  %cmp2.i.5.i = icmp ult i32 %2, 500000
  br i1 %cmp2.i.5.i, label %for.inc.i.4.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.5.i

for.inc.i.4.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.5.i:                                    ; preds = %for.inc.i.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000, i32 %2)
  %cmp2.i.6.i = icmp ult i32 %2, 600000
  br i1 %cmp2.i.6.i, label %for.inc.i.5.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.6.i

for.inc.i.5.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.6.i:                                    ; preds = %for.inc.i.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 700000, i32 %2)
  %cmp2.i.7.i = icmp ult i32 %2, 700000
  br i1 %cmp2.i.7.i, label %for.inc.i.6.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.7.i

for.inc.i.6.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.7.i:                                    ; preds = %for.inc.i.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %2)
  %cmp2.i.8.i = icmp ult i32 %2, 800000
  br i1 %cmp2.i.8.i, label %for.inc.i.7.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.8.i

for.inc.i.7.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.8.i:                                    ; preds = %for.inc.i.7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900000, i32 %2)
  %cmp2.i.9.i = icmp ult i32 %2, 900000
  br i1 %cmp2.i.9.i, label %for.inc.i.8.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.9.i

for.inc.i.8.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.9.i:                                    ; preds = %for.inc.i.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %2)
  %cmp2.i.10.i = icmp ult i32 %2, 1000000
  br i1 %cmp2.i.10.i, label %for.inc.i.9.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.10.i

for.inc.i.9.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.10.i:                                   ; preds = %for.inc.i.9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %2)
  %cmp2.i.11.i = icmp ult i32 %2, 1200000
  br i1 %cmp2.i.11.i, label %for.inc.i.10.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.11.i

for.inc.i.10.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.11.i:                                   ; preds = %for.inc.i.10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000, i32 %2)
  %cmp2.i.12.i = icmp ult i32 %2, 1500000
  br i1 %cmp2.i.12.i, label %for.inc.i.11.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.12.i

for.inc.i.11.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.12.i:                                   ; preds = %for.inc.i.11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1800000, i32 %2)
  %cmp2.i.13.i = icmp ult i32 %2, 1800000
  br i1 %cmp2.i.13.i, label %for.inc.i.12.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.13.i

for.inc.i.12.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

for.inc.i.13.i:                                   ; preds = %for.inc.i.12.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2100000, i32 %2)
  %cmp2.i.14.i = icmp ult i32 %2, 2100000
  br i1 %cmp2.i.14.i, label %for.inc.i.13.i.adp5061_get_array_index.exit.i_crit_edge, label %for.inc.i.13.i.adp5061_set_input_current_limit.exit_crit_edge

for.inc.i.13.i.adp5061_set_input_current_limit.exit_crit_edge: ; preds = %for.inc.i.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_input_current_limit.exit

for.inc.i.13.i.adp5061_get_array_index.exit.i_crit_edge: ; preds = %for.inc.i.13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i

adp5061_get_array_index.exit.i:                   ; preds = %for.inc.i.13.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.12.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.11.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.10.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.9.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.8.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.7.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.6.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.5.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.4.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.3.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.2.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.1.i.adp5061_get_array_index.exit.i_crit_edge, %for.inc.i.i.adp5061_get_array_index.exit.i_crit_edge, %sw.bb.adp5061_get_array_index.exit.i_crit_edge
  %i.08.i.lcssa.i = phi i32 [ 0, %sw.bb.adp5061_get_array_index.exit.i_crit_edge ], [ 1, %for.inc.i.i.adp5061_get_array_index.exit.i_crit_edge ], [ 2, %for.inc.i.1.i.adp5061_get_array_index.exit.i_crit_edge ], [ 3, %for.inc.i.2.i.adp5061_get_array_index.exit.i_crit_edge ], [ 4, %for.inc.i.3.i.adp5061_get_array_index.exit.i_crit_edge ], [ 5, %for.inc.i.4.i.adp5061_get_array_index.exit.i_crit_edge ], [ 6, %for.inc.i.5.i.adp5061_get_array_index.exit.i_crit_edge ], [ 7, %for.inc.i.6.i.adp5061_get_array_index.exit.i_crit_edge ], [ 8, %for.inc.i.7.i.adp5061_get_array_index.exit.i_crit_edge ], [ 9, %for.inc.i.8.i.adp5061_get_array_index.exit.i_crit_edge ], [ 10, %for.inc.i.9.i.adp5061_get_array_index.exit.i_crit_edge ], [ 11, %for.inc.i.10.i.adp5061_get_array_index.exit.i_crit_edge ], [ 12, %for.inc.i.11.i.adp5061_get_array_index.exit.i_crit_edge ], [ 13, %for.inc.i.12.i.adp5061_get_array_index.exit.i_crit_edge ], [ 14, %for.inc.i.13.i.adp5061_get_array_index.exit.i_crit_edge ]
  br label %adp5061_set_input_current_limit.exit

adp5061_set_input_current_limit.exit:             ; preds = %adp5061_get_array_index.exit.i, %for.inc.i.13.i.adp5061_set_input_current_limit.exit_crit_edge
  %sub.i8.i = phi i32 [ %i.08.i.lcssa.i, %adp5061_get_array_index.exit.i ], [ 15, %for.inc.i.13.i.adp5061_set_input_current_limit.exit_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 2, i32 noundef 15, i32 noundef %sub.i8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div.i = sdiv i32 %6, 1000
  %7 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 4500) #7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i31.for.body.i.i_crit_edge, %sw.bb2
  %i.08.i.i = phi i32 [ %inc.i.i, %for.inc.i.i31.for.body.i.i_crit_edge ], [ 1, %sw.bb2 ]
  %arrayidx.i.i = getelementptr i32, ptr @adp5061_vmax, i32 %i.08.i.i
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp2.i.i30 = icmp sgt i32 %9, %7
  br i1 %cmp2.i.i30, label %adp5061_get_array_index.exit.i32, label %for.inc.i.i31

for.inc.i.i31:                                    ; preds = %for.body.i.i
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 36
  br i1 %exitcond.not.i.i, label %for.inc.i.i31.adp5061_set_max_voltage.exit_crit_edge, label %for.inc.i.i31.for.body.i.i_crit_edge

for.inc.i.i31.for.body.i.i_crit_edge:             ; preds = %for.inc.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i.i31.adp5061_set_max_voltage.exit_crit_edge: ; preds = %for.inc.i.i31
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_max_voltage.exit

adp5061_get_array_index.exit.i32:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = shl i32 %i.08.i.i, 2
  %phi.bo15.i = add i32 %sub.i.i, 56
  %phi.bo.i = and i32 %phi.bo15.i, 252
  br label %adp5061_set_max_voltage.exit

adp5061_set_max_voltage.exit:                     ; preds = %adp5061_get_array_index.exit.i32, %for.inc.i.i31.adp5061_set_max_voltage.exit_crit_edge
  %sub.i13.i = phi i32 [ %phi.bo.i, %adp5061_get_array_index.exit.i32 ], [ 200, %for.inc.i.i31.adp5061_set_max_voltage.exit_crit_edge ]
  %regmap.i33 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i33, align 4
  %call.i.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3, i32 noundef 252, i32 noundef %sub.i13.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500000, i32 %13)
  %cmp2.i.i35 = icmp slt i32 %13, 2500000
  br i1 %cmp2.i.i35, label %sw.bb4.adp5061_get_array_index.exit.i41_crit_edge, label %for.inc.i.i37

sw.bb4.adp5061_get_array_index.exit.i41_crit_edge: ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i41

for.inc.i.i37:                                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2600000, i32 %13)
  %cmp2.i.1.i36 = icmp ult i32 %13, 2600000
  br i1 %cmp2.i.1.i36, label %for.inc.i.i37.adp5061_get_array_index.exit.i41_crit_edge, label %for.inc.i.1.i39

for.inc.i.i37.adp5061_get_array_index.exit.i41_crit_edge: ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i41

for.inc.i.1.i39:                                  ; preds = %for.inc.i.i37
  call void @__sanitizer_cov_trace_const_cmp4(i32 2900000, i32 %13)
  %cmp2.i.2.i38 = icmp ult i32 %13, 2900000
  br i1 %cmp2.i.2.i38, label %for.inc.i.1.i39.adp5061_get_array_index.exit.i41_crit_edge, label %for.inc.i.1.i39.adp5061_set_min_voltage.exit_crit_edge

for.inc.i.1.i39.adp5061_set_min_voltage.exit_crit_edge: ; preds = %for.inc.i.1.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_min_voltage.exit

for.inc.i.1.i39.adp5061_get_array_index.exit.i41_crit_edge: ; preds = %for.inc.i.1.i39
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i41

adp5061_get_array_index.exit.i41:                 ; preds = %for.inc.i.1.i39.adp5061_get_array_index.exit.i41_crit_edge, %for.inc.i.i37.adp5061_get_array_index.exit.i41_crit_edge, %sw.bb4.adp5061_get_array_index.exit.i41_crit_edge
  %i.08.i.lcssa.i40 = phi i32 [ 0, %sw.bb4.adp5061_get_array_index.exit.i41_crit_edge ], [ 8, %for.inc.i.i37.adp5061_get_array_index.exit.i41_crit_edge ], [ 16, %for.inc.i.1.i39.adp5061_get_array_index.exit.i41_crit_edge ]
  br label %adp5061_set_min_voltage.exit

adp5061_set_min_voltage.exit:                     ; preds = %adp5061_get_array_index.exit.i41, %for.inc.i.1.i39.adp5061_set_min_voltage.exit_crit_edge
  %sub.i8.i42 = phi i32 [ %i.08.i.lcssa.i40, %adp5061_get_array_index.exit.i41 ], [ 24, %for.inc.i.1.i39.adp5061_set_min_voltage.exit_crit_edge ]
  %regmap.i43 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %regmap.i43 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i43, align 4
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 5, i32 noundef 24, i32 noundef %sub.i8.i42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %17)
  %cmp2.i.i45 = icmp slt i32 %17, 3400000
  br i1 %cmp2.i.i45, label %sw.bb6.adp5061_get_array_index.exit.i51_crit_edge, label %for.inc.i.i47

sw.bb6.adp5061_get_array_index.exit.i51_crit_edge: ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i51

for.inc.i.i47:                                    ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3700000, i32 %17)
  %cmp2.i.1.i46 = icmp ult i32 %17, 3700000
  br i1 %cmp2.i.1.i46, label %for.inc.i.i47.adp5061_get_array_index.exit.i51_crit_edge, label %for.inc.i.1.i49

for.inc.i.i47.adp5061_get_array_index.exit.i51_crit_edge: ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i51

for.inc.i.1.i49:                                  ; preds = %for.inc.i.i47
  call void @__sanitizer_cov_trace_const_cmp4(i32 3800000, i32 %17)
  %cmp2.i.2.i48 = icmp ult i32 %17, 3800000
  br i1 %cmp2.i.2.i48, label %for.inc.i.1.i49.adp5061_get_array_index.exit.i51_crit_edge, label %for.inc.i.1.i49.adp5061_set_const_chg_vmax.exit_crit_edge

for.inc.i.1.i49.adp5061_set_const_chg_vmax.exit_crit_edge: ; preds = %for.inc.i.1.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_const_chg_vmax.exit

for.inc.i.1.i49.adp5061_get_array_index.exit.i51_crit_edge: ; preds = %for.inc.i.1.i49
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i51

adp5061_get_array_index.exit.i51:                 ; preds = %for.inc.i.1.i49.adp5061_get_array_index.exit.i51_crit_edge, %for.inc.i.i47.adp5061_get_array_index.exit.i51_crit_edge, %sw.bb6.adp5061_get_array_index.exit.i51_crit_edge
  %i.08.i.lcssa.i50 = phi i32 [ 0, %sw.bb6.adp5061_get_array_index.exit.i51_crit_edge ], [ 1, %for.inc.i.i47.adp5061_get_array_index.exit.i51_crit_edge ], [ 2, %for.inc.i.1.i49.adp5061_get_array_index.exit.i51_crit_edge ]
  br label %adp5061_set_const_chg_vmax.exit

adp5061_set_const_chg_vmax.exit:                  ; preds = %adp5061_get_array_index.exit.i51, %for.inc.i.1.i49.adp5061_set_const_chg_vmax.exit_crit_edge
  %sub.i8.i52 = phi i32 [ %i.08.i.lcssa.i50, %adp5061_get_array_index.exit.i51 ], [ 3, %for.inc.i.1.i49.adp5061_set_const_chg_vmax.exit_crit_edge ]
  %regmap.i53 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i53 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i53, align 4
  %call.i.i54 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3, i32 noundef 3, i32 noundef %sub.i8.i52, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %div.i55 = sdiv i32 %21, 1000
  %22 = tail call i32 @llvm.smin.i32(i32 %div.i55, i32 1300) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %22)
  %cmp2.i.i56 = icmp slt i32 %22, 100
  br i1 %cmp2.i.i56, label %sw.bb8.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.i58

sw.bb8.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.i58:                                    ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_const_cmp4(i32 150, i32 %22)
  %cmp2.i.1.i57 = icmp ult i32 %22, 150
  br i1 %cmp2.i.1.i57, label %for.inc.i.i58.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.1.i60

for.inc.i.i58.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.1.i60:                                  ; preds = %for.inc.i.i58
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %22)
  %cmp2.i.2.i59 = icmp ult i32 %22, 200
  br i1 %cmp2.i.2.i59, label %for.inc.i.1.i60.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.2.i62

for.inc.i.1.i60.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.1.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.2.i62:                                  ; preds = %for.inc.i.1.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %22)
  %cmp2.i.3.i61 = icmp ult i32 %22, 250
  br i1 %cmp2.i.3.i61, label %for.inc.i.2.i62.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.3.i64

for.inc.i.2.i62.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.2.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.3.i64:                                  ; preds = %for.inc.i.2.i62
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %22)
  %cmp2.i.4.i63 = icmp ult i32 %22, 300
  br i1 %cmp2.i.4.i63, label %for.inc.i.3.i64.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.4.i66

for.inc.i.3.i64.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.3.i64
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.4.i66:                                  ; preds = %for.inc.i.3.i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 350, i32 %22)
  %cmp2.i.5.i65 = icmp ult i32 %22, 350
  br i1 %cmp2.i.5.i65, label %for.inc.i.4.i66.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.5.i68

for.inc.i.4.i66.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.4.i66
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.5.i68:                                  ; preds = %for.inc.i.4.i66
  call void @__sanitizer_cov_trace_const_cmp4(i32 400, i32 %22)
  %cmp2.i.6.i67 = icmp ult i32 %22, 400
  br i1 %cmp2.i.6.i67, label %for.inc.i.5.i68.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.6.i70

for.inc.i.5.i68.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.5.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.6.i70:                                  ; preds = %for.inc.i.5.i68
  call void @__sanitizer_cov_trace_const_cmp4(i32 450, i32 %22)
  %cmp2.i.7.i69 = icmp ult i32 %22, 450
  br i1 %cmp2.i.7.i69, label %for.inc.i.6.i70.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.7.i72

for.inc.i.6.i70.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.6.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.7.i72:                                  ; preds = %for.inc.i.6.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %22)
  %cmp2.i.8.i71 = icmp ult i32 %22, 500
  br i1 %cmp2.i.8.i71, label %for.inc.i.7.i72.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.8.i74

for.inc.i.7.i72.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.7.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.8.i74:                                  ; preds = %for.inc.i.7.i72
  call void @__sanitizer_cov_trace_const_cmp4(i32 550, i32 %22)
  %cmp2.i.9.i73 = icmp ult i32 %22, 550
  br i1 %cmp2.i.9.i73, label %for.inc.i.8.i74.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.9.i76

for.inc.i.8.i74.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.8.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.9.i76:                                  ; preds = %for.inc.i.8.i74
  call void @__sanitizer_cov_trace_const_cmp4(i32 600, i32 %22)
  %cmp2.i.10.i75 = icmp ult i32 %22, 600
  br i1 %cmp2.i.10.i75, label %for.inc.i.9.i76.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.10.i78

for.inc.i.9.i76.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.9.i76
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.10.i78:                                 ; preds = %for.inc.i.9.i76
  call void @__sanitizer_cov_trace_const_cmp4(i32 650, i32 %22)
  %cmp2.i.11.i77 = icmp ult i32 %22, 650
  br i1 %cmp2.i.11.i77, label %for.inc.i.10.i78.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.11.i80

for.inc.i.10.i78.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.10.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.11.i80:                                 ; preds = %for.inc.i.10.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 700, i32 %22)
  %cmp2.i.12.i79 = icmp ult i32 %22, 700
  br i1 %cmp2.i.12.i79, label %for.inc.i.11.i80.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.12.i82

for.inc.i.11.i80.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.11.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.12.i82:                                 ; preds = %for.inc.i.11.i80
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %22)
  %cmp2.i.13.i81 = icmp ult i32 %22, 750
  br i1 %cmp2.i.13.i81, label %for.inc.i.12.i82.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.13.i84

for.inc.i.12.i82.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.12.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.13.i84:                                 ; preds = %for.inc.i.12.i82
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %22)
  %cmp2.i.14.i83 = icmp ult i32 %22, 800
  br i1 %cmp2.i.14.i83, label %for.inc.i.13.i84.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.14.i

for.inc.i.13.i84.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.13.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.14.i:                                   ; preds = %for.inc.i.13.i84
  call void @__sanitizer_cov_trace_const_cmp4(i32 850, i32 %22)
  %cmp2.i.15.i = icmp ult i32 %22, 850
  br i1 %cmp2.i.15.i, label %for.inc.i.14.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.15.i

for.inc.i.14.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.15.i:                                   ; preds = %for.inc.i.14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %22)
  %cmp2.i.16.i = icmp ult i32 %22, 900
  br i1 %cmp2.i.16.i, label %for.inc.i.15.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.16.i

for.inc.i.15.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.16.i:                                   ; preds = %for.inc.i.15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 950, i32 %22)
  %cmp2.i.17.i = icmp ult i32 %22, 950
  br i1 %cmp2.i.17.i, label %for.inc.i.16.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.17.i

for.inc.i.16.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.17.i:                                   ; preds = %for.inc.i.16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %22)
  %cmp2.i.18.i = icmp ult i32 %22, 1000
  br i1 %cmp2.i.18.i, label %for.inc.i.17.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.18.i

for.inc.i.17.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.18.i:                                   ; preds = %for.inc.i.17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %22)
  %cmp2.i.19.i = icmp ult i32 %22, 1050
  br i1 %cmp2.i.19.i, label %for.inc.i.18.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.19.i

for.inc.i.18.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.19.i:                                   ; preds = %for.inc.i.18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100, i32 %22)
  %cmp2.i.20.i = icmp ult i32 %22, 1100
  br i1 %cmp2.i.20.i, label %for.inc.i.19.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.20.i

for.inc.i.19.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.20.i:                                   ; preds = %for.inc.i.19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %22)
  %cmp2.i.21.i = icmp ult i32 %22, 1200
  br i1 %cmp2.i.21.i, label %for.inc.i.20.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.21.i

for.inc.i.20.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

for.inc.i.21.i:                                   ; preds = %for.inc.i.20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1300000, i32 %21)
  %cmp2.i.22.i = icmp slt i32 %21, 1300000
  br i1 %cmp2.i.22.i, label %for.inc.i.21.i.adp5061_get_array_index.exit.i86_crit_edge, label %for.inc.i.21.i.adp5061_set_const_chg_current.exit_crit_edge

for.inc.i.21.i.adp5061_set_const_chg_current.exit_crit_edge: ; preds = %for.inc.i.21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_const_chg_current.exit

for.inc.i.21.i.adp5061_get_array_index.exit.i86_crit_edge: ; preds = %for.inc.i.21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i86

adp5061_get_array_index.exit.i86:                 ; preds = %for.inc.i.21.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.20.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.19.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.18.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.17.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.16.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.15.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.14.i.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.13.i84.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.12.i82.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.11.i80.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.10.i78.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.9.i76.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.8.i74.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.7.i72.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.6.i70.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.5.i68.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.4.i66.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.3.i64.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.2.i62.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.1.i60.adp5061_get_array_index.exit.i86_crit_edge, %for.inc.i.i58.adp5061_get_array_index.exit.i86_crit_edge, %sw.bb8.adp5061_get_array_index.exit.i86_crit_edge
  %i.08.i.lcssa.i85 = phi i32 [ 0, %sw.bb8.adp5061_get_array_index.exit.i86_crit_edge ], [ 4, %for.inc.i.i58.adp5061_get_array_index.exit.i86_crit_edge ], [ 8, %for.inc.i.1.i60.adp5061_get_array_index.exit.i86_crit_edge ], [ 12, %for.inc.i.2.i62.adp5061_get_array_index.exit.i86_crit_edge ], [ 16, %for.inc.i.3.i64.adp5061_get_array_index.exit.i86_crit_edge ], [ 20, %for.inc.i.4.i66.adp5061_get_array_index.exit.i86_crit_edge ], [ 24, %for.inc.i.5.i68.adp5061_get_array_index.exit.i86_crit_edge ], [ 28, %for.inc.i.6.i70.adp5061_get_array_index.exit.i86_crit_edge ], [ 32, %for.inc.i.7.i72.adp5061_get_array_index.exit.i86_crit_edge ], [ 36, %for.inc.i.8.i74.adp5061_get_array_index.exit.i86_crit_edge ], [ 40, %for.inc.i.9.i76.adp5061_get_array_index.exit.i86_crit_edge ], [ 44, %for.inc.i.10.i78.adp5061_get_array_index.exit.i86_crit_edge ], [ 48, %for.inc.i.11.i80.adp5061_get_array_index.exit.i86_crit_edge ], [ 52, %for.inc.i.12.i82.adp5061_get_array_index.exit.i86_crit_edge ], [ 56, %for.inc.i.13.i84.adp5061_get_array_index.exit.i86_crit_edge ], [ 60, %for.inc.i.14.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 64, %for.inc.i.15.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 68, %for.inc.i.16.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 72, %for.inc.i.17.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 76, %for.inc.i.18.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 80, %for.inc.i.19.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 84, %for.inc.i.20.i.adp5061_get_array_index.exit.i86_crit_edge ], [ 88, %for.inc.i.21.i.adp5061_get_array_index.exit.i86_crit_edge ]
  br label %adp5061_set_const_chg_current.exit

adp5061_set_const_chg_current.exit:               ; preds = %adp5061_get_array_index.exit.i86, %for.inc.i.21.i.adp5061_set_const_chg_current.exit_crit_edge
  %sub.i12.i = phi i32 [ %i.08.i.lcssa.i85, %adp5061_get_array_index.exit.i86 ], [ 92, %for.inc.i.21.i.adp5061_set_const_chg_current.exit_crit_edge ]
  %regmap.i87 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i87 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i87, align 4
  %call.i.i88 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 4, i32 noundef 124, i32 noundef %sub.i12.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %25 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %26)
  %cmp2.i.i89 = icmp slt i32 %26, 10000
  br i1 %cmp2.i.i89, label %sw.bb10.adp5061_get_array_index.exit.i95_crit_edge, label %for.inc.i.i91

sw.bb10.adp5061_get_array_index.exit.i95_crit_edge: ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i95

for.inc.i.i91:                                    ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %26)
  %cmp2.i.1.i90 = icmp ult i32 %26, 20000
  br i1 %cmp2.i.1.i90, label %for.inc.i.i91.adp5061_get_array_index.exit.i95_crit_edge, label %for.inc.i.1.i93

for.inc.i.i91.adp5061_get_array_index.exit.i95_crit_edge: ; preds = %for.inc.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i95

for.inc.i.1.i93:                                  ; preds = %for.inc.i.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %26)
  %cmp2.i.2.i92 = icmp ult i32 %26, 80000
  br i1 %cmp2.i.2.i92, label %for.inc.i.1.i93.adp5061_get_array_index.exit.i95_crit_edge, label %for.inc.i.1.i93.adp5061_set_prechg_current.exit_crit_edge

for.inc.i.1.i93.adp5061_set_prechg_current.exit_crit_edge: ; preds = %for.inc.i.1.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_prechg_current.exit

for.inc.i.1.i93.adp5061_get_array_index.exit.i95_crit_edge: ; preds = %for.inc.i.1.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i95

adp5061_get_array_index.exit.i95:                 ; preds = %for.inc.i.1.i93.adp5061_get_array_index.exit.i95_crit_edge, %for.inc.i.i91.adp5061_get_array_index.exit.i95_crit_edge, %sw.bb10.adp5061_get_array_index.exit.i95_crit_edge
  %i.08.i.lcssa.i94 = phi i32 [ 0, %sw.bb10.adp5061_get_array_index.exit.i95_crit_edge ], [ 1, %for.inc.i.i91.adp5061_get_array_index.exit.i95_crit_edge ], [ 2, %for.inc.i.1.i93.adp5061_get_array_index.exit.i95_crit_edge ]
  br label %adp5061_set_prechg_current.exit

adp5061_set_prechg_current.exit:                  ; preds = %adp5061_get_array_index.exit.i95, %for.inc.i.1.i93.adp5061_set_prechg_current.exit_crit_edge
  %sub.i8.i96 = phi i32 [ %i.08.i.lcssa.i94, %adp5061_get_array_index.exit.i95 ], [ 3, %for.inc.i.1.i93.adp5061_set_prechg_current.exit_crit_edge ]
  %regmap.i97 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %27 = ptrtoint ptr %regmap.i97 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i97, align 4
  %call.i.i98 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 4, i32 noundef 3, i32 noundef %sub.i8.i96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  %29 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2800000, i32 %30)
  %cmp2.i.i99 = icmp slt i32 %30, 2800000
  br i1 %cmp2.i.i99, label %sw.bb12.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.i101

sw.bb12.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.i101:                                   ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2900000, i32 %30)
  %cmp2.i.1.i100 = icmp ult i32 %30, 2900000
  br i1 %cmp2.i.1.i100, label %for.inc.i.i101.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.1.i103

for.inc.i.i101.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.1.i103:                                 ; preds = %for.inc.i.i101
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000000, i32 %30)
  %cmp2.i.2.i102 = icmp ult i32 %30, 3000000
  br i1 %cmp2.i.2.i102, label %for.inc.i.1.i103.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.2.i105

for.inc.i.1.i103.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.1.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.2.i105:                                 ; preds = %for.inc.i.1.i103
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %30)
  %cmp2.i.3.i104 = icmp ult i32 %30, 3100000
  br i1 %cmp2.i.3.i104, label %for.inc.i.2.i105.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.3.i107

for.inc.i.2.i105.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.2.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.3.i107:                                 ; preds = %for.inc.i.2.i105
  call void @__sanitizer_cov_trace_const_cmp4(i32 3200000, i32 %30)
  %cmp2.i.4.i106 = icmp ult i32 %30, 3200000
  br i1 %cmp2.i.4.i106, label %for.inc.i.3.i107.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.4.i109

for.inc.i.3.i107.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.3.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.4.i109:                                 ; preds = %for.inc.i.3.i107
  call void @__sanitizer_cov_trace_const_cmp4(i32 3300000, i32 %30)
  %cmp2.i.5.i108 = icmp ult i32 %30, 3300000
  br i1 %cmp2.i.5.i108, label %for.inc.i.4.i109.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.5.i111

for.inc.i.4.i109.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.4.i109
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

for.inc.i.5.i111:                                 ; preds = %for.inc.i.4.i109
  call void @__sanitizer_cov_trace_const_cmp4(i32 3400000, i32 %30)
  %cmp2.i.6.i110 = icmp ult i32 %30, 3400000
  br i1 %cmp2.i.6.i110, label %for.inc.i.5.i111.adp5061_get_array_index.exit.i113_crit_edge, label %for.inc.i.5.i111.adp5061_set_vweak_th.exit_crit_edge

for.inc.i.5.i111.adp5061_set_vweak_th.exit_crit_edge: ; preds = %for.inc.i.5.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_vweak_th.exit

for.inc.i.5.i111.adp5061_get_array_index.exit.i113_crit_edge: ; preds = %for.inc.i.5.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i113

adp5061_get_array_index.exit.i113:                ; preds = %for.inc.i.5.i111.adp5061_get_array_index.exit.i113_crit_edge, %for.inc.i.4.i109.adp5061_get_array_index.exit.i113_crit_edge, %for.inc.i.3.i107.adp5061_get_array_index.exit.i113_crit_edge, %for.inc.i.2.i105.adp5061_get_array_index.exit.i113_crit_edge, %for.inc.i.1.i103.adp5061_get_array_index.exit.i113_crit_edge, %for.inc.i.i101.adp5061_get_array_index.exit.i113_crit_edge, %sw.bb12.adp5061_get_array_index.exit.i113_crit_edge
  %i.08.i.lcssa.i112 = phi i32 [ 0, %sw.bb12.adp5061_get_array_index.exit.i113_crit_edge ], [ 1, %for.inc.i.i101.adp5061_get_array_index.exit.i113_crit_edge ], [ 2, %for.inc.i.1.i103.adp5061_get_array_index.exit.i113_crit_edge ], [ 3, %for.inc.i.2.i105.adp5061_get_array_index.exit.i113_crit_edge ], [ 4, %for.inc.i.3.i107.adp5061_get_array_index.exit.i113_crit_edge ], [ 5, %for.inc.i.4.i109.adp5061_get_array_index.exit.i113_crit_edge ], [ 6, %for.inc.i.5.i111.adp5061_get_array_index.exit.i113_crit_edge ]
  br label %adp5061_set_vweak_th.exit

adp5061_set_vweak_th.exit:                        ; preds = %adp5061_get_array_index.exit.i113, %for.inc.i.5.i111.adp5061_set_vweak_th.exit_crit_edge
  %sub.i8.i114 = phi i32 [ %i.08.i.lcssa.i112, %adp5061_get_array_index.exit.i113 ], [ 7, %for.inc.i.5.i111.adp5061_set_vweak_th.exit_crit_edge ]
  %regmap.i115 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %31 = ptrtoint ptr %regmap.i115 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i115, align 4
  %call.i.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 5, i32 noundef 7, i32 noundef %sub.i8.i114, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32500, i32 %34)
  %cmp2.i.i117 = icmp slt i32 %34, 32500
  br i1 %cmp2.i.i117, label %sw.bb14.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.i119

sw.bb14.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.i119:                                   ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp4(i32 52500, i32 %34)
  %cmp2.i.1.i118 = icmp ult i32 %34, 52500
  br i1 %cmp2.i.1.i118, label %for.inc.i.i119.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.1.i121

for.inc.i.i119.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.1.i121:                                 ; preds = %for.inc.i.i119
  call void @__sanitizer_cov_trace_const_cmp4(i32 72500, i32 %34)
  %cmp2.i.2.i120 = icmp ult i32 %34, 72500
  br i1 %cmp2.i.2.i120, label %for.inc.i.1.i121.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.2.i123

for.inc.i.1.i121.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.1.i121
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.2.i123:                                 ; preds = %for.inc.i.1.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 92500, i32 %34)
  %cmp2.i.3.i122 = icmp ult i32 %34, 92500
  br i1 %cmp2.i.3.i122, label %for.inc.i.2.i123.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.3.i125

for.inc.i.2.i123.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.2.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.3.i125:                                 ; preds = %for.inc.i.2.i123
  call void @__sanitizer_cov_trace_const_cmp4(i32 117500, i32 %34)
  %cmp2.i.4.i124 = icmp ult i32 %34, 117500
  br i1 %cmp2.i.4.i124, label %for.inc.i.3.i125.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.4.i127

for.inc.i.3.i125.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.3.i125
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.4.i127:                                 ; preds = %for.inc.i.3.i125
  call void @__sanitizer_cov_trace_const_cmp4(i32 142500, i32 %34)
  %cmp2.i.5.i126 = icmp ult i32 %34, 142500
  br i1 %cmp2.i.5.i126, label %for.inc.i.4.i127.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.5.i129

for.inc.i.4.i127.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.4.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

for.inc.i.5.i129:                                 ; preds = %for.inc.i.4.i127
  call void @__sanitizer_cov_trace_const_cmp4(i32 170000, i32 %34)
  %cmp2.i.6.i128 = icmp ult i32 %34, 170000
  br i1 %cmp2.i.6.i128, label %for.inc.i.5.i129.adp5061_get_array_index.exit.i131_crit_edge, label %for.inc.i.5.i129.adp5061_set_termination_current.exit_crit_edge

for.inc.i.5.i129.adp5061_set_termination_current.exit_crit_edge: ; preds = %for.inc.i.5.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_set_termination_current.exit

for.inc.i.5.i129.adp5061_get_array_index.exit.i131_crit_edge: ; preds = %for.inc.i.5.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %adp5061_get_array_index.exit.i131

adp5061_get_array_index.exit.i131:                ; preds = %for.inc.i.5.i129.adp5061_get_array_index.exit.i131_crit_edge, %for.inc.i.4.i127.adp5061_get_array_index.exit.i131_crit_edge, %for.inc.i.3.i125.adp5061_get_array_index.exit.i131_crit_edge, %for.inc.i.2.i123.adp5061_get_array_index.exit.i131_crit_edge, %for.inc.i.1.i121.adp5061_get_array_index.exit.i131_crit_edge, %for.inc.i.i119.adp5061_get_array_index.exit.i131_crit_edge, %sw.bb14.adp5061_get_array_index.exit.i131_crit_edge
  %i.08.i.lcssa.i130 = phi i32 [ 0, %sw.bb14.adp5061_get_array_index.exit.i131_crit_edge ], [ 32, %for.inc.i.i119.adp5061_get_array_index.exit.i131_crit_edge ], [ 64, %for.inc.i.1.i121.adp5061_get_array_index.exit.i131_crit_edge ], [ 96, %for.inc.i.2.i123.adp5061_get_array_index.exit.i131_crit_edge ], [ 128, %for.inc.i.3.i125.adp5061_get_array_index.exit.i131_crit_edge ], [ 160, %for.inc.i.4.i127.adp5061_get_array_index.exit.i131_crit_edge ], [ 192, %for.inc.i.5.i129.adp5061_get_array_index.exit.i131_crit_edge ]
  br label %adp5061_set_termination_current.exit

adp5061_set_termination_current.exit:             ; preds = %adp5061_get_array_index.exit.i131, %for.inc.i.5.i129.adp5061_set_termination_current.exit_crit_edge
  %sub.i7.i = phi i32 [ %i.08.i.lcssa.i130, %adp5061_get_array_index.exit.i131 ], [ 224, %for.inc.i.5.i129.adp5061_set_termination_current.exit_crit_edge ]
  %regmap.i132 = getelementptr inbounds %struct.adp5061_state, ptr %call, i32 0, i32 1
  %35 = ptrtoint ptr %regmap.i132 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i132, align 4
  %call.i.i133 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 17, i32 noundef 224, i32 noundef %sub.i7.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %adp5061_set_termination_current.exit, %adp5061_set_vweak_th.exit, %adp5061_set_prechg_current.exit, %adp5061_set_const_chg_current.exit, %adp5061_set_const_chg_vmax.exit, %adp5061_set_min_voltage.exit, %adp5061_set_max_voltage.exit, %adp5061_set_input_current_limit.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i133, %adp5061_set_termination_current.exit ], [ %call.i.i116, %adp5061_set_vweak_th.exit ], [ %call.i.i98, %adp5061_set_prechg_current.exit ], [ %call.i.i88, %adp5061_set_const_chg_current.exit ], [ %call.i.i54, %adp5061_set_const_chg_vmax.exit ], [ %call.i.i44, %adp5061_set_min_voltage.exit ], [ %call.i.i34, %adp5061_set_max_voltage.exit ], [ %call.i.i, %adp5061_set_input_current_limit.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @adp5061_prop_writeable(ptr nocapture noundef readnone %psy, i32 noundef %psp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %psp, label %sw.default [
    i32 38, label %entry.return_crit_edge
    i32 8, label %entry.return_crit_edge1
    i32 9, label %entry.return_crit_edge2
    i32 32, label %entry.return_crit_edge3
    i32 29, label %entry.return_crit_edge4
    i32 67, label %entry.return_crit_edge5
    i32 13, label %entry.return_crit_edge6
    i32 68, label %entry.return_crit_edge7
  ]

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

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7
  %retval.0 = phi i32 [ 0, %sw.default ], [ 1, %entry.return_crit_edge ], [ 1, %entry.return_crit_edge1 ], [ 1, %entry.return_crit_edge2 ], [ 1, %entry.return_crit_edge3 ], [ 1, %entry.return_crit_edge4 ], [ 1, %entry.return_crit_edge5 ], [ 1, %entry.return_crit_edge6 ], [ 1, %entry.return_crit_edge7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_adp5061__288_740_adp5061_driver_init6, !1, !"__initcall__kmod_adp5061__288_740_adp5061_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/adp5061.c", i32 740, i32 1}
!2 = !{ptr @__exitcall_adp5061_driver_exit, !1, !"__exitcall_adp5061_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description289, !4, !"__UNIQUE_ID_description289", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/adp5061.c", i32 742, i32 1}
!5 = !{ptr @__UNIQUE_ID_author290, !6, !"__UNIQUE_ID_author290", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/adp5061.c", i32 743, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/adp5061.c", i32 744, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/power/supply/adp5061.c", i32 735, i32 11}
!12 = !{ptr @adp5061_driver, !13, !"adp5061_driver", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/adp5061.c", i32 733, i32 26}
!14 = !{ptr @adp5061_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/adp5061.c", i32 705, i32 15}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/power/supply/adp5061.c", i32 708, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adp5061_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @adp5061_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/power/supply/adp5061.c", i32 720, i32 3}
!27 = !{ptr @adp5061_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @adp5061_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @adp5061_regmap_config, !30, !"adp5061_regmap_config", i1 false, i1 false}
!30 = !{!"../drivers/power/supply/adp5061.c", i32 679, i32 35}
!31 = !{ptr @adp5061_desc, !32, !"adp5061_desc", i1 false, i1 false}
!32 = !{!"../drivers/power/supply/adp5061.c", i32 684, i32 39}
!33 = !{ptr @adp5061_props, !34, !"adp5061_props", i1 false, i1 false}
!34 = !{!"../drivers/power/supply/adp5061.c", i32 664, i32 35}
!35 = !{ptr @adp5061_chg_type, !36, !"adp5061_chg_type", i1 false, i1 false}
!36 = !{!"../drivers/power/supply/adp5061.c", i32 95, i32 18}
!37 = !{ptr @adp5061_in_current_lim, !38, !"adp5061_in_current_lim", i1 false, i1 false}
!38 = !{!"../drivers/power/supply/adp5061.c", i32 130, i32 18}
!39 = !{ptr @adp5061_vmax, !40, !"adp5061_vmax", i1 false, i1 false}
!40 = !{!"../drivers/power/supply/adp5061.c", i32 123, i32 18}
!41 = !{ptr @adp5061_vmin, !42, !"adp5061_vmin", i1 false, i1 false}
!42 = !{!"../drivers/power/supply/adp5061.c", i32 110, i32 18}
!43 = !{ptr @adp5061_const_chg_vmax, !44, !"adp5061_const_chg_vmax", i1 false, i1 false}
!44 = !{!"../drivers/power/supply/adp5061.c", i32 114, i32 18}
!45 = !{ptr @adp5061_const_ichg, !46, !"adp5061_const_ichg", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/adp5061.c", i32 118, i32 18}
!47 = !{ptr @adp5061_prechg_current, !48, !"adp5061_prechg_current", i1 false, i1 false}
!48 = !{!"../drivers/power/supply/adp5061.c", i32 106, i32 18}
!49 = !{ptr @adp5061_vweak_th, !50, !"adp5061_vweak_th", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/adp5061.c", i32 102, i32 18}
!51 = !{ptr @adp5061_iend, !52, !"adp5061_iend", i1 false, i1 false}
!52 = !{!"../drivers/power/supply/adp5061.c", i32 135, i32 18}
!53 = !{ptr @adp5061_id, !54, !"adp5061_id", i1 false, i1 false}
!54 = !{!"../drivers/power/supply/adp5061.c", i32 727, i32 35}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{!"auto-init"}
