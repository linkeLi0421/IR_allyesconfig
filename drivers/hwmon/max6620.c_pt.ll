; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max6620.c_pt.bc'
source_filename = "../drivers/hwmon/max6620.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.max6620_data = type { ptr, %struct.mutex, i8, i32, [4 x i8], [4 x i8], i8, [4 x i16], [4 x i16] }

@__initcall__kmod_max6620__292_510_max6620_driver_init6 = internal global ptr @max6620_driver_init, section ".initcall6.init", align 4
@max6620_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max6620_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6620_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6620_driver_exit = internal global ptr @max6620_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [32 x i8] c"max6620.author=Lucas Grunenberg\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [42 x i8] c"max6620.description=MAX6620 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [35 x i8] c"max6620.file=drivers/hwmon/max6620\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [20 x i8] c"max6620.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6620\00", [24 x i8] zeroinitializer }, align 32
@max6620_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6620\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max6620_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max6620_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @max6620_hwmon_ops, ptr @max6620_info }, [24 x i8] zeroinitializer }, align 32
@max6620_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 434, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Error reading config, aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"max6620_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/max6620.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max6620_init_client._entry_ptr = internal global ptr @max6620_init_client._entry, section ".printk_index", align 4
@max6620_init_client._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 444, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Config write error, aborting.\0A\00", [33 x i8] zeroinitializer }, align 32
@max6620_init_client._entry_ptr.9 = internal global ptr @max6620_init_client._entry.7, section ".printk_index", align 4
@config_reg = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\02\03\04\05", [28 x i8] zeroinitializer }, align 32
@dyn_reg = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\06\07\08\09", [28 x i8] zeroinitializer }, align 32
@max6620_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @max6620_is_visible, ptr @max6620_read, ptr null, ptr @max6620_write }, [16 x i8] zeroinitializer }, align 32
@max6620_info = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.compoundliteral.10, ptr null], [24 x i8] zeroinitializer }, align 32
@target_reg = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" \22$&", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tach_reg = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\10\12\14\16", [28 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 418, i32 418, i32 418, i32 418, i32 0], [44 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 7, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@switch.table.max6620_is_visible = internal constant { [8 x i16], [16 x i8] } { [8 x i16] [i16 292, i16 0, i16 0, i16 0, i16 420, i16 0, i16 420, i16 292], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.12 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"max6620_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 501, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 504, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"max6620_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 495, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 481, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"max6620_chip_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 419, i32 37 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 434, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 444, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"config_reg\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 99, i32 17 }
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"dyn_reg\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 106, i32 17 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"max6620_hwmon_ops\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 413, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [13 x i8] c"max6620_info\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 404, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"target_reg\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 120, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"tach_reg\00", align 1
@___asan_gen_.71 = private constant [27 x i8] c"../drivers/hwmon/max6620.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 113, i32 17 }
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [32 x i8] c"switch.table.max6620_is_visible\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max6620_driver_exit, ptr @__initcall__kmod_max6620__292_510_max6620_driver_init6, ptr @max6620_driver_exit, ptr @max6620_init_client._entry, ptr @max6620_init_client._entry.7, ptr @max6620_init_client._entry_ptr, ptr @max6620_init_client._entry_ptr.9, ptr @max6620_driver, ptr @.str, ptr @max6620_id, ptr @max6620_probe.__key, ptr @.str.1, ptr @max6620_chip_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @config_reg, ptr @dyn_reg, ptr @max6620_hwmon_ops, ptr @max6620_info, ptr @target_reg, ptr @tach_reg, ptr @.compoundliteral, ptr @.compoundliteral.10, ptr @switch.table.max6620_is_visible], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_init_client._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dyn_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6620_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @target_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tach_reg to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max6620_is_visible to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6620_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6620_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6620_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max6620_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6620_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.max6620_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6620_probe.__key) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i = icmp slt i32 %call.i20, 0
  br i1 %cmp.i, label %if.end.cleanup.sink.split.i_crit_edge, label %if.end.i

if.end.cleanup.sink.split.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %if.end
  %3 = trunc i32 %call.i20 to i8
  %conv.i = or i8 %3, 16
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 0, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup.sink.split.i_crit_edge, label %for.body.preheader.i

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

