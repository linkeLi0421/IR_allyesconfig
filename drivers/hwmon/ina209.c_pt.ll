; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ina209.c_pt.bc'
source_filename = "../drivers/hwmon/ina209.c"
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
%struct.ina209_data = type { ptr, %struct.mutex, i8, i32, [23 x i16], i16, i16, i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_ina209__308_604_ina209_driver_init6 = internal global ptr @ina209_driver_init, section ".initcall6.init", align 4
@ina209_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @ina209_remove, ptr @ina209_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ina209_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ina209_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ina209_driver_exit = internal global ptr @ina209_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [121 x i8] c"ina209.author=Ira W. Snyder <iws@ovro.caltech.edu>, Paul Hays <Paul.Hays@cattail.ca>, Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [33 x i8] c"ina209.description=INA209 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [33 x i8] c"ina209.file=drivers/hwmon/ina209\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [19 x i8] c"ina209.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ina209\00", [25 x i8] zeroinitializer }, align 32
@ina209_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,ina209\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ina209_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ina209\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ina209_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ina209_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ina209_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"shunt-resistor\00", [17 x i8] zeroinitializer }, align 32
@ina209_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ina209_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ina209_attrs = internal global { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_input_highest, ptr @sensor_dev_attr_in0_input_lowest, ptr @sensor_dev_attr_in0_reset_history, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_crit_max, ptr @sensor_dev_attr_in0_crit_min, ptr @sensor_dev_attr_in0_max_alarm, ptr @sensor_dev_attr_in0_min_alarm, ptr @sensor_dev_attr_in0_crit_max_alarm, ptr @sensor_dev_attr_in0_crit_min_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_input_highest, ptr @sensor_dev_attr_in1_input_lowest, ptr @sensor_dev_attr_in1_reset_history, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_crit_max, ptr @sensor_dev_attr_in1_crit_min, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_crit_max_alarm, ptr @sensor_dev_attr_in1_crit_min_alarm, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_power1_input_highest, ptr @sensor_dev_attr_power1_reset_history, ptr @sensor_dev_attr_power1_max, ptr @sensor_dev_attr_power1_crit, ptr @sensor_dev_attr_power1_max_alarm, ptr @sensor_dev_attr_power1_crit_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_update_interval, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ina209_history_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 20 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 21 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 4096 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 2048 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 128 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input_lowest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ina209_history_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 19 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 32768 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 16384 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 1024 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 512 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_reset_history = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @ina209_history_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr @ina209_value_store }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 8192 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_alarm_show, ptr null }, i32 256 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_value_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_update_interval = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ina209_interval_show, ptr @ina209_interval_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ina209_from_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ina209.c\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in0_input_highest\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"in0_input_lowest\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in0_reset_history\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in0_crit_max\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in0_crit_min\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in0_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in0_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in0_crit_max_alarm\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in0_crit_min_alarm\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in1_input_highest\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"in1_input_lowest\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"in1_reset_history\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in1_crit_max\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in1_crit_min\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in1_crit_max_alarm\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"in1_crit_min_alarm\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_input\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power1_input_highest\00", [43 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"power1_reset_history\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"power1_max\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power1_crit\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"power1_max_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"power1_crit_alarm\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 8, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@__sancov_gen_cov_switch_values.40 = internal global [12 x i64] [i64 10, i64 8, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21]
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"ina209_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 593, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 596, i32 11 }
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"ina209_of_match\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 586, i32 49 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"ina209_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 580, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 550, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"ina209_groups\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 508, i32 56 }
@___asan_gen_.65 = private unnamed_addr constant [13 x i8] c"ina209_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 475, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant [13 x i8] c"ina209_attrs\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 434, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in0_input_highest\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_in0_input_lowest\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in0_reset_history\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in0_crit_max\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in0_crit_min\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in0_max_alarm\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in0_min_alarm\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_in0_crit_max_alarm\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_in0_crit_min_alarm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in1_input_highest\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_in1_input_lowest\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_in1_reset_history\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in1_crit_max\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in1_crit_min\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_max_alarm\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_min_alarm\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_in1_crit_max_alarm\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_in1_crit_min_alarm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_input\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_power1_input_highest\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_power1_reset_history\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_power1_max\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_power1_crit\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_power1_max_alarm\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_power1_crit_alarm\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_update_interval\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 370, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 346, i32 25 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 150, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 371, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 373, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 375, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 377, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 379, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 381, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 383, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 387, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 366, i32 25 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 386, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 389, i32 8 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 388, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 392, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 393, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 395, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 397, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 399, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 401, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 403, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 405, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 409, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 408, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 411, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 410, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 414, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 415, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 417, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 418, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 419, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 422, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 423, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 426, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 428, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.279 = private constant [26 x i8] c"../drivers/hwmon/ina209.c\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.279, i32 262, i32 25 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_ina209_driver_exit, ptr @__initcall__kmod_ina209__308_604_ina209_driver_init6, ptr @ina209_driver_exit, ptr @ina209_driver, ptr @.str, ptr @ina209_of_match, ptr @ina209_id, ptr @ina209_probe.__key, ptr @.str.1, ptr @ina209_groups, ptr @.str.2, ptr @ina209_group, ptr @ina209_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_input_highest, ptr @sensor_dev_attr_in0_input_lowest, ptr @sensor_dev_attr_in0_reset_history, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_crit_max, ptr @sensor_dev_attr_in0_crit_min, ptr @sensor_dev_attr_in0_max_alarm, ptr @sensor_dev_attr_in0_min_alarm, ptr @sensor_dev_attr_in0_crit_max_alarm, ptr @sensor_dev_attr_in0_crit_min_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_input_highest, ptr @sensor_dev_attr_in1_input_lowest, ptr @sensor_dev_attr_in1_reset_history, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_crit_max, ptr @sensor_dev_attr_in1_crit_min, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_crit_max_alarm, ptr @sensor_dev_attr_in1_crit_min_alarm, ptr @sensor_dev_attr_power1_input, ptr @sensor_dev_attr_power1_input_highest, ptr @sensor_dev_attr_power1_reset_history, ptr @sensor_dev_attr_power1_max, ptr @sensor_dev_attr_power1_crit, ptr @sensor_dev_attr_power1_max_alarm, ptr @sensor_dev_attr_power1_crit_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_update_interval, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [80 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ina209_attrs to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input_lowest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_reset_history to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_update_interval to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ina209_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ina209_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ina209_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %config_orig.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %config_orig.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %config_orig.i, align 2
  %4 = tail call i16 @llvm.bswap.i16(i16 %3) #5
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 0, i16 noundef zeroext %4) #5
  %calibration_orig.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %calibration_orig.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %calibration_orig.i, align 4
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #5
  %call.i4.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 22, i16 noundef zeroext %7) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_probe(ptr noundef %client) #2 align 64 {
