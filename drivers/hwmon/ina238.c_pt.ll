; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ina238.c_pt.bc'
source_filename = "../drivers/hwmon/ina238.c"
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
%struct.ina238_data = type { ptr, %struct.mutex, ptr, i32, i32 }

@__initcall__kmod_ina238__324_640_ina238_driver_init6 = internal global ptr @ina238_driver_init, section ".initcall6.init", align 4
@ina238_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @ina238_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ina238_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ina238_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ina238_driver_exit = internal global ptr @ina238_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author325 = internal constant [51 x i8] c"ina238.author=Nathan Rossi <nathan.rossi@digi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [33 x i8] c"ina238.description=ina238 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file327 = internal constant [33 x i8] c"ina238.file=drivers/hwmon/ina238\00", section ".modinfo", align 1
@__UNIQUE_ID_license328 = internal constant [19 x i8] c"ina238.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ina238\00", [25 x i8] zeroinitializer }, align 32
@ina238_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina238\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ina238_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ina238\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ina238_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->config_lock\00", [45 x i8] zeroinitializer }, align 32
@ina238_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ina238_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ina238:549:(&ina238_regmap_config)->lock\00", [55 x i8] zeroinitializer }, align 32
@ina238_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 551, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ina238_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ina238.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr = internal global ptr @ina238_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shunt-resistor\00", [17 x i8] zeroinitializer }, align 32
@ina238_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 560, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid shunt resister value %u\0A\00", [63 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.11 = internal global ptr @ina238_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,shunt-gain\00", [18 x i8] zeroinitializer }, align 32
@ina238_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 568, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid shunt gain value %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.15 = internal global ptr @ina238_probe._entry.13, section ".printk_index", align 4
@ina238_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 578, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"error configuring the device: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.18 = internal global ptr @ina238_probe._entry.16, section ".printk_index", align 4
@ina238_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 586, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.20 = internal global ptr @ina238_probe._entry.19, section ".printk_index", align 4
@ina238_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 594, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.22 = internal global ptr @ina238_probe._entry.21, section ".printk_index", align 4
@ina238_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.4, ptr @.str.5, i32 602, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.24 = internal global ptr @ina238_probe._entry.23, section ".printk_index", align 4
@ina238_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @ina238_hwmon_ops, ptr @ina238_info }, [24 x i8] zeroinitializer }, align 32
@ina238_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 613, ptr @.str.27, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"power monitor %s (Rshunt = %u uOhm, gain = %u)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ina238_probe._entry_ptr.28 = internal global ptr @ina238_probe._entry.25, section ".printk_index", align 4
@ina238_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @ina238_is_visible, ptr @ina238_read, ptr null, ptr @ina238_write }, [16 x i8] zeroinitializer }, align 32
@ina238_info = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.compoundliteral.29, ptr @.compoundliteral.31, ptr @.compoundliteral.33, ptr @.compoundliteral.35, ptr null], [44 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 12302, i32 12302, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 3, ptr @.compoundliteral.30 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 67633664, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 4, ptr @.compoundliteral.32 }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 65666, i32 0], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.34 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 19, i64 26]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 16]
@__sancov_gen_cov_switch_values.40 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 12, i64 13]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 9, i64 19, i64 26]
@__sancov_gen_cov_switch_values.46 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 7, i64 16]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"ina238_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 630, i32 26 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 633, i32 11 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"ina238_of_match\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 624, i32 49 }
@___asan_gen_.60 = private unnamed_addr constant [10 x i8] c"ina238_id\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 618, i32 35 }
@___asan_gen_.63 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 547, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"ina238_regmap_config\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 99, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 549, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 551, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 557, i32 36 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 560, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 565, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 568, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 578, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 586, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 594, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 602, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"ina238_chip_info\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 528, i32 37 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 612, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"ina238_hwmon_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 522, i32 31 }
@___asan_gen_.144 = private unnamed_addr constant [12 x i8] c"ina238_info\00", align 1
@___asan_gen_.145 = private constant [26 x i8] c"../drivers/hwmon/ina238.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 504, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file327, ptr @__UNIQUE_ID_license328, ptr @__exitcall_ina238_driver_exit, ptr @__initcall__kmod_ina238__324_640_ina238_driver_init6, ptr @ina238_driver_exit, ptr @ina238_probe._entry, ptr @ina238_probe._entry.13, ptr @ina238_probe._entry.16, ptr @ina238_probe._entry.19, ptr @ina238_probe._entry.21, ptr @ina238_probe._entry.23, ptr @ina238_probe._entry.25, ptr @ina238_probe._entry.9, ptr @ina238_probe._entry_ptr, ptr @ina238_probe._entry_ptr.11, ptr @ina238_probe._entry_ptr.15, ptr @ina238_probe._entry_ptr.18, ptr @ina238_probe._entry_ptr.20, ptr @ina238_probe._entry_ptr.22, ptr @ina238_probe._entry_ptr.24, ptr @ina238_probe._entry_ptr.28, ptr @ina238_driver, ptr @.str, ptr @ina238_of_match, ptr @ina238_id, ptr @ina238_probe.__key, ptr @.str.1, ptr @ina238_probe._key, ptr @ina238_regmap_config, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @ina238_chip_info, ptr @.str.26, ptr @.str.27, ptr @ina238_hwmon_ops, ptr @ina238_info, ptr @.compoundliteral, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina238_info to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ina238_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ina238_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ina238_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ina238_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina238_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 108, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %config_lock = getelementptr inbounds %struct.ina238_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %config_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ina238_probe.__key) #7
  %call5 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ina238_regmap_config, ptr noundef nonnull @ina238_probe._key, ptr noundef nonnull @.str.2) #7
  %regmap = getelementptr inbounds %struct.ina238_data, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call5, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #10
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %rshunt = getelementptr inbounds %struct.ina238_data, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %rshunt to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10000, ptr %rshunt, align 4
  %call.i148 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %rshunt, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i148)
  %cmp = icmp sgt i32 %call.i148, -1
  %tobool17.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end20thread-pre-split, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %10 = ptrtoint ptr %rshunt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rshunt, align 4
  br label %if.end20

