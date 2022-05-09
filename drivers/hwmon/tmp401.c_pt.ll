; ModuleID = '/llk/IR_all_yes/drivers/hwmon/tmp401.c_pt.bc'
source_filename = "../drivers/hwmon/tmp401.c"
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
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tmp401_data = type { ptr, ptr, %struct.mutex, i32, i8, [4 x i32], %struct.hwmon_channel_info, [4 x i32], %struct.hwmon_channel_info, [3 x ptr], %struct.hwmon_chip_info }
%struct.hwmon_channel_info = type { i32, ptr }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_tmp401__312_722_tmp401_driver_init6 = internal global ptr @tmp401_driver_init, section ".initcall6.init", align 4
@tmp401_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @tmp401_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tmp401_id, ptr @tmp401_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp401_driver_exit = internal global ptr @tmp401_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [50 x i8] c"tmp401.author=Hans de Goede <hdegoede@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description314 = internal constant [70 x i8] c"tmp401.description=Texas Instruments TMP401 temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [33 x i8] c"tmp401.file=drivers/hwmon/tmp401\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [19 x i8] c"tmp401.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp401\00", [25 x i8] zeroinitializer }, align 32
@tmp401_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp401\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"tmp411\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"tmp431\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"tmp432\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"tmp435\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 72, i16 73, i16 74, i16 76, i16 77, i16 78, i16 79, i16 -2], [16 x i8] zeroinitializer }, align 32
@tmp401_probe.names = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP401\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP411\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP431\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP432\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TMP435\00", [25 x i8] zeroinitializer }, align 32
@tmp401_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@tmp401_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tmp401_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr @tmp401_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tmp401_reg_read, ptr @tmp401_reg_write, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tmp401:656:(&tmp401_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@tmp401_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @tmp401_is_visible, ptr @tmp401_read, ptr null, ptr @tmp401_write }, [16 x i8] zeroinitializer }, align 32
@tmp401_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 706, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Detected TI %s chip\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmp401_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/tmp401.c\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp401_probe._entry_ptr = internal global ptr @tmp401_probe._entry, section ".printk_index", align 4
@TMP401_TEMP_MSB = internal constant { [7 x [3 x i8]], [43 x i8] } { [7 x [3 x i8]] [[3 x i8] c"\00\01#", [3 x i8] c"\06\08\16", [3 x i8] c"\05\07\15", [3 x i8] c" \19\1A", [3 x i8] c"04\00", [3 x i8] c"2\F6\00", [3 x i8] zeroinitializer], [43 x i8] zeroinitializer }, align 32
@tmp401_temp_reg_index = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\00\00\00\01\00\02\00\03\00\00\00\00\00\00\00\00\00\00\00\00\04\05", [40 x i8] zeroinitializer }, align 32
@TMP432_STATUS_REG = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\1B657", [28 x i8] zeroinitializer }, align 32
@tmp401_status_reg_index = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02\03\00\00", [44 x i8] zeroinitializer }, align 32
@switch.table.tmp401_is_visible = internal constant { [23 x i16], [50 x i8] } { [23 x i16] [i16 292, i16 0, i16 0, i16 0, i16 420, i16 0, i16 420, i16 0, i16 420, i16 420, i16 0, i16 0, i16 0, i16 0, i16 292, i16 292, i16 292, i16 0, i16 292, i16 0, i16 0, i16 292, i16 292], [50 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 16, i64 17, i64 18, i64 19, i64 49, i64 50, i64 53]
@__sancov_gen_cov_switch_values.13 = internal global [18 x i64] [i64 16, i64 32, i64 0, i64 1, i64 2, i64 16, i64 21, i64 27, i64 35, i64 36, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55]
@__sancov_gen_cov_switch_values.14 = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 1, i64 5, i64 6, i64 7, i64 8, i64 21, i64 22, i64 25, i64 26, i64 27, i64 32, i64 35, i64 48, i64 50, i64 52, i64 53, i64 54, i64 55, i64 246]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 27, i64 53, i64 54, i64 55]
@__sancov_gen_cov_switch_values.16 = internal global [13 x i64] [i64 11, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 21, i64 22, i64 25, i64 26, i64 32]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.20 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 5, i64 7, i64 9, i64 10, i64 15, i64 16, i64 17, i64 19, i64 22, i64 23]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 7, i64 9, i64 10]
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"tmp401_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 711, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 714, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [10 x i8] c"tmp401_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 91, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 32, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 639, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 640, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 640, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 640, i32 23 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 640, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 640, i32 43 }
@___asan_gen_.54 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 653, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [21 x i8] c"tmp401_regmap_config\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 254, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 656, i32 17 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"tmp401_ops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 533, i32 31 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 706, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"TMP401_TEMP_MSB\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 48, i32 17 }
@___asan_gen_.93 = private unnamed_addr constant [22 x i8] c"tmp401_temp_reg_index\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 289, i32 17 }
@___asan_gen_.96 = private unnamed_addr constant [18 x i8] c"TMP432_STATUS_REG\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 58, i32 17 }
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"tmp401_status_reg_index\00", align 1
@___asan_gen_.100 = private constant [26 x i8] c"../drivers/hwmon/tmp401.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 298, i32 17 }
@___asan_gen_.102 = private unnamed_addr constant [31 x i8] c"switch.table.tmp401_is_visible\00", align 1
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description314, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_tmp401_driver_exit, ptr @__initcall__kmod_tmp401__312_722_tmp401_driver_init6, ptr @tmp401_driver_exit, ptr @tmp401_probe._entry, ptr @tmp401_probe._entry_ptr, ptr @tmp401_driver, ptr @.str, ptr @tmp401_id, ptr @normal_i2c, ptr @tmp401_probe.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmp401_probe.__key, ptr @.str.6, ptr @tmp401_probe._key, ptr @tmp401_regmap_config, ptr @.str.7, ptr @tmp401_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @TMP401_TEMP_MSB, ptr @tmp401_temp_reg_index, ptr @TMP432_STATUS_REG, ptr @tmp401_status_reg_index, ptr @switch.table.tmp401_is_visible], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_probe.names to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP401_TEMP_MSB to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_temp_reg_index to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TMP432_STATUS_REG to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp401_status_reg_index to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tmp401_is_visible to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp401_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp401_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp401_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_probe(ptr noundef %client) #2 align 64 {
entry:
  %config.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 176, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @tmp401_probe.__key) #8
  %call3 = tail call ptr @i2c_match_id(ptr noundef nonnull @tmp401_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %kind = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %kind, align 4
  %call4 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef nonnull %call.i, ptr noundef nonnull @tmp401_regmap_config, ptr noundef nonnull @tmp401_probe._key, ptr noundef nonnull @.str.7) #8
  %regmap = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %chip = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tmp401_ops, ptr %chip, align 4
  %info11 = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 9
  %info13 = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 10, i32 1
  %7 = ptrtoint ptr %info13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %info11, ptr %info13, align 4
  %chip_info = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %info11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chip_info, ptr %info11, align 4
  %temp_info = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 8
  %arrayidx16 = getelementptr %struct.tmp401_data, ptr %call.i, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %temp_info, ptr %arrayidx16, align 4
  %10 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %chip_info, align 4
  %chip_channel_config = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 5
  %config = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %chip_channel_config, ptr %config, align 4
  %12 = ptrtoint ptr %chip_channel_config to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %chip_channel_config, align 4
  %13 = ptrtoint ptr %temp_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %temp_info, align 4
  %temp_channel_config = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 7
  %config24 = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %config24 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %temp_channel_config, ptr %config24, align 4
  %15 = ptrtoint ptr %temp_channel_config to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 231074, ptr %temp_channel_config, align 4
  %arrayidx28 = getelementptr %struct.tmp401_data, ptr %call.i, i32 0, i32 7, i32 1
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 755362, ptr %arrayidx28, align 4
  %17 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp = icmp eq i32 %18, 1
  br i1 %cmp, label %if.then30, label %if.end10.if.end39_crit_edge