entry:
  %shunt.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 6291456
  call void @__sanitizer_cov_trace_const_cmp4(i32 6291456, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 6291456
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #5
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.ina209_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ina209_probe.__key) #5
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %8 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shunt.i) #5
  %10 = ptrtoint ptr %shunt.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %shunt.i, align 4, !annotation !147
  %call.i.i36 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %cmp.i.i = icmp slt i32 %call.i.i36, 0
  br i1 %cmp.i.i, label %if.end5.ina209_init_client.exit.thread_crit_edge, label %if.end.i

if.end5.ina209_init_client.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_init_client.exit.thread

if.end.i:                                         ; preds = %if.end5
  %conv.i.i = trunc i32 %call.i.i36 to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %calibration_orig.i = getelementptr inbounds %struct.ina209_data, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %calibration_orig.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %calibration_orig.i, align 4
  %call.i73.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp.i74.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp.i74.i, label %if.end.i.ina209_init_client.exit.thread_crit_edge, label %if.end6.i

if.end.i.ina209_init_client.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_init_client.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %conv.i75.i = trunc i32 %call.i73.i to i16
  %13 = tail call i16 @llvm.bswap.i16(i16 %conv.i75.i) #5
  %config_orig.i = getelementptr inbounds %struct.ina209_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %config_orig.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %config_orig.i, align 2
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end6.i
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp9.i = icmp slt i32 %16, 1
  br i1 %cmp9.i, label %if.then8.i.ina209_init_client.exit.thread_crit_edge, label %if.end12.i

if.then8.i.ina209_init_client.exit.thread_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_init_client.exit.thread

if.end12.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %shunt.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %shunt.i, align 4
  br label %if.end29.i

if.else.i:                                        ; preds = %if.end6.i
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %18 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef nonnull %shunt.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool16.not.i, label %if.then17.i, label %if.else22.i

if.then17.i:                                      ; preds = %if.else.i
  %20 = ptrtoint ptr %shunt.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shunt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18.i = icmp eq i32 %21, 0
  br i1 %cmp18.i, label %if.then17.i.ina209_init_client.exit.thread_crit_edge, label %if.then17.i.if.end29.i_crit_edge

if.then17.i.if.end29.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then17.i.ina209_init_client.exit.thread_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_init_client.exit.thread

if.else22.i:                                      ; preds = %if.else.i
  %22 = ptrtoint ptr %calibration_orig.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %calibration_orig.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool25.not.i = icmp eq i16 %23, 0
  br i1 %tobool25.not.i, label %if.else22.i.cond.end.i_crit_edge, label %cond.true.i

if.else22.i.cond.end.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv24.i = zext i16 %23 to i32
  %div.i = udiv i32 40960000, %conv24.i
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.else22.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %div.i, %cond.true.i ], [ 10000, %if.else22.i.cond.end.i_crit_edge ]
  %24 = ptrtoint ptr %shunt.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %shunt.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %cond.end.i, %if.then17.i.if.end29.i_crit_edge, %if.end12.i
  %call.i78.i = call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 0, i16 noundef zeroext 18236) #5
  %update_interval.i = getelementptr inbounds %struct.ina209_data, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %update_interval.i, align 2
  %26 = ptrtoint ptr %shunt.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shunt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20480001, i32 %27)
  %cmp34.i = icmp ult i32 %27, 20480001
  br i1 %cmp34.i, label %cond.end38.i, label %if.end29.i.cond.end38.thread.i_crit_edge

if.end29.i.cond.end38.thread.i_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end38.thread.i

cond.end38.i:                                     ; preds = %if.end29.i
  %div33.i = udiv i32 40960000, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 625, i32 %27)
  %cmp41.i = icmp ugt i32 %27, 625
  br i1 %cmp41.i, label %cond.end38.i.cond.end38.thread.i_crit_edge, label %cond.end38.i.if.end10_crit_edge

cond.end38.i.if.end10_crit_edge:                  ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

cond.end38.i.cond.end38.thread.i_crit_edge:       ; preds = %cond.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end38.thread.i

cond.end38.thread.i:                              ; preds = %cond.end38.i.cond.end38.thread.i_crit_edge, %if.end29.i.cond.end38.thread.i_crit_edge
  %cond3987.i = phi i32 [ %div33.i, %cond.end38.i.cond.end38.thread.i_crit_edge ], [ 1, %if.end29.i.cond.end38.thread.i_crit_edge ]
  br label %if.end10

