; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83773g.c_pt.bc'
source_filename = "../drivers/hwmon/w83773g.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@__initcall__kmod_w83773g__296_302_w83773_driver_init6 = internal global ptr @w83773_driver_init, section ".initcall6.init", align 4
@w83773_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @w83773_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @w83773_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83773_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_w83773_driver_exit = internal global ptr @w83773_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [45 x i8] c"w83773g.author=Lei YU <mine260309@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [54 x i8] c"w83773g.description=W83773G temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [35 x i8] c"w83773g.file=drivers/hwmon/w83773g\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"w83773g.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83773g\00", [24 x i8] zeroinitializer }, align 32
@w83773_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,w83773g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@w83773_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83773g\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@w83773_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@w83773_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"w83773g:269:(&w83773_regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@w83773_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 271, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"w83773_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/w83773g.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w83773_probe._entry_ptr = internal global ptr @w83773_probe._entry, section ".printk_index", align 4
@w83773_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 278, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"error writing config rate register\0A\00", [60 x i8] zeroinitializer }, align 32
@w83773_probe._entry_ptr.9 = internal global ptr @w83773_probe._entry.7, section ".printk_index", align 4
@w83773_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @w83773_ops, ptr @w83773_info }, [24 x i8] zeroinitializer }, align 32
@w83773_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @w83773_is_visible, ptr @w83773_read, ptr null, ptr @w83773_write }, [16 x i8] zeroinitializer }, align 32
@w83773_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.10, ptr @.compoundliteral.12, ptr null], [20 x i8] zeroinitializer }, align 32
@W83773_TEMP_MSB = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\01$", [30 x i8] zeroinitializer }, align 32
@W83773_TEMP_LSB = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\10%", [30 x i8] zeroinitializer }, align 32
@W83773_STATUS = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\17", [30 x i8] zeroinitializer }, align 32
@W83773_OFFSET_MSB = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\11\15", [30 x i8] zeroinitializer }, align 32
@W83773_OFFSET_LSB = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\12\16", [30 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 2, i32 1572866, i32 1572866, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.11 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 19, i64 20]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 19, i64 20]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"w83773_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 292, i32 26 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 295, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"w83773_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 43, i32 49 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"w83773_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 36, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [21 x i8] c"w83773_regmap_config\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 257, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 269, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 271, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 278, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"w83773_chip_info\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 252, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant [11 x i8] c"w83773_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 246, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant [12 x i8] c"w83773_info\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 236, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"W83773_TEMP_MSB\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 30, i32 17 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"W83773_TEMP_LSB\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 29, i32 17 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"W83773_STATUS\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 27, i32 17 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"W83773_OFFSET_MSB\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 33, i32 17 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"W83773_OFFSET_LSB\00", align 1
@___asan_gen_.82 = private constant [27 x i8] c"../drivers/hwmon/w83773g.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 32, i32 17 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_w83773_driver_exit, ptr @__initcall__kmod_w83773g__296_302_w83773_driver_init6, ptr @w83773_driver_exit, ptr @w83773_probe._entry, ptr @w83773_probe._entry.7, ptr @w83773_probe._entry_ptr, ptr @w83773_probe._entry_ptr.9, ptr @w83773_driver, ptr @.str, ptr @w83773_of_match, ptr @w83773_id, ptr @w83773_probe._key, ptr @w83773_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @w83773_chip_info, ptr @w83773_ops, ptr @w83773_info, ptr @W83773_TEMP_MSB, ptr @W83773_TEMP_LSB, ptr @W83773_STATUS, ptr @W83773_OFFSET_MSB, ptr @W83773_OFFSET_LSB, ptr @.compoundliteral, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83773_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83773_TEMP_MSB to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83773_TEMP_LSB to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83773_STATUS to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83773_OFFSET_MSB to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83773_OFFSET_LSB to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83773_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83773_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w83773_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @w83773_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83773_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @w83773_regmap_config, ptr noundef nonnull @w83773_probe._key, ptr noundef nonnull @.str.1) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 10, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call11 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @w83773_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  %2 = ptrtoint ptr %call11 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %2, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end8, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %call4, %do.end8 ], [ %spec.select.i, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @w83773_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.sw.epilog6_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog6_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cond = icmp eq i32 %attr, 5
  br i1 %cond, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog6_crit_edge

sw.bb.sw.epilog6_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %attr, label %sw.bb2.sw.epilog6_crit_edge [
    i32 1, label %sw.bb2.return_crit_edge
    i32 19, label %sw.bb2.return_crit_edge8
    i32 20, label %sw.bb4
  ]

