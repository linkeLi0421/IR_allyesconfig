; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm95245.c_pt.bc'
source_filename = "../drivers/hwmon/lm95245.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.lm95245_data = type { ptr, %struct.mutex, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm95245__308_606_lm95245_driver_init6 = internal global ptr @lm95245_driver_init, section ".initcall6.init", align 4
@lm95245_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm95245_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm95245_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm95245_id, ptr @lm95245_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm95245_driver_exit = internal global ptr @lm95245_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [71 x i8] c"lm95245.author=Alexander Stein <alexander.stein@systec-electronic.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [50 x i8] c"lm95245.description=LM95235/LM95245 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [35 x i8] c"lm95245.file=drivers/hwmon/lm95245\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [20 x i8] c"lm95245.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95245\00", [24 x i8] zeroinitializer }, align 32
@lm95245_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm95235\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm95245\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lm95245_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm95235\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm95245\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 24, i16 25, i16 41, i16 76, i16 77, i16 -2], [20 x i8] zeroinitializer }, align 32
@lm95245_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lm95245_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr @lm95245_is_writeable_reg, ptr null, ptr @lm95245_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"lm95245:561:(&lm95245_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@lm95245_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm95245_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @lm95245_hwmon_ops, ptr @lm95245_info }, [24 x i8] zeroinitializer }, align 32
@lm95245_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @lm95245_is_visible, ptr @lm95245_read, ptr null, ptr @lm95245_write }, [16 x i8] zeroinitializer }, align 32
@lm95245_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.3, ptr @.compoundliteral.5, ptr null], [20 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 132610, i32 1771398, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.4 }, [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95235\00", [24 x i8] zeroinitializer }, align 32
@switch.table.lm95245_probe = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 63, i32 364, i32 1000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 177, i64 179]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 16, i64 24, i64 41, i64 76]
@__sancov_gen_cov_switch_values.8 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 7, i64 15, i64 17, i64 18, i64 25, i64 32, i64 33, i64 191]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 16, i64 48, i64 49, i64 50, i64 51]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.11 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [12 x i64] [i64 10, i64 32, i64 1, i64 2, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 19, i64 20]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 7, i64 9, i64 10, i64 20]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"lm95245_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 594, i32 26 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 597, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"lm95245_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 587, i32 49 }
@___asan_gen_.25 = private unnamed_addr constant [11 x i8] c"lm95245_id\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 580, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 20, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"lm95245_regmap_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 516, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 561, i32 17 }
@___asan_gen_.40 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 565, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [18 x i8] c"lm95245_chip_info\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 545, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"lm95245_hwmon_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 539, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"lm95245_info\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 526, i32 41 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [27 x i8] c"../drivers/hwmon/lm95245.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 455, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant [27 x i8] c"switch.table.lm95245_probe\00", align 1
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_lm95245_driver_exit, ptr @__initcall__kmod_lm95245__308_606_lm95245_driver_init6, ptr @lm95245_driver_exit, ptr @lm95245_driver, ptr @.str, ptr @lm95245_of_match, ptr @lm95245_id, ptr @normal_i2c, ptr @lm95245_probe._key, ptr @lm95245_regmap_config, ptr @.str.1, ptr @lm95245_probe.__key, ptr @.str.2, ptr @lm95245_chip_info, ptr @lm95245_hwmon_ops, ptr @lm95245_info, ptr @.compoundliteral, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @switch.table.lm95245_probe], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95245_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.lm95245_probe to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95245_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm95245_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm95245_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lm95245_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95245_probe(ptr noundef %client) #2 align 64 {
entry:
  %rate.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 100, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @lm95245_regmap_config, ptr noundef nonnull @lm95245_probe._key, ptr noundef nonnull @.str.1) #7
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.lm95245_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @lm95245_probe.__key) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i.i) #7
  %2 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %rate.i.i, align 4, !annotation !45
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call.i, align 4
  %call.i.i = call i32 @regmap_read(ptr noundef %4, i32 noundef 4, ptr noundef nonnull %rate.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %lm95245_init_client.exit.thread, label %if.end.i.i

lm95245_init_client.exit.thread:                  ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i) #7
  br label %cleanup

if.end.i.i:                                       ; preds = %do.body
  %5 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %7 = icmp ult i32 %6, 3
  br i1 %7, label %switch.lookup, label %if.end.i.i.lm95245_init_client.exit_crit_edge

