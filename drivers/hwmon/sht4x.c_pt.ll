; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sht4x.c_pt.bc'
source_filename = "../drivers/hwmon/sht4x.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sht4x_data = type { ptr, %struct.mutex, i8, i32, i32, i32, i32 }

@__initcall__kmod_sht4x__292_299_sht4x_driver_init6 = internal global ptr @sht4x_driver_init, section ".initcall6.init", align 4
@sht4x_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sht4x_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sht4x_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sht4x_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sht4x_driver_exit = internal global ptr @sht4x_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [58 x i8] c"sht4x.author=Navin Sankar Velliangiri <navin@linumiz.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [73 x i8] c"sht4x.description=Sensirion SHT4x humidity and temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [31 x i8] c"sht4x.file=drivers/hwmon/sht4x\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"sht4x.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sht4x\00", [26 x i8] zeroinitializer }, align 32
@sht4x_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sensirion,sht4x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sht4x_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sht4x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sht4x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@sht4x_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sht4x_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @sht4x_hwmon_ops, ptr @sht4x_info }, [24 x i8] zeroinitializer }, align 32
@sht4x_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @sht4x_hwmon_visible, ptr @sht4x_hwmon_read, ptr null, ptr @sht4x_hwmon_write }, [16 x i8] zeroinitializer }, align 32
@sht4x_info = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.compoundliteral.9, ptr @.compoundliteral.11, ptr @.compoundliteral.13, ptr null], [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sht4x_read_values._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"data integrity check failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sht4x_read_values\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/sht4x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sht4x_read_values._entry_ptr = internal global ptr @sht4x_read_values._entry, section ".printk_index", align 4
@sht4x_read_values._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 114, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@sht4x_read_values._entry_ptr.8 = internal global ptr @sht4x_read_values._entry.7, section ".printk_index", align 4
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 32, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.10 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 6, ptr @.compoundliteral.12 }, [24 x i8] zeroinitializer }, align 32
@switch.table.sht4x_hwmon_visible = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 420, i16 292, i16 0, i16 0, i16 0, i16 0, i16 292], [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 6]
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"sht4x_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 290, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 292, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"sht4x_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 284, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [9 x i8] c"sht4x_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 278, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 259, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"sht4x_crc8_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 46, i32 1 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"sht4x_chip_info\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 230, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"sht4x_hwmon_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 224, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"sht4x_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 217, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 107, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private constant [25 x i8] c"../drivers/hwmon/sht4x.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 114, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [33 x i8] c"switch.table.sht4x_hwmon_visible\00", align 1
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_sht4x_driver_exit, ptr @__initcall__kmod_sht4x__292_299_sht4x_driver_init6, ptr @sht4x_driver_exit, ptr @sht4x_read_values._entry, ptr @sht4x_read_values._entry.7, ptr @sht4x_read_values._entry_ptr, ptr @sht4x_read_values._entry_ptr.8, ptr @sht4x_driver, ptr @.str, ptr @sht4x_of_match, ptr @sht4x_id, ptr @sht4x_probe.__key, ptr @.str.1, ptr @sht4x_crc8_table, ptr @sht4x_chip_info, ptr @sht4x_hwmon_ops, ptr @sht4x_info, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.compoundliteral, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @switch.table.sht4x_hwmon_visible], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_info to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_read_values._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht4x_read_values._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sht4x_hwmon_visible to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sht4x_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sht4x_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sht4x_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @sht4x_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht4x_probe(ptr noundef %client, ptr nocapture noundef readnone %sht4x_id) #2 align 64 {
entry:
  %cmd = alloca [1 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #7
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -108, ptr %cmd, align 1
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %2) #7
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #7
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %update_interval = getelementptr inbounds %struct.sht4x_data, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2000, ptr %update_interval, align 4
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.sht4x_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sht4x_probe.__key) #7
  tail call void @crc8_populate_msb(ptr noundef nonnull @sht4x_crc8_table, i8 noundef zeroext 49) #7
  %call.i30 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %cmd, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %cmp = icmp slt i32 %call.i30, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i30)
  %cmp9.not = icmp eq i32 %call.i30, 1
  br i1 %cmp9.not, label %if.end11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call13 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @sht4x_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call13 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end11 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i30, %if.end4.cleanup_crit_edge ], [ -5, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @sht4x_hwmon_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %type)
  %0 = icmp ult i32 %type, 7
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i16], ptr @switch.table.sht4x_hwmon_visible, i32 0, i32 %type
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i16 [ %switch.load, %switch.lookup ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht4x_hwmon_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 6, label %sw.bb2
    i32 0, label %sw.bb4
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call.i = tail call fastcc i32 @sht4x_read_values(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %sw.bb.cleanup_crit_edge, label %if.end.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %temperature.i = getelementptr inbounds %struct.sht4x_data, ptr %1, i32 0, i32 5
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %call.i10 = tail call fastcc i32 @sht4x_read_values(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.i11 = icmp slt i32 %call.i10, 0
  br i1 %cmp.i11, label %sw.bb2.cleanup_crit_edge, label %if.end.i12

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i12:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  %humidity.i = getelementptr inbounds %struct.sht4x_data, ptr %1, i32 0, i32 6
  br label %cleanup.sink.split

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_interval.i = getelementptr inbounds %struct.sht4x_data, ptr %1, i32 0, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %if.end.i12, %if.end.i
  %humidity.i.sink = phi ptr [ %humidity.i, %if.end.i12 ], [ %temperature.i, %if.end.i ], [ %update_interval.i, %sw.bb4 ]
  %3 = ptrtoint ptr %humidity.i.sink to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %humidity.i.sink, align 4
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb2.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %sw.bb.cleanup_crit_edge ], [ %call.i10, %sw.bb2.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sht4x_hwmon_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cond = icmp eq i32 %type, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_interval.i = getelementptr inbounds %struct.sht4x_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %update_interval.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sht4x_read_values(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  %cmd = alloca [1 x i8], align 1
  %raw_data = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %cmd) #7
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -3, ptr %cmd, align 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %raw_data) #7
  %3 = getelementptr inbounds [6 x i8], ptr %raw_data, i32 0, i32 1
  %4 = getelementptr inbounds [6 x i8], ptr %raw_data, i32 0, i32 2
  %5 = getelementptr inbounds [6 x i8], ptr %raw_data, i32 0, i32 3
  %6 = getelementptr inbounds [6 x i8], ptr %raw_data, i32 0, i32 4
  %7 = getelementptr inbounds [6 x i8], ptr %raw_data, i32 0, i32 5
  %lock = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 1
  %8 = call ptr @memset(ptr %raw_data, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 4
  %9 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %12) #7
  %valid = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 2
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %valid, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %add = add i32 %call2.i, %10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %land.lhs.true.unlock_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.unlock_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %cmd, i32 noundef 1, i16 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %if.end.unlock_crit_edge, label %if.end5

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end5:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 8200, i32 noundef 18200, i32 noundef 2) #7
  %call.i71 = call i32 @i2c_transfer_buffer_flags(ptr noundef %1, ptr noundef nonnull %raw_data, i32 noundef 6, i16 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i71)
  %cmp8.not = icmp eq i32 %call.i71, 6
  br i1 %cmp8.not, label %if.end13, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i71)
  %cmp10 = icmp sgt i32 %call.i71, -1
  %spec.store.select = select i1 %cmp10, i32 -61, i32 %call.i71
  br label %unlock