if.end10.if.end39_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then30:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %temp_channel_config to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 12813986, ptr %temp_channel_config, align 4
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 13338274, ptr %arrayidx28, align 4
  %21 = ptrtoint ptr %chip_channel_config to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 33, ptr %chip_channel_config, align 4
  %22 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %kind, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then30, %if.end10.if.end39_crit_edge
  %23 = phi i32 [ %.pr, %if.then30 ], [ %18, %if.end10.if.end39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp41 = icmp eq i32 %23, 3
  br i1 %cmp41, label %if.then42, label %if.end39.if.end45_crit_edge

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx44 = getelementptr %struct.tmp401_data, ptr %call.i, i32 0, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 755362, ptr %arrayidx44, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config.i) #8
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %config.i, align 4, !annotation !65
  %call.i108 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 4, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i108)
  %cmp.i109 = icmp slt i32 %call.i108, 0
  br i1 %cmp.i109, label %if.end45.tmp401_init_client.exit.thread_crit_edge, label %if.end.i

if.end45.tmp401_init_client.exit.thread_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_init_client.exit.thread

if.end.i:                                         ; preds = %if.end45
  %call2.i = call i32 @regmap_read(ptr noundef %26, i32 noundef 3, ptr noundef nonnull %config.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.tmp401_init_client.exit.thread_crit_edge, label %if.end5.i

if.end.i.tmp401_init_client.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_init_client.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %config.i, align 4
  %and.i = and i32 %29, -65
  store i32 %and.i, ptr %config.i, align 4
  %extended_range.i = getelementptr inbounds %struct.tmp401_data, ptr %call.i, i32 0, i32 4
  %30 = trunc i32 %29 to i8
  %31 = lshr i8 %30, 2
  %32 = and i8 %31, 1
  %33 = ptrtoint ptr %extended_range.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %extended_range.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %29)
  %cmp8.not.i = icmp eq i32 %and.i, %29
  br i1 %cmp8.not.i, label %tmp401_init_client.exit.thread113, label %tmp401_init_client.exit

tmp401_init_client.exit.thread113:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #8
  br label %if.end49

tmp401_init_client.exit.thread:                   ; preds = %if.end.i.tmp401_init_client.exit.thread_crit_edge, %if.end45.tmp401_init_client.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call2.i, %if.end.i.tmp401_init_client.exit.thread_crit_edge ], [ %call.i108, %if.end45.tmp401_init_client.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #8
  br label %cleanup

tmp401_init_client.exit:                          ; preds = %if.end5.i
  %call10.i = call i32 @regmap_write(ptr noundef %26, i32 noundef 3, i32 noundef %and.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp47 = icmp slt i32 %call10.i, 0
  br i1 %cmp47, label %tmp401_init_client.exit.cleanup_crit_edge, label %tmp401_init_client.exit.if.end49_crit_edge

tmp401_init_client.exit.if.end49_crit_edge:       ; preds = %tmp401_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

tmp401_init_client.exit.cleanup_crit_edge:        ; preds = %tmp401_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %tmp401_init_client.exit.if.end49_crit_edge, %tmp401_init_client.exit.thread113
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call52 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %chip, ptr noundef null) #8
  %cmp.i110 = icmp ugt ptr %call52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then54, label %do.end59

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %call52 to i32
  br label %cleanup

do.end59:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %kind, align 4
  %arrayidx61 = getelementptr [5 x ptr], ptr @tmp401_probe.names, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx61, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.8, ptr noundef %38) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end59, %if.then54, %tmp401_init_client.exit.cleanup_crit_edge, %tmp401_init_client.exit.thread, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then7 ], [ %34, %if.then54 ], [ 0, %do.end59 ], [ -12, %entry.cleanup_crit_edge ], [ %call10.i, %tmp401_init_client.exit.cleanup_crit_edge ], [ %retval.0.i.ph, %tmp401_init_client.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #8
  %conv3 = and i32 %call2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %conv3)
  %cmp.not = icmp eq i32 %conv3, 85
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #8
  %trunc = trunc i32 %call7 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end6.cleanup_crit_edge [
    i8 17, label %sw.bb
    i8 18, label %sw.bb15
    i8 19, label %sw.bb22
    i8 16, label %sw.bb29
    i8 49, label %sw.bb36
    i8 50, label %sw.bb47
    i8 53, label %if.end6.sw.epilog_crit_edge
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %8)
  %cmp11.not = icmp eq i16 %8, 76
  br i1 %cmp11.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end6
  %addr16 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr16 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr16, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %10)
  %cmp18.not = icmp eq i16 %10, 76
  br i1 %cmp18.not, label %sw.bb15.sw.epilog_crit_edge, label %sw.bb15.cleanup_crit_edge

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  %addr23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %addr23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 77, i16 %12)
  %cmp25.not = icmp eq i16 %12, 77
  br i1 %cmp25.not, label %sw.bb22.sw.epilog_crit_edge, label %sw.bb22.cleanup_crit_edge