ina209_init_client.exit.thread:                   ; preds = %if.then17.i.ina209_init_client.exit.thread_crit_edge, %if.then8.i.ina209_init_client.exit.thread_crit_edge, %if.end.i.ina209_init_client.exit.thread_crit_edge, %if.end5.ina209_init_client.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -22, %if.then17.i.ina209_init_client.exit.thread_crit_edge ], [ -22, %if.then8.i.ina209_init_client.exit.thread_crit_edge ], [ %call.i73.i, %if.end.i.ina209_init_client.exit.thread_crit_edge ], [ %call.i.i36, %if.end5.ina209_init_client.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt.i) #5
  br label %cleanup

if.end10:                                         ; preds = %cond.end38.thread.i, %cond.end38.i.if.end10_crit_edge
  %28 = phi i32 [ %cond3987.i, %cond.end38.thread.i ], [ 65535, %cond.end38.i.if.end10_crit_edge ]
  %conv47.i = trunc i32 %28 to i16
  %29 = call i16 @llvm.bswap.i16(i16 %conv47.i) #5
  %call.i79.i = call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 22, i16 noundef zeroext %29) #5
  %call.i80.i = call i32 @i2c_smbus_read_word_data(ptr noundef %client, i8 noundef zeroext 1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt.i) #5
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call12 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ina209_groups) #5
  %cmp.i37 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i37, label %if.then14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %call12 to i32
  %31 = ptrtoint ptr %config_orig.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %config_orig.i, align 2
  %33 = call i16 @llvm.bswap.i16(i16 %32) #5
  %call.i.i39 = call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 0, i16 noundef zeroext %33) #5
  %34 = ptrtoint ptr %calibration_orig.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %calibration_orig.i, align 4
  %36 = call i16 @llvm.bswap.i16(i16 %35) #5
  %call.i4.i = call i32 @i2c_smbus_write_word_data(ptr noundef %client, i8 noundef zeroext 22, i16 noundef zeroext %36) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %if.end10.cleanup_crit_edge, %ina209_init_client.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then14 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ], [ %retval.0.i.ph, %ina209_init_client.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %valid.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.for.body.i.preheader_crit_edge, label %lor.lhs.false.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

lor.lhs.false.i:                                  ; preds = %entry
  %last_updated.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated.i, align 4
  %update_interval.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %update_interval.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.for.body.i.preheader_crit_edge, label %lor.lhs.false.i.ina209_update_device.exit_crit_edge

lor.lhs.false.i.ina209_update_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_update_device.exit

lor.lhs.false.i.for.body.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %conv5.i = trunc i32 %i.030.i to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %conv1.i.i = zext i16 %11 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.then9.i, label %if.end.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = inttoptr i32 %cond.i.i to ptr
  br label %ina209_update_device.exit

if.end.i:                                         ; preds = %for.body.i
  %conv11.i = trunc i32 %cond.i.i to i16
  %arrayidx.i = getelementptr %struct.ina209_data, ptr %1, i32 0, i32 4, i32 %i.030.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_updated12.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %last_updated12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_updated12.i, align 4
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %valid.i, align 4
  br label %ina209_update_device.exit

ina209_update_device.exit:                        ; preds = %for.end.i, %if.then9.i, %lor.lhs.false.i.ina209_update_device.exit_crit_edge
  %ret.0.i = phi ptr [ %12, %if.then9.i ], [ %1, %for.end.i ], [ %1, %lor.lhs.false.i.ina209_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %cmp.i11 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11, label %if.then, label %if.end

if.then:                                          ; preds = %ina209_update_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %ina209_update_device.exit
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %conv = trunc i32 %19 to i8
  %arrayidx = getelementptr %struct.ina209_data, ptr %ret.0.i, i32 0, i32 4, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %22 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %land.end.i [
    i8 3, label %if.end.sw.bb.i_crit_edge
    i8 7, label %if.end.sw.bb.i_crit_edge20
    i8 8, label %if.end.sw.bb.i_crit_edge21
    i8 12, label %if.end.sw.bb.i_crit_edge22
    i8 13, label %if.end.sw.bb.i_crit_edge23
    i8 4, label %if.end.sw.bb12.i_crit_edge
    i8 9, label %if.end.sw.bb12.i_crit_edge24
    i8 10, label %if.end.sw.bb12.i_crit_edge25
    i8 15, label %if.end.sw.bb12.i_crit_edge26
    i8 16, label %if.end.sw.bb12.i_crit_edge27
    i8 18, label %if.end.sw.bb12.i_crit_edge28
    i8 19, label %if.end.sw.bb12.i_crit_edge29
    i8 20, label %sw.bb14.i
    i8 21, label %sw.bb17.i
    i8 5, label %if.end.sw.bb21.i_crit_edge
    i8 11, label %if.end.sw.bb21.i_crit_edge30
    i8 14, label %if.end.sw.bb21.i_crit_edge31
    i8 17, label %if.end.sw.bb21.i_crit_edge32
    i8 6, label %sw.bb25.i
  ]

if.end.sw.bb21.i_crit_edge32:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

if.end.sw.bb21.i_crit_edge31:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

if.end.sw.bb21.i_crit_edge30:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

if.end.sw.bb21.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb21.i

if.end.sw.bb12.i_crit_edge29:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge28:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge27:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge26:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge25:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge24:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb12.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb12.i

if.end.sw.bb.i_crit_edge23:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge22:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge21:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge20:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge20, %if.end.sw.bb.i_crit_edge21, %if.end.sw.bb.i_crit_edge22, %if.end.sw.bb.i_crit_edge23
  %conv1.i = sext i16 %21 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.i12 = icmp sgt i16 %21, 0
  %cond.in.v.i = select i1 %cmp.i12, i32 50, i32 -50
  %cond.in.i = add nsw i32 %cond.in.v.i, %conv1.i
  %cond.i = sdiv i32 %cond.in.i, 100
  br label %ina209_from_reg.exit

sw.bb12.i:                                        ; preds = %if.end.sw.bb12.i_crit_edge, %if.end.sw.bb12.i_crit_edge24, %if.end.sw.bb12.i_crit_edge25, %if.end.sw.bb12.i_crit_edge26, %if.end.sw.bb12.i_crit_edge27, %if.end.sw.bb12.i_crit_edge28, %if.end.sw.bb12.i_crit_edge29
  %23 = lshr i16 %21, 1
  %24 = and i16 %23, 32764
  %mul.i = zext i16 %24 to i32
  br label %ina209_from_reg.exit

sw.bb14.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = lshr i16 %21, 8
  %26 = zext i16 %25 to i32
  br label %ina209_from_reg.exit

sw.bb17.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %27 = lshr i16 %21, 8
  %28 = zext i16 %27 to i32
  %mul20.i = sub nsw i32 0, %28
  br label %ina209_from_reg.exit

sw.bb21.i:                                        ; preds = %if.end.sw.bb21.i_crit_edge, %if.end.sw.bb21.i_crit_edge30, %if.end.sw.bb21.i_crit_edge31, %if.end.sw.bb21.i_crit_edge32
  %conv22.i = zext i16 %21 to i32
  %mul24.i = mul nuw nsw i32 %conv22.i, 20000
  br label %ina209_from_reg.exit

sw.bb25.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv26.i = sext i16 %21 to i32
  br label %ina209_from_reg.exit

land.end.i:                                       ; preds = %if.end
  %.b74.i = load i1, ptr @ina209_from_reg.__already_done, align 1
  br i1 %.b74.i, label %land.end.i.ina209_from_reg.exit_crit_edge, label %if.then.i13, !prof !149

land.end.i.ina209_from_reg.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_from_reg.exit

if.then.i13:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @ina209_from_reg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 150, i32 noundef 9, ptr noundef null) #5
  br label %ina209_from_reg.exit

ina209_from_reg.exit:                             ; preds = %if.then.i13, %land.end.i.ina209_from_reg.exit_crit_edge, %sw.bb25.i, %sw.bb21.i, %sw.bb17.i, %sw.bb14.i, %sw.bb12.i, %sw.bb.i
  %retval.0.i = phi i32 [ %conv26.i, %sw.bb25.i ], [ %mul24.i, %sw.bb21.i ], [ %mul20.i, %sw.bb17.i ], [ %26, %sw.bb14.i ], [ %mul.i, %sw.bb12.i ], [ %cond.i, %sw.bb.i ], [ 0, %if.then.i13 ], [ 0, %land.end.i.ina209_from_reg.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %retval.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %ina209_from_reg.exit, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ %call5, %ina209_from_reg.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_history_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then4

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 7, i16 noundef zeroext 256) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %if.end.for.inc_crit_edge
  %and.1 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then4.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then4.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21.1 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 8, i16 noundef zeroext 256) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then4.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then4.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then4.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21.2 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 9, i16 noundef zeroext 256) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then4.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then4.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then4.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21.3 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 10, i16 noundef zeroext 256) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then4.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then4.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then4.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  %call.i21.4 = call i32 @i2c_smbus_write_word_data(ptr noundef %3, i8 noundef zeroext 11, i16 noundef zeroext 256) #5
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then4.4, %for.inc.3.for.inc.4_crit_edge
  %valid = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.inc.4 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_value_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %valid.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.for.body.i.preheader_crit_edge, label %lor.lhs.false.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