if.end20thread-pre-split:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %rshunt to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %rshunt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.end20thread-pre-split, %if.then18
  %12 = phi i32 [ %.pr, %if.end20thread-pre-split ], [ %9, %if.then18 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22 = icmp eq i32 %12, 0
  br i1 %cmp22, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 0) #10
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %gain = getelementptr inbounds %struct.ina238_data, ptr %call.i, i32 0, i32 4
  %call.i149 = tail call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef %gain, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %cmp30 = icmp slt i32 %call.i149, 0
  br i1 %cmp30, label %if.end44.thread, label %if.end33

if.end44.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %gain to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %gain, align 4
  br label %17

if.end33:                                         ; preds = %if.end28
  %14 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr151 = load i32, ptr %gain, align 4
  %15 = zext i32 %.pr151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %.pr151, label %do.end42 [
    i32 1, label %16
    i32 4, label %if.end33._crit_edge
  ]

if.end33._crit_edge:                              ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %17

do.end42:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %.pr151) #10
  br label %cleanup

16:                                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %17

17:                                               ; preds = %16, %if.end33._crit_edge, %if.end44.thread
  %18 = phi i32 [ 16, %16 ], [ 0, %if.end44.thread ], [ 0, %if.end33._crit_edge ]
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 0, i32 noundef %18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %do.end55, label %if.end56

do.end55:                                         ; preds = %17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call50) #10
  br label %cleanup

if.end56:                                         ; preds = %17
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call58 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 1, i32 noundef 64362) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %do.end63, label %if.end64

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call58) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end56
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call66 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 2, i32 noundef 16384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %do.end71, label %if.end72

do.end71:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call66) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end64
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call74 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 11, i32 noundef 8192) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %do.end79, label %if.end80

do.end79:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call74) #10
  br label %cleanup

if.end80:                                         ; preds = %if.end72
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call81 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ina238_chip_info, ptr noundef null) #7
  %cmp.i150 = icmp ugt ptr %call81, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then83, label %do.end88

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call81 to i32
  br label %cleanup