sw.bb22.cleanup_crit_edge:                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end6
  %addr30 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr30 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr30, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 78, i16 %14)
  %cmp32.not = icmp eq i16 %14, 78
  br i1 %cmp32.not, label %sw.bb29.sw.epilog_crit_edge, label %sw.bb29.cleanup_crit_edge

sw.bb29.cleanup_crit_edge:                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end6
  %addr37 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %15 = ptrtoint ptr %addr37 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr37, align 2
  %17 = and i16 %16, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %17)
  %switch = icmp eq i16 %17, 76
  br i1 %switch, label %sw.bb36.sw.epilog_crit_edge, label %sw.bb36.cleanup_crit_edge

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end6
  %addr48 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %18 = ptrtoint ptr %addr48 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %addr48, align 2
  %20 = and i16 %19, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %20)
  %switch93 = icmp eq i16 %20, 76
  br i1 %switch93, label %sw.bb47.sw.epilog_crit_edge, label %sw.bb47.cleanup_crit_edge

sw.bb47.cleanup_crit_edge:                        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb47.sw.epilog_crit_edge:                      ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb47.sw.epilog_crit_edge, %sw.bb36.sw.epilog_crit_edge, %sw.bb29.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb15.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  %kind.0 = phi i32 [ 0, %sw.bb.sw.epilog_crit_edge ], [ 1, %sw.bb15.sw.epilog_crit_edge ], [ 1, %sw.bb22.sw.epilog_crit_edge ], [ 1, %sw.bb29.sw.epilog_crit_edge ], [ 2, %sw.bb36.sw.epilog_crit_edge ], [ 3, %sw.bb47.sw.epilog_crit_edge ], [ 4, %if.end6.sw.epilog_crit_edge ]
  %call60 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #8
  %and = and i32 %call60, 27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool63.not = icmp eq i32 %and, 0
  br i1 %tobool63.not, label %if.end65, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %sw.epilog
  %call66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #8
  %conv68 = and i32 %call66, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv68)
  %cmp69.not = icmp eq i32 %conv68, 0
  br i1 %cmp69.not, label %if.end72, label %if.end65.cleanup_crit_edge

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr [6 x %struct.i2c_device_id], ptr @tmp401_id, i32 0, i32 %kind.0
  %call74 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef %arrayidx, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %if.end65.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb47.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb29.cleanup_crit_edge, %sw.bb22.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end72 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %sw.bb15.cleanup_crit_edge ], [ -19, %sw.bb22.cleanup_crit_edge ], [ -19, %sw.bb29.cleanup_crit_edge ], [ -19, %sw.bb36.cleanup_crit_edge ], [ -19, %sw.bb47.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ], [ -19, %if.end65.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tmp401_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge3
    i32 2, label %entry.return_crit_edge4
    i32 16, label %entry.return_crit_edge5
    i32 21, label %entry.return_crit_edge6
    i32 27, label %entry.return_crit_edge7
    i32 48, label %entry.return_crit_edge8
    i32 49, label %entry.return_crit_edge9
    i32 50, label %entry.return_crit_edge10
    i32 51, label %entry.return_crit_edge11
    i32 52, label %entry.return_crit_edge12
    i32 53, label %entry.return_crit_edge13
    i32 54, label %entry.return_crit_edge14
    i32 55, label %entry.return_crit_edge15
    i32 35, label %entry.return_crit_edge16
    i32 36, label %entry.return_crit_edge17
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_reg_read(ptr nocapture noundef readonly %context, i32 noundef %reg, ptr nocapture noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge117
    i32 5, label %entry.sw.bb_crit_edge118
    i32 6, label %entry.sw.bb_crit_edge119
    i32 7, label %entry.sw.bb_crit_edge120
    i32 8, label %entry.sw.bb_crit_edge121
    i32 21, label %entry.sw.bb_crit_edge122
    i32 22, label %entry.sw.bb_crit_edge123
    i32 35, label %entry.sw.bb_crit_edge124
    i32 48, label %entry.sw.bb_crit_edge125
    i32 50, label %entry.sw.bb_crit_edge126
    i32 52, label %entry.sw.bb_crit_edge127
    i32 246, label %entry.sw.bb_crit_edge128
    i32 25, label %entry.sw.bb6_crit_edge
    i32 26, label %entry.sw.bb6_crit_edge129
    i32 32, label %entry.sw.bb6_crit_edge130
    i32 27, label %entry.sw.bb14_crit_edge
    i32 53, label %entry.sw.bb14_crit_edge131
    i32 54, label %entry.sw.bb14_crit_edge132
    i32 55, label %entry.sw.bb14_crit_edge133
  ]

entry.sw.bb14_crit_edge133:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb14_crit_edge132:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb14_crit_edge131:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb14_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb14

entry.sw.bb6_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb6_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb6

entry.sw.bb_crit_edge128:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge127:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge126:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge125:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge124:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge123:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge122:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge121:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge120:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge119:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge118:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge117:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge117, %entry.sw.bb_crit_edge118, %entry.sw.bb_crit_edge119, %entry.sw.bb_crit_edge120, %entry.sw.bb_crit_edge121, %entry.sw.bb_crit_edge122, %entry.sw.bb_crit_edge123, %entry.sw.bb_crit_edge124, %entry.sw.bb_crit_edge125, %entry.sw.bb_crit_edge126, %entry.sw.bb_crit_edge127, %entry.sw.bb_crit_edge128
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %reg)
  %cmp = icmp eq i32 %reg, 246
  %3 = trunc i32 %reg to i8
  %conv = select i1 %cmp, i8 54, i8 %3
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end5

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %call.i to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #8
  %conv1.i = zext i16 %4 to i32
  br label %cleanup.sink.split