for.body.preheader.i:                             ; preds = %if.end.i
  %call13.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %for.body.preheader.i.cleanup_crit_edge, label %if.end17.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.i:                                       ; preds = %if.end32.i
  %call13.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.1.i)
  %cmp14.1.i = icmp slt i32 %call13.1.i, 0
  br i1 %cmp14.1.i, label %for.cond.i.cleanup_crit_edge, label %if.end17.1.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.1.i:                                     ; preds = %for.cond.i
  %arrayidx19.1.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 4, i32 1
  %4 = trunc i32 %call13.1.i to i8
  %conv24.1.i = or i8 %4, -88
  %5 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv24.1.i, ptr %arrayidx19.1.i, align 1
  %call28.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 3, i8 noundef zeroext %conv24.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %cmp29.1.i = icmp slt i32 %call28.1.i, 0
  br i1 %cmp29.1.i, label %if.end17.1.i.cleanup_crit_edge, label %if.end32.1.i

if.end17.1.i.cleanup_crit_edge:                   ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.1.i:                                     ; preds = %if.end17.1.i
  %arrayidx33.1.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 48, ptr %arrayidx33.1.i, align 1
  %call37.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 7, i8 noundef zeroext 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.1.i)
  %cmp38.1.i = icmp slt i32 %call37.1.i, 0
  br i1 %cmp38.1.i, label %if.end32.1.i.cleanup_crit_edge, label %for.cond.1.i

if.end32.1.i.cleanup_crit_edge:                   ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.1.i:                                     ; preds = %if.end32.1.i
  %call13.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.2.i)
  %cmp14.2.i = icmp slt i32 %call13.2.i, 0
  br i1 %cmp14.2.i, label %for.cond.1.i.cleanup_crit_edge, label %if.end17.2.i

for.cond.1.i.cleanup_crit_edge:                   ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx19.2.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 4, i32 2
  %7 = trunc i32 %call13.2.i to i8
  %conv24.2.i = or i8 %7, -88
  %8 = ptrtoint ptr %arrayidx19.2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv24.2.i, ptr %arrayidx19.2.i, align 1
  %call28.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 4, i8 noundef zeroext %conv24.2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %cmp29.2.i = icmp slt i32 %call28.2.i, 0
  br i1 %cmp29.2.i, label %if.end17.2.i.cleanup_crit_edge, label %if.end32.2.i

if.end17.2.i.cleanup_crit_edge:                   ; preds = %if.end17.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.2.i:                                     ; preds = %if.end17.2.i
  %arrayidx33.2.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 5, i32 2
  %9 = ptrtoint ptr %arrayidx33.2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %arrayidx33.2.i, align 1
  %call37.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 8, i8 noundef zeroext 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.2.i)
  %cmp38.2.i = icmp slt i32 %call37.2.i, 0
  br i1 %cmp38.2.i, label %if.end32.2.i.cleanup_crit_edge, label %for.cond.2.i

if.end32.2.i.cleanup_crit_edge:                   ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.2.i:                                     ; preds = %if.end32.2.i
  %call13.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %2, i8 noundef zeroext 5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.3.i)
  %cmp14.3.i = icmp slt i32 %call13.3.i, 0
  br i1 %cmp14.3.i, label %for.cond.2.i.cleanup_crit_edge, label %if.end17.3.i

for.cond.2.i.cleanup_crit_edge:                   ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx19.3.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 4, i32 3
  %10 = trunc i32 %call13.3.i to i8
  %conv24.3.i = or i8 %10, -88
  %11 = ptrtoint ptr %arrayidx19.3.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv24.3.i, ptr %arrayidx19.3.i, align 1
  %call28.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 5, i8 noundef zeroext %conv24.3.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3.i)
  %cmp29.3.i = icmp slt i32 %call28.3.i, 0
  br i1 %cmp29.3.i, label %if.end17.3.i.cleanup_crit_edge, label %max6620_init_client.exit

if.end17.3.i.cleanup_crit_edge:                   ; preds = %if.end17.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17.i:                                       ; preds = %for.body.preheader.i
  %arrayidx19.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 4, i32 0
  %12 = trunc i32 %call13.i to i8
  %conv24.i = or i8 %12, -88
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv24.i, ptr %arrayidx19.i, align 1
  %call28.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 2, i8 noundef zeroext %conv24.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end17.i.cleanup_crit_edge, label %if.end32.i