do.end88:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %rshunt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rshunt, align 4
  %30 = ptrtoint ptr %gain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %gain, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26, ptr noundef %name, i32 noundef %29, i32 noundef %31) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end88, %if.then83, %do.end79, %do.end71, %do.end63, %do.end55, %do.end42, %do.end26, %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end11 ], [ -22, %do.end26 ], [ -22, %do.end42 ], [ -19, %do.end55 ], [ -19, %do.end63 ], [ -19, %do.end71 ], [ -19, %do.end79 ], [ %27, %if.then83 ], [ 0, %do.end88 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ina238_is_visible(ptr nocapture noundef readnone %drvdata, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb3
    i32 4, label %sw.bb6
    i32 1, label %sw.bb10
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %attr, label %sw.default [
    i32 1, label %sw.bb.return_crit_edge
    i32 13, label %sw.bb.return_crit_edge18
    i32 12, label %sw.bb.return_crit_edge19
    i32 3, label %sw.bb.sw.bb2_crit_edge
    i32 2, label %sw.bb.sw.bb2_crit_edge20
  ]

sw.bb.sw.bb2_crit_edge20:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb2

sw.bb.return_crit_edge19:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.return_crit_edge18:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge20
  br label %return

sw.default:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond = icmp eq i32 %attr, 1
  %. = select i1 %cond, i16 292, i16 0
  br label %return

sw.bb6:                                           ; preds = %entry
  %2 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %attr, label %sw.default9 [
    i32 9, label %sw.bb6.return_crit_edge
    i32 26, label %sw.bb6.return_crit_edge21
    i32 19, label %sw.bb8
  ]

sw.bb6.return_crit_edge21:                        ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb6.return_crit_edge:                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb8:                                           ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default9:                                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb10:                                          ; preds = %entry
  %3 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %attr, label %sw.default13 [
    i32 1, label %sw.bb10.return_crit_edge
    i32 16, label %sw.bb10.return_crit_edge22
    i32 7, label %sw.bb12
  ]

sw.bb10.return_crit_edge22:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb12:                                          ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default13:                                     ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default13, %sw.bb12, %sw.bb10.return_crit_edge, %sw.bb10.return_crit_edge22, %sw.default9, %sw.bb8, %sw.bb6.return_crit_edge, %sw.bb6.return_crit_edge21, %sw.bb3, %sw.default, %sw.bb2, %sw.bb.return_crit_edge, %sw.bb.return_crit_edge18, %sw.bb.return_crit_edge19, %entry.return_crit_edge
  %retval.0 = phi i16 [ 0, %sw.default13 ], [ 420, %sw.bb12 ], [ 0, %sw.default9 ], [ 420, %sw.bb8 ], [ 0, %sw.default ], [ 420, %sw.bb2 ], [ 292, %sw.bb.return_crit_edge ], [ 292, %sw.bb.return_crit_edge18 ], [ 292, %sw.bb.return_crit_edge19 ], [ %., %sw.bb3 ], [ 292, %sw.bb6.return_crit_edge ], [ 292, %sw.bb6.return_crit_edge21 ], [ 292, %sw.bb10.return_crit_edge ], [ 292, %sw.bb10.return_crit_edge22 ], [ 0, %entry.return_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina238_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %regval.i38 = alloca i32, align 4
  %data.i.i = alloca [3 x i8], align 1
  %regval.i26 = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %regval.i16 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb3
    i32 1, label %sw.bb5
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #7
  %3 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %regval.i, align 4, !annotation !79
  %4 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %channel, label %sw.bb.ina238_read_in.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb6.i
  ]

sw.bb.ina238_read_in.exit_crit_edge:              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_in.exit

sw.bb.i:                                          ; preds = %sw.bb
  %5 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %attr, label %sw.bb.i.ina238_read_in.exit_crit_edge [
    i32 1, label %sw.bb.i.sw.epilog15.i_crit_edge
    i32 3, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 13, label %sw.bb4.i
    i32 12, label %sw.bb5.i
  ]

sw.bb.i.sw.epilog15.i_crit_edge:                  ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb.i.ina238_read_in.exit_crit_edge:            ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_in.exit

sw.bb2.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb3.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb4.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb5.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb6.i:                                         ; preds = %sw.bb
  %6 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %attr, label %sw.bb6.i.ina238_read_in.exit_crit_edge [
    i32 1, label %sw.bb6.i.sw.epilog15.i_crit_edge
    i32 3, label %sw.bb8.i
    i32 2, label %sw.bb9.i
    i32 13, label %sw.bb10.i
    i32 12, label %sw.bb11.i
  ]

sw.bb6.i.sw.epilog15.i_crit_edge:                 ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb6.i.ina238_read_in.exit_crit_edge:           ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_in.exit

sw.bb8.i:                                         ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb9.i:                                         ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb10.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.bb11.i:                                        ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog15.i

sw.epilog15.i:                                    ; preds = %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb6.i.sw.epilog15.i_crit_edge, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i.sw.epilog15.i_crit_edge
  %reg.0.i = phi i32 [ 11, %sw.bb11.i ], [ 11, %sw.bb10.i ], [ 15, %sw.bb9.i ], [ 14, %sw.bb8.i ], [ 11, %sw.bb5.i ], [ 11, %sw.bb4.i ], [ 13, %sw.bb3.i ], [ 12, %sw.bb2.i ], [ 4, %sw.bb.i.sw.epilog15.i_crit_edge ], [ 5, %sw.bb6.i.sw.epilog15.i_crit_edge ]
  %mask.0.i = phi i32 [ 8, %sw.bb11.i ], [ 16, %sw.bb10.i ], [ -1, %sw.bb9.i ], [ -1, %sw.bb8.i ], [ 32, %sw.bb5.i ], [ 64, %sw.bb4.i ], [ -1, %sw.bb3.i ], [ -1, %sw.bb2.i ], [ -1, %sw.bb.i.sw.epilog15.i_crit_edge ], [ -1, %sw.bb6.i.sw.epilog15.i_crit_edge ]
  %regmap.i = getelementptr inbounds %struct.ina238_data, ptr %2, i32 0, i32 2
  %7 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap.i, align 4
  %call16.i = call i32 @regmap_read(ptr noundef %8, i32 noundef %reg.0.i, ptr noundef nonnull %regval.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.i = icmp slt i32 %call16.i, 0
  br i1 %cmp.i, label %sw.epilog15.i.ina238_read_in.exit_crit_edge, label %if.end.i

sw.epilog15.i.ina238_read_in.exit_crit_edge:      ; preds = %sw.epilog15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_in.exit

if.end.i:                                         ; preds = %sw.epilog15.i
  %9 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %attr, label %if.end.i.ina238_read_in.exit_crit_edge [
    i32 1, label %if.end.i.sw.bb17.i_crit_edge
    i32 3, label %if.end.i.sw.bb17.i_crit_edge51
    i32 2, label %if.end.i.sw.bb17.i_crit_edge52
    i32 13, label %if.end.i.sw.bb26.i_crit_edge
    i32 12, label %if.end.i.sw.bb26.i_crit_edge53
  ]

if.end.i.sw.bb26.i_crit_edge53:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26.i

if.end.i.sw.bb26.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb26.i

if.end.i.sw.bb17.i_crit_edge52:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.end.i.sw.bb17.i_crit_edge51:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.end.i.sw.bb17.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.end.i.ina238_read_in.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_in.exit

sw.bb17.i:                                        ; preds = %if.end.i.sw.bb17.i_crit_edge, %if.end.i.sw.bb17.i_crit_edge51, %if.end.i.sw.bb17.i_crit_edge52
  %10 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %regval.i, align 4
  %sext.i = shl i32 %11, 16
  %conv18.i = ashr exact i32 %sext.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp19.i = icmp eq i32 %channel, 0
  br i1 %cmp19.i, label %if.then21.i, label %if.else.i

if.then21.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul.i = mul nsw i32 %conv18.i, 5
  %gain.i = getelementptr inbounds %struct.ina238_data, ptr %2, i32 0, i32 4
  %12 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gain.i, align 4
  %add.i = sub i32 5, %13
  %mul22.i = mul i32 %add.i, 1000
  %div.i = sdiv i32 %mul.i, %mul22.i
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul23.i = mul nsw i32 %conv18.i, 3125
  %div24.i = sdiv i32 %mul23.i, 1000
  br label %cleanup.sink.split.i

sw.bb26.i:                                        ; preds = %if.end.i.sw.bb26.i_crit_edge, %if.end.i.sw.bb26.i_crit_edge53
  %14 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval.i, align 4
  %and.i = and i32 %15, %mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb26.i, %if.else.i, %if.then21.i
  %lnot.ext.sink.i = phi i32 [ %lnot.ext.i, %sw.bb26.i ], [ %div24.i, %if.else.i ], [ %div.i, %if.then21.i ]
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %lnot.ext.sink.i, ptr %val, align 4
  br label %ina238_read_in.exit

ina238_read_in.exit:                              ; preds = %cleanup.sink.split.i, %if.end.i.ina238_read_in.exit_crit_edge, %sw.epilog15.i.ina238_read_in.exit_crit_edge, %sw.bb6.i.ina238_read_in.exit_crit_edge, %sw.bb.i.ina238_read_in.exit_crit_edge, %sw.bb.ina238_read_in.exit_crit_edge
  %retval.0.i = phi i32 [ -95, %sw.bb.i.ina238_read_in.exit_crit_edge ], [ -95, %sw.bb6.i.ina238_read_in.exit_crit_edge ], [ -95, %sw.bb.ina238_read_in.exit_crit_edge ], [ %call16.i, %sw.epilog15.i.ina238_read_in.exit_crit_edge ], [ 0, %if.end.i.ina238_read_in.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #7
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i17 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %17 = ptrtoint ptr %driver_data.i.i17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i17, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i16) #7
  %19 = ptrtoint ptr %regval.i16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %regval.i16, align 4, !annotation !79
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attr)
  %cond.i = icmp eq i32 %attr, 1
  br i1 %cond.i, label %sw.bb.i20, label %sw.bb1.ina238_read_current.exit_crit_edge

sw.bb1.ina238_read_current.exit_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_current.exit

sw.bb.i20:                                        ; preds = %sw.bb1
  %regmap.i18 = getelementptr inbounds %struct.ina238_data, ptr %18, i32 0, i32 2
  %20 = ptrtoint ptr %regmap.i18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i18, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %21, i32 noundef 7, ptr noundef nonnull %regval.i16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i19 = icmp slt i32 %call1.i, 0
  br i1 %cmp.i19, label %sw.bb.i20.ina238_read_current.exit_crit_edge, label %if.end.i24

sw.bb.i20.ina238_read_current.exit_crit_edge:     ; preds = %sw.bb.i20
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_current.exit

if.end.i24:                                       ; preds = %sw.bb.i20
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %regval.i16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval.i16, align 4
  %sext.i21 = shl i32 %23, 16
  %conv2.i = ashr exact i32 %sext.i21, 16
  %gain.i22 = getelementptr inbounds %struct.ina238_data, ptr %18, i32 0, i32 4
  %24 = ptrtoint ptr %gain.i22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gain.i22, align 4
  %mul.i23 = mul i32 %25, 20000
  %mul3.i = mul i32 %mul.i23, %conv2.i
  %conv4.i = sext i32 %mul3.i to i64
  %rshunt.i = getelementptr inbounds %struct.ina238_data, ptr %18, i32 0, i32 3
  %26 = ptrtoint ptr %rshunt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rshunt.i, align 4
  %mul5.i = shl i32 %27, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %28 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !79
  %call.i.i = call i64 @div_s64_rem(i64 noundef %conv4.i, i32 noundef %mul5.i, ptr noundef nonnull %remainder.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #7
  %conv7.i = trunc i64 %call.i.i to i32
  %29 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv7.i, ptr %val, align 4
  br label %ina238_read_current.exit

ina238_read_current.exit:                         ; preds = %if.end.i24, %sw.bb.i20.ina238_read_current.exit_crit_edge, %sw.bb1.ina238_read_current.exit_crit_edge
  %retval.0.i25 = phi i32 [ 0, %if.end.i24 ], [ %call1.i, %sw.bb.i20.ina238_read_current.exit_crit_edge ], [ -95, %sw.bb1.ina238_read_current.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i16) #7
  br label %return

sw.bb3:                                           ; preds = %entry
  %driver_data.i.i27 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %30 = ptrtoint ptr %driver_data.i.i27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i.i27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i26) #7
  %32 = ptrtoint ptr %regval.i26 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %regval.i26, align 4, !annotation !79
  %33 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %attr, label %sw.bb3.ina238_read_power.exit_crit_edge [
    i32 9, label %sw.bb.i29
    i32 19, label %sw.bb16.i
    i32 26, label %sw.bb45.i
  ]

sw.bb3.ina238_read_power.exit_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_power.exit

sw.bb.i29:                                        ; preds = %sw.bb3
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %data.i.i) #7
  %36 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 -1, ptr %data.i.i, align 1, !annotation !79
  %37 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -1, ptr %37, align 1, !annotation !79
  %39 = getelementptr inbounds [3 x i8], ptr %data.i.i, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %39, align 1, !annotation !79
  %call.i.i28 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %35, i8 noundef zeroext 8, i8 noundef zeroext 3, ptr noundef nonnull %data.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i.i = icmp slt i32 %call.i.i28, 0
  br i1 %cmp.i.i, label %sw.bb.i29.ina238_read_reg24.exit.thread.i_crit_edge, label %if.end.i.i

sw.bb.i29.ina238_read_reg24.exit.thread.i_crit_edge: ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_reg24.exit.thread.i

if.end.i.i:                                       ; preds = %sw.bb.i29
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i.i28)
  %cmp1.not.i.i = icmp eq i32 %call.i.i28, 3
  br i1 %cmp1.not.i.i, label %if.end.i33, label %if.end.i.i.ina238_read_reg24.exit.thread.i_crit_edge