sw.bb6:                                           ; preds = %entry.sw.bb6_crit_edge, %entry.sw.bb6_crit_edge129, %entry.sw.bb6_crit_edge130
  %conv7 = trunc i32 %reg to i8
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %sw.bb6.cleanup_crit_edge, label %if.end12

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %call8, 8
  br label %cleanup.sink.split

sw.bb14:                                          ; preds = %entry.sw.bb14_crit_edge, %entry.sw.bb14_crit_edge131, %entry.sw.bb14_crit_edge132, %entry.sw.bb14_crit_edge133
  %kind = getelementptr inbounds %struct.tmp401_data, ptr %context, i32 0, i32 3
  %5 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp15 = icmp eq i32 %6, 3
  br i1 %cmp15, label %if.then17, label %if.end24

if.then17:                                        ; preds = %sw.bb14
  %conv18 = trunc i32 %reg to i8
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then17.cleanup_crit_edge, label %if.then17.cleanup.sink.split_crit_edge

if.then17.cleanup.sink.split_crit_edge:           ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %sw.bb14
  %call25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.cleanup_crit_edge, label %if.end29

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %val, align 4
  %8 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %reg, label %if.end29.cleanup_crit_edge [
    i32 27, label %sw.bb30
    i32 53, label %sw.bb33
    i32 54, label %sw.bb44
    i32 55, label %sw.bb55
  ]

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb30:                                          ; preds = %if.end29
  %and = and i32 %call25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb30.cleanup_crit_edge, label %sw.bb30.cleanup.sink.split_crit_edge

sw.bb30.cleanup.sink.split_crit_edge:             ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb33:                                          ; preds = %if.end29
  %and34 = and i32 %call25, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.bb33.if.end38_crit_edge, label %if.then36

sw.bb33.if.end38_crit_edge:                       ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %val, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %sw.bb33.if.end38_crit_edge
  %and39 = and i32 %call25, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %if.end38.cleanup_crit_edge, label %if.then41

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %or42 = or i32 %11, 2
  br label %cleanup.sink.split

sw.bb44:                                          ; preds = %if.end29
  %and45 = and i32 %call25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %sw.bb44.if.end49_crit_edge, label %if.then47

sw.bb44.if.end49_crit_edge:                       ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %val, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %sw.bb44.if.end49_crit_edge
  %and50 = and i32 %call25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end49.cleanup_crit_edge, label %if.then52

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %or53 = or i32 %14, 2
  br label %cleanup.sink.split

sw.bb55:                                          ; preds = %if.end29
  %and56 = and i32 %call25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %sw.bb55.if.end60_crit_edge, label %if.then58

sw.bb55.if.end60_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %val, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %sw.bb55.if.end60_crit_edge
  %and61 = and i32 %call25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %or64 = or i32 %17, 2
  br label %cleanup.sink.split

sw.default:                                       ; preds = %entry
  %conv66 = trunc i32 %reg to i8
  %call67 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %sw.default.cleanup_crit_edge, label %sw.default.cleanup.sink.split_crit_edge

sw.default.cleanup.sink.split_crit_edge:          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.sink.split:                               ; preds = %sw.default.cleanup.sink.split_crit_edge, %if.then63, %if.then52, %if.then41, %sw.bb30.cleanup.sink.split_crit_edge, %if.then17.cleanup.sink.split_crit_edge, %if.end12, %if.end5
  %conv1.i.sink = phi i32 [ %conv1.i, %if.end5 ], [ %shl, %if.end12 ], [ %or64, %if.then63 ], [ %or53, %if.then52 ], [ %or42, %if.then41 ], [ %call19, %if.then17.cleanup.sink.split_crit_edge ], [ 2, %sw.bb30.cleanup.sink.split_crit_edge ], [ %call67, %sw.default.cleanup.sink.split_crit_edge ]
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv1.i.sink, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.default.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call8, %sw.bb6.cleanup_crit_edge ], [ %call19, %if.then17.cleanup_crit_edge ], [ %call25, %if.end24.cleanup_crit_edge ], [ %call67, %sw.default.cleanup_crit_edge ], [ 0, %if.end29.cleanup_crit_edge ], [ 0, %sw.bb30.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ 0, %if.end60.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_reg_write(ptr nocapture noundef readonly %context, i32 noundef %reg, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %reg, label %entry.sw.default_crit_edge [
    i32 5, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge23
    i32 7, label %entry.sw.bb_crit_edge24
    i32 8, label %entry.sw.bb_crit_edge25
    i32 21, label %entry.sw.bb2_crit_edge
    i32 22, label %entry.sw.bb2_crit_edge26
    i32 25, label %entry.sw.bb4_crit_edge
    i32 26, label %entry.sw.bb4_crit_edge27
    i32 32, label %entry.sw.bb4_crit_edge28
    i32 4, label %entry.sw.bb8_crit_edge
    i32 3, label %entry.sw.bb8_crit_edge29
  ]

entry.sw.bb8_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb8

entry.sw.bb4_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

entry.sw.bb2_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb_crit_edge25:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge23:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

entry.sw.default_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge23, %entry.sw.bb_crit_edge24, %entry.sw.bb_crit_edge25
  %add = add nuw nsw i32 %reg, 6
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb, %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge26
  %reg.addr.0 = phi i32 [ %reg, %entry.sw.bb2_crit_edge ], [ %reg, %entry.sw.bb2_crit_edge26 ], [ %add, %sw.bb ]
  %conv = trunc i32 %reg.addr.0 to i8
  %conv3 = trunc i32 %val to i16
  %3 = tail call i16 @llvm.bswap.i16(i16 %conv3) #8
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %1, i8 noundef zeroext %conv, i16 noundef zeroext %3) #8
  br label %cleanup

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge27, %entry.sw.bb4_crit_edge28
  %conv5 = trunc i32 %reg to i8
  %shr = lshr i32 %val, 8
  %conv6 = trunc i32 %shr to i8
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv5, i8 noundef zeroext %conv6) #8
  br label %cleanup

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge29
  %add9 = add nuw nsw i32 %reg, 6
  br label %sw.default