if.end17.i.cleanup_crit_edge:                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32.i:                                       ; preds = %if.end17.i
  %arrayidx33.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 5, i32 0
  %14 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 48, ptr %arrayidx33.i, align 1
  %call37.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 6, i8 noundef zeroext 48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end32.i.cleanup_crit_edge, label %for.cond.i

if.end32.i.cleanup_crit_edge:                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.end.i.cleanup.sink.split.i_crit_edge, %if.end.cleanup.sink.split.i_crit_edge
  %.str.8.sink.i = phi ptr [ @.str.2, %if.end.cleanup.sink.split.i_crit_edge ], [ @.str.8, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i20, %if.end.cleanup.sink.split.i_crit_edge ], [ %call2.i, %if.end.i.cleanup.sink.split.i_crit_edge ]
  %dev9.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull %.str.8.sink.i) #9
  br label %cleanup

max6620_init_client.exit:                         ; preds = %if.end17.3.i
  %arrayidx33.3.i = getelementptr %struct.max6620_data, ptr %call.i, i32 0, i32 5, i32 3
  %15 = ptrtoint ptr %arrayidx33.3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 48, ptr %arrayidx33.3.i, align 1
  %call37.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %2, i8 noundef zeroext 9, i8 noundef zeroext 48) #6
  %16 = tail call i32 @llvm.smin.i32(i32 %call37.3.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call37.3.i)
  %tobool4.not = icmp sgt i32 %call37.3.i, -1
  br i1 %tobool4.not, label %if.end6, label %max6620_init_client.exit.cleanup_crit_edge