if.end.i.i.ina238_read_reg24.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_reg24.exit.thread.i

ina238_read_reg24.exit.thread.i:                  ; preds = %if.end.i.i.ina238_read_reg24.exit.thread.i_crit_edge, %sw.bb.i29.ina238_read_reg24.exit.thread.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ -5, %if.end.i.i.ina238_read_reg24.exit.thread.i_crit_edge ], [ %call.i.i28, %sw.bb.i29.ina238_read_reg24.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #7
  br label %ina238_read_power.exit

if.end.i33:                                       ; preds = %if.end.i.i
  %41 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %42 to i32
  %shl.i.i = shl nuw nsw i32 %conv.i.i, 16
  %43 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %37, align 1
  %conv5.i.i = zext i8 %44 to i32
  %shl6.i.i = shl nuw nsw i32 %conv5.i.i, 8
  %or.i.i = or i32 %shl6.i.i, %shl.i.i
  %45 = ptrtoint ptr %39 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %39, align 1
  %conv8.i.i = zext i8 %46 to i32
  %or9.i.i = or i32 %or.i.i, %conv8.i.i
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %data.i.i) #7
  %conv.i = zext i32 %or9.i.i to i64
  %gain.i30 = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 4
  %47 = ptrtoint ptr %gain.i30 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %gain.i30, align 4
  %conv3.i = sext i32 %48 to i64
  %mul2.i = mul nsw i64 %conv3.i, 20000000
  %mul4.i = mul i64 %mul2.i, %conv.i
  %rshunt.i31 = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 3
  %49 = ptrtoint ptr %rshunt.i31 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %rshunt.i31, align 4
  %mul5.i32 = mul i32 %50, 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul4.i)
  %cmp164.i.i.i = icmp ult i64 %mul4.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !80