sw.default:                                       ; preds = %sw.bb8, %entry.sw.default_crit_edge
  %reg.addr.1 = phi i32 [ %reg, %entry.sw.default_crit_edge ], [ %add9, %sw.bb8 ]
  %conv10 = trunc i32 %reg.addr.1 to i8
  %conv11 = trunc i32 %val to i8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv10, i8 noundef zeroext %conv11) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb2
  %retval.0 = phi i32 [ %call12, %sw.default ], [ %call7, %sw.bb4 ], [ %call.i, %sw.bb2 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tmp401_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %switch.selectcmp.case1 = icmp eq i32 %attr, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %attr)
  %switch.selectcmp.case2 = icmp eq i32 %attr, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %1 = select i1 %switch.selectcmp, i16 420, i16 0
  br label %return

sw.bb2:                                           ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 23
  br i1 %2, label %switch.lookup, label %sw.bb2.return_crit_edge

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

switch.lookup:                                    ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [23 x i16], ptr @switch.table.tmp401_is_visible, i32 0, i32 %switch.tableidx
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %3)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %sw.bb2.return_crit_edge, %sw.bb, %entry.return_crit_edge
  %retval.0 = phi i16 [ %1, %sw.bb ], [ %switch.load, %switch.lookup ], [ 0, %sw.bb2.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef %val) #2 align 64 {
entry:
  %regval.i7 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %regval.i, align 4, !annotation !65
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %attr, label %sw.bb.tmp401_chip_read.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 0, label %sw.bb.sw.epilog.i_crit_edge
  ]

sw.bb.sw.epilog.i_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb.tmp401_chip_read.exit_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_chip_read.exit

sw.bb.i:                                          ; preds = %sw.bb
  %regmap.i = getelementptr inbounds %struct.tmp401_data, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %6, i32 noundef 4, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.i.tmp401_chip_read.exit_crit_edge, label %if.end.i

sw.bb.i.tmp401_chip_read.exit_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_chip_read.exit

if.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval.i, align 4
  %sub.i = sub i32 7, %8
  %mul.i = shl i32 125, %sub.i
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end.i, %sw.bb.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ %mul.i, %if.end.i ], [ %attr, %sw.bb.sw.epilog.i_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.i, ptr %val, align 4
  br label %tmp401_chip_read.exit

tmp401_chip_read.exit:                            ; preds = %sw.epilog.i, %sw.bb.i.tmp401_chip_read.exit_crit_edge, %sw.bb.tmp401_chip_read.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ %call1.i, %sw.bb.i.tmp401_chip_read.exit_crit_edge ], [ -95, %sw.bb.tmp401_chip_read.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i8 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i8, align 4
  %regmap1.i = getelementptr inbounds %struct.tmp401_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i7) #8
  %14 = ptrtoint ptr %regval.i7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %regval.i7, align 4, !annotation !65
  %15 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %attr, label %sw.bb1.tmp401_temp_read.exit_crit_edge [
    i32 1, label %sw.bb1.sw.bb.i10_crit_edge
    i32 5, label %sw.bb1.sw.bb.i10_crit_edge14
    i32 7, label %sw.bb1.sw.bb.i10_crit_edge15
    i32 9, label %sw.bb1.sw.bb.i10_crit_edge16
    i32 22, label %sw.bb1.sw.bb.i10_crit_edge17
    i32 23, label %sw.bb1.sw.bb.i10_crit_edge18
    i32 10, label %sw.bb8.i
    i32 19, label %sw.bb1.sw.bb30.i_crit_edge
    i32 15, label %sw.bb1.sw.bb30.i_crit_edge19
    i32 16, label %sw.bb1.sw.bb30.i_crit_edge20
    i32 17, label %sw.bb1.sw.bb30.i_crit_edge21
  ]

sw.bb1.sw.bb30.i_crit_edge21:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

sw.bb1.sw.bb30.i_crit_edge20:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

sw.bb1.sw.bb30.i_crit_edge19:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

sw.bb1.sw.bb30.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb30.i

sw.bb1.sw.bb.i10_crit_edge18:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge17:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge16:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge15:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge14:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.tmp401_temp_read.exit_crit_edge:           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_temp_read.exit