lor.lhs.false.i:                                  ; preds = %entry
  %last_updated.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated.i, align 4
  %update_interval.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %update_interval.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.for.body.i.preheader_crit_edge, label %lor.lhs.false.i.ina209_update_device.exit_crit_edge

lor.lhs.false.i.ina209_update_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_update_device.exit

lor.lhs.false.i.for.body.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %conv5.i = trunc i32 %i.030.i to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %conv1.i.i = zext i16 %11 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.then9.i, label %if.end.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = inttoptr i32 %cond.i.i to ptr
  br label %ina209_update_device.exit

if.end.i:                                         ; preds = %for.body.i
  %conv11.i = trunc i32 %cond.i.i to i16
  %arrayidx.i = getelementptr %struct.ina209_data, ptr %1, i32 0, i32 4, i32 %i.030.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_updated12.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %last_updated12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_updated12.i, align 4
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %valid.i, align 4
  br label %ina209_update_device.exit

ina209_update_device.exit:                        ; preds = %for.end.i, %if.then9.i, %lor.lhs.false.i.ina209_update_device.exit_crit_edge
  %ret.0.i = phi ptr [ %12, %if.then9.i ], [ %1, %for.end.i ], [ %1, %lor.lhs.false.i.ina209_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %17 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %19 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %val, align 4, !annotation !147
  %cmp.i36 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i36, label %if.then, label %if.end

if.then:                                          ; preds = %ina209_update_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %ina209_update_device.exit
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.ina209_data, ptr %ret.0.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %conv = trunc i32 %18 to i8
  %arrayidx = getelementptr %struct.ina209_data, ptr %ret.0.i, i32 0, i32 4, i32 %18
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %25 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %conv, label %if.end5.abort_crit_edge [
    i8 12, label %if.end5.sw.bb.i_crit_edge
    i8 13, label %if.end5.sw.bb.i_crit_edge50
    i8 15, label %if.end5.sw.bb9.i_crit_edge
    i8 16, label %if.end5.sw.bb9.i_crit_edge51
    i8 18, label %if.end5.sw.bb9.i_crit_edge52
    i8 19, label %if.end5.sw.bb9.i_crit_edge53
    i8 21, label %sw.bb39.i
    i8 20, label %sw.bb59.i
    i8 14, label %if.end5.sw.bb78.i_crit_edge
    i8 17, label %if.end5.sw.bb78.i_crit_edge54
  ]

if.end5.sw.bb78.i_crit_edge54:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78.i

if.end5.sw.bb78.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb78.i

if.end5.sw.bb9.i_crit_edge53:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.end5.sw.bb9.i_crit_edge52:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.end5.sw.bb9.i_crit_edge51:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.end5.sw.bb9.i_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb9.i

if.end5.sw.bb.i_crit_edge50:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end5.sw.bb.i_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end5.abort_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

sw.bb.i:                                          ; preds = %if.end5.sw.bb.i_crit_edge, %if.end5.sw.bb.i_crit_edge50
  %26 = call i32 @llvm.smax.i32(i32 %24, i32 -320) #5
  %27 = call i32 @llvm.smin.i32(i32 %26, i32 320) #5
  %mul.i = mul nsw i32 %27, 100
  br label %ina209_to_reg.exit

sw.bb9.i:                                         ; preds = %if.end5.sw.bb9.i_crit_edge, %if.end5.sw.bb9.i_crit_edge51, %if.end5.sw.bb9.i_crit_edge52, %if.end5.sw.bb9.i_crit_edge53
  %28 = call i32 @llvm.smax.i32(i32 %24, i32 0) #5
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 32000) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp25.not.i = icmp eq i32 %29, 0
  %div32134.lhs.trunc.i = shl nuw nsw i32 %29, 1
  %30 = add nuw nsw i32 %div32134.lhs.trunc.i, 4
  %phi.bo.i = and i32 %30, 131064
  %cond37.i = select i1 %cmp25.not.i, i32 0, i32 %phi.bo.i
  %31 = and i16 %22, 7
  %and.i = zext i16 %31 to i32
  %or.i = or i32 %cond37.i, %and.i
  br label %if.end10

