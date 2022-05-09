; ModuleID = '/llk/IR_all_yes/drivers/hwmon/tmp108.c_pt.bc'
source_filename = "../drivers/hwmon/tmp108.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tmp108 = type { ptr, i16, i32 }

@__initcall__kmod_tmp108__297_439_tmp108_driver_init6 = internal global ptr @tmp108_driver_init, section ".initcall6.init", align 4
@tmp108_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @tmp108_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tmp108_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tmp108_dev_pm_ops, ptr null, ptr null }, ptr @tmp108_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tmp108_driver_exit = internal global ptr @tmp108_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [41 x i8] c"tmp108.author=John Muir <john@jmuir.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [70 x i8] c"tmp108.description=Texas Instruments TMP108 temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [33 x i8] c"tmp108.file=drivers/hwmon/tmp108\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [19 x i8] c"tmp108.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tmp108\00", [25 x i8] zeroinitializer }, align 32
@tmp108_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tmp108\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tmp108_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tmp108_suspend, ptr @tmp108_resume, ptr @tmp108_suspend, ptr @tmp108_resume, ptr @tmp108_suspend, ptr @tmp108_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tmp108_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tmp108\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tmp108_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"adapter doesn't support SMBus word transactions\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tmp108_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/tmp108.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tmp108_probe._entry_ptr = internal global ptr @tmp108_probe._entry, section ".printk_index", align 4
@tmp108_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tmp108_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr @tmp108_is_writeable_reg, ptr null, ptr @tmp108_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 3, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 1, i8 1, i8 0, i8 0, i32 0, i32 1, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"tmp108:347:(&tmp108_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@tmp108_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 350, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"regmap init failed: %d\00", [41 x i8] zeroinitializer }, align 32
@tmp108_probe._entry_ptr.9 = internal global ptr @tmp108_probe._entry.7, section ".printk_index", align 4
@tmp108_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error reading config register: %d\00", [62 x i8] zeroinitializer }, align 32
@tmp108_probe._entry_ptr.12 = internal global ptr @tmp108_probe._entry.10, section ".printk_index", align 4
@tmp108_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error writing config register: %d\00", [62 x i8] zeroinitializer }, align 32
@tmp108_probe._entry_ptr.15 = internal global ptr @tmp108_probe._entry.13, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tmp108_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 382, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"add action or reset failed: %d\00", [33 x i8] zeroinitializer }, align 32
@tmp108_probe._entry_ptr.18 = internal global ptr @tmp108_probe._entry.16, section ".printk_index", align 4
@tmp108_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @tmp108_hwmon_ops, ptr @tmp108_info }, [24 x i8] zeroinitializer }, align 32
@tmp108_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @tmp108_is_visible, ptr @tmp108_read, ptr null, ptr @tmp108_write }, [16 x i8] zeroinitializer }, align 32
@tmp108_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.21, ptr @.compoundliteral.23, ptr null], [20 x i8] zeroinitializer }, align 32
@tmp108_read.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.3, ptr @.str.20, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tmp108_read\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Conversion not ready yet..\0A\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 48, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 0, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 98786, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.22 }, [24 x i8] zeroinitializer }, align 32
@switch.table.tmp108_is_visible = internal constant { [16 x i16], [32 x i8] } { [16 x i16] [i16 292, i16 0, i16 0, i16 0, i16 420, i16 420, i16 420, i16 420, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 292, i16 292], [32 x i8] zeroinitializer }, align 32
@switch.table.tmp108_read = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1000, i32 2000, i32 4000], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 5, i64 6, i64 7, i64 8, i64 15, i64 16]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 6, i64 7, i64 8]
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"tmp108_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 429, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 431, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"tmp108_of_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 422, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [18 x i8] c"tmp108_dev_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 413, i32 8 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"tmp108_i2c_ids\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 415, i32 35 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 336, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"tmp108_regmap_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 314, i32 35 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 347, i32 19 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 350, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 356, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 370, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 382, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"tmp108_chip_info\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 291, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"tmp108_hwmon_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 285, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"tmp108_info\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 275, i32 41 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [26 x i8] c"../drivers/hwmon/tmp108.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 128, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [31 x i8] c"switch.table.tmp108_is_visible\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"switch.table.tmp108_read\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_tmp108_driver_exit, ptr @__initcall__kmod_tmp108__297_439_tmp108_driver_init6, ptr @tmp108_driver_exit, ptr @tmp108_probe._entry, ptr @tmp108_probe._entry.10, ptr @tmp108_probe._entry.13, ptr @tmp108_probe._entry.16, ptr @tmp108_probe._entry.7, ptr @tmp108_probe._entry_ptr, ptr @tmp108_probe._entry_ptr.12, ptr @tmp108_probe._entry_ptr.15, ptr @tmp108_probe._entry_ptr.18, ptr @tmp108_probe._entry_ptr.9, ptr @tmp108_driver, ptr @.str, ptr @tmp108_of_ids, ptr @tmp108_dev_pm_ops, ptr @tmp108_i2c_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tmp108_probe._key, ptr @tmp108_regmap_config, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @tmp108_chip_info, ptr @tmp108_hwmon_ops, ptr @tmp108_info, ptr @.str.19, ptr @.str.20, ptr @.compoundliteral, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @switch.table.tmp108_is_visible, ptr @switch.table.tmp108_read], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmp108_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tmp108_is_visible to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tmp108_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tmp108_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmp108_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @tmp108_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_probe(ptr noundef %client) #2 align 64 {
entry:
  %config = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %config) #7
  %0 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %config, align 4, !annotation !68
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
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @tmp108_regmap_config, ptr noundef nonnull @tmp108_probe._key, ptr noundef nonnull @.str.6) #7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %call.i, align 4
  %cmp.i88 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i88, label %if.then9, label %if.end15

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %9) #10
  br label %cleanup