if.end.i.i.lm95245_init_client.exit_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_init_client.exit

switch.lookup:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.lm95245_probe, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %lm95245_init_client.exit

lm95245_init_client.exit:                         ; preds = %switch.lookup, %if.end.i.i.lm95245_init_client.exit_crit_edge
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2500, %if.end.i.i.lm95245_init_client.exit_crit_edge ]
  %interval.i.i = getelementptr inbounds %struct.lm95245_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink.i.i, ptr %interval.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i.i) #7
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call.i4.i = call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 3, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i)
  %cmp = icmp slt i32 %call.i4.i, 0
  br i1 %cmp, label %lm95245_init_client.exit.cleanup_crit_edge, label %if.end11

lm95245_init_client.exit.cleanup_crit_edge:       ; preds = %lm95245_init_client.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %lm95245_init_client.exit
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call12 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @lm95245_chip_info, ptr noundef null) #7
  %cmp.i.i27 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %12 = ptrtoint ptr %call12 to i32
  %spec.select.i = select i1 %cmp.i.i27, i32 %12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lm95245_init_client.exit.cleanup_crit_edge, %lm95245_init_client.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %spec.select.i, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i4.i, %lm95245_init_client.exit.cleanup_crit_edge ], [ %call.i.i, %lm95245_init_client.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95245_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -1) #7
  %8 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end5.cleanup_crit_edge [
    i32 177, label %sw.bb
    i32 179, label %if.end5.sw.epilog_crit_edge
  ]

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %9 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %3, label %sw.bb.cleanup_crit_edge [
    i16 24, label %sw.bb.sw.epilog_crit_edge
    i16 41, label %sw.bb.sw.epilog_crit_edge27
    i16 76, label %sw.bb.sw.epilog_crit_edge28
  ]

sw.bb.sw.epilog_crit_edge28:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge27:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge27, %sw.bb.sw.epilog_crit_edge28, %if.end5.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.6, %sw.bb.sw.epilog_crit_edge ], [ @.str.6, %sw.bb.sw.epilog_crit_edge27 ], [ @.str.6, %sw.bb.sw.epilog_crit_edge28 ], [ @.str, %if.end5.sw.epilog_crit_edge ]
  %call17 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm95245_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %reg, label %sw.default [
    i32 3, label %entry.return_crit_edge
    i32 4, label %entry.return_crit_edge1
    i32 15, label %entry.return_crit_edge2
    i32 191, label %entry.return_crit_edge3
    i32 17, label %entry.return_crit_edge4
    i32 18, label %entry.return_crit_edge5
    i32 7, label %entry.return_crit_edge6
    i32 32, label %entry.return_crit_edge7
    i32 25, label %entry.return_crit_edge8
    i32 33, label %entry.return_crit_edge9
  ]

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @lm95245_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %reg, label %sw.default [
    i32 2, label %entry.return_crit_edge
    i32 51, label %entry.return_crit_edge1
    i32 0, label %entry.return_crit_edge2
    i32 48, label %entry.return_crit_edge3
    i32 1, label %entry.return_crit_edge4
    i32 16, label %entry.return_crit_edge5
    i32 49, label %entry.return_crit_edge6
    i32 50, label %entry.return_crit_edge7
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
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm95245_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  %. = select i1 %cond, i16 420, i16 0
  br label %return

sw.bb2:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %attr, label %sw.default.i [
    i32 1, label %sw.bb2.return_crit_edge
    i32 16, label %sw.bb2.return_crit_edge5
    i32 8, label %sw.bb2.return_crit_edge6
    i32 17, label %sw.bb2.return_crit_edge7
    i32 19, label %sw.bb2.return_crit_edge8
    i32 2, label %sw.bb2.sw.bb1.i_crit_edge
    i32 7, label %sw.bb2.sw.bb1.i_crit_edge9
    i32 9, label %sw.bb2.sw.bb1.i_crit_edge10
    i32 20, label %sw.bb2.sw.bb1.i_crit_edge11
    i32 10, label %sw.bb2.i
  ]

sw.bb2.sw.bb1.i_crit_edge11:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb2.sw.bb1.i_crit_edge10:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb2.sw.bb1.i_crit_edge9:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb2.sw.bb1.i_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb2.return_crit_edge8:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.return_crit_edge7:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.return_crit_edge6:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.return_crit_edge5:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb1.i:                                         ; preds = %sw.bb2.sw.bb1.i_crit_edge, %sw.bb2.sw.bb1.i_crit_edge9, %sw.bb2.sw.bb1.i_crit_edge10, %sw.bb2.sw.bb1.i_crit_edge11
  br label %return

sw.bb2.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  %conv.i = select i1 %cmp.i, i16 420, i16 292
  br label %return

sw.default.i:                                     ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %sw.bb2.return_crit_edge, %sw.bb2.return_crit_edge5, %sw.bb2.return_crit_edge6, %sw.bb2.return_crit_edge7, %sw.bb2.return_crit_edge8, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %., %sw.bb ], [ 0, %entry.return_crit_edge ], [ 0, %sw.default.i ], [ %conv.i, %sw.bb2.i ], [ 420, %sw.bb1.i ], [ 292, %sw.bb2.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge5 ], [ 292, %sw.bb2.return_crit_edge6 ], [ 292, %sw.bb2.return_crit_edge7 ], [ 292, %sw.bb2.return_crit_edge8 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95245_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regvall.i = alloca i32, align 4
  %regvalh.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %interval.i = getelementptr inbounds %struct.lm95245_data, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %interval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interval.i, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvall.i) #7
  %10 = ptrtoint ptr %regvall.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %regvall.i, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regvalh.i) #7
  %11 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regvalh.i, align 4, !annotation !45
  %12 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %attr, label %sw.bb1.lm95245_read_temp.exit_crit_edge [
    i32 1, label %sw.bb.i9
    i32 7, label %sw.bb30.i
    i32 9, label %sw.bb36.i
    i32 8, label %sw.bb45.i
    i32 10, label %sw.bb57.i
    i32 2, label %sw.bb72.i
    i32 20, label %sw.bb81.i
    i32 16, label %sw.bb95.i
    i32 17, label %sw.bb104.i
    i32 19, label %sw.bb118.i
  ]

