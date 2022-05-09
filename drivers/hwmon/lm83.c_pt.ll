; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm83.c_pt.bc'
source_filename = "../drivers/hwmon/lm83.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lm83_data = type { ptr, [3 x ptr], %struct.mutex, i8, i32, [9 x i8], i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm83__290_373_lm83_driver_init6 = internal global ptr @lm83_driver_init, section ".initcall6.init", align 4
@lm83_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm83_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm83_id, ptr @lm83_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm83_driver_exit = internal global ptr @lm83_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [44 x i8] c"lm83.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [29 x i8] c"lm83.description=LM83 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [29 x i8] c"lm83.file=drivers/hwmon/lm83\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [17 x i8] c"lm83.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm83\00", [27 x i8] zeroinitializer }, align 32
@lm83_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm83\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm82\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 24, i16 25, i16 26, i16 41, i16 42, i16 43, i16 76, i16 77, i16 78, i16 -2], [44 x i8] zeroinitializer }, align 32
@lm83_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm83_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm83_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm83_group_opt = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm83_attributes_opt, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm83_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm83_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm83_update_device\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm83.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Updating lm83 data.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@LM83_REG_W_HIGH = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\0BP\0DRZ", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@lm83_attributes_opt = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_max_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@lm83_detect.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.5, ptr @.str.31, i8 0, i8 72, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm83_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LM83 detection failed at 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm82\00", [27 x i8] zeroinitializer }, align 32
@lm83_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.5, i32 311, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm83_detect._entry_ptr = internal global ptr @lm83_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [12 x i8] c"lm83_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 362, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 365, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [8 x i8] c"lm83_id\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 355, i32 35 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 38, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 333, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"lm83_group\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 245, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"lm83_group_opt\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 266, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"lm83_attributes\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 228, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 200, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 157, i32 22 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 128, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 202, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 204, i32 8 }
@___asan_gen_.120 = private unnamed_addr constant [16 x i8] c"LM83_REG_W_HIGH\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 92, i32 17 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 206, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 208, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 210, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 214, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 215, i32 8 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 216, i32 8 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 217, i32 8 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 218, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 226, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [20 x i8] c"lm83_attributes_opt\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 249, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_crit\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp4_crit_alarm\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 201, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 203, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 205, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 207, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 209, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 211, i32 8 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 219, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 220, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 221, i32 8 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 222, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 223, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 224, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 289, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 305, i32 10 }
@___asan_gen_.234 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [24 x i8] c"../drivers/hwmon/lm83.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 309, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_lm83_driver_exit, ptr @__initcall__kmod_lm83__290_373_lm83_driver_init6, ptr @lm83_detect._entry, ptr @lm83_detect._entry_ptr, ptr @lm83_driver_exit, ptr @lm83_driver, ptr @.str, ptr @lm83_id, ptr @normal_i2c, ptr @lm83_probe.__key, ptr @.str.1, ptr @lm83_group, ptr @lm83_group_opt, ptr @lm83_attributes, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @LM83_REG_W_HIGH, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @lm83_attributes_opt, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_max_alarm, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_group_opt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LM83_REG_W_HIGH to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_attributes_opt to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm83_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm83_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm83_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm83_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @lm83_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm83_probe(ptr noundef %new_client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 128, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %new_client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.lm83_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm83_probe.__key) #7
  %groups = getelementptr inbounds %struct.lm83_data, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @lm83_group, ptr %groups, align 4
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm83_id, ptr noundef %new_client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx4 = getelementptr %struct.lm83_data, ptr %call.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @lm83_group_opt, ptr %arrayidx4, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 2
  %call9 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #7
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %5 = ptrtoint ptr %call9 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm83_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 2) #7
  %and = and i32 %call2, 168
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 53) #7
  %and5 = and i32 %call4, 72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 3) #7
  %and9 = and i32 %call8, 65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end19, label %lor.lhs.false7.do.body_crit_edge