if.then168.i.i.i:                                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul4.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul5.i32
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #9
  %51 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul5.i32, i64 %mul4.i) #11, !srcloc !81
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %51, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %52 = call i64 @llvm.smax.i64(i64 %dividend.addr.0.i.i.i, i64 0) #7
  %53 = call i64 @llvm.umin.i64(i64 %52, i64 2147483647) #7
  %54 = trunc i64 %53 to i32
  %55 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %val, align 4
  br label %ina238_read_power.exit

sw.bb16.i:                                        ; preds = %sw.bb3
  %regmap.i34 = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 2
  %56 = ptrtoint ptr %regmap.i34 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i34, align 4
  %call17.i = call i32 @regmap_read(ptr noundef %57, i32 noundef 17, ptr noundef nonnull %regval.i26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %sw.bb16.i.ina238_read_power.exit_crit_edge

sw.bb16.i.ina238_read_power.exit_crit_edge:       ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_power.exit

if.end20.i:                                       ; preds = %sw.bb16.i
  %58 = ptrtoint ptr %regval.i26 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %regval.i26, align 4
  %shl.i = shl i32 %59, 8
  %conv21.i = sext i32 %shl.i to i64
  %mul23.i35 = mul nsw i64 %conv21.i, 20000000
  %gain24.i = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 4
  %60 = ptrtoint ptr %gain24.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %gain24.i, align 4
  %conv25.i = sext i32 %61 to i64
  %mul26.i = mul i64 %mul23.i35, %conv25.i
  %rshunt27.i = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 3
  %62 = ptrtoint ptr %rshunt27.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rshunt27.i, align 4
  %mul28.i = mul i32 %63, 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul26.i)
  %cmp164.i.i183.i = icmp ult i64 %mul26.i, 4294967296
  br i1 %cmp164.i.i183.i, label %if.then168.i.i188.i, label %if.else174.i.i190.i, !prof !80

if.then168.i.i188.i:                              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i185.i = trunc i64 %mul26.i to i32
  %div172.i.i186.i = udiv i32 %conv169.i.i185.i, %mul28.i
  %conv173.i.i187.i = zext i32 %div172.i.i186.i to i64
  br label %div_u64.exit192.i

if.else174.i.i190.i:                              ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  %64 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul28.i, i64 %mul26.i) #11, !srcloc !81
  %asmresult1.i.i.i189.i = extractvalue { i64, i64 } %64, 1
  br label %div_u64.exit192.i