sw.bb1.lm95245_read_temp.exit_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

sw.bb.i9:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %cond.i8 = select i1 %tobool.not.i, i32 48, i32 16
  %call4.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %cond.i8, ptr noundef nonnull %regvall.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %sw.bb.i9.lm95245_read_temp.exit_crit_edge, label %if.end.i

sw.bb.i9.lm95245_read_temp.exit_crit_edge:        ; preds = %sw.bb.i9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end.i:                                         ; preds = %sw.bb.i9
  %not.tobool.not.i = xor i1 %tobool.not.i, true
  %cond3.i = zext i1 %not.tobool.not.i to i32
  %call5.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %cond3.i, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.lm95245_read_temp.exit_crit_edge, label %if.end8.i

if.end.i.lm95245_read_temp.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end8.i:                                        ; preds = %if.end.i
  br i1 %tobool.not.i, label %if.end8.i.if.then13.i_crit_edge, label %lor.lhs.false.i

if.end8.i.if.then13.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

lor.lhs.false.i:                                  ; preds = %if.end8.i
  %13 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %regvalh.i, align 4
  %and.i = and i32 %14, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %14)
  %cmp12.i = icmp slt i32 %14, 127
  %or.cond.i = or i1 %cmp12.i, %tobool10.not.i
  br i1 %or.cond.i, label %lor.lhs.false.i.if.then13.i_crit_edge, label %if.end16.i

lor.lhs.false.i.if.then13.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false.i.if.then13.i_crit_edge, %if.end8.i.if.then13.i_crit_edge
  %15 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %regvalh.i, align 4
  %and.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i.i = or i32 %16, -256
  %mul.i.i = mul nsw i32 %sub.i.i, 1000
  br label %cleanup.sink.split.i

if.end.i.i:                                       ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i = and i32 %16, 255
  %17 = ptrtoint ptr %regvall.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regvall.i, align 4
  %mul.i.i.i = mul nuw nsw i32 %conv.i.i, 1000
  %conv1.i.i.i = and i32 %18, 255
  %mul2.i.i.i = mul nuw nsw i32 %conv1.i.i.i, 1000
  %div3.i.i.i = lshr i32 %mul2.i.i.i, 8
  %add.i.i.i = add nuw nsw i32 %div3.i.i.i, %mul.i.i.i
  br label %cleanup.sink.split.i