if.end15:                                         ; preds = %if.end5
  %call17 = call i32 @regmap_read(ptr noundef %call6, i32 noundef 1, ptr noundef nonnull %config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11, i32 noundef %call17) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %config, align 4
  %conv = trunc i32 %11 to i16
  %orig_config = getelementptr inbounds %struct.tmp108, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %orig_config to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv, ptr %orig_config, align 4
  %and = and i32 %11, -1793
  %or = or i32 %and, 512
  store i32 %or, ptr %config, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call25 = call i32 @regmap_write(ptr noundef %14, i32 noundef 1, i32 noundef %or) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end31, label %if.end32

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14, i32 noundef %call25) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %ready_time = getelementptr inbounds %struct.tmp108, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %ready_time to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ready_time, align 4
  %17 = ptrtoint ptr %orig_config to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %orig_config, align 4
  %19 = and i16 %18, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp36 = icmp eq i16 %19, 0
  br i1 %cmp36, label %if.then38, label %if.end32.if.end41_crit_edge

if.end32.if.end41_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %15, 3
  %20 = ptrtoint ptr %ready_time to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %ready_time, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end32.if.end41_crit_edge
  %call.i89 = call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @tmp108_restore_config, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i, label %if.end48, label %do.end47

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  %23 = ptrtoint ptr %orig_config to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %orig_config, align 4
  %conv.i.i = zext i16 %24 to i32
  %call.i.i90 = call i32 @regmap_write(ptr noundef %22, i32 noundef 1, i32 noundef %conv.i.i) #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %call.i89) #10
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call49 = call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @tmp108_chip_info, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  %25 = ptrtoint ptr %call49 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %25, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %do.end47, %do.end31, %do.end21, %if.then9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %if.then9 ], [ %call17, %do.end21 ], [ %call25, %do.end31 ], [ %call.i89, %do.end47 ], [ %spec.select.i, %if.end48 ], [ -19, %do.end ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %config) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tmp108_restore_config(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %orig_config = getelementptr inbounds %struct.tmp108, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %orig_config to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %orig_config, align 4
  %conv = zext i16 %3 to i32
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1, i32 noundef %conv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tmp108_is_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cmp = icmp ne i32 %reg, 0
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tmp108_is_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %0 = icmp ult i32 %reg, 2
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @tmp108_is_visible(ptr nocapture noundef readnone %data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  %or.cond = and i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp2.not = icmp eq i32 %type, 1
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end4:                                          ; preds = %if.end
  %switch.tableidx = add i32 %attr, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 16
  br i1 %0, label %switch.lookup, label %if.end4.return_crit_edge

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

switch.lookup:                                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [16 x i16], ptr @switch.table.tmp108_is_visible, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %1)
  %switch.load = load i16, ptr %switch.gep, align 2
  br label %return

return:                                           ; preds = %switch.lookup, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i16 [ 420, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ], [ %switch.load, %switch.lookup ], [ 0, %if.end4.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_read(ptr noundef %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %temp) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end10

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %4, i32 noundef 1, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then2.cleanup_crit_edge, label %if.end

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.then2
  %5 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %regval, align 4
  %and = lshr i32 %6, 13
  %7 = and i32 %and, 3
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.unreachabledefault [
    i32 0, label %sw.default
    i32 1, label %sw.bb6
    i32 2, label %sw.bb7
    i32 3, label %sw.bb8
  ]

if.end.unreachabledefault:                        ; preds = %if.end
  unreachable

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4000, ptr %temp, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1000, ptr %temp, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 250, ptr %temp, align 4
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 63, ptr %temp, align 4
  br label %cleanup

if.end10:                                         ; preds = %entry
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %if.end10.cleanup_crit_edge [
    i32 1, label %sw.bb11
    i32 5, label %if.end10.sw.bb27_crit_edge
    i32 7, label %if.end10.sw.bb27_crit_edge131
    i32 15, label %if.end10.sw.bb38_crit_edge
    i32 16, label %if.end10.sw.bb38_crit_edge132
    i32 6, label %if.end10.sw.bb54_crit_edge
    i32 8, label %if.end10.sw.bb54_crit_edge133
  ]

if.end10.sw.bb54_crit_edge133:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

if.end10.sw.bb54_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb54

if.end10.sw.bb38_crit_edge132:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end10.sw.bb38_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end10.sw.bb27_crit_edge131:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end10.sw.bb27_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb27

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %ready_time = getelementptr inbounds %struct.tmp108, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %ready_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ready_time, align 4
  %sub = sub i32 %14, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp12 = icmp slt i32 %sub, 0
  br i1 %cmp12, label %do.body, label %if.end20

do.body:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tmp108_read.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tmp108_read, %cleanup)) #7
          to label %if.then18 [label %cleanup], !srcloc !69

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tmp108_read.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end20:                                         ; preds = %sw.bb11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call22 = call i32 @regmap_read(ptr noundef %18, i32 noundef 0, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %regval, align 4
  %21 = shl i32 %20, 16
  %sext130 = ashr exact i32 %21, 16
  %and.i = and i32 %sext130, -16
  %mul.i = mul nsw i32 %and.i, 1000
  %div.i = sdiv i32 %mul.i, 256
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div.i, ptr %temp, align 4
  br label %cleanup

sw.bb27:                                          ; preds = %if.end10.sw.bb27_crit_edge, %if.end10.sw.bb27_crit_edge131
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp29 = icmp eq i32 %attr, 5
  %cond = select i1 %cmp29, i32 2, i32 3
  %call31 = call i32 @regmap_read(ptr noundef %24, i32 noundef %cond, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %sw.bb27.cleanup_crit_edge, label %if.end35

sw.bb27.cleanup_crit_edge:                        ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %regval, align 4
  %27 = shl i32 %26, 16
  %sext129 = ashr exact i32 %27, 16
  %and.i122 = and i32 %sext129, -16
  %mul.i123 = mul nsw i32 %and.i122, 1000
  %div.i124 = sdiv i32 %mul.i123, 256
  %28 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i124, ptr %temp, align 4
  br label %cleanup

sw.bb38:                                          ; preds = %if.end10.sw.bb38_crit_edge, %if.end10.sw.bb38_crit_edge132
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %call40 = call i32 @regmap_read(ptr noundef %30, i32 noundef 1, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %sw.bb38.cleanup_crit_edge, label %if.end44

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %attr)
  %cmp45 = icmp eq i32 %attr, 15
  %cond47 = select i1 %cmp45, i32 2048, i32 4096
  %and48 = and i32 %32, %cond47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49 = icmp ne i32 %and48, 0
  %lnot.ext53 = zext i1 %tobool49 to i32
  %33 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %lnot.ext53, ptr %temp, align 4
  br label %cleanup

sw.bb54:                                          ; preds = %if.end10.sw.bb54_crit_edge, %if.end10.sw.bb54_crit_edge133
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %call56 = call i32 @regmap_read(ptr noundef %35, i32 noundef 1, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %sw.bb54.cleanup_crit_edge, label %if.end60

sw.bb54.cleanup_crit_edge:                        ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %sw.bb54
  %36 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %regval, align 4
  %and61 = lshr i32 %37, 4
  %38 = and i32 %and61, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tmp108_read, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %attr)
  %cmp69 = icmp eq i32 %attr, 6
  %cond71 = select i1 %cmp69, i32 2, i32 3
  %call72 = call i32 @regmap_read(ptr noundef %41, i32 noundef %cond71, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %if.end60.cleanup_crit_edge, label %if.end76

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end76:                                         ; preds = %if.end60
  %42 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %regval, align 4
  %44 = shl i32 %43, 16
  %sext = ashr exact i32 %44, 16
  %and.i125 = and i32 %sext, -16
  %mul.i126 = mul nsw i32 %and.i125, 1000
  %div.i127 = sdiv i32 %mul.i126, 256
  br i1 %cmp69, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nsw i32 %div.i127, %switch.load
  %45 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %temp, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %sub82 = sub nsw i32 %div.i127, %switch.load
  %46 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub82, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then81, %if.end60.cleanup_crit_edge, %sw.bb54.cleanup_crit_edge, %if.end44, %sw.bb38.cleanup_crit_edge, %if.end35, %sw.bb27.cleanup_crit_edge, %if.end25, %if.end20.cleanup_crit_edge, %if.then18, %do.body, %if.end10.cleanup_crit_edge, %sw.bb8, %sw.bb7, %sw.bb6, %sw.default, %if.then2.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.default ], [ -95, %if.then.cleanup_crit_edge ], [ -11, %if.then18 ], [ %call22, %if.end20.cleanup_crit_edge ], [ %call31, %sw.bb27.cleanup_crit_edge ], [ %call40, %sw.bb38.cleanup_crit_edge ], [ %call56, %sw.bb54.cleanup_crit_edge ], [ %call72, %if.end60.cleanup_crit_edge ], [ -95, %if.end10.cleanup_crit_edge ], [ 0, %if.then81 ], [ 0, %if.else ], [ 0, %if.end44 ], [ 0, %if.end35 ], [ 0, %if.end25 ], [ -11, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %temp) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #7
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp = icmp eq i32 %type, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp1 = icmp eq i32 %attr, 5
  br i1 %cmp1, label %if.then2, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 156, i32 %temp)
  %cmp3 = icmp slt i32 %temp, 156
  br i1 %cmp3, label %if.then2.if.end12_crit_edge, label %if.else

if.then2.if.end12_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %temp)
  %cmp5 = icmp ult i32 %temp, 625
  br i1 %cmp5, label %if.else.if.end12_crit_edge, label %if.else7

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2500, i32 %temp)
  %cmp8 = icmp ult i32 %temp, 2500
  %. = select i1 %cmp8, i32 8192, i32 0
  br label %if.end12