sw.bb.i10:                                        ; preds = %sw.bb1.sw.bb.i10_crit_edge, %sw.bb1.sw.bb.i10_crit_edge14, %sw.bb1.sw.bb.i10_crit_edge15, %sw.bb1.sw.bb.i10_crit_edge16, %sw.bb1.sw.bb.i10_crit_edge17, %sw.bb1.sw.bb.i10_crit_edge18
  %arrayidx.i = getelementptr [24 x i8], ptr @tmp401_temp_reg_index, i32 0, i32 %attr
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %17 to i32
  %arrayidx3.i = getelementptr [7 x [3 x i8]], ptr @TMP401_TEMP_MSB, i32 0, i32 %idxprom.i, i32 %channel
  %18 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %19 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %conv.i, ptr noundef nonnull %regval.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i9 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i9, label %sw.bb.i10.tmp401_temp_read.exit_crit_edge, label %if.end.i11

sw.bb.i10.tmp401_temp_read.exit_crit_edge:        ; preds = %sw.bb.i10
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_temp_read.exit

if.end.i11:                                       ; preds = %sw.bb.i10
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %regval.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %regval.i7, align 4
  %extended_range.i = getelementptr inbounds %struct.tmp401_data, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %extended_range.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %extended_range.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  %conv.i.i = and i32 %21, 65535
  %sub.i.i = add nsw i32 %conv.i.i, -16384
  %spec.select.i.i = select i1 %tobool.not.i, i32 %conv.i.i, i32 %sub.i.i
  %mul.i.i = mul nsw i32 %spec.select.i.i, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp.i.i = icmp sgt i32 %spec.select.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 16, i32 -16
  %cond.in.i.i = add nsw i32 %cond.in.v.i.i, %mul.i.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 32
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i.i, ptr %val, align 4
  br label %tmp401_temp_read.exit

sw.bb8.i:                                         ; preds = %sw.bb1
  %update_lock.i = getelementptr inbounds %struct.tmp401_data, ptr %11, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %arrayidx9.i = getelementptr [7 x [3 x i8]], ptr @TMP401_TEMP_MSB, i32 0, i32 3, i32 %channel
  %25 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %26 to i32
  %call11.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %conv10.i, ptr noundef nonnull %regval.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %sw.bb8.i.unlock.thread.i_crit_edge, label %if.end15.i

sw.bb8.i.unlock.thread.i_crit_edge:               ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread.i

if.end15.i:                                       ; preds = %sw.bb8.i
  %27 = ptrtoint ptr %regval.i7 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i7, align 4
  %extended_range17.i = getelementptr inbounds %struct.tmp401_data, ptr %11, i32 0, i32 4
  %29 = ptrtoint ptr %extended_range17.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %extended_range17.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool18.not.i = icmp eq i8 %30, 0
  %conv.i69.i = and i32 %28, 65535
  %sub.i70.i = add nsw i32 %conv.i69.i, -16384
  %spec.select.i71.i = select i1 %tobool18.not.i, i32 %conv.i69.i, i32 %sub.i70.i
  %mul.i72.i = mul nsw i32 %spec.select.i71.i, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i71.i)
  %cmp.i73.i = icmp sgt i32 %spec.select.i71.i, 0
  %cond.in.v.i74.i = select i1 %cmp.i73.i, i32 16, i32 -16
  %cond.in.i75.i = add nsw i32 %cond.in.v.i74.i, %mul.i72.i
  %cond.i76.i = sdiv i32 %cond.in.i75.i, 32
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond.i76.i, ptr %val, align 4
  %call20.i = call i32 @regmap_read(ptr noundef %13, i32 noundef 33, ptr noundef nonnull %regval.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end15.i.unlock.thread.i_crit_edge, label %unlock.i

if.end15.i.unlock.thread.i_crit_edge:             ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.thread.i

unlock.thread.i:                                  ; preds = %if.end15.i.unlock.thread.i_crit_edge, %sw.bb8.i.unlock.thread.i_crit_edge
  %ret.0.ph.i = phi i32 [ %call20.i, %if.end15.i.unlock.thread.i_crit_edge ], [ %call11.i, %sw.bb8.i.unlock.thread.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %tmp401_temp_read.exit

unlock.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %regval.i7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %regval.i7, align 4
  %mul.neg.i = mul i32 %33, -1000
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %sub.i12 = add i32 %mul.neg.i, %35
  store i32 %sub.i12, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %tmp401_temp_read.exit

sw.bb30.i:                                        ; preds = %sw.bb1.sw.bb30.i_crit_edge, %sw.bb1.sw.bb30.i_crit_edge19, %sw.bb1.sw.bb30.i_crit_edge20, %sw.bb1.sw.bb30.i_crit_edge21
  %arrayidx31.i = getelementptr [20 x i8], ptr @tmp401_status_reg_index, i32 0, i32 %attr
  %36 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx31.i, align 1
  %idxprom32.i = zext i8 %37 to i32
  %arrayidx33.i = getelementptr [4 x i8], ptr @TMP432_STATUS_REG, i32 0, i32 %idxprom32.i
  %38 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx33.i, align 1
  %conv34.i = zext i8 %39 to i32
  %call35.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %conv34.i, ptr noundef nonnull %regval.i7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.i = icmp slt i32 %call35.i, 0
  br i1 %cmp36.i, label %sw.bb30.i.tmp401_temp_read.exit_crit_edge, label %if.end39.i

sw.bb30.i.tmp401_temp_read.exit_crit_edge:        ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_temp_read.exit

if.end39.i:                                       ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %regval.i7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %regval.i7, align 4
  %42 = lshr i32 %41, %channel
  %43 = and i32 %42, 1
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %val, align 4
  br label %tmp401_temp_read.exit

tmp401_temp_read.exit:                            ; preds = %if.end39.i, %sw.bb30.i.tmp401_temp_read.exit_crit_edge, %unlock.i, %unlock.thread.i, %if.end.i11, %sw.bb.i10.tmp401_temp_read.exit_crit_edge, %sw.bb1.tmp401_temp_read.exit_crit_edge
  %retval.0.i13 = phi i32 [ %call4.i, %sw.bb.i10.tmp401_temp_read.exit_crit_edge ], [ %call35.i, %sw.bb30.i.tmp401_temp_read.exit_crit_edge ], [ -95, %sw.bb1.tmp401_temp_read.exit_crit_edge ], [ %ret.0.ph.i, %unlock.thread.i ], [ 0, %unlock.i ], [ 0, %if.end39.i ], [ 0, %if.end.i11 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i7) #8
  br label %return

return:                                           ; preds = %tmp401_temp_read.exit, %tmp401_chip_read.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i13, %tmp401_temp_read.exit ], [ %retval.0.i, %tmp401_chip_read.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp401_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %entry.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %regmap1.i = getelementptr inbounds %struct.tmp401_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %regmap1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap1.i, align 4
  %update_lock.i = getelementptr inbounds %struct.tmp401_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #8
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %sw.bb.tmp401_chip_write.exit_crit_edge [
    i32 5, label %sw.bb.i
    i32 0, label %sw.bb3.i
  ]

sw.bb.tmp401_chip_write.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_chip_write.exit

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.smax.i32(i32 %val, i32 125) #8
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 16000) #8
  %.tr.i.i = trunc i32 %7 to i16
  %div13.lhs.trunc.i.i = shl nuw i16 %.tr.i.i, 2
  %div1314.i.i = udiv i16 %div13.lhs.trunc.i.i, 375
  %div13.zext.i.i = zext i16 %div1314.i.i to i32
  %8 = tail call i32 @llvm.ctlz.i32(i32 %div13.zext.i.i, i1 false) #8, !range !67
  %sub.i.i = add nsw i32 %8, -24
  %call7.i.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 4, i32 noundef %sub.i.i) #8
  br label %tmp401_chip_write.exit