max6620_init_client.exit.cleanup_crit_edge:       ; preds = %max6620_init_client.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %max6620_init_client.exit
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call7 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6620_chip_info, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %17 = ptrtoint ptr %call7 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %17, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %max6620_init_client.exit.cleanup_crit_edge, %cleanup.sink.split.i, %if.end32.i.cleanup_crit_edge, %if.end17.i.cleanup_crit_edge, %if.end17.3.i.cleanup_crit_edge, %for.cond.2.i.cleanup_crit_edge, %if.end32.2.i.cleanup_crit_edge, %if.end17.2.i.cleanup_crit_edge, %for.cond.1.i.cleanup_crit_edge, %if.end32.1.i.cleanup_crit_edge, %if.end17.1.i.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ %16, %max6620_init_client.exit.cleanup_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ], [ %call28.3.i, %if.end17.3.i.cleanup_crit_edge ], [ %call13.3.i, %for.cond.2.i.cleanup_crit_edge ], [ %call37.2.i, %if.end32.2.i.cleanup_crit_edge ], [ %call28.2.i, %if.end17.2.i.cleanup_crit_edge ], [ %call13.2.i, %for.cond.1.i.cleanup_crit_edge ], [ %call37.1.i, %if.end32.1.i.cleanup_crit_edge ], [ %call28.1.i, %if.end17.1.i.cleanup_crit_edge ], [ %call13.1.i, %for.cond.i.cleanup_crit_edge ], [ %call37.i, %if.end32.i.cleanup_crit_edge ], [ %call28.i, %if.end17.i.cleanup_crit_edge ], [ %call13.i, %for.body.preheader.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max6620_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cond = icmp eq i32 %type, 7
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.bb:                                            ; preds = %entry
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 8
  br i1 %0, label %switch.lookup, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [8 x i16], ptr @switch.table.max6620_is_visible, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %sw.bb.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6620_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @max6620_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cond = icmp eq i32 %type, 7
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %attr, label %sw.bb.cleanup_crit_edge [
    i32 8, label %sw.bb3
    i32 5, label %sw.bb40
    i32 1, label %sw.bb44
    i32 7, label %sw.bb57
  ]

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %sw.bb
  %update_lock = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %fault = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %fault, align 4
  %conv = zext i8 %6 to i32
  %shl = shl nuw i32 1, %channel
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %lnot.ext, ptr %val, align 4
  br i1 %tobool, label %if.then7, label %sw.bb3.if.end38_crit_edge

sw.bb3.if.end38_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then7:                                         ; preds = %sw.bb3
  %arrayidx = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 8, i32 %channel
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = lshr i16 %9, 3
  %conv10 = trunc i16 %10 to i8
  %arrayidx17 = getelementptr [4 x i8], ptr @target_reg, i32 0, i32 %channel
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx17, align 1
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %12, i8 noundef zeroext %conv10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

if.end23:                                         ; preds = %if.then7
  %conv8 = trunc i16 %9 to i8
  %shl14 = shl i8 %conv8, 5
  %add = add i8 %12, 1
  %call27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add, i8 noundef zeroext %shl14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then30, label %if.end32

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

if.end32:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %fault, align 4
  %15 = trunc i32 %shl to i8
  %16 = xor i8 %15, -1
  %conv37 = and i8 %14, %16
  store i8 %conv37, ptr %fault, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end32, %sw.bb3.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

sw.bb40:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx41 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %channel
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41, align 1
  %19 = lshr i8 %18, 5
  %shl.i = shl nuw i8 1, %19
  %conv43 = zext i8 %shl.i to i32
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv43, ptr %val, align 4
  br label %cleanup

sw.bb44:                                          ; preds = %sw.bb
  %arrayidx45 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 7, i32 %channel
  %21 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx45, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %cmp47 = icmp eq i16 %22, 0
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx51 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %channel
  %24 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx51, align 1
  %26 = lshr i8 %25, 5
  %shl.i120 = shl nuw i8 1, %26
  %conv.i = zext i8 %shl.i120 to i32
  %mul1.i = mul nuw nsw i32 %conv.i, 491520
  %conv2.i = zext i16 %22 to i32
  %mul3.i = shl nuw nsw i32 %conv2.i, 1
  %div4.i = udiv i32 %mul1.i, %mul3.i
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div4.i, ptr %val, align 4
  br label %cleanup

sw.bb57:                                          ; preds = %sw.bb
  %arrayidx59 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 8, i32 %channel
  %28 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx59, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp61 = icmp eq i16 %29, 0
  br i1 %cmp61, label %if.then63, label %if.else64

if.then63:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %val, align 4
  br label %cleanup

if.else64:                                        ; preds = %sw.bb57
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx66 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %channel
  %31 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx66, align 1
  %33 = lshr i8 %32, 5
  %shl.i121 = shl nuw i8 1, %33
  %conv.i122 = zext i8 %shl.i121 to i32
  %mul1.i123 = mul nuw nsw i32 %conv.i122, 491520
  %conv2.i124 = zext i16 %29 to i32
  %mul3.i125 = shl nuw nsw i32 %conv2.i124, 1
  %div4.i126 = udiv i32 %mul1.i123, %mul3.i125
  %34 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div4.i126, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else64, %if.then63, %if.else, %if.then49, %sw.bb40, %if.end38, %if.then30, %if.then21, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call18, %if.then21 ], [ %call27, %if.then30 ], [ %call, %entry.cleanup_crit_edge ], [ -95, %sw.bb.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ 0, %if.end38 ], [ 0, %sw.bb40 ], [ 0, %if.else ], [ 0, %if.then49 ], [ 0, %if.else64 ], [ 0, %if.then63 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6620_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @max6620_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %cond70 = icmp eq i32 %type, 7
  br i1 %cond70, label %sw.bb, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

sw.bb:                                            ; preds = %if.end
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %attr, label %sw.bb.error_crit_edge [
    i32 5, label %sw.bb3
    i32 7, label %sw.bb20
  ]

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

sw.bb3:                                           ; preds = %sw.bb
  %5 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %val, label %sw.bb3.error_crit_edge [
    i32 1, label %sw.bb3.sw.epilog_crit_edge
    i32 2, label %sw.bb5
    i32 4, label %sw.bb6
    i32 8, label %sw.bb7
    i32 16, label %sw.bb8
    i32 32, label %sw.bb9
  ]

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3.error_crit_edge:                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

sw.bb5:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb6:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb7:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb9:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb3.sw.epilog_crit_edge
  %div.0 = phi i8 [ -96, %sw.bb9 ], [ -128, %sw.bb8 ], [ 96, %sw.bb7 ], [ 64, %sw.bb6 ], [ 32, %sw.bb5 ], [ 0, %sw.bb3.sw.epilog_crit_edge ]
  %arrayidx = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %channel
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %8 = and i8 %7, 31
  %or = or i8 %8, %div.0
  store i8 %or, ptr %arrayidx, align 1
  %arrayidx16 = getelementptr [4 x i8], ptr @dyn_reg, i32 0, i32 %channel
  %9 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx16, align 1
  %call19 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %10, i8 noundef zeroext %or) #6
  br label %error