lor.lhs.false7.do.body_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false7.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm83_detect.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm83_detect, %cleanup)) #7
          to label %if.then17 [label %cleanup], !srcloc !133

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm83_detect.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv) #7
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false7
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -2) #7
  %conv22 = and i32 %call20, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv22)
  %cmp.not = icmp eq i32 %conv22, 1
  br i1 %cmp.not, label %if.end25, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -1) #7
  %trunc = trunc i32 %call26 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %do.end32 [
    i8 3, label %if.end25.sw.epilog_crit_edge
    i8 1, label %sw.bb29
  ]

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %conv28 = and i32 %call26, 255
  %dev33 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev33, ptr noundef nonnull @.str.33, i32 noundef 1, i32 noundef %conv28) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb29, %if.end25.sw.epilog_crit_edge
  %name.0 = phi ptr [ @.str.32, %sw.bb29 ], [ @.str, %if.end25.sw.epilog_crit_edge ]
  %call36 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end32, %if.end19.cleanup_crit_edge, %if.then17, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end32 ], [ 0, %sw.epilog ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then17 ], [ -19, %if.end19.cleanup_crit_edge ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm83_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm83_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm83_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end18_crit_edge

lor.lhs.false.if.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm83_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm83_update_device, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !133

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm83_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev8, ptr noundef nonnull @.str.6) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #7
  %conv = trunc i32 %call10 to i8
  %arrayidx11 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx11, align 1
  %call10.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 48) #7
  %conv.1 = trunc i32 %call10.1 to i8
  %arrayidx11.1 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.1, ptr %arrayidx11.1, align 1
  %call10.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #7
  %conv.2 = trunc i32 %call10.2 to i8
  %arrayidx11.2 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.2, ptr %arrayidx11.2, align 1
  %call10.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 49) #7
  %conv.3 = trunc i32 %call10.3 to i8
  %arrayidx11.3 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx11.3 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.3, ptr %arrayidx11.3, align 1
  %call10.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #7
  %conv.4 = trunc i32 %call10.4 to i8
  %arrayidx11.4 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %arrayidx11.4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.4, ptr %arrayidx11.4, align 1
  %call10.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #7
  %conv.5 = trunc i32 %call10.5 to i8
  %arrayidx11.5 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 5
  %14 = ptrtoint ptr %arrayidx11.5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.5, ptr %arrayidx11.5, align 1
  %call10.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #7
  %conv.6 = trunc i32 %call10.6 to i8
  %arrayidx11.6 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 6
  %15 = ptrtoint ptr %arrayidx11.6 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.6, ptr %arrayidx11.6, align 1
  %call10.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 58) #7
  %conv.7 = trunc i32 %call10.7 to i8
  %arrayidx11.7 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 7
  %16 = ptrtoint ptr %arrayidx11.7 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.7, ptr %arrayidx11.7, align 1
  %call10.8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 66) #7
  %conv.8 = trunc i32 %call10.8 to i8
  %arrayidx11.8 = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 8
  %17 = ptrtoint ptr %arrayidx11.8 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.8, ptr %arrayidx11.8, align 1
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 53) #7
  %shl = shl i32 %call13, 8
  %add14 = add i32 %shl, %call12
  %conv15 = trunc i32 %add14 to i16
  %alarms = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 6
  %18 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv15, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %20 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %last_updated, align 4
  %valid17 = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %valid17 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %valid17, align 4
  br label %if.end18

if.end18:                                         ; preds = %do.end, %lor.lhs.false.if.end18_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !135
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm83_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127999, i32 %8)
  %cmp3 = icmp slt i32 %8, -127999
  br i1 %cmp3, label %if.end.cond.end13_crit_edge, label %cond.false

if.end.cond.end13_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end13

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 126999, i32 %8)
  %cmp4 = icmp sgt i32 %8, 126999
  br i1 %cmp4, label %cond.false.cond.end13_crit_edge, label %cond.false6

cond.false.cond.end13_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end13

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp slt i32 %8, 0
  br i1 %cmp7, label %cond.true8, label %cond.false9