if.end16.i:                                       ; preds = %lor.lhs.false.i
  %call17.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 50, ptr noundef nonnull %regvall.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.end16.i.lm95245_read_temp.exit_crit_edge, label %if.end21.i

if.end16.i.lm95245_read_temp.exit_crit_edge:      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end21.i:                                       ; preds = %if.end16.i
  %call22.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 49, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %cmp23.i = icmp slt i32 %call22.i, 0
  br i1 %cmp23.i, label %if.end21.i.lm95245_read_temp.exit_crit_edge, label %if.end26.i

if.end21.i.lm95245_read_temp.exit_crit_edge:      ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regvalh.i, align 4
  %21 = ptrtoint ptr %regvall.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %regvall.i, align 4
  %conv.i199.i = and i32 %20, 255
  %mul.i200.i = mul nuw nsw i32 %conv.i199.i, 1000
  %conv1.i.i = and i32 %22, 255
  %mul2.i.i = mul nuw nsw i32 %conv1.i.i, 1000
  %div3.i.i = lshr i32 %mul2.i.i, 8
  %add.i.i = add nuw nsw i32 %div3.i.i, %mul.i200.i
  br label %cleanup.sink.split.i

sw.bb30.i:                                        ; preds = %sw.bb1
  %call31.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 7, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %sw.bb30.i.lm95245_read_temp.exit_crit_edge, label %if.end35.i

sw.bb30.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end35.i:                                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %regvalh.i, align 4
  %mul.i = mul i32 %24, 1000
  br label %cleanup.sink.split.i

sw.bb36.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool37.not.i = icmp eq i32 %channel, 0
  %cond38.i = select i1 %tobool37.not.i, i32 32, i32 25
  %call39.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %cond38.i, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %cmp40.i = icmp slt i32 %call39.i, 0
  br i1 %cmp40.i, label %sw.bb36.i.lm95245_read_temp.exit_crit_edge, label %if.end43.i

sw.bb36.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end43.i:                                       ; preds = %sw.bb36.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regvalh.i, align 4
  %mul44.i = mul i32 %26, 1000
  br label %cleanup.sink.split.i

sw.bb45.i:                                        ; preds = %sw.bb1
  %call46.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 7, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %sw.bb45.i.lm95245_read_temp.exit_crit_edge, label %if.end50.i

sw.bb45.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end50.i:                                       ; preds = %sw.bb45.i
  %call51.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 33, ptr noundef nonnull %regvall.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %cmp52.i = icmp slt i32 %call51.i, 0
  br i1 %cmp52.i, label %if.end50.i.lm95245_read_temp.exit_crit_edge, label %if.end55.i

if.end50.i.lm95245_read_temp.exit_crit_edge:      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end55.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regvalh.i, align 4
  %29 = ptrtoint ptr %regvall.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %regvall.i, align 4
  %sub.i = sub i32 %28, %30
  %mul56.i = mul i32 %sub.i, 1000
  br label %cleanup.sink.split.i

sw.bb57.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool58.not.i = icmp eq i32 %channel, 0
  %cond59.i = select i1 %tobool58.not.i, i32 32, i32 25
  %call60.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %cond59.i, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60.i)
  %cmp61.i = icmp slt i32 %call60.i, 0
  br i1 %cmp61.i, label %sw.bb57.i.lm95245_read_temp.exit_crit_edge, label %if.end64.i

sw.bb57.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end64.i:                                       ; preds = %sw.bb57.i
  %call65.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 33, ptr noundef nonnull %regvall.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %cmp66.i = icmp slt i32 %call65.i, 0
  br i1 %cmp66.i, label %if.end64.i.lm95245_read_temp.exit_crit_edge, label %if.end69.i

if.end64.i.lm95245_read_temp.exit_crit_edge:      ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end69.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %regvalh.i, align 4
  %33 = ptrtoint ptr %regvall.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %regvall.i, align 4
  %sub70.i = sub i32 %32, %34
  %mul71.i = mul i32 %sub70.i, 1000
  br label %cleanup.sink.split.i

sw.bb72.i:                                        ; preds = %sw.bb1
  %call73.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 191, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %sw.bb72.i.lm95245_read_temp.exit_crit_edge, label %if.end77.i