sw.bb20:                                          ; preds = %sw.bb
  %11 = tail call i32 @llvm.smax.i32(i32 %val, i32 240)
  %12 = tail call i32 @llvm.umin.i32(i32 %11, i32 30000)
  %arrayidx31 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %channel
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx31, align 1
  %15 = lshr i8 %14, 5
  %shl.i = shl nuw i8 1, %15
  %conv.i = zext i8 %shl.i to i32
  %mul1.i = mul nuw nsw i32 %conv.i, 491520
  %mul2.i = shl nuw nsw i32 %12, 1
  %div3.i100 = udiv i32 %mul1.i, %mul2.i
  %16 = lshr i32 %div3.i100, 3
  %conv36 = trunc i32 %16 to i8
  %arrayidx41 = getelementptr [4 x i8], ptr @target_reg, i32 0, i32 %channel
  %17 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx41, align 1
  %call42 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %18, i8 noundef zeroext %conv36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %sw.bb20.error_crit_edge, label %if.end46

sw.bb20.error_crit_edge:                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end46:                                         ; preds = %sw.bb20
  %conv34 = trunc i32 %div3.i100 to i8
  %shl38 = shl i8 %conv34, 5
  %add = add i8 %18, 1
  %call50 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add, i8 noundef zeroext %shl38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end46.error_crit_edge, label %if.end54

if.end46.error_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %shl55 = shl nuw i32 1, %channel
  %fault = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %fault, align 4
  %21 = trunc i32 %shl55 to i8
  %22 = xor i8 %21, -1
  %conv58 = and i8 %20, %22
  store i8 %conv58, ptr %fault, align 4
  br label %error