sw.bb39.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %sub40.i = sub i32 0, %24
  %32 = call i32 @llvm.smax.i32(i32 %sub40.i, i32 0) #5
  %33 = call i32 @llvm.umin.i32(i32 %32, i32 255) #5
  %shl55.i = shl nuw nsw i32 %33, 8
  %34 = and i16 %22, 255
  %and57.i = zext i16 %34 to i32
  %or58.i = or i32 %shl55.i, %and57.i
  br label %if.end10

sw.bb59.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %35 = call i32 @llvm.smax.i32(i32 %24, i32 0) #5
  %36 = call i32 @llvm.umin.i32(i32 %35, i32 255) #5
  %shl74.i = shl nuw nsw i32 %36, 8
  %37 = and i16 %22, 255
  %and76.i = zext i16 %37 to i32
  %or77.i = or i32 %shl74.i, %and76.i
  br label %if.end10

sw.bb78.i:                                        ; preds = %if.end5.sw.bb78.i_crit_edge, %if.end5.sw.bb78.i_crit_edge54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp82.i = icmp sgt i32 %24, 0
  %cond97.in.v.i = select i1 %cmp82.i, i32 10000, i32 -10000
  %cond97.in.i = add i32 %cond97.in.v.i, %24
  %cond97.i = sdiv i32 %cond97.in.i, 20000
  br label %ina209_to_reg.exit

ina209_to_reg.exit:                               ; preds = %sw.bb78.i, %sw.bb.i
  %retval.0.i = phi i32 [ %cond97.i, %sw.bb78.i ], [ %mul.i, %sw.bb.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp7 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp7, label %ina209_to_reg.exit.abort_crit_edge, label %ina209_to_reg.exit.if.end10_crit_edge

ina209_to_reg.exit.if.end10_crit_edge:            ; preds = %ina209_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

ina209_to_reg.exit.abort_crit_edge:               ; preds = %ina209_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

if.end10:                                         ; preds = %ina209_to_reg.exit.if.end10_crit_edge, %sw.bb59.i, %sw.bb39.i, %sw.bb9.i
  %retval.0.i40 = phi i32 [ %retval.0.i, %ina209_to_reg.exit.if.end10_crit_edge ], [ %or.i, %sw.bb9.i ], [ %or58.i, %sw.bb39.i ], [ %or77.i, %sw.bb59.i ]
  %38 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ret.0.i, align 4
  %conv12 = trunc i32 %retval.0.i40 to i16
  %40 = call i16 @llvm.bswap.i16(i16 %conv12) #5
  %call.i37 = call i32 @i2c_smbus_write_word_data(ptr noundef %39, i8 noundef zeroext %conv, i16 noundef zeroext %40) #5
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv12, ptr %arrayidx, align 2
  br label %abort

abort:                                            ; preds = %if.end10, %ina209_to_reg.exit.abort_crit_edge, %if.end5.abort_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end10 ], [ %retval.0.i, %ina209_to_reg.exit.abort_crit_edge ], [ -13, %if.end5.abort_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %abort, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %20, %if.then ], [ %count.addr.0, %abort ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %valid.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.for.body.i.preheader_crit_edge, label %lor.lhs.false.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

lor.lhs.false.i:                                  ; preds = %entry
  %last_updated.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated.i, align 4
  %update_interval.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %update_interval.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.for.body.i.preheader_crit_edge, label %lor.lhs.false.i.ina209_update_device.exit_crit_edge

lor.lhs.false.i.ina209_update_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_update_device.exit

lor.lhs.false.i.for.body.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %conv5.i = trunc i32 %i.030.i to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %conv1.i.i = zext i16 %11 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.then9.i, label %if.end.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = inttoptr i32 %cond.i.i to ptr
  br label %ina209_update_device.exit

if.end.i:                                         ; preds = %for.body.i
  %conv11.i = trunc i32 %cond.i.i to i16
  %arrayidx.i = getelementptr %struct.ina209_data, ptr %1, i32 0, i32 4, i32 %i.030.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_updated12.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %last_updated12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_updated12.i, align 4
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %valid.i, align 4
  br label %ina209_update_device.exit

ina209_update_device.exit:                        ; preds = %for.end.i, %if.then9.i, %lor.lhs.false.i.ina209_update_device.exit_crit_edge
  %ret.0.i = phi ptr [ %12, %if.then9.i ], [ %1, %for.end.i ], [ %1, %lor.lhs.false.i.ina209_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  %cmp.i10 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i10, label %if.then, label %if.end

if.then:                                          ; preds = %ina209_update_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %ina209_update_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.ina209_data, ptr %ret.0.i, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %21 to i32
  %and = and i32 %19, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef %lnot.ext) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %17, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_interval = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %update_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %update_interval, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.39, i32 noundef %conv) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ina209_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %valid.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid.i, align 4, !range !148
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.for.body.i.preheader_crit_edge, label %lor.lhs.false.i

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