if.end12:                                         ; preds = %if.else7, %if.else.if.end12_crit_edge, %if.then2.if.end12_crit_edge
  %mask.0 = phi i32 [ 24576, %if.then2.if.end12_crit_edge ], [ 16384, %if.else.if.end12_crit_edge ], [ %., %if.else7 ]
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 1, i32 noundef 24576, i32 noundef %mask.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

if.end15:                                         ; preds = %entry
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %if.end15.cleanup_crit_edge [
    i32 5, label %if.end15.sw.bb_crit_edge
    i32 7, label %if.end15.sw.bb_crit_edge118
    i32 6, label %if.end15.sw.bb28_crit_edge
    i32 8, label %if.end15.sw.bb28_crit_edge119
  ]

if.end15.sw.bb28_crit_edge119:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end15.sw.bb28_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end15.sw.bb_crit_edge118:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end15.sw.bb_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end15.sw.bb_crit_edge, %if.end15.sw.bb_crit_edge118
  %6 = tail call i32 @llvm.smax.i32(i32 %temp, i32 -50000)
  %7 = tail call i32 @llvm.smin.i32(i32 %6, i32 127937)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %attr)
  %cmp24 = icmp eq i32 %attr, 5
  %cond25 = select i1 %cmp24, i32 2, i32 3
  %mul.i = shl nsw i32 %7, 8
  %div.i = sdiv i32 %mul.i, 1000
  %conv = and i32 %div.i, 65535
  %call27 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef %cond25, i32 noundef %conv) #7
  br label %cleanup