error:                                            ; preds = %if.end54, %if.end46.error_crit_edge, %sw.bb20.error_crit_edge, %sw.epilog, %sw.bb3.error_crit_edge, %sw.bb.error_crit_edge, %if.end.error_crit_edge
  %ret.0 = phi i32 [ %call42, %sw.bb20.error_crit_edge ], [ %call50, %if.end46.error_crit_edge ], [ %call50, %if.end54 ], [ %call19, %sw.epilog ], [ -22, %sw.bb3.error_crit_edge ], [ -95, %sw.bb.error_crit_edge ], [ -95, %if.end.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %error ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max6620_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %last_updated = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.for.body.preheader_crit_edge, label %lor.lhs.false

entry.for.body.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !54
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.for.body.preheader_crit_edge, label %lor.lhs.false.error_crit_edge

lor.lhs.false.error_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

lor.lhs.false.for.body.preheader_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

for.body.preheader:                               ; preds = %lor.lhs.false.for.body.preheader_crit_edge, %entry.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %if.end55.for.body_crit_edge, %for.body.preheader
  %i.0125 = phi i32 [ %inc, %if.end55.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr [4 x i8], ptr @config_reg, i32 0, i32 %i.0125
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.error_crit_edge, label %if.end

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end:                                           ; preds = %for.body
  %conv = trunc i32 %call3 to i8
  %arrayidx6 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 4, i32 %i.0125
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr [4 x i8], ptr @dyn_reg, i32 0, i32 %i.0125
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx7, align 1
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end.error_crit_edge, label %if.end12

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end12:                                         ; preds = %if.end
  %conv13 = trunc i32 %call8 to i8
  %arrayidx14 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 5, i32 %i.0125
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr [4 x i8], ptr @tach_reg, i32 0, i32 %i.0125
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %call16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end12.error_crit_edge, label %if.end20

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end20:                                         ; preds = %if.end12
  %call16.tr = trunc i32 %call16 to i16
  %17 = shl i16 %call16.tr, 3
  %conv21 = and i16 %17, 2040
  %arrayidx22 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 7, i32 %i.0125
  %18 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv21, ptr %arrayidx22, align 2
  %add25 = add i8 %16, 1
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end20.error_crit_edge, label %if.end31

if.end20.error_crit_edge:                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end31:                                         ; preds = %if.end20
  %19 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx22, align 2
  %21 = trunc i32 %call27 to i16
  %22 = lshr i16 %21, 5
  %23 = and i16 %22, 7
  %conv36 = or i16 %20, %23
  store i16 %conv36, ptr %arrayidx22, align 2
  %arrayidx37 = getelementptr [4 x i8], ptr @target_reg, i32 0, i32 %i.0125
  %24 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx37, align 1
  %call38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.end31.error_crit_edge, label %if.end42

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end42:                                         ; preds = %if.end31
  %call38.tr = trunc i32 %call38 to i16
  %26 = shl i16 %call38.tr, 3
  %conv45 = and i16 %26, 2040
  %arrayidx46 = getelementptr %struct.max6620_data, ptr %1, i32 0, i32 8, i32 %i.0125
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv45, ptr %arrayidx46, align 2
  %add49 = add i8 %25, 1
  %call51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add49) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end42.error_crit_edge, label %if.end55

if.end42.error_crit_edge:                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end55:                                         ; preds = %if.end42
  %28 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %arrayidx46, align 2
  %30 = trunc i32 %call51 to i16
  %31 = lshr i16 %30, 5
  %32 = and i16 %31, 7
  %conv62 = or i16 %29, %32
  store i16 %conv62, ptr %arrayidx46, align 2
  %inc = add nuw nsw i32 %i.0125, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end55.for.body_crit_edge

if.end55.for.body_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end55
  %call63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %for.end.error_crit_edge, label %if.end67

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %33 = lshr i32 %call63, 4
  %and69 = and i32 %call63, 15
  %and70 = and i32 %and69, %33
  %fault = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %fault to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fault, align 4
  %36 = trunc i32 %and70 to i8
  %conv73 = or i8 %35, %36
  store i8 %conv73, ptr %fault, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %37 = load volatile i32, ptr @jiffies, align 128
  %38 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %last_updated, align 4
  %valid75 = getelementptr inbounds %struct.max6620_data, ptr %1, i32 0, i32 2
  %39 = ptrtoint ptr %valid75 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %valid75, align 4
  br label %error

error:                                            ; preds = %if.end67, %for.end.error_crit_edge, %if.end42.error_crit_edge, %if.end31.error_crit_edge, %if.end20.error_crit_edge, %if.end12.error_crit_edge, %if.end.error_crit_edge, %for.body.error_crit_edge, %lor.lhs.false.error_crit_edge
  %ret.0 = phi i32 [ %call63, %for.end.error_crit_edge ], [ %call63, %if.end67 ], [ 0, %lor.lhs.false.error_crit_edge ], [ %call51, %if.end42.error_crit_edge ], [ %call38, %if.end31.error_crit_edge ], [ %call27, %if.end20.error_crit_edge ], [ %call16, %if.end12.error_crit_edge ], [ %call8, %if.end.error_crit_edge ], [ %call3, %for.body.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__initcall__kmod_max6620__292_510_max6620_driver_init6, !1, !"__initcall__kmod_max6620__292_510_max6620_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max6620.c", i32 510, i32 1}
!2 = !{ptr @__exitcall_max6620_driver_exit, !1, !"__exitcall_max6620_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max6620.c", i32 512, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max6620.c", i32 513, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max6620.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max6620.c", i32 504, i32 11}
!12 = !{ptr @max6620_driver, !13, !"max6620_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max6620.c", i32 501, i32 26}
!14 = !{ptr @max6620_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max6620.c", i32 481, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max6620.c", i32 434, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @max6620_init_client._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @max6620_init_client._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max6620.c", i32 444, i32 3}
!27 = !{ptr @max6620_init_client._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max6620_init_client._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @config_reg, !30, !"config_reg", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/max6620.c", i32 99, i32 17}
!31 = !{ptr @dyn_reg, !32, !"dyn_reg", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/max6620.c", i32 106, i32 17}
!33 = !{ptr @max6620_chip_info, !34, !"max6620_chip_info", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/max6620.c", i32 419, i32 37}
!35 = !{ptr @max6620_hwmon_ops, !36, !"max6620_hwmon_ops", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/max6620.c", i32 413, i32 31}
!37 = !{ptr @tach_reg, !38, !"tach_reg", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/max6620.c", i32 113, i32 17}
!39 = !{ptr @target_reg, !40, !"target_reg", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/max6620.c", i32 120, i32 17}
!41 = !{ptr @max6620_info, !42, !"max6620_info", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/max6620.c", i32 404, i32 41}
!43 = !{ptr @max6620_id, !44, !"max6620_id", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/max6620.c", i32 495, i32 35}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i8 0, i8 2}