div_u64.exit192.i:                                ; preds = %if.else174.i.i190.i, %if.then168.i.i188.i
  %dividend.addr.0.i.i191.i = phi i64 [ %conv173.i.i187.i, %if.then168.i.i188.i ], [ %asmresult1.i.i.i189.i, %if.else174.i.i190.i ]
  %65 = call i64 @llvm.smax.i64(i64 %dividend.addr.0.i.i191.i, i64 0) #7
  %66 = call i64 @llvm.umin.i64(i64 %65, i64 2147483647) #7
  %67 = trunc i64 %66 to i32
  %68 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %val, align 4
  br label %ina238_read_power.exit

sw.bb45.i:                                        ; preds = %sw.bb3
  %regmap46.i = getelementptr inbounds %struct.ina238_data, ptr %31, i32 0, i32 2
  %69 = ptrtoint ptr %regmap46.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap46.i, align 4
  %call47.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 11, ptr noundef nonnull %regval.i26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %sw.bb45.i.ina238_read_power.exit_crit_edge

sw.bb45.i.ina238_read_power.exit_crit_edge:       ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_power.exit

if.end50.i:                                       ; preds = %sw.bb45.i
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %regval.i26 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %regval.i26, align 4
  %and.i36 = lshr i32 %72, 2
  %and.lobit.i = and i32 %and.i36, 1
  %73 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.lobit.i, ptr %val, align 4
  br label %ina238_read_power.exit

ina238_read_power.exit:                           ; preds = %if.end50.i, %sw.bb45.i.ina238_read_power.exit_crit_edge, %div_u64.exit192.i, %sw.bb16.i.ina238_read_power.exit_crit_edge, %div_u64.exit.i, %ina238_read_reg24.exit.thread.i, %sw.bb3.ina238_read_power.exit_crit_edge
  %retval.0.i37 = phi i32 [ %call17.i, %sw.bb16.i.ina238_read_power.exit_crit_edge ], [ %call47.i, %sw.bb45.i.ina238_read_power.exit_crit_edge ], [ -95, %sw.bb3.ina238_read_power.exit_crit_edge ], [ 0, %if.end50.i ], [ 0, %div_u64.exit192.i ], [ 0, %div_u64.exit.i ], [ %retval.0.i.ph.i, %ina238_read_reg24.exit.thread.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i26) #7
  br label %return

sw.bb5:                                           ; preds = %entry
  %driver_data.i.i39 = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %74 = ptrtoint ptr %driver_data.i.i39 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %driver_data.i.i39, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i38) #7
  %76 = ptrtoint ptr %regval.i38 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 -1, ptr %regval.i38, align 4, !annotation !79
  %77 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %attr, label %sw.bb5.ina238_read_temp.exit_crit_edge [
    i32 1, label %sw.bb.i42
    i32 7, label %sw.bb3.i45
    i32 16, label %sw.bb13.i
  ]

sw.bb5.ina238_read_temp.exit_crit_edge:           ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_temp.exit

sw.bb.i42:                                        ; preds = %sw.bb5
  %regmap.i40 = getelementptr inbounds %struct.ina238_data, ptr %75, i32 0, i32 2
  %78 = ptrtoint ptr %regmap.i40 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i40, align 4
  %call1.i41 = call i32 @regmap_read(ptr noundef %79, i32 noundef 6, ptr noundef nonnull %regval.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i41)
  %tobool.not.i = icmp eq i32 %call1.i41, 0
  br i1 %tobool.not.i, label %if.end.i44, label %sw.bb.i42.ina238_read_temp.exit_crit_edge

sw.bb.i42.ina238_read_temp.exit_crit_edge:        ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_temp.exit

if.end.i44:                                       ; preds = %sw.bb.i42
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %regval.i38 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %regval.i38, align 4
  %sext32.i = shl i32 %81, 16
  %shr.i = ashr i32 %sext32.i, 20
  %mul.i43 = mul nsw i32 %shr.i, 125
  br label %cleanup.sink.split.i49

sw.bb3.i45:                                       ; preds = %sw.bb5
  %regmap4.i = getelementptr inbounds %struct.ina238_data, ptr %75, i32 0, i32 2
  %82 = ptrtoint ptr %regmap4.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap4.i, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %83, i32 noundef 16, ptr noundef nonnull %regval.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %sw.bb3.i45.ina238_read_temp.exit_crit_edge

sw.bb3.i45.ina238_read_temp.exit_crit_edge:       ; preds = %sw.bb3.i45
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_temp.exit

if.end8.i:                                        ; preds = %sw.bb3.i45
  call void @__sanitizer_cov_trace_pc() #9
  %84 = ptrtoint ptr %regval.i38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %regval.i38, align 4
  %sext.i46 = shl i32 %85, 16
  %shr11.i = ashr i32 %sext.i46, 20
  %mul12.i = mul nsw i32 %shr11.i, 125
  br label %cleanup.sink.split.i49