sw.bb28:                                          ; preds = %if.end15.sw.bb28_crit_edge, %if.end15.sw.bb28_crit_edge119
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %attr)
  %cmp44 = icmp eq i32 %attr, 6
  %cond46 = select i1 %cmp44, i32 2, i32 3
  %call47 = call i32 @regmap_read(ptr noundef %11, i32 noundef %cond46, ptr noundef nonnull %regval) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %sw.bb28.cleanup_crit_edge, label %if.end51

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %sw.bb28
  %12 = tail call i32 @llvm.smax.i32(i32 %temp, i32 -50000)
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 127937)
  %14 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval, align 4
  %16 = shl i32 %15, 16
  %sext117 = ashr exact i32 %16, 16
  %and.i = and i32 %sext117, -16
  %mul.i111 = mul nsw i32 %and.i, 1000
  %div.i112.neg = sdiv i32 %mul.i111, -256
  %sub = add nsw i32 %div.i112.neg, %13
  %div.i115 = sdiv i32 %mul.i111, 256
  %sub60 = sub nsw i32 %div.i115, %13
  %temp.addr.0 = select i1 %cmp44, i32 %sub, i32 %sub60
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %temp.addr.0)
  %cmp62 = icmp slt i32 %temp.addr.0, 500
  br i1 %cmp62, label %if.end51.if.end76_crit_edge, label %if.else65

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.else65:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %temp.addr.0)
  %cmp66 = icmp ult i32 %temp.addr.0, 1500
  br i1 %cmp66, label %if.else65.if.end76_crit_edge, label %if.else69