sw.bb2.return_crit_edge8:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2.sw.epilog6_crit_edge:                      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.epilog6:                                       ; preds = %sw.bb2.sw.epilog6_crit_edge, %sw.bb.sw.epilog6_crit_edge, %entry.sw.epilog6_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog6, %sw.bb4, %sw.bb2.return_crit_edge, %sw.bb2.return_crit_edge8, %sw.bb.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.epilog6 ], [ 420, %sw.bb4 ], [ 420, %sw.bb.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge ], [ 292, %sw.bb2.return_crit_edge8 ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83773_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval_high.i47 = alloca i32, align 4
  %regval_low.i48 = alloca i32, align 4
  %regval.i39 = alloca i32, align 4
  %regval_high.i = alloca i32, align 4
  %regval_low.i = alloca i32, align 4
  %regval.i28 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %2 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval.i, align 4, !annotation !60
  %call.i = call i32 @regmap_read(ptr noundef %1, i32 noundef 4, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then2.get_update_interval.exit_crit_edge, label %if.end.i

if.then2.get_update_interval.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_update_interval.exit

if.end.i:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %regval.i, align 4
  %shr.i = lshr i32 16000, %4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr.i, ptr %val, align 4
  br label %get_update_interval.exit

get_update_interval.exit:                         ; preds = %if.end.i, %if.then2.get_update_interval.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %if.then2.get_update_interval.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %cleanup

if.end4:                                          ; preds = %entry
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %attr, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 19, label %sw.bb10
    i32 20, label %sw.bb13
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp5 = icmp eq i32 %channel, 0
  br i1 %cmp5, label %if.then6, label %if.end8

if.then6:                                         ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i28) #7
  %7 = ptrtoint ptr %regval.i28 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %regval.i28, align 4, !annotation !60
  %call.i29 = call i32 @regmap_read(ptr noundef %1, i32 noundef 0, ptr noundef nonnull %regval.i28) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %cmp.i30 = icmp slt i32 %call.i29, 0
  br i1 %cmp.i30, label %if.then6.get_local_temp.exit_crit_edge, label %if.end.i31

if.then6.get_local_temp.exit_crit_edge:           ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_local_temp.exit

if.end.i31:                                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %regval.i28 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regval.i28, align 4
  %sext.i = shl i32 %9, 24
  %conv.i.i = ashr exact i32 %sext.i, 24
  %mul.i.i = mul nsw i32 %conv.i.i, 1000
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i.i, ptr %val, align 4
  br label %get_local_temp.exit

get_local_temp.exit:                              ; preds = %if.end.i31, %if.then6.get_local_temp.exit_crit_edge
  %retval.0.i32 = phi i32 [ 0, %if.end.i31 ], [ %call.i29, %if.then6.get_local_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i28) #7
  br label %cleanup

if.end8:                                          ; preds = %sw.bb
  %sub = add i32 %channel, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval_high.i) #7
  %11 = ptrtoint ptr %regval_high.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regval_high.i, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval_low.i) #7
  %12 = ptrtoint ptr %regval_low.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %regval_low.i, align 4, !annotation !60
  %arrayidx.i = getelementptr [2 x i8], ptr @W83773_TEMP_MSB, i32 0, i32 %sub
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %14 to i32
  %call.i33 = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv.i, ptr noundef nonnull %regval_high.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp.i34, label %if.end8.get_remote_temp.exit_crit_edge, label %if.end.i35

if.end8.get_remote_temp.exit_crit_edge:           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_remote_temp.exit

if.end.i35:                                       ; preds = %if.end8
  %arrayidx2.i = getelementptr [2 x i8], ptr @W83773_TEMP_LSB, i32 0, i32 %sub
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %16 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv3.i, ptr noundef nonnull %regval_low.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i35.get_remote_temp.exit_crit_edge, label %if.end8.i

if.end.i35.get_remote_temp.exit_crit_edge:        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_remote_temp.exit

if.end8.i:                                        ; preds = %if.end.i35
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %regval_high.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %regval_high.i, align 4
  %19 = ptrtoint ptr %regval_low.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval_low.i, align 4
  %sext.i36 = shl i32 %18, 24
  %shl.i.i = ashr exact i32 %sext.i36, 21
  %21 = lshr i32 %20, 5
  %22 = and i32 %21, 7
  %or.i.i = or i32 %22, %shl.i.i
  %mul.i.i37 = mul nsw i32 %or.i.i, 125
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i.i37, ptr %val, align 4
  br label %get_remote_temp.exit

get_remote_temp.exit:                             ; preds = %if.end8.i, %if.end.i35.get_remote_temp.exit_crit_edge, %if.end8.get_remote_temp.exit_crit_edge
  %retval.0.i38 = phi i32 [ 0, %if.end8.i ], [ %call.i33, %if.end8.get_remote_temp.exit_crit_edge ], [ %call4.i, %if.end.i35.get_remote_temp.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval_low.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval_high.i) #7
  br label %cleanup