sw.bb72.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end77.i:                                       ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %regvalh.i, align 4
  %and78.i = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78.i)
  %tobool79.not.i = icmp eq i32 %and78.i, 0
  %cond80.i = select i1 %tobool79.not.i, i32 2, i32 1
  br label %cleanup.sink.split.i

sw.bb81.i:                                        ; preds = %sw.bb1
  %call82.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 18, ptr noundef nonnull %regvall.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.i = icmp slt i32 %call82.i, 0
  br i1 %cmp83.i, label %sw.bb81.i.lm95245_read_temp.exit_crit_edge, label %if.end86.i

sw.bb81.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end86.i:                                       ; preds = %sw.bb81.i
  %call87.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 17, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %cmp88.i = icmp slt i32 %call87.i, 0
  br i1 %cmp88.i, label %if.end86.i.lm95245_read_temp.exit_crit_edge, label %if.end91.i

if.end86.i.lm95245_read_temp.exit_crit_edge:      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end91.i:                                       ; preds = %if.end86.i
  %37 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %regvalh.i, align 4
  %and.i202.i = and i32 %38, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i202.i)
  %tobool.not.i203.i = icmp eq i32 %and.i202.i, 0
  br i1 %tobool.not.i203.i, label %if.end.i212.i, label %if.then.i206.i

if.then.i206.i:                                   ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i204.i = or i32 %38, -256
  %mul.i205.i = mul nsw i32 %sub.i204.i, 1000
  br label %cleanup.sink.split.i

if.end.i212.i:                                    ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i201.i = and i32 %38, 255
  %39 = ptrtoint ptr %regvall.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %regvall.i, align 4
  %mul.i.i207.i = mul nuw nsw i32 %conv.i201.i, 1000
  %conv1.i.i208.i = and i32 %40, 255
  %mul2.i.i209.i = mul nuw nsw i32 %conv1.i.i208.i, 1000
  %div3.i.i210.i = lshr i32 %mul2.i.i209.i, 8
  %add.i.i211.i = add nuw nsw i32 %div3.i.i210.i, %mul.i.i207.i
  br label %cleanup.sink.split.i

sw.bb95.i:                                        ; preds = %sw.bb1
  %call96.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %cmp97.i = icmp slt i32 %call96.i, 0
  br i1 %cmp97.i, label %sw.bb95.i.lm95245_read_temp.exit_crit_edge, label %if.end100.i

sw.bb95.i.lm95245_read_temp.exit_crit_edge:       ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end100.i:                                      ; preds = %sw.bb95.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %regvalh.i, align 4
  %and101.i = lshr i32 %42, 4
  %and101.lobit.i = and i32 %and101.i, 1
  br label %cleanup.sink.split.i

sw.bb104.i:                                       ; preds = %sw.bb1
  %call105.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105.i)
  %cmp106.i = icmp slt i32 %call105.i, 0
  br i1 %cmp106.i, label %sw.bb104.i.lm95245_read_temp.exit_crit_edge, label %if.end109.i

sw.bb104.i.lm95245_read_temp.exit_crit_edge:      ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end109.i:                                      ; preds = %sw.bb104.i
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %regvalh.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool110.not.i = icmp eq i32 %channel, 0
  %cond111.i = select i1 %tobool110.not.i, i32 1, i32 2
  %and112.i = and i32 %44, %cond111.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i)
  %tobool113.i = icmp ne i32 %and112.i, 0
  %lnot.ext117.i = zext i1 %tobool113.i to i32
  br label %cleanup.sink.split.i

sw.bb118.i:                                       ; preds = %sw.bb1
  %call119.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 2, ptr noundef nonnull %regvalh.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %cmp120.i = icmp slt i32 %call119.i, 0
  br i1 %cmp120.i, label %sw.bb118.i.lm95245_read_temp.exit_crit_edge, label %if.end123.i

sw.bb118.i.lm95245_read_temp.exit_crit_edge:      ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_read_temp.exit