cond.true8:                                       ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #9
  %sub.nonneg = sub nsw i32 500, %8
  %div33 = udiv i32 %sub.nonneg, 1000
  %div33.neg = sub nsw i32 0, %div33
  br label %cond.end13

cond.false9:                                      ; preds = %cond.false6
  call void @__sanitizer_cov_trace_pc() #9
  %add = add nuw nsw i32 %8, 500
  %div1034 = udiv i32 %add, 1000
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false9, %cond.true8, %cond.false.cond.end13_crit_edge, %if.end.cond.end13_crit_edge
  %cond14 = phi i32 [ -128, %if.end.cond.end13_crit_edge ], [ 127, %cond.false.cond.end13_crit_edge ], [ %div33.neg, %cond.true8 ], [ %div1034, %cond.false9 ]
  %conv = trunc i32 %cond14 to i8
  %arrayidx = getelementptr %struct.lm83_data, ptr %1, i32 0, i32 5, i32 %6
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %sub15 = add i32 %6, -4
  %arrayidx16 = getelementptr [5 x i8], ptr @LM83_REG_W_HIGH, i32 0, i32 %sub15
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx16, align 1
  %call19 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %11, i8 noundef zeroext %conv) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %cond.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end13 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm83_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.lm83_data, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarms, align 2
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm83_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.lm83_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 2
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !113, !114, !116, !118, !119, !120, !121, !122}
!llvm.module.flags = !{!124, !125, !126, !127, !128, !129, !130, !131}
!llvm.ident = !{!132}