sw.bb13.i:                                        ; preds = %sw.bb5
  %regmap14.i = getelementptr inbounds %struct.ina238_data, ptr %75, i32 0, i32 2
  %86 = ptrtoint ptr %regmap14.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap14.i, align 4
  %call15.i = call i32 @regmap_read(ptr noundef %87, i32 noundef 11, ptr noundef nonnull %regval.i38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %sw.bb13.i.ina238_read_temp.exit_crit_edge

sw.bb13.i.ina238_read_temp.exit_crit_edge:        ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ina238_read_temp.exit

if.end18.i:                                       ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %regval.i38 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %regval.i38, align 4
  %and.i47 = lshr i32 %89, 7
  %and.lobit.i48 = and i32 %and.i47, 1
  br label %cleanup.sink.split.i49

cleanup.sink.split.i49:                           ; preds = %if.end18.i, %if.end8.i, %if.end.i44
  %mul.sink.i = phi i32 [ %mul.i43, %if.end.i44 ], [ %mul12.i, %if.end8.i ], [ %and.lobit.i48, %if.end18.i ]
  %90 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %mul.sink.i, ptr %val, align 4
  br label %ina238_read_temp.exit

ina238_read_temp.exit:                            ; preds = %cleanup.sink.split.i49, %sw.bb13.i.ina238_read_temp.exit_crit_edge, %sw.bb3.i45.ina238_read_temp.exit_crit_edge, %sw.bb.i42.ina238_read_temp.exit_crit_edge, %sw.bb5.ina238_read_temp.exit_crit_edge
  %retval.0.i50 = phi i32 [ %call1.i41, %sw.bb.i42.ina238_read_temp.exit_crit_edge ], [ %call5.i, %sw.bb3.i45.ina238_read_temp.exit_crit_edge ], [ %call15.i, %sw.bb13.i.ina238_read_temp.exit_crit_edge ], [ -95, %sw.bb5.ina238_read_temp.exit_crit_edge ], [ 0, %cleanup.sink.split.i49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i38) #7
  br label %return

return:                                           ; preds = %ina238_read_temp.exit, %ina238_read_power.exit, %ina238_read_current.exit, %ina238_read_in.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i50, %ina238_read_temp.exit ], [ %retval.0.i37, %ina238_read_power.exit ], [ %retval.0.i25, %ina238_read_current.exit ], [ %retval.0.i, %ina238_read_in.exit ], [ -95, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina238_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %config_lock = getelementptr inbounds %struct.ina238_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %config_lock, i32 noundef 0) #7
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %type, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb2
    i32 1, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %5 = and i32 %attr, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %switch.i = icmp eq i32 %5, 2
  br i1 %switch.i, label %if.end.i, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %6 = zext i32 %channel to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %channel, label %if.end.i.sw.epilog_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb27.i
  ]

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.i:                                          ; preds = %if.end.i
  %7 = tail call i32 @llvm.smax.i32(i32 %val, i32 -163) #7
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 163) #7
  %mul.i = mul nsw i32 %8, 1000
  %gain.i = getelementptr inbounds %struct.ina238_data, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %gain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gain.i, align 4
  %add.i = sub i32 5, %10
  %mul9.i = mul i32 %mul.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -163840, i32 %mul9.i)
  %cmp11.i = icmp sgt i32 %mul9.i, -163840
  %div.i = sdiv i32 %mul9.i, 5
  %11 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 32767) #7
  %12 = select i1 %cmp11.i, i32 %11, i32 -32768
  %13 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %attr, label %sw.bb.i.sw.epilog_crit_edge [
    i32 3, label %sw.bb22.i
    i32 2, label %sw.bb24.i
  ]

sw.bb.i.sw.epilog_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb22.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.ina238_data, ptr %4, i32 0, i32 2
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 12, i32 noundef %12) #7
  br label %sw.epilog

sw.bb24.i:                                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap25.i = getelementptr inbounds %struct.ina238_data, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %regmap25.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap25.i, align 4
  %call26.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 13, i32 noundef %12) #7
  br label %sw.epilog

sw.bb27.i:                                        ; preds = %if.end.i
  %18 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #7
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 102396) #7
  %mul40.i = mul nuw nsw i32 %19, 1000
  %div4195.i = udiv i32 %mul40.i, 3125
  %20 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %attr, label %sw.bb27.i.sw.epilog_crit_edge [
    i32 3, label %sw.bb54.i
    i32 2, label %sw.bb57.i
  ]

sw.bb27.i.sw.epilog_crit_edge:                    ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb54.i:                                        ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap55.i = getelementptr inbounds %struct.ina238_data, ptr %4, i32 0, i32 2
  %21 = ptrtoint ptr %regmap55.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap55.i, align 4
  %call56.i = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 14, i32 noundef %div4195.i) #7
  br label %sw.epilog

sw.bb57.i:                                        ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap58.i = getelementptr inbounds %struct.ina238_data, ptr %4, i32 0, i32 2
  %23 = ptrtoint ptr %regmap58.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap58.i, align 4
  %call59.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 15, i32 noundef %div4195.i) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %25 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %attr)
  %cmp.not.i = icmp eq i32 %attr, 19
  br i1 %cmp.not.i, label %if.end.i19, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i19:                                       ; preds = %sw.bb2
  %conv.i = sext i32 %val to i64
  %mul.i16 = mul nsw i64 %conv.i, 20
  %rshunt.i = getelementptr inbounds %struct.ina238_data, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %rshunt.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rshunt.i, align 4
  %conv8.i = zext i32 %28 to i64
  %mul9.i17 = mul i64 %mul.i16, %conv8.i
  %gain.i18 = getelementptr inbounds %struct.ina238_data, ptr %26, i32 0, i32 4
  %29 = ptrtoint ptr %gain.i18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gain.i18, align 4
  %mul11.i = mul i32 %30, 20000000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i17)
  %cmp164.i.i.i = icmp ult i64 %mul9.i17, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !80