lor.lhs.false.i:                                  ; preds = %entry
  %last_updated.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %last_updated.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated.i, align 4
  %update_interval.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %update_interval.i, align 2
  %conv.i = zext i16 %9 to i32
  %add.i = add i32 %7, %conv.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.for.body.i.preheader_crit_edge, label %lor.lhs.false.i.ina209_update_device.exit_crit_edge

lor.lhs.false.i.ina209_update_device.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_update_device.exit

lor.lhs.false.i.for.body.i.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %lor.lhs.false.i.for.body.i.preheader_crit_edge, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.030.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %conv5.i = trunc i32 %i.030.i to i8
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv5.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #5
  %conv1.i.i = zext i16 %11 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br i1 %cmp.i.i, label %if.then9.i, label %if.end.i

if.then9.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = inttoptr i32 %cond.i.i to ptr
  br label %ina209_update_device.exit

if.end.i:                                         ; preds = %for.body.i
  %conv11.i = trunc i32 %cond.i.i to i16
  %arrayidx.i = getelementptr %struct.ina209_data, ptr %1, i32 0, i32 4, i32 %i.030.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11.i, ptr %arrayidx.i, align 2
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %last_updated12.i = getelementptr inbounds %struct.ina209_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %last_updated12.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %last_updated12.i, align 4
  %16 = ptrtoint ptr %valid.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %valid.i, align 4
  br label %ina209_update_device.exit

ina209_update_device.exit:                        ; preds = %for.end.i, %if.then9.i, %lor.lhs.false.i.ina209_update_device.exit_crit_edge
  %ret.0.i = phi ptr [ %12, %if.then9.i ], [ %1, %for.end.i ], [ %1, %lor.lhs.false.i.ina209_update_device.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %val, align 4, !annotation !147
  %cmp.i25 = icmp ugt ptr %ret.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i25, label %if.then, label %if.end

if.then:                                          ; preds = %ina209_update_device.exit
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %ret.0.i to i32
  br label %cleanup

if.end:                                           ; preds = %ina209_update_device.exit
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.ina209_data, ptr %ret.0.i, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %regs = getelementptr inbounds %struct.ina209_data, ptr %ret.0.i, i32 0, i32 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %regs, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.i26 = icmp slt i32 %22, 1
  br i1 %cmp.i26, label %if.end5.ina209_reg_from_interval.exit_crit_edge, label %for.cond.preheader.i

if.end5.ina209_reg_from_interval.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

for.cond.preheader.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %22)
  %cmp112.i = icmp ugt i32 %22, 51
  br i1 %cmp112.i, label %for.cond.preheader.i.ina209_reg_from_interval.exit_crit_edge, label %if.end.i28

for.cond.preheader.i.ina209_reg_from_interval.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

if.end.i28:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %22)
  %cmp1.i = icmp sgt i32 %22, 25
  br i1 %cmp1.i, label %if.end.i28.ina209_reg_from_interval.exit_crit_edge, label %if.end.i28.1

if.end.i28.ina209_reg_from_interval.exit_crit_edge: ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

if.end.i28.1:                                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %22)
  %cmp1.i.1 = icmp sgt i32 %22, 12
  br i1 %cmp1.i.1, label %if.end.i28.1.ina209_reg_from_interval.exit_crit_edge, label %if.end.i28.2

if.end.i28.1.ina209_reg_from_interval.exit_crit_edge: ; preds = %if.end.i28.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

if.end.i28.2:                                     ; preds = %if.end.i28.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %cmp1.i.2 = icmp sgt i32 %22, 6
  br i1 %cmp1.i.2, label %if.end.i28.2.ina209_reg_from_interval.exit_crit_edge, label %if.end.i28.3

if.end.i28.2.ina209_reg_from_interval.exit_crit_edge: ; preds = %if.end.i28.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

if.end.i28.3:                                     ; preds = %if.end.i28.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp1.i.3 = icmp sgt i32 %22, 3
  br i1 %cmp1.i.3, label %if.end.i28.3.ina209_reg_from_interval.exit_crit_edge, label %if.end.i28.4

if.end.i28.3.ina209_reg_from_interval.exit_crit_edge: ; preds = %if.end.i28.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %ina209_reg_from_interval.exit