if.else65.if.end76_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.else69:                                        ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %temp.addr.0)
  %cmp70 = icmp ult i32 %temp.addr.0, 3000
  %.110 = select i1 %cmp70, i32 32, i32 48
  br label %if.end76

if.end76:                                         ; preds = %if.else69, %if.else65.if.end76_crit_edge, %if.end51.if.end76_crit_edge
  %mask.1 = phi i32 [ 0, %if.end51.if.end76_crit_edge ], [ 16, %if.else65.if.end76_crit_edge ], [ %.110, %if.else69 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %call.i116 = call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 1, i32 noundef 48, i32 noundef %mask.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end76, %sw.bb28.cleanup_crit_edge, %sw.bb, %if.end15.cleanup_crit_edge, %if.end12, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end12 ], [ %call.i116, %if.end76 ], [ %call27, %sw.bb ], [ -95, %if.then.cleanup_crit_edge ], [ %call47, %sw.bb28.cleanup_crit_edge ], [ -95, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tmp108_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 1, i32 noundef 768, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 3
  %ready_time = getelementptr inbounds %struct.tmp108, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %ready_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %ready_time, align 4
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_tmp108__297_439_tmp108_driver_init6, !1, !"__initcall__kmod_tmp108__297_439_tmp108_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/tmp108.c", i32 439, i32 1}
!2 = !{ptr @__exitcall_tmp108_driver_exit, !1, !"__exitcall_tmp108_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/tmp108.c", i32 441, i32 1}
!5 = !{ptr @__UNIQUE_ID_description299, !6, !"__UNIQUE_ID_description299", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/tmp108.c", i32 442, i32 1}
!7 = !{ptr @__UNIQUE_ID_file300, !8, !"__UNIQUE_ID_file300", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/tmp108.c", i32 443, i32 1}
!9 = !{ptr @__UNIQUE_ID_license301, !8, !"__UNIQUE_ID_license301", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/tmp108.c", i32 431, i32 11}
!12 = !{ptr @tmp108_driver, !13, !"tmp108_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/tmp108.c", i32 429, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/tmp108.c", i32 336, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tmp108_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tmp108_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tmp108_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/tmp108.c", i32 347, i32 19}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/tmp108.c", i32 350, i32 3}
!27 = !{ptr @tmp108_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tmp108_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/tmp108.c", i32 356, i32 3}
!31 = !{ptr @tmp108_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @tmp108_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/tmp108.c", i32 370, i32 3}
!35 = !{ptr @tmp108_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tmp108_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/tmp108.c", i32 382, i32 3}
!39 = !{ptr @tmp108_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tmp108_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @tmp108_regmap_config, !42, !"tmp108_regmap_config", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/tmp108.c", i32 314, i32 35}
!43 = !{ptr @tmp108_chip_info, !44, !"tmp108_chip_info", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/tmp108.c", i32 291, i32 37}
!45 = !{ptr @tmp108_hwmon_ops, !46, !"tmp108_hwmon_ops", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/tmp108.c", i32 285, i32 31}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/tmp108.c", i32 128, i32 4}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @tmp108_read.__UNIQUE_ID_ddebug288, !48, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!51 = !{ptr @tmp108_info, !52, !"tmp108_info", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/tmp108.c", i32 275, i32 41}
!53 = !{ptr @tmp108_of_ids, !54, !"tmp108_of_ids", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/tmp108.c", i32 422, i32 34}
!55 = !{ptr @tmp108_dev_pm_ops, !56, !"tmp108_dev_pm_ops", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/tmp108.c", i32 413, i32 8}
!57 = !{ptr @tmp108_i2c_ids, !58, !"tmp108_i2c_ids", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/tmp108.c", i32 415, i32 35}
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
!69 = !{i64 2148766484, i64 2148766489, i64 2148766502, i64 2148766546, i64 2148766580, i64 2148766601}