if.end13:                                         ; preds = %if.end5
  %16 = ptrtoint ptr %raw_data to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %raw_data, align 1
  %conv = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %3, align 1
  %conv15 = zext i8 %19 to i32
  %or = or i32 %shl, %conv15
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %5, align 1
  %conv18 = zext i8 %21 to i32
  %shl19 = shl nuw nsw i32 %conv18, 8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %6, align 1
  %conv21 = zext i8 %23 to i32
  %or22 = or i32 %shl19, %conv21
  %call25 = call zeroext i8 @crc8(ptr noundef nonnull @sht4x_crc8_table, ptr noundef nonnull %raw_data, i32 noundef 2, i8 noundef zeroext -1) #7
  %24 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call25, i8 %25)
  %cmp29.not = icmp eq i8 %call25, %25
  br i1 %cmp29.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #10
  br label %unlock

if.end32:                                         ; preds = %if.end13
  %call34 = call zeroext i8 @crc8(ptr noundef nonnull @sht4x_crc8_table, ptr noundef %5, i32 noundef 2, i8 noundef zeroext -1) #7
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %call34, i8 %27)
  %cmp38.not = icmp eq i8 %call34, %27
  br i1 %cmp38.not, label %if.end45, label %do.end43

do.end43:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev44 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev44, ptr noundef nonnull @.str.2) #10
  br label %unlock

if.end45:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %mul = mul nuw nsw i32 %or, 21875
  %28 = lshr i32 %mul, 13
  %sub47 = add nsw i32 %28, -45000
  %temperature = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 5
  %29 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub47, ptr %temperature, align 4
  %mul49 = mul nuw nsw i32 %or22, 15625
  %30 = lshr i32 %mul49, 13
  %sub51 = add nsw i32 %30, -6000
  %humidity = getelementptr inbounds %struct.sht4x_data, ptr %data, i32 0, i32 6
  %31 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %sub51, ptr %humidity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_updated, align 4
  %34 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %valid, align 4
  br label %unlock

unlock:                                           ; preds = %if.end45, %do.end43, %do.end, %if.then9, %if.end.unlock_crit_edge, %land.lhs.true.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %land.lhs.true.unlock_crit_edge ], [ %call.i, %if.end.unlock_crit_edge ], [ %spec.store.select, %if.then9 ], [ -5, %do.end ], [ -5, %do.end43 ], [ 0, %if.end45 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %raw_data) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %cmd) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_sht4x__292_299_sht4x_driver_init6, !1, !"__initcall__kmod_sht4x__292_299_sht4x_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sht4x.c", i32 299, i32 1}
!2 = !{ptr @__exitcall_sht4x_driver_exit, !1, !"__exitcall_sht4x_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sht4x.c", i32 301, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sht4x.c", i32 302, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sht4x.c", i32 303, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/sht4x.c", i32 292, i32 11}
!12 = !{ptr @sht4x_driver, !13, !"sht4x_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sht4x.c", i32 290, i32 26}
!14 = !{ptr @sht4x_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sht4x.c", i32 259, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sht4x_crc8_table, !18, !"sht4x_crc8_table", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/sht4x.c", i32 46, i32 1}
!19 = !{ptr @sht4x_chip_info, !20, !"sht4x_chip_info", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/sht4x.c", i32 230, i32 37}
!21 = !{ptr @sht4x_hwmon_ops, !22, !"sht4x_hwmon_ops", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/sht4x.c", i32 224, i32 31}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/sht4x.c", i32 107, i32 3}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sht4x_read_values._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @sht4x_read_values._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @sht4x_read_values._entry.7, !32, !"_entry", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/sht4x.c", i32 114, i32 3}
!33 = !{ptr @sht4x_read_values._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sht4x_info, !35, !"sht4x_info", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/sht4x.c", i32 217, i32 41}
!36 = !{ptr @sht4x_of_match, !37, !"sht4x_of_match", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/sht4x.c", i32 284, i32 34}
!38 = !{ptr @sht4x_id, !39, !"sht4x_id", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/sht4x.c", i32 278, i32 35}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i8 0, i8 2}