if.end.i28.4:                                     ; preds = %if.end.i28.3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp1.i.4 = icmp sgt i32 %22, 1
  %spec.select = select i1 %cmp1.i.4, i32 10, i32 9
  br label %ina209_reg_from_interval.exit

ina209_reg_from_interval.exit:                    ; preds = %if.end.i28.4, %if.end.i28.3.ina209_reg_from_interval.exit_crit_edge, %if.end.i28.2.ina209_reg_from_interval.exit_crit_edge, %if.end.i28.1.ina209_reg_from_interval.exit_crit_edge, %if.end.i28.ina209_reg_from_interval.exit_crit_edge, %for.cond.preheader.i.ina209_reg_from_interval.exit_crit_edge, %if.end5.ina209_reg_from_interval.exit_crit_edge
  %adc.1.i = phi i32 [ 8, %if.end5.ina209_reg_from_interval.exit_crit_edge ], [ 15, %for.cond.preheader.i.ina209_reg_from_interval.exit_crit_edge ], [ 14, %if.end.i28.ina209_reg_from_interval.exit_crit_edge ], [ 13, %if.end.i28.1.ina209_reg_from_interval.exit_crit_edge ], [ 12, %if.end.i28.2.ina209_reg_from_interval.exit_crit_edge ], [ 11, %if.end.i28.3.ina209_reg_from_interval.exit_crit_edge ], [ %spec.select, %if.end.i28.4 ]
  %23 = and i16 %20, -2041
  %and.i = zext i16 %23 to i32
  %shl.i = shl nsw i32 %adc.1.i, 3
  %or.i = or i32 %shl.i, %and.i
  %shl4.i = shl nsw i32 %adc.1.i, 7
  %or5.i = or i32 %or.i, %shl4.i
  %conv6.i = trunc i32 %or5.i to i16
  %24 = ptrtoint ptr %ret.0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ret.0.i, align 4
  %26 = call i16 @llvm.bswap.i16(i16 %conv6.i) #5
  %call.i29 = call i32 @i2c_smbus_write_word_data(ptr noundef %25, i8 noundef zeroext 0, i16 noundef zeroext %26) #5
  %27 = ptrtoint ptr %regs to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv6.i, ptr %regs, align 4
  %28 = and i32 %adc.1.i, 15
  %29 = xor i32 %28, 15
  %shr1.i = lshr i32 68, %29
  %conv = trunc i32 %shr1.i to i16
  %update_interval = getelementptr inbounds %struct.ina209_data, ptr %ret.0.i, i32 0, i32 7
  %30 = ptrtoint ptr %update_interval to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv, ptr %update_interval, align 2
  call void @mutex_unlock(ptr noundef %update_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %ina209_reg_from_interval.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %18, %if.then ], [ %count, %ina209_reg_from_interval.exit ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 80)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !136}
!llvm.module.flags = !{!138, !139, !140, !141, !142, !143, !144, !145}
!llvm.ident = !{!146}