if.then168.i.i.i:                                 ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %mul9.i17 to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul11.i
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul11.i, i64 %mul9.i17) #11, !srcloc !81
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %31, 1
  %extract.t44.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t44.i, %if.else174.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %dividend.addr.0.i.i.off0.i)
  %cmp16.i = icmp sgt i32 %dividend.addr.0.i.i.off0.i, 255
  %shr.i = ashr i32 %dividend.addr.0.i.i.off0.i, 8
  %32 = tail call i32 @llvm.smin.i32(i32 %shr.i, i32 65535) #7
  %33 = select i1 %cmp16.i, i32 %32, i32 0
  %regmap.i20 = getelementptr inbounds %struct.ina238_data, ptr %26, i32 0, i32 2
  %34 = ptrtoint ptr %regmap.i20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i20, align 4
  %call29.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 17, i32 noundef %33) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %attr)
  %cmp.not.i22 = icmp eq i32 %attr, 7
  br i1 %cmp.not.i22, label %if.end.i26, label %sw.bb4.sw.epilog_crit_edge

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.i26:                                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256000, i32 %val)
  %cmp1.i = icmp sgt i32 %val, -256000
  %div.i24 = sdiv i32 %val, 125
  %shl.i = shl nsw i32 %div.i24, 4
  %38 = tail call i32 @llvm.smin.i32(i32 %shl.i, i32 32767) #7
  %.op.i = and i32 %38, 65520
  %and.i = select i1 %cmp1.i, i32 %.op.i, i32 32768
  %regmap.i25 = getelementptr inbounds %struct.ina238_data, ptr %37, i32 0, i32 2
  %39 = ptrtoint ptr %regmap.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i25, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 16, i32 noundef %and.i) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i26, %sw.bb4.sw.epilog_crit_edge, %div_u64.exit.i, %sw.bb2.sw.epilog_crit_edge, %sw.bb57.i, %sw.bb54.i, %sw.bb27.i.sw.epilog_crit_edge, %sw.bb24.i, %sw.bb22.i, %sw.bb.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ %call59.i, %sw.bb57.i ], [ %call56.i, %sw.bb54.i ], [ %call26.i, %sw.bb24.i ], [ %call23.i, %sw.bb22.i ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ -95, %sw.bb.i.sw.epilog_crit_edge ], [ -95, %sw.bb27.i.sw.epilog_crit_edge ], [ -95, %if.end.i.sw.epilog_crit_edge ], [ %call29.i, %div_u64.exit.i ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ %call8.i, %if.end.i26 ], [ -95, %sw.bb4.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %config_lock) #7
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smax.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
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
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_ina238__324_640_ina238_driver_init6, !1, !"__initcall__kmod_ina238__324_640_ina238_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ina238.c", i32 640, i32 1}
!2 = !{ptr @__exitcall_ina238_driver_exit, !1, !"__exitcall_ina238_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author325, !4, !"__UNIQUE_ID_author325", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ina238.c", i32 642, i32 1}
!5 = !{ptr @__UNIQUE_ID_description326, !6, !"__UNIQUE_ID_description326", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ina238.c", i32 643, i32 1}
!7 = !{ptr @__UNIQUE_ID_file327, !8, !"__UNIQUE_ID_file327", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ina238.c", i32 644, i32 1}
!9 = !{ptr @__UNIQUE_ID_license328, !8, !"__UNIQUE_ID_license328", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ina238.c", i32 633, i32 11}
!12 = !{ptr @ina238_driver, !13, !"ina238_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ina238.c", i32 630, i32 26}
!14 = !{ptr @ina238_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ina238.c", i32 547, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ina238_probe._key, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ina238.c", i32 549, i32 17}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/ina238.c", i32 551, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @ina238_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @ina238_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ina238.c", i32 557, i32 36}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ina238.c", i32 560, i32 3}
!32 = !{ptr @ina238_probe._entry.9, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ina238_probe._entry_ptr.11, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ina238.c", i32 565, i32 36}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/ina238.c", i32 568, i32 3}
!38 = !{ptr @ina238_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ina238_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/ina238.c", i32 578, i32 3}
!42 = !{ptr @ina238_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ina238_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ina238_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/ina238.c", i32 586, i32 3}
!46 = !{ptr @ina238_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ina238_probe._entry.21, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ina238.c", i32 594, i32 3}
!49 = !{ptr @ina238_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ina238_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ina238.c", i32 602, i32 3}
!52 = !{ptr @ina238_probe._entry_ptr.24, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/ina238.c", i32 612, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @ina238_probe._entry.25, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @ina238_probe._entry_ptr.28, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ina238_regmap_config, !59, !"ina238_regmap_config", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/ina238.c", i32 99, i32 29}
!60 = !{ptr @ina238_chip_info, !61, !"ina238_chip_info", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/ina238.c", i32 528, i32 37}
!62 = !{ptr @ina238_hwmon_ops, !63, !"ina238_hwmon_ops", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/ina238.c", i32 522, i32 31}
!64 = !{ptr @ina238_info, !65, !"ina238_info", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/ina238.c", i32 504, i32 41}
!66 = !{ptr @ina238_of_match, !67, !"ina238_of_match", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/ina238.c", i32 624, i32 49}
!68 = !{ptr @ina238_id, !69, !"ina238_id", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/ina238.c", i32 618, i32 35}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"auto-init"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2149042128, i64 2149042408, i64 2149042742, i64 2149043076}