sw.bb3.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val)
  %cmp.not.i = icmp eq i32 %val, 1
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb3.i.tmp401_chip_write.exit_crit_edge

sw.bb3.i.tmp401_chip_write.exit_crit_edge:        ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_chip_write.exit

if.end.i:                                         ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = tail call i32 @regmap_write(ptr noundef %4, i32 noundef 48, i32 noundef 0) #8
  br label %tmp401_chip_write.exit

tmp401_chip_write.exit:                           ; preds = %if.end.i, %sw.bb3.i.tmp401_chip_write.exit_crit_edge, %sw.bb.i, %sw.bb.tmp401_chip_write.exit_crit_edge
  %err.0.i = phi i32 [ %call4.i, %if.end.i ], [ %call7.i.i, %sw.bb.i ], [ -22, %sw.bb3.i.tmp401_chip_write.exit_crit_edge ], [ -95, %sw.bb.tmp401_chip_write.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i7 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i7, align 4
  %regmap1.i8 = getelementptr inbounds %struct.tmp401_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %regmap1.i8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap1.i8, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #8
  %13 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %regval.i, align 4, !annotation !65
  %update_lock.i9 = getelementptr inbounds %struct.tmp401_data, ptr %10, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i9, i32 noundef 0) #8
  %14 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %sw.bb1.tmp401_temp_write.exit_crit_edge [
    i32 5, label %sw.bb1.sw.bb.i10_crit_edge
    i32 7, label %sw.bb1.sw.bb.i10_crit_edge13
    i32 9, label %sw.bb1.sw.bb.i10_crit_edge14
    i32 10, label %sw.bb8.i
  ]

sw.bb1.sw.bb.i10_crit_edge14:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge13:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.sw.bb.i10_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i10

sw.bb1.tmp401_temp_write.exit_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_temp_write.exit

sw.bb.i10:                                        ; preds = %sw.bb1.sw.bb.i10_crit_edge, %sw.bb1.sw.bb.i10_crit_edge13, %sw.bb1.sw.bb.i10_crit_edge14
  %arrayidx.i = getelementptr [24 x i8], ptr @tmp401_temp_reg_index, i32 0, i32 %attr
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i, align 1
  %idxprom.i = zext i8 %16 to i32
  %arrayidx3.i = getelementptr [7 x [3 x i8]], ptr @TMP401_TEMP_MSB, i32 0, i32 %idxprom.i, i32 %channel
  %17 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx3.i, align 1
  %conv.i = zext i8 %18 to i32
  %extended_range.i = getelementptr inbounds %struct.tmp401_data, ptr %10, i32 0, i32 4
  %19 = ptrtoint ptr %extended_range.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %extended_range.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %attr)
  %cmp.i = icmp eq i32 %attr, 9
  %cond.i = select i1 %cmp.i, i32 8, i32 4
  br i1 %tobool.not.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %sw.bb.i10
  call void @__sanitizer_cov_trace_pc() #10
  %21 = tail call i32 @llvm.smax.i32(i32 %val, i32 -64000) #8
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 191000) #8
  %add.i.i = add nsw i32 %22, 64000
  br label %tmp401_temp_to_register.exit.i

if.else.i.i:                                      ; preds = %sw.bb.i10
  call void @__sanitizer_cov_trace_pc() #10
  %23 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #8
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 127000) #8
  br label %tmp401_temp_to_register.exit.i

tmp401_temp_to_register.exit.i:                   ; preds = %if.else.i.i, %if.then.i.i
  %temp.addr.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %24, %if.else.i.i ]
  %sub.i.i11 = sub nuw nsw i32 8, %cond.i
  %mul.i.i = shl nuw nsw i32 %temp.addr.0.i.i, %sub.i.i11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp20.i.not.i = icmp eq i32 %mul.i.i, 0
  %cond33.in.v.i.i = select i1 %cmp20.i.not.i, i32 -500, i32 500
  %cond33.in.i.i = add nsw i32 %cond33.in.v.i.i, %mul.i.i
  %cond33.i.i = sdiv i32 %cond33.in.i.i, 1000
  %shl34.i.i = shl nuw nsw i32 %cond33.i.i, %cond.i
  %conv6.i = and i32 %shl34.i.i, 65520
  %25 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv6.i, ptr %regval.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %conv.i, i32 noundef %conv6.i) #8
  br label %tmp401_temp_write.exit