!0 = !{ptr @__initcall__kmod_ina209__308_604_ina209_driver_init6, !1, !"__initcall__kmod_ina209__308_604_ina209_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ina209.c", i32 604, i32 1}
!2 = !{ptr @__exitcall_ina209_driver_exit, !1, !"__exitcall_ina209_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ina209.c", i32 606, i32 1}
!5 = !{ptr @__UNIQUE_ID_description310, !6, !"__UNIQUE_ID_description310", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ina209.c", i32 607, i32 1}
!7 = !{ptr @__UNIQUE_ID_file311, !8, !"__UNIQUE_ID_file311", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ina209.c", i32 608, i32 1}
!9 = !{ptr @__UNIQUE_ID_license312, !8, !"__UNIQUE_ID_license312", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ina209.c", i32 596, i32 11}
!12 = !{ptr @ina209_driver, !13, !"ina209_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ina209.c", i32 593, i32 26}
!14 = !{ptr @ina209_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ina209.c", i32 550, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/ina209.c", i32 508, i32 56}
!19 = !{ptr @ina209_groups, !20, !"ina209_groups", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ina209.c", i32 475, i32 1}
!21 = !{ptr @ina209_group, !20, !"ina209_group", i1 false, i1 false}
!22 = !{ptr @ina209_attrs, !23, !"ina209_attrs", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ina209.c", i32 434, i32 26}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/ina209.c", i32 370, i32 8}
!26 = !{ptr @sensor_dev_attr_in0_input, !25, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ina209.c", i32 346, i32 25}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/ina209.c", i32 150, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/ina209.c", i32 371, i32 8}
!34 = !{ptr @sensor_dev_attr_in0_input_highest, !33, !"sensor_dev_attr_in0_input_highest", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/ina209.c", i32 373, i32 8}
!37 = !{ptr @sensor_dev_attr_in0_input_lowest, !36, !"sensor_dev_attr_in0_input_lowest", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ina209.c", i32 375, i32 8}
!40 = !{ptr @sensor_dev_attr_in0_reset_history, !39, !"sensor_dev_attr_in0_reset_history", i1 false, i1 false}
!41 = distinct !{null, !42, !"ina209_reset_history_regs", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ina209.c", i32 271, i32 12}
!43 = !{ptr @.str.9, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ina209.c", i32 377, i32 8}
!45 = !{ptr @sensor_dev_attr_in0_max, !44, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!46 = !{ptr @.str.10, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/ina209.c", i32 379, i32 8}
!48 = !{ptr @sensor_dev_attr_in0_min, !47, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ina209.c", i32 381, i32 8}
!51 = !{ptr @sensor_dev_attr_in0_crit_max, !50, !"sensor_dev_attr_in0_crit_max", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/ina209.c", i32 383, i32 8}
!54 = !{ptr @sensor_dev_attr_in0_crit_min, !53, !"sensor_dev_attr_in0_crit_min", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/ina209.c", i32 387, i32 8}
!57 = !{ptr @sensor_dev_attr_in0_max_alarm, !56, !"sensor_dev_attr_in0_max_alarm", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/ina209.c", i32 366, i32 25}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/ina209.c", i32 386, i32 8}
!62 = !{ptr @sensor_dev_attr_in0_min_alarm, !61, !"sensor_dev_attr_in0_min_alarm", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ina209.c", i32 389, i32 8}
!65 = !{ptr @sensor_dev_attr_in0_crit_max_alarm, !64, !"sensor_dev_attr_in0_crit_max_alarm", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/ina209.c", i32 388, i32 8}
!68 = !{ptr @sensor_dev_attr_in0_crit_min_alarm, !67, !"sensor_dev_attr_in0_crit_min_alarm", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/ina209.c", i32 392, i32 8}
!71 = !{ptr @sensor_dev_attr_in1_input, !70, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/ina209.c", i32 393, i32 8}
!74 = !{ptr @sensor_dev_attr_in1_input_highest, !73, !"sensor_dev_attr_in1_input_highest", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/ina209.c", i32 395, i32 8}
!77 = !{ptr @sensor_dev_attr_in1_input_lowest, !76, !"sensor_dev_attr_in1_input_lowest", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/ina209.c", i32 397, i32 8}
!80 = !{ptr @sensor_dev_attr_in1_reset_history, !79, !"sensor_dev_attr_in1_reset_history", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/ina209.c", i32 399, i32 8}
!83 = !{ptr @sensor_dev_attr_in1_max, !82, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/ina209.c", i32 401, i32 8}
!86 = !{ptr @sensor_dev_attr_in1_min, !85, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/ina209.c", i32 403, i32 8}
!89 = !{ptr @sensor_dev_attr_in1_crit_max, !88, !"sensor_dev_attr_in1_crit_max", i1 false, i1 false}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/ina209.c", i32 405, i32 8}
!92 = !{ptr @sensor_dev_attr_in1_crit_min, !91, !"sensor_dev_attr_in1_crit_min", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/ina209.c", i32 409, i32 8}
!95 = !{ptr @sensor_dev_attr_in1_max_alarm, !94, !"sensor_dev_attr_in1_max_alarm", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/ina209.c", i32 408, i32 8}
!98 = !{ptr @sensor_dev_attr_in1_min_alarm, !97, !"sensor_dev_attr_in1_min_alarm", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/ina209.c", i32 411, i32 8}
!101 = !{ptr @sensor_dev_attr_in1_crit_max_alarm, !100, !"sensor_dev_attr_in1_crit_max_alarm", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/ina209.c", i32 410, i32 8}
!104 = !{ptr @sensor_dev_attr_in1_crit_min_alarm, !103, !"sensor_dev_attr_in1_crit_min_alarm", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/ina209.c", i32 414, i32 8}
!107 = !{ptr @sensor_dev_attr_power1_input, !106, !"sensor_dev_attr_power1_input", i1 false, i1 false}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/ina209.c", i32 415, i32 8}
!110 = !{ptr @sensor_dev_attr_power1_input_highest, !109, !"sensor_dev_attr_power1_input_highest", i1 false, i1 false}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/ina209.c", i32 417, i32 8}
!113 = !{ptr @sensor_dev_attr_power1_reset_history, !112, !"sensor_dev_attr_power1_reset_history", i1 false, i1 false}
!114 = !{ptr @.str.33, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/ina209.c", i32 418, i32 8}
!116 = !{ptr @sensor_dev_attr_power1_max, !115, !"sensor_dev_attr_power1_max", i1 false, i1 false}
!117 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/ina209.c", i32 419, i32 8}
!119 = !{ptr @sensor_dev_attr_power1_crit, !118, !"sensor_dev_attr_power1_crit", i1 false, i1 false}
!120 = !{ptr @.str.35, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/ina209.c", i32 422, i32 8}
!122 = !{ptr @sensor_dev_attr_power1_max_alarm, !121, !"sensor_dev_attr_power1_max_alarm", i1 false, i1 false}
!123 = !{ptr @.str.36, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/ina209.c", i32 423, i32 8}
!125 = !{ptr @sensor_dev_attr_power1_crit_alarm, !124, !"sensor_dev_attr_power1_crit_alarm", i1 false, i1 false}
!126 = !{ptr @.str.37, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/ina209.c", i32 426, i32 8}
!128 = !{ptr @sensor_dev_attr_curr1_input, !127, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/ina209.c", i32 428, i32 8}
!131 = !{ptr @sensor_dev_attr_update_interval, !130, !"sensor_dev_attr_update_interval", i1 false, i1 false}
!132 = !{ptr @.str.39, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/ina209.c", i32 262, i32 25}
!134 = !{ptr @ina209_of_match, !135, !"ina209_of_match", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/ina209.c", i32 586, i32 49}
!136 = !{ptr @ina209_id, !137, !"ina209_id", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/ina209.c", i32 580, i32 35}
!138 = !{i32 1, !"wchar_size", i32 2}
!139 = !{i32 1, !"min_enum_size", i32 4}
!140 = !{i32 8, !"branch-target-enforcement", i32 0}
!141 = !{i32 8, !"sign-return-address", i32 0}
!142 = !{i32 8, !"sign-return-address-all", i32 0}
!143 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!144 = !{i32 7, !"uwtable", i32 1}
!145 = !{i32 7, !"frame-pointer", i32 2}
!146 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!147 = !{!"auto-init"}
!148 = !{i8 0, i8 2}
!149 = !{!"branch_weights", i32 2000, i32 1}