!0 = !{ptr @__initcall__kmod_lm83__290_373_lm83_driver_init6, !1, !"__initcall__kmod_lm83__290_373_lm83_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm83.c", i32 373, i32 1}
!2 = !{ptr @__exitcall_lm83_driver_exit, !1, !"__exitcall_lm83_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm83.c", i32 375, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm83.c", i32 376, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm83.c", i32 377, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm83.c", i32 365, i32 11}
!12 = !{ptr @lm83_driver, !13, !"lm83_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm83.c", i32 362, i32 26}
!14 = !{ptr @lm83_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm83.c", i32 333, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm83_group, !18, !"lm83_group", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm83.c", i32 245, i32 37}
!19 = !{ptr @lm83_attributes, !20, !"lm83_attributes", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm83.c", i32 228, i32 26}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/lm83.c", i32 200, i32 8}
!23 = !{ptr @sensor_dev_attr_temp1_input, !22, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/lm83.c", i32 157, i32 22}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/lm83.c", i32 128, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lm83_update_device.__UNIQUE_ID_ddebug288, !27, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!31 = distinct !{null, !32, !"LM83_REG_R_TEMP", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/lm83.c", i32 80, i32 17}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/lm83.c", i32 202, i32 8}
!35 = !{ptr @sensor_dev_attr_temp3_input, !34, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!36 = !{ptr @.str.8, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/lm83.c", i32 204, i32 8}
!38 = !{ptr @sensor_dev_attr_temp1_max, !37, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!39 = !{ptr @LM83_REG_W_HIGH, !40, !"LM83_REG_W_HIGH", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lm83.c", i32 92, i32 17}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/lm83.c", i32 206, i32 8}
!43 = !{ptr @sensor_dev_attr_temp3_max, !42, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/lm83.c", i32 208, i32 8}
!46 = !{ptr @sensor_dev_attr_temp1_crit, !45, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lm83.c", i32 210, i32 8}
!49 = !{ptr @sensor_dev_attr_temp3_crit, !48, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/lm83.c", i32 214, i32 8}
!52 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !51, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!53 = !{ptr @.str.13, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/lm83.c", i32 215, i32 8}
!55 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !54, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/lm83.c", i32 216, i32 8}
!58 = !{ptr @sensor_dev_attr_temp3_fault, !57, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/lm83.c", i32 217, i32 8}
!61 = !{ptr @sensor_dev_attr_temp3_max_alarm, !60, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!62 = !{ptr @.str.16, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/lm83.c", i32 218, i32 8}
!64 = !{ptr @sensor_dev_attr_temp1_max_alarm, !63, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!65 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/lm83.c", i32 226, i32 8}
!67 = !{ptr @dev_attr_alarms, !66, !"dev_attr_alarms", i1 false, i1 false}
!68 = !{ptr @lm83_group_opt, !69, !"lm83_group_opt", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/lm83.c", i32 266, i32 37}
!70 = !{ptr @lm83_attributes_opt, !71, !"lm83_attributes_opt", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/lm83.c", i32 249, i32 26}
!72 = !{ptr @.str.18, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/lm83.c", i32 201, i32 8}
!74 = !{ptr @sensor_dev_attr_temp2_input, !73, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!75 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/lm83.c", i32 203, i32 8}
!77 = !{ptr @sensor_dev_attr_temp4_input, !76, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!78 = !{ptr @.str.20, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/lm83.c", i32 205, i32 8}
!80 = !{ptr @sensor_dev_attr_temp2_max, !79, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/lm83.c", i32 207, i32 8}
!83 = !{ptr @sensor_dev_attr_temp4_max, !82, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!84 = !{ptr @.str.22, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/lm83.c", i32 209, i32 8}
!86 = !{ptr @sensor_dev_attr_temp2_crit, !85, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!87 = !{ptr @.str.23, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/lm83.c", i32 211, i32 8}
!89 = !{ptr @sensor_dev_attr_temp4_crit, !88, !"sensor_dev_attr_temp4_crit", i1 false, i1 false}
!90 = !{ptr @.str.24, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/lm83.c", i32 219, i32 8}
!92 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !91, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/lm83.c", i32 220, i32 8}
!95 = !{ptr @sensor_dev_attr_temp4_crit_alarm, !94, !"sensor_dev_attr_temp4_crit_alarm", i1 false, i1 false}
!96 = !{ptr @.str.26, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/lm83.c", i32 221, i32 8}
!98 = !{ptr @sensor_dev_attr_temp4_fault, !97, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!99 = !{ptr @.str.27, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/lm83.c", i32 222, i32 8}
!101 = !{ptr @sensor_dev_attr_temp4_max_alarm, !100, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!102 = !{ptr @.str.28, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/lm83.c", i32 223, i32 8}
!104 = !{ptr @sensor_dev_attr_temp2_fault, !103, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!105 = !{ptr @.str.29, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/lm83.c", i32 224, i32 8}
!107 = !{ptr @sensor_dev_attr_temp2_max_alarm, !106, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!108 = !{ptr @lm83_id, !109, !"lm83_id", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/lm83.c", i32 355, i32 35}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/lm83.c", i32 289, i32 3}
!112 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @lm83_detect.__UNIQUE_ID_ddebug289, !111, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!114 = !{ptr @.str.32, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/lm83.c", i32 305, i32 10}
!116 = !{ptr @.str.33, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/lm83.c", i32 309, i32 3}
!118 = !{ptr @.str.34, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @lm83_detect._entry, !117, !"_entry", i1 false, i1 false}
!121 = !{ptr @lm83_detect._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @normal_i2c, !123, !"normal_i2c", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/lm83.c", i32 38, i32 29}
!124 = !{i32 1, !"wchar_size", i32 2}
!125 = !{i32 1, !"min_enum_size", i32 4}
!126 = !{i32 8, !"branch-target-enforcement", i32 0}
!127 = !{i32 8, !"sign-return-address", i32 0}
!128 = !{i32 8, !"sign-return-address-all", i32 0}
!129 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!130 = !{i32 7, !"uwtable", i32 1}
!131 = !{i32 7, !"frame-pointer", i32 2}
!132 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!133 = !{i64 2148962220, i64 2148962225, i64 2148962238, i64 2148962282, i64 2148962316, i64 2148962337}
!134 = !{i8 0, i8 2}
!135 = !{!"auto-init"}