sw.bb8.i:                                         ; preds = %sw.bb1
  %extended_range9.i = getelementptr inbounds %struct.tmp401_data, ptr %10, i32 0, i32 4
  %26 = ptrtoint ptr %extended_range9.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %extended_range9.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool10.not.i = icmp eq i8 %27, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.smax.i32(i32 %val, i32 -64000) #8
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 191000) #8
  br label %if.end.i12

if.else.i:                                        ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #8
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 127000) #8
  br label %if.end.i12

if.end.i12:                                       ; preds = %if.else.i, %if.then.i
  %val.addr.0.i = phi i32 [ %29, %if.then.i ], [ %31, %if.else.i ]
  %arrayidx35.i = getelementptr [7 x [3 x i8]], ptr @TMP401_TEMP_MSB, i32 0, i32 3, i32 %channel
  %32 = ptrtoint ptr %arrayidx35.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx35.i, align 1
  %conv36.i = zext i8 %33 to i32
  %call37.i = call i32 @regmap_read(ptr noundef %12, i32 noundef %conv36.i, ptr noundef nonnull %regval.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end.i12.tmp401_temp_write.exit_crit_edge, label %if.end41.i

if.end.i12.tmp401_temp_write.exit_crit_edge:      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  br label %tmp401_temp_write.exit

if.end41.i:                                       ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %regval.i, align 4
  %36 = ptrtoint ptr %extended_range9.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %extended_range9.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool44.not.i = icmp eq i8 %37, 0
  %conv.i.i = and i32 %35, 65535
  %sub.i94.i = add nsw i32 %conv.i.i, -16384
  %spec.select.i.i = select i1 %tobool44.not.i, i32 %conv.i.i, i32 %sub.i94.i
  %mul.i95.i = mul nsw i32 %spec.select.i.i, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i.i)
  %cmp.i.i = icmp sgt i32 %spec.select.i.i, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 16, i32 -16
  %cond.in.i.i = add nsw i32 %cond.in.v.i.i, %mul.i95.i
  %cond.i.i = sdiv i32 %cond.in.i.i, 32
  %sub.i = add nsw i32 %cond.i.i, -255000
  %38 = call i32 @llvm.smax.i32(i32 %val.addr.0.i, i32 %sub.i) #8
  %39 = call i32 @llvm.smin.i32(i32 %38, i32 %cond.i.i) #8
  %sub60.i = add nsw i32 %cond.i.i, 500
  %add.i = sub nsw i32 %sub60.i, %39
  %div.i = sdiv i32 %add.i, 1000
  %40 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div.i, ptr %regval.i, align 4
  %call61.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 33, i32 noundef %div.i) #8
  br label %tmp401_temp_write.exit

tmp401_temp_write.exit:                           ; preds = %if.end41.i, %if.end.i12.tmp401_temp_write.exit_crit_edge, %tmp401_temp_to_register.exit.i, %sw.bb1.tmp401_temp_write.exit_crit_edge
  %ret.0.i = phi i32 [ %call37.i, %if.end.i12.tmp401_temp_write.exit_crit_edge ], [ %call61.i, %if.end41.i ], [ %call7.i, %tmp401_temp_to_register.exit.i ], [ -95, %sw.bb1.tmp401_temp_write.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i9) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #8
  br label %return

return:                                           ; preds = %tmp401_temp_write.exit, %tmp401_chip_write.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %tmp401_temp_write.exit ], [ %err.0.i, %tmp401_chip_write.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @__initcall__kmod_tmp401__312_722_tmp401_driver_init6, !1, !"__initcall__kmod_tmp401__312_722_tmp401_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/tmp401.c", i32 722, i32 1}
!2 = !{ptr @__exitcall_tmp401_driver_exit, !1, !"__exitcall_tmp401_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/tmp401.c", i32 724, i32 1}
!5 = !{ptr @__UNIQUE_ID_description314, !6, !"__UNIQUE_ID_description314", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/tmp401.c", i32 725, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/tmp401.c", i32 726, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/tmp401.c", i32 714, i32 11}
!12 = !{ptr @tmp401_driver, !13, !"tmp401_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/tmp401.c", i32 711, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/tmp401.c", i32 640, i32 3}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/tmp401.c", i32 640, i32 13}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/tmp401.c", i32 640, i32 23}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/tmp401.c", i32 640, i32 33}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/tmp401.c", i32 640, i32 43}
!24 = !{ptr @tmp401_probe.names, !25, !"names", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/tmp401.c", i32 639, i32 28}
!26 = !{ptr @tmp401_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/tmp401.c", i32 653, i32 2}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @tmp401_probe._key, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/tmp401.c", i32 656, i32 17}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/tmp401.c", i32 706, i32 2}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @tmp401_probe._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @tmp401_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @tmp401_regmap_config, !41, !"tmp401_regmap_config", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/tmp401.c", i32 254, i32 35}
!42 = !{ptr @tmp401_ops, !43, !"tmp401_ops", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/tmp401.c", i32 533, i32 31}
!44 = !{ptr @TMP401_TEMP_MSB, !45, !"TMP401_TEMP_MSB", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/tmp401.c", i32 48, i32 17}
!46 = !{ptr @tmp401_temp_reg_index, !47, !"tmp401_temp_reg_index", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/tmp401.c", i32 289, i32 17}
!48 = !{ptr @TMP432_STATUS_REG, !49, !"TMP432_STATUS_REG", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/tmp401.c", i32 58, i32 17}
!50 = !{ptr @tmp401_status_reg_index, !51, !"tmp401_status_reg_index", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/tmp401.c", i32 298, i32 17}
!52 = !{ptr @tmp401_id, !53, !"tmp401_id", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/tmp401.c", i32 91, i32 35}
!54 = !{ptr @normal_i2c, !55, !"normal_i2c", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/tmp401.c", i32 32, i32 29}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
!67 = !{i32 0, i32 33}