if.end123.i:                                      ; preds = %sw.bb118.i
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %regvalh.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %regvalh.i, align 4
  %and124.i = lshr i32 %46, 2
  %and124.lobit.i = and i32 %and124.i, 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.end123.i, %if.end109.i, %if.end100.i, %if.end.i212.i, %if.then.i206.i, %if.end77.i, %if.end69.i, %if.end55.i, %if.end43.i, %if.end35.i, %if.end26.i, %if.end.i.i, %if.then.i.i
  %and124.lobit.sink.i = phi i32 [ %and124.lobit.i, %if.end123.i ], [ %lnot.ext117.i, %if.end109.i ], [ %and101.lobit.i, %if.end100.i ], [ %cond80.i, %if.end77.i ], [ %mul71.i, %if.end69.i ], [ %mul56.i, %if.end55.i ], [ %mul44.i, %if.end43.i ], [ %mul.i, %if.end35.i ], [ %add.i.i, %if.end26.i ], [ %mul.i.i, %if.then.i.i ], [ %add.i.i.i, %if.end.i.i ], [ %mul.i205.i, %if.then.i206.i ], [ %add.i.i211.i, %if.end.i212.i ]
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and124.lobit.sink.i, ptr %val, align 4
  br label %lm95245_read_temp.exit

lm95245_read_temp.exit:                           ; preds = %cleanup.sink.split.i, %sw.bb118.i.lm95245_read_temp.exit_crit_edge, %sw.bb104.i.lm95245_read_temp.exit_crit_edge, %sw.bb95.i.lm95245_read_temp.exit_crit_edge, %if.end86.i.lm95245_read_temp.exit_crit_edge, %sw.bb81.i.lm95245_read_temp.exit_crit_edge, %sw.bb72.i.lm95245_read_temp.exit_crit_edge, %if.end64.i.lm95245_read_temp.exit_crit_edge, %sw.bb57.i.lm95245_read_temp.exit_crit_edge, %if.end50.i.lm95245_read_temp.exit_crit_edge, %sw.bb45.i.lm95245_read_temp.exit_crit_edge, %sw.bb36.i.lm95245_read_temp.exit_crit_edge, %sw.bb30.i.lm95245_read_temp.exit_crit_edge, %if.end21.i.lm95245_read_temp.exit_crit_edge, %if.end16.i.lm95245_read_temp.exit_crit_edge, %if.end.i.lm95245_read_temp.exit_crit_edge, %sw.bb.i9.lm95245_read_temp.exit_crit_edge, %sw.bb1.lm95245_read_temp.exit_crit_edge
  %retval.0.i10 = phi i32 [ %call4.i, %sw.bb.i9.lm95245_read_temp.exit_crit_edge ], [ %call5.i, %if.end.i.lm95245_read_temp.exit_crit_edge ], [ %call17.i, %if.end16.i.lm95245_read_temp.exit_crit_edge ], [ %call22.i, %if.end21.i.lm95245_read_temp.exit_crit_edge ], [ %call31.i, %sw.bb30.i.lm95245_read_temp.exit_crit_edge ], [ %call39.i, %sw.bb36.i.lm95245_read_temp.exit_crit_edge ], [ %call46.i, %sw.bb45.i.lm95245_read_temp.exit_crit_edge ], [ %call51.i, %if.end50.i.lm95245_read_temp.exit_crit_edge ], [ %call60.i, %sw.bb57.i.lm95245_read_temp.exit_crit_edge ], [ %call65.i, %if.end64.i.lm95245_read_temp.exit_crit_edge ], [ %call73.i, %sw.bb72.i.lm95245_read_temp.exit_crit_edge ], [ %call82.i, %sw.bb81.i.lm95245_read_temp.exit_crit_edge ], [ %call87.i, %if.end86.i.lm95245_read_temp.exit_crit_edge ], [ %call96.i, %sw.bb95.i.lm95245_read_temp.exit_crit_edge ], [ %call105.i, %sw.bb104.i.lm95245_read_temp.exit_crit_edge ], [ %call119.i, %sw.bb118.i.lm95245_read_temp.exit_crit_edge ], [ -95, %sw.bb1.lm95245_read_temp.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvalh.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regvall.i) #7
  br label %return

return:                                           ; preds = %lm95245_read_temp.exit, %sw.bb.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i10, %lm95245_read_temp.exit ], [ -95, %entry.return_crit_edge ], [ 0, %sw.bb.i ], [ -95, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95245_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond.i = icmp eq i32 %attr, 5
  br i1 %cond.i, label %sw.bb.i, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %sw.bb
  %update_lock.i = getelementptr inbounds %struct.lm95245_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %val)
  %cmp.i.i = icmp slt i32 %val, 64
  br i1 %cmp.i.i, label %sw.bb.i.if.end8.i.i_crit_edge, label %if.else.i.i