sw.bb10:                                          ; preds = %if.end4
  %sub11 = add i32 %channel, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i39) #7
  %24 = ptrtoint ptr %regval.i39 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %regval.i39, align 4, !annotation !60
  %arrayidx.i40 = getelementptr [2 x i8], ptr @W83773_STATUS, i32 0, i32 %sub11
  %25 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i40, align 1
  %conv.i41 = zext i8 %26 to i32
  %call.i42 = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv.i41, ptr noundef nonnull %regval.i39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42)
  %cmp.i43 = icmp slt i32 %call.i42, 0
  br i1 %cmp.i43, label %sw.bb10.get_fault.exit_crit_edge, label %if.end.i45

sw.bb10.get_fault.exit_crit_edge:                 ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_fault.exit

if.end.i45:                                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %regval.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %regval.i39, align 4
  %and.i = lshr i32 %28, 2
  %shr.i44 = and i32 %and.i, 1
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %shr.i44, ptr %val, align 4
  br label %get_fault.exit

get_fault.exit:                                   ; preds = %if.end.i45, %sw.bb10.get_fault.exit_crit_edge
  %retval.0.i46 = phi i32 [ 0, %if.end.i45 ], [ %call.i42, %sw.bb10.get_fault.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i39) #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end4
  %sub14 = add i32 %channel, -1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval_high.i47) #7
  %30 = ptrtoint ptr %regval_high.i47 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %regval_high.i47, align 4, !annotation !60
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval_low.i48) #7
  %31 = ptrtoint ptr %regval_low.i48 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %regval_low.i48, align 4, !annotation !60
  %arrayidx.i49 = getelementptr [2 x i8], ptr @W83773_OFFSET_MSB, i32 0, i32 %sub14
  %32 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i49, align 1
  %conv.i50 = zext i8 %33 to i32
  %call.i51 = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv.i50, ptr noundef nonnull %regval_high.i47) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51)
  %cmp.i52 = icmp slt i32 %call.i51, 0
  br i1 %cmp.i52, label %sw.bb13.get_offset.exit_crit_edge, label %if.end.i57

sw.bb13.get_offset.exit_crit_edge:                ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_offset.exit

if.end.i57:                                       ; preds = %sw.bb13
  %arrayidx2.i53 = getelementptr [2 x i8], ptr @W83773_OFFSET_LSB, i32 0, i32 %sub14
  %34 = ptrtoint ptr %arrayidx2.i53 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2.i53, align 1
  %conv3.i54 = zext i8 %35 to i32
  %call4.i55 = call i32 @regmap_read(ptr noundef %1, i32 noundef %conv3.i54, ptr noundef nonnull %regval_low.i48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i55)
  %cmp5.i56 = icmp slt i32 %call4.i55, 0
  br i1 %cmp5.i56, label %if.end.i57.get_offset.exit_crit_edge, label %if.end8.i62

if.end.i57.get_offset.exit_crit_edge:             ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_offset.exit

if.end8.i62:                                      ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %regval_high.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regval_high.i47, align 4
  %38 = ptrtoint ptr %regval_low.i48 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regval_low.i48, align 4
  %sext.i58 = shl i32 %37, 24
  %shl.i.i59 = ashr exact i32 %sext.i58, 21
  %40 = lshr i32 %39, 5
  %41 = and i32 %40, 7
  %or.i.i60 = or i32 %41, %shl.i.i59
  %mul.i.i61 = mul nsw i32 %or.i.i60, 125
  %42 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul.i.i61, ptr %val, align 4
  br label %get_offset.exit

get_offset.exit:                                  ; preds = %if.end8.i62, %if.end.i57.get_offset.exit_crit_edge, %sw.bb13.get_offset.exit_crit_edge
  %retval.0.i63 = phi i32 [ 0, %if.end8.i62 ], [ %call.i51, %sw.bb13.get_offset.exit_crit_edge ], [ %call4.i55, %if.end.i57.get_offset.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval_low.i48) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval_high.i47) #7
  br label %cleanup

