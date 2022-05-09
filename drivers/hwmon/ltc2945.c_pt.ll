; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc2945.c_pt.bc'
source_filename = "../drivers/hwmon/ltc2945.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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

@__initcall__kmod_ltc2945__296_484_ltc2945_driver_init6 = internal global ptr @ltc2945_driver_init, section ".initcall6.init", align 4
@ltc2945_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc2945_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc2945_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc2945_driver_exit = internal global ptr @ltc2945_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [50 x i8] c"ltc2945.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [35 x i8] c"ltc2945.description=LTC2945 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [35 x i8] c"ltc2945.file=drivers/hwmon/ltc2945\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"ltc2945.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc2945\00", [24 x i8] zeroinitializer }, align 32
@ltc2945_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc2945\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc2945_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ltc2945_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 49, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ltc2945:454:(&ltc2945_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ltc2945_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 456, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate register map\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc2945_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ltc2945.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc2945_probe._entry_ptr = internal global ptr @ltc2945_probe._entry, section ".printk_index", align 4
@ltc2945_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ltc2945_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ltc2945_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltc2945_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltc2945_attrs = internal global { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_lowest, ptr @sensor_dev_attr_in1_highest, ptr @sensor_dev_attr_in1_reset_history, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_lowest, ptr @sensor_dev_attr_in2_highest, ptr @sensor_dev_attr_in2_reset_history, ptr @sensor_dev_attr_in2_min_alarm, ptr @sensor_dev_attr_in2_max_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_min, ptr @sensor_dev_attr_curr1_max, ptr @sensor_dev_attr_curr1_lowest, ptr @sensor_dev_attr_curr1_highest, ptr @sensor_dev_attr_curr1_reset_history, ptr @sensor_dev_attr_curr1_min_alarm, ptr @sensor_dev_attr_curr1_max_alarm, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_power1_min, ptr @sensor_dev_attr_power1_max, ptr @sensor_dev_attr_power1_input_lowest, ptr @sensor_dev_attr_power1_input_highest, ptr @sensor_dev_attr_power1_reset_history, ptr @sensor_dev_attr_power1_min_alarm, ptr @sensor_dev_attr_power1_max_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 30 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 38 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 36 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 34 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ltc2945_history_store }, i32 34 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 40 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 48 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 46 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 44 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 42 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ltc2945_history_store }, i32 44 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 20 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 28 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 26 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 22 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ltc2945_history_store }, i32 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr @ltc2945_value_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_value_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ltc2945_history_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc2945_bool_show, ptr null }, i32 128 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%lld\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in1_lowest\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in1_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in1_reset_history\00", [46 x i8] zeroinitializer }, align 32
@ltc2945_history_store.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Bad register: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in2_lowest\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in2_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in2_reset_history\00", [46 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"curr1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"curr1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"curr1_lowest\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"curr1_highest\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"curr1_reset_history\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"curr1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"curr1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_input\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power1_min\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power1_max\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"power1_input_lowest\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power1_input_highest\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power1_reset_history\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power1_min_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power1_max_alarm\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 8, i64 5, i64 8, i64 11, i64 14, i64 17, i64 20, i64 22, i64 24, i64 26, i64 28, i64 30, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 44, i64 46, i64 48]
@__sancov_gen_cov_switch_values.42 = internal global [22 x i64] [i64 20, i64 8, i64 5, i64 8, i64 11, i64 14, i64 17, i64 20, i64 22, i64 24, i64 26, i64 28, i64 30, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 44, i64 46, i64 48]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 8, i64 11, i64 24, i64 34, i64 44]
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"ltc2945_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 476, i32 26 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 478, i32 14 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"ltc2945_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 469, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [22 x i8] c"ltc2945_regmap_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 442, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 454, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 456, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"ltc2945_groups\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"ltc2945_group\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 440, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"ltc2945_attrs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 401, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in1_lowest\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in1_highest\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in1_reset_history\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_min_alarm\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_max_alarm\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in2_lowest\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in2_highest\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in2_reset_history\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in2_min_alarm\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in2_max_alarm\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_curr1_min\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_curr1_max\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_curr1_lowest\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_curr1_highest\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_curr1_reset_history\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_curr1_min_alarm\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_curr1_max_alarm\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_input\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_power1_min\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_power1_max\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [36 x i8] c"sensor_dev_attr_power1_input_lowest\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_power1_input_highest\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_power1_reset_history\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_power1_min_alarm\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_power1_max_alarm\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 341, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 229, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 342, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 343, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 344, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 345, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 346, i32 8 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 308, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 359, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 336, i32 25 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 360, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 349, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 350, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 351, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 352, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 353, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 354, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 361, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 362, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 366, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 367, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 369, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 371, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 372, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 374, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 379, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 380, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 384, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 385, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 387, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 389, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 391, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 393, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 398, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.288 = private constant [27 x i8] c"../drivers/hwmon/ltc2945.c\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.288, i32 399, i32 8 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_ltc2945_driver_exit, ptr @__initcall__kmod_ltc2945__296_484_ltc2945_driver_init6, ptr @ltc2945_driver_exit, ptr @ltc2945_probe._entry, ptr @ltc2945_probe._entry_ptr, ptr @ltc2945_driver, ptr @.str, ptr @ltc2945_id, ptr @ltc2945_probe._key, ptr @ltc2945_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ltc2945_groups, ptr @ltc2945_group, ptr @ltc2945_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_lowest, ptr @sensor_dev_attr_in1_highest, ptr @sensor_dev_attr_in1_reset_history, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_lowest, ptr @sensor_dev_attr_in2_highest, ptr @sensor_dev_attr_in2_reset_history, ptr @sensor_dev_attr_in2_min_alarm, ptr @sensor_dev_attr_in2_max_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_min, ptr @sensor_dev_attr_curr1_max, ptr @sensor_dev_attr_curr1_lowest, ptr @sensor_dev_attr_curr1_highest, ptr @sensor_dev_attr_curr1_reset_history, ptr @sensor_dev_attr_curr1_min_alarm, ptr @sensor_dev_attr_curr1_max_alarm, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_power1_min, ptr @sensor_dev_attr_power1_max, ptr @sensor_dev_attr_power1_input_lowest, ptr @sensor_dev_attr_power1_input_highest, ptr @sensor_dev_attr_power1_reset_history, ptr @sensor_dev_attr_power1_min_alarm, ptr @sensor_dev_attr_power1_max_alarm, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc2945_attrs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc2945_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc2945_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc2945_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ltc2945_regmap_config, ptr noundef nonnull @ltc2945_probe._key, ptr noundef nonnull @.str.1) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 @regmap_write(ptr noundef %call, i32 noundef 3, i32 noundef 0) #6
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call5 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef %call, ptr noundef nonnull @ltc2945_groups) #6
  %cmp.i.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call5 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %0, %do.end ], [ %spec.select.i, %if.end ]
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
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  %control.i = alloca i32, align 4
  %buf.i = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %conv = trunc i32 %1 to i8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #6
  %4 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %control.i, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf.i) #6
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %buf.i, align 1, !annotation !146
  %6 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !146
  %8 = getelementptr inbounds [3 x i8], ptr %buf.i, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %8, align 1, !annotation !146
  %conv.i = and i32 %1, 255
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %conv)
  %cmp.i.i = icmp ult i8 %conv, 20
  %cond.i = select i1 %cmp.i.i, i32 3, i32 2
  %call3.i = call i32 @regmap_bulk_read(ptr noundef %3, i32 noundef %conv.i, ptr noundef nonnull %buf.i, i32 noundef %cond.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf.i, align 1
  %conv8.i = zext i8 %11 to i32
  br i1 %cmp.i.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %conv8.i, 16
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %6, align 1
  %conv10.i = zext i8 %13 to i32
  %shl11.i = shl nuw nsw i32 %conv10.i, 8
  %add.i = or i32 %shl11.i, %shl.i
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %8, align 1
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl18.i = shl nuw nsw i32 %conv8.i, 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %6, align 1
  %18 = lshr i8 %17, 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else.i, %if.then7.i
  %.sink59.i = phi i8 [ %18, %if.else.i ], [ %15, %if.then7.i ]
  %shl18.sink.i = phi i32 [ %shl18.i, %if.else.i ], [ %add.i, %if.then7.i ]
  %19 = zext i8 %.sink59.i to i32
  %add21.i = or i32 %shl18.sink.i, %19
  %val.0.i = zext i32 %add21.i to i64
  %20 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %if.end23.i.if.then_crit_edge [
    i8 5, label %if.end23.i.sw.bb.i_crit_edge
    i8 8, label %if.end23.i.sw.bb.i_crit_edge11
    i8 11, label %if.end23.i.sw.bb.i_crit_edge12
    i8 14, label %if.end23.i.sw.bb.i_crit_edge13
    i8 17, label %if.end23.i.sw.bb.i_crit_edge14
    i8 30, label %if.end23.i.sw.bb36.i_crit_edge
    i8 32, label %if.end23.i.sw.bb36.i_crit_edge15
    i8 34, label %if.end23.i.sw.bb36.i_crit_edge16
    i8 36, label %if.end23.i.sw.bb36.i_crit_edge17
    i8 38, label %if.end23.i.sw.bb36.i_crit_edge18
    i8 40, label %if.end23.i.sw.bb38.i_crit_edge
    i8 42, label %if.end23.i.sw.bb38.i_crit_edge19
    i8 48, label %if.end23.i.sw.bb38.i_crit_edge20
    i8 46, label %if.end23.i.sw.bb38.i_crit_edge21
    i8 44, label %if.end23.i.sw.bb38.i_crit_edge22
    i8 20, label %if.end23.i.sw.bb40.i_crit_edge
    i8 22, label %if.end23.i.sw.bb40.i_crit_edge23
    i8 24, label %if.end23.i.sw.bb40.i_crit_edge24
    i8 26, label %if.end23.i.sw.bb40.i_crit_edge25
    i8 28, label %if.end23.i.sw.bb40.i_crit_edge26
  ]

if.end23.i.sw.bb40.i_crit_edge26:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40.i

if.end23.i.sw.bb40.i_crit_edge25:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40.i

if.end23.i.sw.bb40.i_crit_edge24:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40.i

if.end23.i.sw.bb40.i_crit_edge23:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40.i

if.end23.i.sw.bb40.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb40.i

if.end23.i.sw.bb38.i_crit_edge22:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end23.i.sw.bb38.i_crit_edge21:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end23.i.sw.bb38.i_crit_edge20:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end23.i.sw.bb38.i_crit_edge19:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end23.i.sw.bb38.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38.i

if.end23.i.sw.bb36.i_crit_edge18:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36.i

if.end23.i.sw.bb36.i_crit_edge17:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36.i

if.end23.i.sw.bb36.i_crit_edge16:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36.i

if.end23.i.sw.bb36.i_crit_edge15:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36.i

if.end23.i.sw.bb36.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb36.i

if.end23.i.sw.bb.i_crit_edge14:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge13:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge12:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge11:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.sw.bb.i_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end23.i.if.then_crit_edge:                     ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

sw.bb.i:                                          ; preds = %if.end23.i.sw.bb.i_crit_edge, %if.end23.i.sw.bb.i_crit_edge11, %if.end23.i.sw.bb.i_crit_edge12, %if.end23.i.sw.bb.i_crit_edge13, %if.end23.i.sw.bb.i_crit_edge14
  %call25.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %control.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %sw.bb.i.if.then_crit_edge, label %if.end30.i

sw.bb.i.if.then_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end30.i:                                       ; preds = %sw.bb.i
  %21 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %control.i, align 4
  %and.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else32.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul.i = mul nuw nsw i64 %val.0.i, 625
  br label %if.end

if.else32.i:                                      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  %mul33.i = mul nuw nsw i64 %val.0.i, 25
  %23 = lshr i64 %mul33.i, 1
  br label %if.end

sw.bb36.i:                                        ; preds = %if.end23.i.sw.bb36.i_crit_edge, %if.end23.i.sw.bb36.i_crit_edge15, %if.end23.i.sw.bb36.i_crit_edge16, %if.end23.i.sw.bb36.i_crit_edge17, %if.end23.i.sw.bb36.i_crit_edge18
  %mul37.i = mul nuw nsw i64 %val.0.i, 25
  br label %if.end

sw.bb38.i:                                        ; preds = %if.end23.i.sw.bb38.i_crit_edge, %if.end23.i.sw.bb38.i_crit_edge19, %if.end23.i.sw.bb38.i_crit_edge20, %if.end23.i.sw.bb38.i_crit_edge21, %if.end23.i.sw.bb38.i_crit_edge22
  %24 = lshr i64 %val.0.i, 1
  br label %if.end

sw.bb40.i:                                        ; preds = %if.end23.i.sw.bb40.i_crit_edge, %if.end23.i.sw.bb40.i_crit_edge23, %if.end23.i.sw.bb40.i_crit_edge24, %if.end23.i.sw.bb40.i_crit_edge25, %if.end23.i.sw.bb40.i_crit_edge26
  %mul41.i = mul nuw nsw i64 %val.0.i, 25
  br label %if.end

if.then:                                          ; preds = %sw.bb.i.if.then_crit_edge, %if.end23.i.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i.off0 = phi i32 [ -22, %if.end23.i.if.then_crit_edge ], [ %call3.i, %entry.if.then_crit_edge ], [ %call25.i, %sw.bb.i.if.then_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb40.i, %sw.bb38.i, %sw.bb36.i, %if.else32.i, %if.then31.i
  %retval.0.i.ph = phi i64 [ %23, %if.else32.i ], [ %mul.i, %if.then31.i ], [ %mul37.i, %sw.bb36.i ], [ %24, %sw.bb38.i ], [ %mul41.i, %sw.bb40.i ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #6
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i64 noundef %retval.0.i.ph) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %retval.0.i.off0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_value_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %control.i = alloca i32, align 4
  %val = alloca i32, align 4
  %regbuf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %regbuf) #6
  %5 = getelementptr inbounds [3 x i8], ptr %regbuf, i32 0, i32 1
  %6 = getelementptr inbounds [3 x i8], ptr %regbuf, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %6, align 1, !annotation !146
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %3 to i8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %10 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #6
  %12 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %control.i, align 4, !annotation !146
  %13 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %conv, label %ltc2945_val_to_reg.exit [
    i8 5, label %if.end.sw.bb.i_crit_edge
    i8 8, label %if.end.sw.bb.i_crit_edge87
    i8 11, label %if.end.sw.bb.i_crit_edge88
    i8 14, label %if.end.sw.bb.i_crit_edge89
    i8 17, label %if.end.sw.bb.i_crit_edge90
    i8 30, label %if.end.sw.bb12.i_crit_edge
    i8 32, label %if.end.sw.bb12.i_crit_edge91
    i8 34, label %if.end.sw.bb12.i_crit_edge92
    i8 36, label %if.end.sw.bb12.i_crit_edge93
    i8 38, label %if.end.sw.bb12.i_crit_edge94
    i8 40, label %if.end.sw.bb14.i_crit_edge
    i8 42, label %if.end.sw.bb14.i_crit_edge95
    i8 48, label %if.end.sw.bb14.i_crit_edge96
    i8 46, label %if.end.sw.bb14.i_crit_edge97
    i8 44, label %if.end.sw.bb14.i_crit_edge98
    i8 20, label %if.end.sw.bb16.i_crit_edge
    i8 22, label %if.end.sw.bb16.i_crit_edge99
    i8 24, label %if.end.sw.bb16.i_crit_edge100
    i8 26, label %if.end.sw.bb16.i_crit_edge101
    i8 28, label %if.end.sw.bb16.i_crit_edge102
  ]

if.end.sw.bb16.i_crit_edge102:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.sw.bb16.i_crit_edge101:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.sw.bb16.i_crit_edge100:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.sw.bb16.i_crit_edge99:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.sw.bb16.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb16.i

if.end.sw.bb14.i_crit_edge98:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end.sw.bb14.i_crit_edge97:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end.sw.bb14.i_crit_edge96:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end.sw.bb14.i_crit_edge95:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end.sw.bb14.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb14.i

if.end.sw.bb12.i_crit_edge94:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge93:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge92:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge91:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12.i

if.end.sw.bb.i_crit_edge90:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge89:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge88:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge87:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge87, %if.end.sw.bb.i_crit_edge88, %if.end.sw.bb.i_crit_edge89, %if.end.sw.bb.i_crit_edge90
  %call1.i = call i32 @regmap_read(ptr noundef %11, i32 noundef 0, ptr noundef nonnull %control.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.i.ltc2945_val_to_reg.exit.thread_crit_edge, label %if.end.i

sw.bb.i.ltc2945_val_to_reg.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ltc2945_val_to_reg.exit.thread

if.end.i:                                         ; preds = %sw.bb.i
  %14 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %control.i, align 4
  %and.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %9, 312
  %div4.i = udiv i32 %add.i, 625
  br label %ltc2945_val_to_reg.exit.thread

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %add9.i = add i32 %9, 12
  %div10.i = udiv i32 %add9.i, 25
  %mul.i = shl nuw nsw i32 %div10.i, 1
  br label %ltc2945_val_to_reg.exit.thread

sw.bb12.i:                                        ; preds = %if.end.sw.bb12.i_crit_edge, %if.end.sw.bb12.i_crit_edge91, %if.end.sw.bb12.i_crit_edge92, %if.end.sw.bb12.i_crit_edge93, %if.end.sw.bb12.i_crit_edge94
  %div13.i = udiv i32 %9, 25
  br label %ltc2945_val_to_reg.exit.thread83

sw.bb14.i:                                        ; preds = %if.end.sw.bb14.i_crit_edge, %if.end.sw.bb14.i_crit_edge95, %if.end.sw.bb14.i_crit_edge96, %if.end.sw.bb14.i_crit_edge97, %if.end.sw.bb14.i_crit_edge98
  %mul15.i = shl i32 %9, 1
  br label %ltc2945_val_to_reg.exit.thread83

sw.bb16.i:                                        ; preds = %if.end.sw.bb16.i_crit_edge, %if.end.sw.bb16.i_crit_edge99, %if.end.sw.bb16.i_crit_edge100, %if.end.sw.bb16.i_crit_edge101, %if.end.sw.bb16.i_crit_edge102
  %add21.i = add i32 %9, 12
  %div22.i = udiv i32 %add21.i, 25
  br label %ltc2945_val_to_reg.exit.thread83

ltc2945_val_to_reg.exit.thread:                   ; preds = %if.else.i, %if.then3.i, %sw.bb.i.ltc2945_val_to_reg.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %mul.i, %if.else.i ], [ %div4.i, %if.then3.i ], [ %call1.i, %sw.bb.i.ltc2945_val_to_reg.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #6
  br label %if.then4

ltc2945_val_to_reg.exit.thread83:                 ; preds = %sw.bb16.i, %sw.bb14.i, %sw.bb12.i
  %retval.0.i.ph82 = phi i32 [ %div13.i, %sw.bb12.i ], [ %mul15.i, %sw.bb14.i ], [ %div22.i, %sw.bb16.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #6
  br label %if.else

ltc2945_val_to_reg.exit:                          ; preds = %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %conv)
  %cmp.i77 = icmp ult i8 %conv, 20
  br i1 %cmp.i77, label %ltc2945_val_to_reg.exit.if.then4_crit_edge, label %ltc2945_val_to_reg.exit.if.else_crit_edge

ltc2945_val_to_reg.exit.if.else_crit_edge:        ; preds = %ltc2945_val_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

ltc2945_val_to_reg.exit.if.then4_crit_edge:       ; preds = %ltc2945_val_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.then4:                                         ; preds = %ltc2945_val_to_reg.exit.if.then4_crit_edge, %ltc2945_val_to_reg.exit.thread
  %retval.0.i80 = phi i32 [ %retval.0.i.ph, %ltc2945_val_to_reg.exit.thread ], [ -22, %ltc2945_val_to_reg.exit.if.then4_crit_edge ]
  %16 = call i32 @llvm.smax.i32(i32 %retval.0.i80, i32 0)
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 16777215)
  %18 = lshr i32 %17, 16
  %conv14 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %regbuf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv14, ptr %regbuf, align 1
  %20 = lshr i32 %17, 8
  %conv16 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv16, ptr %5, align 1
  %conv18 = trunc i32 %17 to i8
  %22 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv18, ptr %6, align 1
  br label %if.end40

if.else:                                          ; preds = %ltc2945_val_to_reg.exit.if.else_crit_edge, %ltc2945_val_to_reg.exit.thread83
  %retval.0.i86 = phi i32 [ %retval.0.i.ph82, %ltc2945_val_to_reg.exit.thread83 ], [ -22, %ltc2945_val_to_reg.exit.if.else_crit_edge ]
  %23 = call i32 @llvm.smax.i32(i32 %retval.0.i86, i32 0)
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 4095)
  %25 = lshr i32 %24, 4
  %conv35 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %regbuf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %regbuf, align 1
  %.tr = trunc i32 %24 to i8
  %conv38 = shl i8 %.tr, 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv38, ptr %5, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then4
  %num_regs.0 = phi i32 [ 3, %if.then4 ], [ 2, %if.else ]
  %conv41 = and i32 %3, 255
  %call42 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %conv41, ptr noundef nonnull %regbuf, i32 noundef %num_regs.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  %call42.count = select i1 %cmp43, i32 %call42, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call42.count, %if.end40 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %regbuf) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_history_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %buf_min = alloca [3 x i8], align 1
  %buf_max = alloca [3 x i8], align 1
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %conv = trunc i32 %3 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 20, i8 %conv)
  %cmp.i = icmp ult i8 %conv, 20
  %cond = select i1 %cmp.i, i32 3, i32 2
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf_min) #6
  %4 = call ptr @memset(ptr %buf_min, i32 255, i32 3)
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf_max) #6
  %5 = call ptr @memset(ptr %buf_max, i32 0, i32 3)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !146
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.not = icmp eq i32 %8, 1
  br i1 %cmp.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call.i83 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %conv8 = and i32 %3, 255
  %call9 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %conv8, ptr noundef nonnull %buf_min, i32 noundef %cond) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %conv, label %land.end [
    i8 11, label %if.end12.sw.epilog_crit_edge
    i8 24, label %sw.bb14
    i8 34, label %sw.bb15
    i8 44, label %sw.bb16
  ]

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb16:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.end:                                         ; preds = %if.end12
  %.b82 = load i1, ptr @ltc2945_history_store.__already_done, align 1
  br i1 %.b82, label %land.end.cleanup_crit_edge, label %if.then23, !prof !147

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then23:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @ltc2945_history_store.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 308, i32 noundef 9, ptr noundef nonnull @.str.14, i32 noundef %conv8) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb15, %sw.bb14, %if.end12.sw.epilog_crit_edge
  %reg.0 = phi i32 [ 42, %sw.bb16 ], [ 32, %sw.bb15 ], [ 22, %sw.bb14 ], [ 8, %if.end12.sw.epilog_crit_edge ]
  %call57 = call i32 @regmap_bulk_write(ptr noundef %1, i32 noundef %reg.0, ptr noundef nonnull %buf_max, i32 noundef %cond) #6
  %call.i84 = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool59.not = icmp eq i32 %call57, 0
  %spec.select = select i1 %tobool59.not, i32 %count, i32 %call57
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then23, %land.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ -22, %if.then23 ], [ -22, %land.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf_max) #6
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf_min) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc2945_bool_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  %fault = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fault) #6
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %fault, align 4, !annotation !146
  %call1 = call i32 @regmap_read(ptr noundef %1, i32 noundef 3, ptr noundef nonnull %fault) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fault, align 4
  %and = and i32 %6, %4
  store i32 %and, ptr %fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 3, i32 noundef %4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %fault to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fault, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6 = icmp ne i32 %8, 0
  %lnot.ext = zext i1 %tobool6 to i32
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.16, i32 noundef %lnot.ext) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fault) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_ltc2945__296_484_ltc2945_driver_init6, !1, !"__initcall__kmod_ltc2945__296_484_ltc2945_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc2945.c", i32 484, i32 1}
!2 = !{ptr @__exitcall_ltc2945_driver_exit, !1, !"__exitcall_ltc2945_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc2945.c", i32 486, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc2945.c", i32 487, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc2945.c", i32 488, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ltc2945.c", i32 478, i32 14}
!12 = !{ptr @ltc2945_driver, !13, !"ltc2945_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ltc2945.c", i32 476, i32 26}
!14 = !{ptr @ltc2945_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ltc2945.c", i32 454, i32 11}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ltc2945.c", i32 456, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ltc2945_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @ltc2945_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @ltc2945_regmap_config, !26, !"ltc2945_regmap_config", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ltc2945.c", i32 442, i32 35}
!27 = !{ptr @ltc2945_groups, !28, !"ltc2945_groups", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ltc2945.c", i32 440, i32 1}
!29 = !{ptr @ltc2945_group, !28, !"ltc2945_group", i1 false, i1 false}
!30 = !{ptr @ltc2945_attrs, !31, !"ltc2945_attrs", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ltc2945.c", i32 401, i32 26}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ltc2945.c", i32 341, i32 8}
!34 = !{ptr @sensor_dev_attr_in1_input, !33, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!35 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/ltc2945.c", i32 229, i32 25}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/ltc2945.c", i32 342, i32 8}
!39 = !{ptr @sensor_dev_attr_in1_min, !38, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/ltc2945.c", i32 343, i32 8}
!42 = !{ptr @sensor_dev_attr_in1_max, !41, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ltc2945.c", i32 344, i32 8}
!45 = !{ptr @sensor_dev_attr_in1_lowest, !44, !"sensor_dev_attr_in1_lowest", i1 false, i1 false}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/ltc2945.c", i32 345, i32 8}
!48 = !{ptr @sensor_dev_attr_in1_highest, !47, !"sensor_dev_attr_in1_highest", i1 false, i1 false}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ltc2945.c", i32 346, i32 8}
!51 = !{ptr @sensor_dev_attr_in1_reset_history, !50, !"sensor_dev_attr_in1_reset_history", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/ltc2945.c", i32 308, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/ltc2945.c", i32 359, i32 8}
!57 = !{ptr @sensor_dev_attr_in1_min_alarm, !56, !"sensor_dev_attr_in1_min_alarm", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/ltc2945.c", i32 336, i32 25}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/ltc2945.c", i32 360, i32 8}
!62 = !{ptr @sensor_dev_attr_in1_max_alarm, !61, !"sensor_dev_attr_in1_max_alarm", i1 false, i1 false}
!63 = !{ptr @.str.18, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ltc2945.c", i32 349, i32 8}
!65 = !{ptr @sensor_dev_attr_in2_input, !64, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/ltc2945.c", i32 350, i32 8}
!68 = !{ptr @sensor_dev_attr_in2_min, !67, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ltc2945.c", i32 351, i32 8}
!71 = !{ptr @sensor_dev_attr_in2_max, !70, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/ltc2945.c", i32 352, i32 8}
!74 = !{ptr @sensor_dev_attr_in2_lowest, !73, !"sensor_dev_attr_in2_lowest", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/ltc2945.c", i32 353, i32 8}
!77 = !{ptr @sensor_dev_attr_in2_highest, !76, !"sensor_dev_attr_in2_highest", i1 false, i1 false}
!78 = !{ptr @.str.23, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/ltc2945.c", i32 354, i32 8}
!80 = !{ptr @sensor_dev_attr_in2_reset_history, !79, !"sensor_dev_attr_in2_reset_history", i1 false, i1 false}
!81 = !{ptr @.str.24, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/ltc2945.c", i32 361, i32 8}
!83 = !{ptr @sensor_dev_attr_in2_min_alarm, !82, !"sensor_dev_attr_in2_min_alarm", i1 false, i1 false}
!84 = !{ptr @.str.25, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/ltc2945.c", i32 362, i32 8}
!86 = !{ptr @sensor_dev_attr_in2_max_alarm, !85, !"sensor_dev_attr_in2_max_alarm", i1 false, i1 false}
!87 = !{ptr @.str.26, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/ltc2945.c", i32 366, i32 8}
!89 = !{ptr @sensor_dev_attr_curr1_input, !88, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!90 = !{ptr @.str.27, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/ltc2945.c", i32 367, i32 8}
!92 = !{ptr @sensor_dev_attr_curr1_min, !91, !"sensor_dev_attr_curr1_min", i1 false, i1 false}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/ltc2945.c", i32 369, i32 8}
!95 = !{ptr @sensor_dev_attr_curr1_max, !94, !"sensor_dev_attr_curr1_max", i1 false, i1 false}
!96 = !{ptr @.str.29, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/ltc2945.c", i32 371, i32 8}
!98 = !{ptr @sensor_dev_attr_curr1_lowest, !97, !"sensor_dev_attr_curr1_lowest", i1 false, i1 false}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/ltc2945.c", i32 372, i32 8}
!101 = !{ptr @sensor_dev_attr_curr1_highest, !100, !"sensor_dev_attr_curr1_highest", i1 false, i1 false}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/ltc2945.c", i32 374, i32 8}
!104 = !{ptr @sensor_dev_attr_curr1_reset_history, !103, !"sensor_dev_attr_curr1_reset_history", i1 false, i1 false}
!105 = !{ptr @.str.32, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/ltc2945.c", i32 379, i32 8}
!107 = !{ptr @sensor_dev_attr_curr1_min_alarm, !106, !"sensor_dev_attr_curr1_min_alarm", i1 false, i1 false}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/ltc2945.c", i32 380, i32 8}
!110 = !{ptr @sensor_dev_attr_curr1_max_alarm, !109, !"sensor_dev_attr_curr1_max_alarm", i1 false, i1 false}
!111 = !{ptr @.str.34, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/ltc2945.c", i32 384, i32 8}
!113 = !{ptr @sensor_dev_attr_power1_input, !112, !"sensor_dev_attr_power1_input", i1 false, i1 false}
!114 = !{ptr @.str.35, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/ltc2945.c", i32 385, i32 8}
!116 = !{ptr @sensor_dev_attr_power1_min, !115, !"sensor_dev_attr_power1_min", i1 false, i1 false}
!117 = !{ptr @.str.36, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/ltc2945.c", i32 387, i32 8}
!119 = !{ptr @sensor_dev_attr_power1_max, !118, !"sensor_dev_attr_power1_max", i1 false, i1 false}
!120 = !{ptr @.str.37, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/ltc2945.c", i32 389, i32 8}
!122 = !{ptr @sensor_dev_attr_power1_input_lowest, !121, !"sensor_dev_attr_power1_input_lowest", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/ltc2945.c", i32 391, i32 8}
!125 = !{ptr @sensor_dev_attr_power1_input_highest, !124, !"sensor_dev_attr_power1_input_highest", i1 false, i1 false}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/ltc2945.c", i32 393, i32 8}
!128 = !{ptr @sensor_dev_attr_power1_reset_history, !127, !"sensor_dev_attr_power1_reset_history", i1 false, i1 false}
!129 = !{ptr @.str.40, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/ltc2945.c", i32 398, i32 8}
!131 = !{ptr @sensor_dev_attr_power1_min_alarm, !130, !"sensor_dev_attr_power1_min_alarm", i1 false, i1 false}
!132 = !{ptr @.str.41, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/ltc2945.c", i32 399, i32 8}
!134 = !{ptr @sensor_dev_attr_power1_max_alarm, !133, !"sensor_dev_attr_power1_max_alarm", i1 false, i1 false}
!135 = !{ptr @ltc2945_id, !136, !"ltc2945_id", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/ltc2945.c", i32 469, i32 35}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 2000, i32 1}