sw.bb.i.if.end8.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 365, i32 %val)
  %cmp1.i.i = icmp ult i32 %val, 365
  br i1 %cmp1.i.i, label %if.else.i.i.if.end8.i.i_crit_edge, label %if.else3.i.i

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else3.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1001, i32 %val)
  %cmp4.i.i = icmp ult i32 %val, 1001
  %..i.i = select i1 %cmp4.i.i, i32 1000, i32 2500
  %.19.i.i = select i1 %cmp4.i.i, i32 2, i32 3
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else3.i.i, %if.else.i.i.if.end8.i.i_crit_edge, %sw.bb.i.if.end8.i.i_crit_edge
  %interval.addr.0.i.i = phi i32 [ 63, %sw.bb.i.if.end8.i.i_crit_edge ], [ 364, %if.else.i.i.if.end8.i.i_crit_edge ], [ %..i.i, %if.else3.i.i ]
  %rate.0.i.i = phi i32 [ 0, %sw.bb.i.if.end8.i.i_crit_edge ], [ 1, %if.else.i.i.if.end8.i.i_crit_edge ], [ %.19.i.i, %if.else3.i.i ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 4, i32 noundef %rate.0.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp9.i.i, label %if.end8.i.i.lm95245_set_conversion_rate.exit.i_crit_edge, label %if.end11.i.i

if.end8.i.i.lm95245_set_conversion_rate.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_set_conversion_rate.exit.i

if.end11.i.i:                                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %interval12.i.i = getelementptr inbounds %struct.lm95245_data, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %interval12.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %interval.addr.0.i.i, ptr %interval12.i.i, align 4
  br label %lm95245_set_conversion_rate.exit.i

lm95245_set_conversion_rate.exit.i:               ; preds = %if.end11.i.i, %if.end8.i.i.lm95245_set_conversion_rate.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end11.i.i ], [ %call.i.i, %if.end8.i.i.lm95245_set_conversion_rate.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i7, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %10 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %regval.i, align 4, !annotation !45
  %11 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %sw.bb1.lm95245_write_temp.exit_crit_edge [
    i32 7, label %sw.bb.i8
    i32 9, label %sw.bb9.i
    i32 10, label %sw.bb27.i
    i32 20, label %sw.bb58.i
    i32 2, label %sw.bb81.i
  ]

sw.bb1.lm95245_write_temp.exit_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_write_temp.exit

sw.bb.i8:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %val)
  %cmp.i = icmp sgt i32 %val, 999
  %div.i = sdiv i32 %val, 1000
  %12 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 255) #7
  %13 = select i1 %cmp.i, i32 %12, i32 0
  %call8.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 7, i32 noundef %13) #7
  br label %lm95245_write_temp.exit

sw.bb9.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %cond10.i = select i1 %tobool.not.i, i32 32, i32 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %val)
  %cmp13.i = icmp sgt i32 %val, 999
  %div11.i = sdiv i32 %val, 1000
  %cond17.i = select i1 %cmp13.i, i32 %div11.i, i32 0
  %cond19.i = select i1 %tobool.not.i, i32 127, i32 255
  %14 = tail call i32 @llvm.smin.i32(i32 %cond17.i, i32 %cond19.i) #7
  %call26.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %cond10.i, i32 noundef %14) #7
  br label %lm95245_write_temp.exit

sw.bb27.i:                                        ; preds = %sw.bb1
  %update_lock.i9 = getelementptr inbounds %struct.lm95245_data, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i9, i32 noundef 0) #7
  %call28.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 32, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %update_lock.i9) #7
  br label %lm95245_write_temp.exit

if.end.i:                                         ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call i32 @llvm.smax.i32(i32 %val, i32 -1000000) #7
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 1000000) #7
  %17 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval.i, align 4
  %div43.neg.i = sdiv i32 %16, -1000
  %sub.i = add i32 %18, %div43.neg.i
  %19 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #7
  %20 = call i32 @llvm.umin.i32(i32 %19, i32 31) #7
  %call56.i = call i32 @regmap_write(ptr noundef %9, i32 noundef 33, i32 noundef %20) #7
  call void @mutex_unlock(ptr noundef %update_lock.i9) #7
  br label %lm95245_write_temp.exit