cleanup:                                          ; preds = %get_offset.exit, %get_fault.exit, %get_remote_temp.exit, %get_local_temp.exit, %if.end4.cleanup_crit_edge, %get_update_interval.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %get_update_interval.exit ], [ %retval.0.i63, %get_offset.exit ], [ %retval.0.i46, %get_fault.exit ], [ %retval.0.i32, %get_local_temp.exit ], [ %retval.0.i38, %get_remote_temp.exit ], [ -95, %if.then.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83773_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = tail call i32 @llvm.smax.i32(i32 %val, i32 62) #7
  %3 = tail call i32 @llvm.umin.i32(i32 %2, i32 16000) #7
  %mul7.i = mul nuw nsw i32 %3, 80
  %div14.i = udiv i32 %mul7.i, 4375
  %4 = tail call i32 @llvm.ctlz.i32(i32 %div14.i, i1 false) #7, !range !61
  %sub.i = add nsw i32 %4, -23
  %call8.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 10, i32 noundef %sub.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp3 = icmp eq i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %attr)
  %cmp5 = icmp eq i32 %attr, 20
  %or.cond13 = and i1 %cmp3, %cmp5
  br i1 %or.cond13, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6:                                         ; preds = %if.end
  %sub = add i32 %channel, -1
  %5 = tail call i32 @llvm.smax.i32(i32 %val, i32 -127825) #7
  %6 = tail call i32 @llvm.smin.i32(i32 %5, i32 127825) #7
  %div.i = sdiv i32 %6, 125
  %7 = lshr i32 %div.i, 3
  %arrayidx.i = getelementptr [2 x i8], ptr @W83773_OFFSET_MSB, i32 0, i32 %sub
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv8.i = zext i8 %9 to i32
  %conv9.i = and i32 %7, 255
  %call.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv8.i, i32 noundef %conv9.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %if.then6.cleanup_crit_edge, label %if.end.i

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %conv7.i = shl nsw i32 %div.i, 5
  %arrayidx12.i = getelementptr [2 x i8], ptr @W83773_OFFSET_LSB, i32 0, i32 %sub
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12.i, align 1
  %conv13.i = zext i8 %11 to i32
  %conv14.i = and i32 %conv7.i, 224
  %call15.i = tail call i32 @regmap_write(ptr noundef %1, i32 noundef %conv13.i, i32 noundef %conv14.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call8.i, %if.then ], [ -95, %if.end.cleanup_crit_edge ], [ %call15.i, %if.end.i ], [ %call.i, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
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
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.module.flags = !{!51, !52, !53, !54, !55, !56, !57, !58}
!llvm.ident = !{!59}

!0 = !{ptr @__initcall__kmod_w83773g__296_302_w83773_driver_init6, !1, !"__initcall__kmod_w83773g__296_302_w83773_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83773g.c", i32 302, i32 1}
!2 = !{ptr @__exitcall_w83773_driver_exit, !1, !"__exitcall_w83773_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83773g.c", i32 304, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83773g.c", i32 305, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/w83773g.c", i32 306, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83773g.c", i32 295, i32 11}
!12 = !{ptr @w83773_driver, !13, !"w83773_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/w83773g.c", i32 292, i32 26}
!14 = !{ptr @w83773_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/w83773g.c", i32 269, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/w83773g.c", i32 271, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @w83773_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @w83773_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/w83773g.c", i32 278, i32 3}
!27 = !{ptr @w83773_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @w83773_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @w83773_regmap_config, !30, !"w83773_regmap_config", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/w83773g.c", i32 257, i32 35}
!31 = !{ptr @w83773_chip_info, !32, !"w83773_chip_info", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/w83773g.c", i32 252, i32 37}
!33 = !{ptr @w83773_ops, !34, !"w83773_ops", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/w83773g.c", i32 246, i32 31}
!35 = !{ptr @W83773_TEMP_MSB, !36, !"W83773_TEMP_MSB", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/w83773g.c", i32 30, i32 17}
!37 = !{ptr @W83773_TEMP_LSB, !38, !"W83773_TEMP_LSB", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/w83773g.c", i32 29, i32 17}
!39 = !{ptr @W83773_STATUS, !40, !"W83773_STATUS", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/w83773g.c", i32 27, i32 17}
!41 = !{ptr @W83773_OFFSET_MSB, !42, !"W83773_OFFSET_MSB", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/w83773g.c", i32 33, i32 17}
!43 = !{ptr @W83773_OFFSET_LSB, !44, !"W83773_OFFSET_LSB", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/w83773g.c", i32 32, i32 17}
!45 = !{ptr @w83773_info, !46, !"w83773_info", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83773g.c", i32 236, i32 41}
!47 = !{ptr @w83773_of_match, !48, !"w83773_of_match", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83773g.c", i32 43, i32 49}
!49 = !{ptr @w83773_id, !50, !"w83773_id", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83773g.c", i32 36, i32 35}
!51 = !{i32 1, !"wchar_size", i32 2}
!52 = !{i32 1, !"min_enum_size", i32 4}
!53 = !{i32 8, !"branch-target-enforcement", i32 0}
!54 = !{i32 8, !"sign-return-address", i32 0}
!55 = !{i32 8, !"sign-return-address-all", i32 0}
!56 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!57 = !{i32 7, !"uwtable", i32 1}
!58 = !{i32 7, !"frame-pointer", i32 2}
!59 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!60 = !{!"auto-init"}
!61 = !{i32 0, i32 33}