sw.bb58.i:                                        ; preds = %sw.bb1
  %21 = tail call i32 @llvm.smax.i32(i32 %val, i32 -128000) #7
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 127875) #7
  %mul.i = shl nsw i32 %22, 8
  %div71.i = sdiv i32 %mul.i, 1000
  %update_lock72.i = getelementptr inbounds %struct.lm95245_data, ptr %7, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock72.i, i32 noundef 0) #7
  %and.i = and i32 %div71.i, 224
  %call73.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 18, i32 noundef %and.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.then75.i, label %if.end77.i

if.then75.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %update_lock72.i) #7
  br label %lm95245_write_temp.exit

if.end77.i:                                       ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = lshr i32 %div71.i, 8
  %and78.i = and i32 %23, 255
  %call79.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 17, i32 noundef %and78.i) #7
  tail call void @mutex_unlock(ptr noundef %update_lock72.i) #7
  br label %lm95245_write_temp.exit

sw.bb81.i:                                        ; preds = %sw.bb1
  %val.off.i = add i32 %val, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %val.off.i)
  %switch.i = icmp ult i32 %val.off.i, 2
  br i1 %switch.i, label %if.end85.i, label %sw.bb81.i.lm95245_write_temp.exit_crit_edge

sw.bb81.i.lm95245_write_temp.exit_crit_edge:      ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lm95245_write_temp.exit

if.end85.i:                                       ; preds = %sw.bb81.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp86.i = icmp eq i32 %val, 1
  %cond87.i = select i1 %cmp86.i, i32 8, i32 0
  %call.i.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 191, i32 noundef 8, i32 noundef %cond87.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %lm95245_write_temp.exit

lm95245_write_temp.exit:                          ; preds = %if.end85.i, %sw.bb81.i.lm95245_write_temp.exit_crit_edge, %if.end77.i, %if.then75.i, %if.end.i, %if.then.i, %sw.bb9.i, %sw.bb.i8, %sw.bb1.lm95245_write_temp.exit_crit_edge
  %retval.0.i11 = phi i32 [ %call.i.i10, %if.end85.i ], [ %call73.i, %if.then75.i ], [ %call79.i, %if.end77.i ], [ %call28.i, %if.then.i ], [ %call56.i, %if.end.i ], [ %call26.i, %sw.bb9.i ], [ %call8.i, %sw.bb.i8 ], [ -22, %sw.bb81.i.lm95245_write_temp.exit_crit_edge ], [ -95, %sw.bb1.lm95245_write_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %return

return:                                           ; preds = %lm95245_write_temp.exit, %lm95245_set_conversion_rate.exit.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i11, %lm95245_write_temp.exit ], [ -95, %entry.return_crit_edge ], [ %retval.0.i.i, %lm95245_set_conversion_rate.exit.i ], [ -95, %sw.bb.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__initcall__kmod_lm95245__308_606_lm95245_driver_init6, !1, !"__initcall__kmod_lm95245__308_606_lm95245_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm95245.c", i32 606, i32 1}
!2 = !{ptr @__exitcall_lm95245_driver_exit, !1, !"__exitcall_lm95245_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm95245.c", i32 608, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm95245.c", i32 609, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm95245.c", i32 610, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm95245.c", i32 597, i32 11}
!12 = !{ptr @lm95245_driver, !13, !"lm95245_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm95245.c", i32 594, i32 26}
!14 = !{ptr @lm95245_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm95245.c", i32 561, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm95245_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm95245.c", i32 565, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lm95245_regmap_config, !21, !"lm95245_regmap_config", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/lm95245.c", i32 516, i32 35}
!22 = !{ptr @lm95245_chip_info, !23, !"lm95245_chip_info", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/lm95245.c", i32 545, i32 37}
!24 = !{ptr @lm95245_hwmon_ops, !25, !"lm95245_hwmon_ops", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/lm95245.c", i32 539, i32 31}
!26 = !{ptr @lm95245_info, !27, !"lm95245_info", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/lm95245.c", i32 526, i32 41}
!28 = !{ptr @lm95245_of_match, !29, !"lm95245_of_match", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/lm95245.c", i32 587, i32 49}
!30 = !{ptr @lm95245_id, !31, !"lm95245_id", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/lm95245.c", i32 580, i32 35}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lm95245.c", i32 455, i32 10}
!34 = !{ptr @normal_i2c, !35, !"normal_i2c", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lm95245.c", i32 20, i32 29}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{!"auto-init"}
