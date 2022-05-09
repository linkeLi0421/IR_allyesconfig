; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm87.c_pt.bc'
source_filename = "../drivers/hwmon/lm87.c"
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
%struct.atomic_t = type { i32 }
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
%struct.lm87_data = type { %struct.mutex, i8, i32, i8, i8, [8 x i8], [8 x i8], [8 x i8], [8 x i16], [3 x i8], [3 x i8], [3 x i8], i8, i8, [2 x i8], [2 x i8], [2 x i8], i8, i16, i8, i8, [6 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm87__294_1003_lm87_driver_init6 = internal global ptr @lm87_driver_init, section ".initcall6.init", align 4
@lm87_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm87_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm87_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm87_id, ptr @lm87_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm87_driver_exit = internal global ptr @lm87_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [55 x i8] c"lm87.author=Jean Delvare <jdelvare@suse.de> and others\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [29 x i8] c"lm87.description=LM87 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [29 x i8] c"lm87.file=drivers/hwmon/lm87\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [17 x i8] c"lm87.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm87\00", [27 x i8] zeroinitializer }, align 32
@lm87_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,lm87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adm1024\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@lm87_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm87\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adm1024\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@lm87_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm87_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_in6 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_in6, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_fan1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_fan1, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_in7 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_in7, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_fan2 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_fan2, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_temp3 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_temp3, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_in0_5 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_in0_5, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm87_group_vid = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm87_attributes_vid, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"has-temp3\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"has-in6\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"has-in7\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@LM87_REG_TEMP_HIGH = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"97+", [29 x i8] zeroinitializer }, align 32
@LM87_REG_TEMP_LOW = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":8,", [29 x i8] zeroinitializer }, align 32
@lm87_attributes = internal global { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @dev_attr_alarms, ptr @dev_attr_aout_output, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_high_show, ptr @temp_high_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_low_show, ptr @temp_low_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp1_crit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_crit_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_high_show, ptr @temp_high_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_low_show, ptr @temp_low_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp2_crit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_crit_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_aout_output = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @aout_output_show, ptr @aout_output_store }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm87_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm87_update_device\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm87.c\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Updating data.\0A\00", [16 x i8] zeroinitializer }, align 32
@LM87_REG_TEMP = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"'& ", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aout_output\00", [20 x i8] zeroinitializer }, align 32
@lm87_attributes_in6 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@lm87_attributes_fan1 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@lm87_attributes_in7 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@lm87_attributes_fan2 = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@lm87_attributes_temp3 = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_high_show, ptr @temp_high_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_low_show, ptr @temp_low_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp3_crit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_crit_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@lm87_attributes_in0_5 = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_min_show, ptr @in_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_max_show, ptr @in_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@lm87_attributes_vid = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1024\00", [24 x i8] zeroinitializer }, align 32
@lm87_detect.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.73, ptr @.str.9, ptr @.str.74, i8 0, i8 -48, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm87_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"LM87 detection failed at 0x%02x\0A\00", [63 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 65]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.76 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"lm87_driver\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 991, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 994, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant [14 x i8] c"lm87_of_match\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 984, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant [8 x i8] c"lm87_id\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 977, i32 35 }
@___asan_gen_.91 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 63, i32 29 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 927, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"lm87_group\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 715, i32 37 }
@___asan_gen_.103 = private unnamed_addr constant [15 x i8] c"lm87_group_in6\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 727, i32 37 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"lm87_group_fan1\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 739, i32 37 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"lm87_group_in7\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 751, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant [16 x i8] c"lm87_group_fan2\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 763, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"lm87_group_temp3\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 777, i32 37 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"lm87_group_in0_5\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 793, i32 37 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"lm87_group_vid\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 803, i32 37 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 858, i32 38 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 860, i32 38 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 862, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 864, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant [19 x i8] c"LM87_REG_TEMP_HIGH\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 79, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"LM87_REG_TEMP_LOW\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 80, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant [16 x i8] c"lm87_attributes\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 679, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"dev_attr_temp1_crit\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c"dev_attr_temp2_crit\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [21 x i8] c"dev_attr_aout_output\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 341, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 272, i32 22 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 193, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"LM87_REG_TEMP\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 78, i32 11 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 342, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 343, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 660, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 344, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 345, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 346, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 661, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 347, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 348, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 349, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 662, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 350, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 351, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 352, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 663, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 434, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 369, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 436, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 435, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 458, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 667, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 437, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 439, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 438, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 459, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 668, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 672, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 590, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 650, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant [20 x i8] c"lm87_attributes_in6\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 719, i32 26 }
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 356, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 357, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 358, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 665, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant [21 x i8] c"lm87_attributes_fan1\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 731, i32 26 }
@___asan_gen_.367 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 577, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 578, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 579, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 670, i32 8 }
@___asan_gen_.391 = private unnamed_addr constant [20 x i8] c"lm87_attributes_in7\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 743, i32 26 }
@___asan_gen_.394 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 359, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 360, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 361, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 666, i32 8 }
@___asan_gen_.418 = private unnamed_addr constant [21 x i8] c"lm87_attributes_fan2\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 755, i32 26 }
@___asan_gen_.421 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 580, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 581, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 582, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 671, i32 8 }
@___asan_gen_.445 = private unnamed_addr constant [22 x i8] c"lm87_attributes_temp3\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 767, i32 26 }
@___asan_gen_.448 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c"dev_attr_temp3_crit\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 440, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 442, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 441, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 460, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 669, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 673, i32 8 }
@___asan_gen_.484 = private unnamed_addr constant [22 x i8] c"lm87_attributes_in0_5\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 781, i32 26 }
@___asan_gen_.487 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.490 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.493 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.496 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 338, i32 8 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 339, i32 8 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 340, i32 8 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 659, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 353, i32 8 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 354, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 355, i32 8 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 664, i32 8 }
@___asan_gen_.535 = private unnamed_addr constant [20 x i8] c"lm87_attributes_vid\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 797, i32 26 }
@___asan_gen_.538 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 598, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 623, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 829, i32 10 }
@___asan_gen_.556 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.557 = private constant [24 x i8] c"../drivers/hwmon/lm87.c\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.557, i32 831, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [168 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_lm87_driver_exit, ptr @__initcall__kmod_lm87__294_1003_lm87_driver_init6, ptr @lm87_driver_exit, ptr @lm87_driver, ptr @.str, ptr @lm87_of_match, ptr @lm87_id, ptr @normal_i2c, ptr @lm87_probe.__key, ptr @.str.1, ptr @lm87_group, ptr @lm87_group_in6, ptr @lm87_group_fan1, ptr @lm87_group_in7, ptr @lm87_group_fan2, ptr @lm87_group_temp3, ptr @lm87_group_in0_5, ptr @lm87_group_vid, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @LM87_REG_TEMP_HIGH, ptr @LM87_REG_TEMP_LOW, ptr @lm87_attributes, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @dev_attr_alarms, ptr @dev_attr_aout_output, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @LM87_REG_TEMP, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @lm87_attributes_in6, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @lm87_attributes_fan1, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @lm87_attributes_in7, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @lm87_attributes_fan2, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @lm87_attributes_temp3, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @lm87_attributes_in0_5, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @lm87_attributes_vid, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [161 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_in6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_fan1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_in7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_fan2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_temp3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_in0_5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_group_vid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LM87_REG_TEMP_HIGH to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LM87_REG_TEMP_LOW to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp1_crit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_crit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_aout_output to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @LM87_REG_TEMP to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_in6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_fan1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_in7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_fan2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_temp3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp3_crit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_in0_5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm87_attributes_vid to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm87_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm87_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm87_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lm87_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm87_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 188, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm87_probe.__key) #8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i, align 4
  %of_node1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %3 = ptrtoint ptr %of_node1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %spec.select.i = select i1 %tobool.i.not.i, i8 0, i8 4
  %call.i160.i = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.3, ptr noundef null) #8
  %tobool.i161.not.i = icmp ne ptr %call.i160.i, null
  %5 = zext i1 %tobool.i161.not.i to i8
  %val.1.i = or i8 %spec.select.i, %5
  %call.i162.i = tail call ptr @of_find_property(ptr noundef nonnull %4, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %tobool.i163.not.i = icmp eq ptr %call.i162.i, null
  %6 = or i8 %val.1.i, 2
  %val.2.i = select i1 %tobool.i163.not.i, i8 %val.1.i, i8 %6
  %call18.i = tail call ptr @devm_regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  %cmp.i.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i.if.end28.i_crit_edge, label %if.then20.i

if.then.i.if.end28.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i

if.then20.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call21.i = tail call i32 @regulator_get_voltage(ptr noundef %call18.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000000, i32 %call21.i)
  %cmp.i = icmp eq i32 %call21.i, 5000000
  %7 = or i8 %val.2.i, 8
  %spec.select159.i = select i1 %cmp.i, i8 %7, i8 %val.2.i
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then20.i, %if.then.i.if.end28.i_crit_edge
  %val.3.i = phi i8 [ %val.2.i, %if.then.i.if.end28.i_crit_edge ], [ %spec.select159.i, %if.then20.i ]
  %channel.i = getelementptr inbounds %struct.lm87_data, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %channel.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %val.3.i, ptr %channel.i, align 4
  %call.i164.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 22, i8 noundef zeroext %val.3.i) #8
  br label %if.end45.i

if.else.i:                                        ; preds = %if.end
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %9 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %platform_data.i.i, align 8
  %tobool33.not.i = icmp eq ptr %10, null
  br i1 %tobool33.not.i, label %if.else40.i, label %if.then34.i

if.then34.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %channel37.i = getelementptr inbounds %struct.lm87_data, ptr %2, i32 0, i32 3
  %13 = ptrtoint ptr %channel37.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %channel37.i, align 4
  %call.i166.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 22, i8 noundef zeroext %12) #8
  br label %if.end45.i

if.else40.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i167.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #8
  %conv42.i = trunc i32 %call.i167.i to i8
  %channel43.i = getelementptr inbounds %struct.lm87_data, ptr %2, i32 0, i32 3
  %14 = ptrtoint ptr %channel43.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv42.i, ptr %channel43.i, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.else40.i, %if.then34.i, %if.end28.i
  %call.i168.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  %15 = trunc i32 %call.i168.i to i8
  %conv47.i = and i8 %15, 111
  %config.i = getelementptr inbounds %struct.lm87_data, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv47.i, ptr %config.i, align 1
  %call49.i = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @lm87_restore_config, ptr noundef %client) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %if.end52.i, label %if.end45.i.cleanup_crit_edge

if.end45.i.cleanup_crit_edge:                     ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end52.i:                                       ; preds = %if.end45.i
  %17 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %config.i, align 1
  %19 = and i8 %18, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool56.not.i = icmp eq i8 %19, 0
  br i1 %tobool56.not.i, label %for.body.preheader.i, label %if.end52.i.if.end93.i_crit_edge

if.end52.i.if.end93.i_crit_edge:                  ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i

for.body.preheader.i:                             ; preds = %if.end52.i
  %call.i169.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 46, i8 noundef zeroext 0) #8
  %call.i170.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 45, i8 noundef zeroext -1) #8
  %call.i169.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext 0) #8
  %call.i170.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 47, i8 noundef zeroext -1) #8
  %call.i169.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 50, i8 noundef zeroext 0) #8
  %call.i170.2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 49, i8 noundef zeroext -1) #8
  %call.i169.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 52, i8 noundef zeroext 0) #8
  %call.i170.3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 51, i8 noundef zeroext -1) #8
  %call.i169.4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 54, i8 noundef zeroext 0) #8
  %call.i170.4.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 53, i8 noundef zeroext -1) #8
  %call.i171.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 57, i8 noundef zeroext 127) #8
  %call.i172.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 58, i8 noundef zeroext 0) #8
  %call.i173.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 26, i8 noundef zeroext 0) #8
  %call.i174.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 59, i8 noundef zeroext -1) #8
  %call.i171.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 55, i8 noundef zeroext 127) #8
  %call.i172.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 56, i8 noundef zeroext 0) #8
  %call.i173.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 27, i8 noundef zeroext 0) #8
  %call.i174.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 60, i8 noundef zeroext -1) #8
  %channel82.i = getelementptr inbounds %struct.lm87_data, ptr %2, i32 0, i32 3
  %20 = ptrtoint ptr %channel82.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %channel82.i, align 4
  %22 = and i8 %21, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool85.not.i = icmp eq i8 %22, 0
  br i1 %tobool85.not.i, label %if.else89.i, label %if.then86.i

if.then86.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i175.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 43, i8 noundef zeroext 127) #8
  %call.i176.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 44, i8 noundef zeroext 0) #8
  br label %if.end93.i

if.else89.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i177.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 44, i8 noundef zeroext 0) #8
  %call.i178.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 43, i8 noundef zeroext -1) #8
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.else89.i, %if.then86.i, %if.end52.i.if.end93.i_crit_edge
  %23 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %config.i, align 1
  %25 = and i8 %24, 9
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %cmp97.not.i = icmp eq i8 %25, 1
  br i1 %cmp97.not.i, label %if.end93.i.if.end4_crit_edge, label %if.then99.i

if.end93.i.if.end4_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then99.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  %and102.i = and i8 %24, 118
  %or103.i = or i8 %and102.i, 1
  %call.i179.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %or103.i) #8
  br label %if.end4

if.end4:                                          ; preds = %if.then99.i, %if.end93.i.if.end4_crit_edge
  %in_scale = getelementptr inbounds %struct.lm87_data, ptr %call.i, i32 0, i32 8
  %26 = ptrtoint ptr %in_scale to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 2500, ptr %in_scale, align 2
  %arrayidx6 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2700, ptr %arrayidx6, align 2
  %channel = getelementptr inbounds %struct.lm87_data, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %channel, align 4
  %30 = and i8 %29, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool7.not = icmp eq i8 %30, 0
  %conv8 = select i1 %tobool7.not, i16 3300, i16 5000
  %arrayidx10 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 2
  %31 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv8, ptr %arrayidx10, align 2
  %arrayidx12 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 3
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 5000, ptr %arrayidx12, align 2
  %arrayidx14 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 4
  %33 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 12000, ptr %arrayidx14, align 2
  %arrayidx16 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 5
  %34 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 2700, ptr %arrayidx16, align 2
  %arrayidx18 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 6
  %35 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 1875, ptr %arrayidx18, align 2
  %arrayidx20 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 8, i32 7
  %36 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1875, ptr %arrayidx20, align 2
  %attr_groups = getelementptr inbounds %struct.lm87_data, ptr %call.i, i32 0, i32 21
  %37 = ptrtoint ptr %attr_groups to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @lm87_group, ptr %attr_groups, align 4
  %38 = and i8 %29, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool25.not = icmp eq i8 %38, 0
  %spec.select = select i1 %tobool25.not, ptr @lm87_group_fan1, ptr @lm87_group_in6
  %39 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 21, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %spec.select, ptr %39, align 4
  %41 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channel, align 4
  %43 = and i8 %42, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool37.not = icmp eq i8 %43, 0
  %lm87_group_in7.sink = select i1 %tobool37.not, ptr @lm87_group_fan2, ptr @lm87_group_in7
  %44 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 21, i32 2
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %lm87_group_in7.sink, ptr %44, align 4
  %46 = and i8 %42, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool50.not = icmp eq i8 %46, 0
  %lm87_group_temp3.sink = select i1 %tobool50.not, ptr @lm87_group_in0_5, ptr @lm87_group_temp3
  %47 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 21, i32 3
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %lm87_group_temp3.sink, ptr %47, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %42)
  %tobool63.not = icmp sgt i8 %42, -1
  br i1 %tobool63.not, label %if.then64, label %if.end4.if.end69_crit_edge

if.end4.if.end69_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then64:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call65 = tail call zeroext i8 @vid_which_vrm() #8
  %vrm = getelementptr inbounds %struct.lm87_data, ptr %call.i, i32 0, i32 20
  %49 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call65, ptr %vrm, align 1
  %arrayidx68 = getelementptr %struct.lm87_data, ptr %call.i, i32 0, i32 21, i32 4
  %50 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @lm87_group_vid, ptr %arrayidx68, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then64, %if.end4.if.end69_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call73 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef %client, ptr noundef %attr_groups) #8
  %cmp.i.i116 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %call73 to i32
  %spec.select.i117 = select i1 %cmp.i.i116, i32 %51, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end45.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i117, %if.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call49.i, %if.end45.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm87_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  %and = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i52 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  %call.i53 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  %trunc = trunc i32 %call.i52 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.end5.do.body_crit_edge [
    i8 2, label %land.lhs.true
    i8 65, label %land.lhs.true22
  ]

if.end5.do.body_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true:                                    ; preds = %if.end5
  %conv11 = and i32 %call.i53, 255
  %7 = add nsw i32 %conv11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %8 = icmp ult i32 %7, 8
  br i1 %8, label %land.lhs.true.if.end38_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

land.lhs.true22:                                  ; preds = %if.end5
  %and24.old = and i32 %call.i53, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and24.old)
  %cmp25.old = icmp eq i32 %and24.old, 16
  br i1 %cmp25.old, label %land.lhs.true22.if.end38_crit_edge, label %land.lhs.true22.do.body_crit_edge

land.lhs.true22.do.body_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

land.lhs.true22.if.end38_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.body:                                          ; preds = %land.lhs.true22.do.body_crit_edge, %land.lhs.true.do.body_crit_edge, %if.end5.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm87_detect.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm87_detect, %cleanup)) #8
          to label %if.then34 [label %cleanup], !srcloc !276

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr, align 2
  %conv35 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm87_detect.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %conv35) #8
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true22.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge
  %name.0 = phi ptr [ @.str, %land.lhs.true.if.end38_crit_edge ], [ @.str.72, %land.lhs.true22.if.end38_crit_edge ]
  %call39 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then34, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then34 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lm87_restore_config(ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %arg, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %config = getelementptr inbounds %struct.lm87_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %arg, i8 noundef zeroext 64, i8 noundef zeroext %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 8, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv2, %conv
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm87_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 1
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end140_crit_edge

lor.lhs.false.if.end140_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end140

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm87_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm87_update_device, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !276

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm87_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev8, ptr noundef nonnull @.str.10) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %channel = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 3
  %9 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %channel, align 4
  %11 = and i8 %10, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  %cond14 = select i1 %tobool9.not, i32 6, i32 5
  %not.tobool9.not = xor i1 %tobool9.not, true
  %cond = zext i1 %not.tobool9.not to i32
  %conv18 = select i1 %tobool9.not, i8 32, i8 33
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18) #8
  %conv20 = trunc i32 %call.i to i8
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %cond
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv20, ptr %arrayidx, align 1
  %13 = lshr exact i8 %11, 1
  %conv22 = or i8 %13, 44
  %call.i231 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22) #8
  %conv24 = trunc i32 %call.i231 to i8
  %arrayidx25 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %cond
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %arrayidx25, align 1
  %conv28 = add nuw nsw i8 %13, 43
  %call.i232 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28) #8
  %conv30 = trunc i32 %call.i232 to i8
  %arrayidx31 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %cond
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv30, ptr %arrayidx31, align 1
  %inc = select i1 %tobool9.not, i32 1, i32 2
  %16 = trunc i32 %inc to i8
  %conv18.1 = or i8 %16, 32
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.1) #8
  %conv20.1 = trunc i32 %call.i.1 to i8
  %arrayidx.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20.1, ptr %arrayidx.1, align 1
  %18 = shl nuw nsw i8 %16, 1
  %conv22.1 = add nuw nsw i8 %18, 44
  %call.i231.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.1) #8
  %conv24.1 = trunc i32 %call.i231.1 to i8
  %arrayidx25.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc
  %19 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv24.1, ptr %arrayidx25.1, align 1
  %conv28.1 = add nuw nsw i8 %18, 43
  %call.i232.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.1) #8
  %conv30.1 = trunc i32 %call.i232.1 to i8
  %arrayidx31.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc
  %20 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv30.1, ptr %arrayidx31.1, align 1
  %inc.1 = add nuw nsw i32 %inc, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.1, i32 %cond14)
  %exitcond.not.1 = icmp eq i32 %inc.1, %cond14
  br i1 %exitcond.not.1, label %do.end.for.body35.preheader_crit_edge, label %for.body.2

do.end.for.body35.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.preheader

for.body.2:                                       ; preds = %do.end
  %21 = trunc i32 %inc.1 to i8
  %conv18.2 = or i8 %21, 32
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.2) #8
  %conv20.2 = trunc i32 %call.i.2 to i8
  %arrayidx.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc.1
  %22 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv20.2, ptr %arrayidx.2, align 1
  %23 = shl nuw nsw i8 %21, 1
  %conv22.2 = add nuw nsw i8 %23, 44
  %call.i231.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.2) #8
  %conv24.2 = trunc i32 %call.i231.2 to i8
  %arrayidx25.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc.1
  %24 = ptrtoint ptr %arrayidx25.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv24.2, ptr %arrayidx25.2, align 1
  %conv28.2 = add nuw nsw i8 %23, 43
  %call.i232.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.2) #8
  %conv30.2 = trunc i32 %call.i232.2 to i8
  %arrayidx31.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc.1
  %25 = ptrtoint ptr %arrayidx31.2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30.2, ptr %arrayidx31.2, align 1
  %inc.2 = add nuw nsw i32 %inc, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.2, i32 %cond14)
  %exitcond.not.2 = icmp eq i32 %inc.2, %cond14
  br i1 %exitcond.not.2, label %for.body.2.for.body35.preheader_crit_edge, label %for.body.3

for.body.2.for.body35.preheader_crit_edge:        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.preheader

for.body.3:                                       ; preds = %for.body.2
  %26 = trunc i32 %inc.2 to i8
  %conv18.3 = or i8 %26, 32
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.3) #8
  %conv20.3 = trunc i32 %call.i.3 to i8
  %arrayidx.3 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc.2
  %27 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv20.3, ptr %arrayidx.3, align 1
  %28 = shl nuw nsw i8 %26, 1
  %conv22.3 = add nuw nsw i8 %28, 44
  %call.i231.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.3) #8
  %conv24.3 = trunc i32 %call.i231.3 to i8
  %arrayidx25.3 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc.2
  %29 = ptrtoint ptr %arrayidx25.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv24.3, ptr %arrayidx25.3, align 1
  %conv28.3 = add nuw nsw i8 %28, 43
  %call.i232.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.3) #8
  %conv30.3 = trunc i32 %call.i232.3 to i8
  %arrayidx31.3 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc.2
  %30 = ptrtoint ptr %arrayidx31.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv30.3, ptr %arrayidx31.3, align 1
  %inc.3 = add nuw nsw i32 %inc, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.3, i32 %cond14)
  %exitcond.not.3 = icmp eq i32 %inc.3, %cond14
  br i1 %exitcond.not.3, label %for.body.3.for.body35.preheader_crit_edge, label %for.body.4

for.body.3.for.body35.preheader_crit_edge:        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.preheader

for.body.4:                                       ; preds = %for.body.3
  %31 = trunc i32 %inc.3 to i8
  %conv18.4 = or i8 %31, 32
  %call.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.4) #8
  %conv20.4 = trunc i32 %call.i.4 to i8
  %arrayidx.4 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc.3
  %32 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv20.4, ptr %arrayidx.4, align 1
  %33 = shl nuw nsw i8 %31, 1
  %conv22.4 = add nuw nsw i8 %33, 44
  %call.i231.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.4) #8
  %conv24.4 = trunc i32 %call.i231.4 to i8
  %arrayidx25.4 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc.3
  %34 = ptrtoint ptr %arrayidx25.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv24.4, ptr %arrayidx25.4, align 1
  %conv28.4 = add nuw nsw i8 %33, 43
  %call.i232.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.4) #8
  %conv30.4 = trunc i32 %call.i232.4 to i8
  %arrayidx31.4 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc.3
  %35 = ptrtoint ptr %arrayidx31.4 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv30.4, ptr %arrayidx31.4, align 1
  %inc.4 = or i32 %inc, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.4, i32 %cond14)
  %exitcond.not.4 = icmp eq i32 %inc.4, %cond14
  br i1 %exitcond.not.4, label %for.body.4.for.body35.preheader_crit_edge, label %for.body.5

for.body.4.for.body35.preheader_crit_edge:        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.preheader

for.body.5:                                       ; preds = %for.body.4
  %36 = trunc i32 %inc.4 to i8
  %conv18.5 = or i8 %36, 32
  %call.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.5) #8
  %conv20.5 = trunc i32 %call.i.5 to i8
  %arrayidx.5 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc.4
  %37 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv20.5, ptr %arrayidx.5, align 1
  %38 = shl nuw nsw i8 %36, 1
  %conv22.5 = add nuw nsw i8 %38, 44
  %call.i231.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.5) #8
  %conv24.5 = trunc i32 %call.i231.5 to i8
  %arrayidx25.5 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc.4
  %39 = ptrtoint ptr %arrayidx25.5 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv24.5, ptr %arrayidx25.5, align 1
  %conv28.5 = add nuw nsw i8 %38, 43
  %call.i232.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.5) #8
  %conv30.5 = trunc i32 %call.i232.5 to i8
  %arrayidx31.5 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc.4
  %40 = ptrtoint ptr %arrayidx31.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv30.5, ptr %arrayidx31.5, align 1
  %inc.5 = add nuw nsw i32 %inc, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.5, i32 %cond14)
  %exitcond.not.5 = icmp eq i32 %inc.5, %cond14
  br i1 %exitcond.not.5, label %for.body.5.for.body35.preheader_crit_edge, label %for.body.6

for.body.5.for.body35.preheader_crit_edge:        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body35.preheader

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #10
  %41 = trunc i32 %inc.5 to i8
  %conv18.6 = or i8 %41, 32
  %call.i.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv18.6) #8
  %conv20.6 = trunc i32 %call.i.6 to i8
  %arrayidx.6 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 %inc.5
  %42 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv20.6, ptr %arrayidx.6, align 1
  %43 = shl nuw nsw i8 %41, 1
  %conv22.6 = add nuw nsw i8 %43, 44
  %call.i231.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv22.6) #8
  %conv24.6 = trunc i32 %call.i231.6 to i8
  %arrayidx25.6 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %inc.5
  %44 = ptrtoint ptr %arrayidx25.6 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv24.6, ptr %arrayidx25.6, align 1
  %conv28.6 = add nuw nsw i8 %43, 43
  %call.i232.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.6) #8
  %conv30.6 = trunc i32 %call.i232.6 to i8
  %arrayidx31.6 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %inc.5
  %45 = ptrtoint ptr %arrayidx31.6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv30.6, ptr %arrayidx31.6, align 1
  br label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.body.6, %for.body.5.for.body35.preheader_crit_edge, %for.body.4.for.body35.preheader_crit_edge, %for.body.3.for.body35.preheader_crit_edge, %for.body.2.for.body35.preheader_crit_edge, %do.end.for.body35.preheader_crit_edge
  %46 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %channel, align 4
  %48 = and i8 %47, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool39.not = icmp eq i8 %48, 0
  %call.i236 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 40) #8
  %conv65 = trunc i32 %call.i236 to i8
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %for.body35.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 6
  %49 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv65, ptr %arrayidx47, align 1
  %call.i234 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 59) #8
  %conv51 = trunc i32 %call.i234 to i8
  %arrayidx54 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 6
  %50 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv51, ptr %arrayidx54, align 1
  %call.i235 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 26) #8
  %conv58 = trunc i32 %call.i235 to i8
  %arrayidx61 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 6
  %51 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv58, ptr %arrayidx61, align 1
  br label %for.inc73

if.else:                                          ; preds = %for.body35.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 14, i32 0
  %52 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv65, ptr %arrayidx66, align 1
  %call.i237 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 59) #8
  %conv70 = trunc i32 %call.i237 to i8
  %arrayidx71 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 15, i32 0
  %53 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv70, ptr %arrayidx71, align 1
  br label %for.inc73

for.inc73:                                        ; preds = %if.else, %if.then40
  %54 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %channel, align 4
  %56 = and i8 %55, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool39.not.1 = icmp eq i8 %56, 0
  %call.i236.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 41) #8
  %conv65.1 = trunc i32 %call.i236.1 to i8
  br i1 %tobool39.not.1, label %if.else.1, label %if.then40.1

if.then40.1:                                      ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx47.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 5, i32 7
  %57 = ptrtoint ptr %arrayidx47.1 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv65.1, ptr %arrayidx47.1, align 1
  %call.i234.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 60) #8
  %conv51.1 = trunc i32 %call.i234.1 to i8
  %arrayidx54.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 7
  %58 = ptrtoint ptr %arrayidx54.1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv51.1, ptr %arrayidx54.1, align 1
  %call.i235.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 27) #8
  %conv58.1 = trunc i32 %call.i235.1 to i8
  %arrayidx61.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 7
  %59 = ptrtoint ptr %arrayidx61.1 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %conv58.1, ptr %arrayidx61.1, align 1
  br label %for.inc73.1

if.else.1:                                        ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 14, i32 1
  %60 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv65.1, ptr %arrayidx66.1, align 1
  %call.i237.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 60) #8
  %conv70.1 = trunc i32 %call.i237.1 to i8
  %arrayidx71.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 15, i32 1
  %61 = ptrtoint ptr %arrayidx71.1 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv70.1, ptr %arrayidx71.1, align 1
  br label %for.inc73.1

for.inc73.1:                                      ; preds = %if.else.1, %if.then40.1
  %62 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %channel, align 4
  %64 = and i8 %63, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool79.not = icmp eq i8 %64, 0
  %call.i238 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 39) #8
  %conv87 = trunc i32 %call.i238 to i8
  %arrayidx88 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 9, i32 0
  %65 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %conv87, ptr %arrayidx88, align 1
  %call.i239 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 57) #8
  %conv91 = trunc i32 %call.i239 to i8
  %arrayidx92 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 10, i32 0
  %66 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv91, ptr %arrayidx92, align 1
  %call.i240 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 58) #8
  %conv95 = trunc i32 %call.i240 to i8
  %arrayidx96 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 11, i32 0
  %67 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv95, ptr %arrayidx96, align 1
  %call.i238.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 38) #8
  %conv87.1 = trunc i32 %call.i238.1 to i8
  %arrayidx88.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 9, i32 1
  %68 = ptrtoint ptr %arrayidx88.1 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv87.1, ptr %arrayidx88.1, align 1
  %call.i239.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 55) #8
  %conv91.1 = trunc i32 %call.i239.1 to i8
  %arrayidx92.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 10, i32 1
  %69 = ptrtoint ptr %arrayidx92.1 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv91.1, ptr %arrayidx92.1, align 1
  %call.i240.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 56) #8
  %conv95.1 = trunc i32 %call.i240.1 to i8
  %arrayidx96.1 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 11, i32 1
  %70 = ptrtoint ptr %arrayidx96.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv95.1, ptr %arrayidx96.1, align 1
  br i1 %tobool79.not, label %for.inc73.1.for.end99_crit_edge, label %for.body84.2

for.inc73.1.for.end99_crit_edge:                  ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end99

for.body84.2:                                     ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i238.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 32) #8
  %conv87.2 = trunc i32 %call.i238.2 to i8
  %arrayidx88.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 9, i32 2
  %71 = ptrtoint ptr %arrayidx88.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv87.2, ptr %arrayidx88.2, align 1
  %call.i239.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 43) #8
  %conv91.2 = trunc i32 %call.i239.2 to i8
  %arrayidx92.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 10, i32 2
  %72 = ptrtoint ptr %arrayidx92.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv91.2, ptr %arrayidx92.2, align 1
  %call.i240.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 44) #8
  %conv95.2 = trunc i32 %call.i240.2 to i8
  %arrayidx96.2 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 11, i32 2
  %73 = ptrtoint ptr %arrayidx96.2 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv95.2, ptr %arrayidx96.2, align 1
  br label %for.end99

for.end99:                                        ; preds = %for.body84.2, %for.inc73.1.for.end99_crit_edge
  %call.i241 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 19) #8
  %call.i242 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 23) #8
  %74 = tail call i32 @llvm.smin.i32(i32 %call.i241, i32 %call.i242)
  %conv106 = trunc i32 %74 to i8
  %temp_crit_int = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 12
  %75 = ptrtoint ptr %temp_crit_int to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %conv106, ptr %temp_crit_int, align 1
  %call.i243 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 20) #8
  %call.i244 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 24) #8
  %76 = tail call i32 @llvm.smin.i32(i32 %call.i243, i32 %call.i244)
  %conv116 = trunc i32 %76 to i8
  %temp_crit_ext = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 13
  %77 = ptrtoint ptr %temp_crit_ext to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %conv116, ptr %temp_crit_ext, align 4
  %call.i245 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 71) #8
  %78 = trunc i32 %call.i245 to i8
  %79 = lshr i8 %78, 4
  %conv119 = and i8 %79, 3
  %fan_div = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 16
  %80 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv119, ptr %fan_div, align 1
  %81 = lshr i8 %78, 6
  %arrayidx125 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 16, i32 1
  %82 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %81, ptr %arrayidx125, align 1
  %and126 = and i32 %call.i245, 15
  %call.i246 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 73) #8
  %and128 = shl i32 %call.i246, 4
  %shl129 = and i32 %and128, 16
  %or = or i32 %shl129, %and126
  %conv130 = trunc i32 %or to i8
  %vid = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 19
  %83 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv130, ptr %vid, align 2
  %call.i247 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 65) #8
  %call.i248 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #8
  %shl133 = shl i32 %call.i248, 8
  %or134 = or i32 %shl133, %call.i247
  %conv135 = trunc i32 %or134 to i16
  %alarms = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 18
  %84 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv135, ptr %alarms, align 4
  %call.i249 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 25) #8
  %conv137 = trunc i32 %call.i249 to i8
  %aout = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 17
  %85 = ptrtoint ptr %aout to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv137, ptr %aout, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %86 = load volatile i32, ptr @jiffies, align 128
  %87 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %last_updated, align 4
  %valid139 = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 1
  %88 = ptrtoint ptr %valid139 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 1, ptr %valid139, align 4
  br label %if.end140

if.end140:                                        ; preds = %for.end99, %lor.lhs.false.if.end140_crit_edge
  tail call void @mutex_unlock(ptr noundef %3) #8
  ret ptr %3
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 8, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv2, %conv
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.end.cond.end16_crit_edge, label %cond.false

if.end.cond.end16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false:                                       ; preds = %if.end
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 8, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %mul = mul nuw nsw i32 %conv, 255
  %div = udiv i32 %mul, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div)
  %cmp3.not = icmp ult i32 %8, %div
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end16_crit_edge

cond.false.cond.end16_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul7 = mul i32 %8, 192
  %div1154 = lshr i32 %conv, 1
  %add = add i32 %div1154, %mul7
  %div15 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div15 to i8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false6, %cond.false.cond.end16_crit_edge, %if.end.cond.end16_crit_edge
  %cond17 = phi i8 [ 0, %if.end.cond.end16_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end16_crit_edge ]
  %arrayidx19 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 7, i32 %5
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cond17, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp20 = icmp slt i32 %5, 6
  %mul23 = shl i32 %5, 1
  %add24 = add i32 %mul23, 44
  %add26 = add i32 %5, 20
  %cond28 = select i1 %cmp20, i32 %add24, i32 %add26
  %conv29 = trunc i32 %cond28 to i8
  %call.i55 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv29, i8 noundef zeroext %cond17) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 8, i32 %1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx1, align 2
  %conv2 = zext i16 %5 to i32
  %mul = mul nuw nsw i32 %conv2, %conv
  %add = add nuw nsw i32 %mul, 96
  %div = udiv i32 %add, 192
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.end.cond.end16_crit_edge, label %cond.false

if.end.cond.end16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false:                                       ; preds = %if.end
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 8, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %10 to i32
  %mul = mul nuw nsw i32 %conv, 255
  %div = udiv i32 %mul, 192
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %div)
  %cmp3.not = icmp ult i32 %8, %div
  br i1 %cmp3.not, label %cond.false6, label %cond.false.cond.end16_crit_edge

cond.false.cond.end16_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end16

cond.false6:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul7 = mul i32 %8, 192
  %div1154 = lshr i32 %conv, 1
  %add = add i32 %div1154, %mul7
  %div15 = sdiv i32 %add, %conv
  %phi.cast = trunc i32 %div15 to i8
  br label %cond.end16

cond.end16:                                       ; preds = %cond.false6, %cond.false.cond.end16_crit_edge, %if.end.cond.end16_crit_edge
  %cond17 = phi i8 [ 0, %if.end.cond.end16_crit_edge ], [ %phi.cast, %cond.false6 ], [ -1, %cond.false.cond.end16_crit_edge ]
  %arrayidx19 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 6, i32 %5
  %11 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cond17, ptr %arrayidx19, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %5)
  %cmp20 = icmp slt i32 %5, 6
  %mul23 = shl i32 %5, 1
  %add24 = add i32 %mul23, 43
  %add26 = add i32 %5, 53
  %cond28 = select i1 %cmp20, i32 %add24, i32 %add26
  %conv29 = trunc i32 %cond28 to i8
  %call.i55 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv29, i8 noundef zeroext %cond17) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarms, align 4
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_high_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_high_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127499, i32 %8)
  %cmp = icmp slt i32 %8, -127499
  br i1 %cmp, label %if.end.cond.end11_crit_edge, label %cond.false

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 126499, i32 %8)
  %cmp3 = icmp sgt i32 %8, 126499
  br i1 %cmp3, label %cond.false.cond.end11_crit_edge, label %cond.false5

cond.false.cond.end11_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false5:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp slt i32 %8, 0
  %cond.v = select i1 %cmp6, i32 -500, i32 500
  %cond = add nsw i32 %cond.v, %8
  %div = sdiv i32 %cond, 1000
  %phi.cast = trunc i32 %div to i8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false5, %cond.false.cond.end11_crit_edge, %if.end.cond.end11_crit_edge
  %cond12 = phi i8 [ -128, %if.end.cond.end11_crit_edge ], [ %phi.cast, %cond.false5 ], [ 127, %cond.false.cond.end11_crit_edge ]
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 10, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond12, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr [3 x i8], ptr @LM87_REG_TEMP_HIGH, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %call.i29 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext %cond12) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_low_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_low_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127499, i32 %8)
  %cmp = icmp slt i32 %8, -127499
  br i1 %cmp, label %if.end.cond.end11_crit_edge, label %cond.false

if.end.cond.end11_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 126499, i32 %8)
  %cmp3 = icmp sgt i32 %8, 126499
  br i1 %cmp3, label %cond.false.cond.end11_crit_edge, label %cond.false5

cond.false.cond.end11_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end11

cond.false5:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp6 = icmp slt i32 %8, 0
  %cond.v = select i1 %cmp6, i32 -500, i32 500
  %cond = add nsw i32 %cond.v, %8
  %div = sdiv i32 %cond, 1000
  %phi.cast = trunc i32 %div to i8
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false5, %cond.false.cond.end11_crit_edge, %if.end.cond.end11_crit_edge
  %cond12 = phi i8 [ -128, %if.end.cond.end11_crit_edge ], [ %phi.cast, %cond.false5 ], [ 127, %cond.false.cond.end11_crit_edge ]
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 11, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond12, ptr %arrayidx, align 1
  %arrayidx13 = getelementptr [3 x i8], ptr @LM87_REG_TEMP_LOW, i32 0, i32 %5
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %call.i29 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %11, i8 noundef zeroext %cond12) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %temp_crit_int = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %temp_crit_int to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_crit_int, align 1
  %conv = sext i8 %1 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %temp_crit_ext = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %temp_crit_ext to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %temp_crit_ext, align 4
  %conv = sext i8 %1 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarms, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aout_output_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %aout = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %aout to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aout, align 1
  %conv = zext i8 %1 to i16
  %mul = mul nuw nsw i16 %conv, 98
  %add = add nuw nsw i16 %mul, 5
  %div2 = udiv i16 %add, 10
  %div.zext = zext i16 %div2 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div.zext)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aout_output_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp slt i32 %6, 1
  br i1 %cmp, label %if.end.cond.end6_crit_edge, label %cond.false

if.end.cond.end6_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end6

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2499, i32 %6)
  %cmp3 = icmp ugt i32 %6, 2499
  br i1 %cmp3, label %cond.false.cond.end6_crit_edge, label %cond.false5

cond.false.cond.end6_crit_edge:                   ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end6

cond.false5:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %7 = trunc i32 %6 to i16
  %8 = mul nuw nsw i16 %7, 10
  %div20.lhs.trunc = add nuw nsw i16 %8, 49
  %div2021 = udiv i16 %div20.lhs.trunc, 98
  %phi.cast = trunc i16 %div2021 to i8
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.false.cond.end6_crit_edge, %if.end.cond.end6_crit_edge
  %cond7 = phi i8 [ 0, %if.end.cond.end6_crit_edge ], [ %phi.cast, %cond.false5 ], [ -1, %cond.false.cond.end6_crit_edge ]
  %aout = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 17
  %9 = ptrtoint ptr %aout to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond7, ptr %aout, align 1
  %call.i19 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 25, i8 noundef zeroext %cond7) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end6 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.75)
  switch i8 %3, label %cond.false [
    i8 -1, label %entry.cond.end_crit_edge
    i8 0, label %entry.cond.end_crit_edge32
  ]

entry.cond.end_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx10 = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 16, i32 %1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv11
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 1350000
  %div20 = sdiv i32 %add, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge32
  %cond = phi i32 [ %div20, %cond.false ], [ 0, %entry.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge32 ]
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %cond)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.76)
  switch i8 %3, label %cond.false [
    i8 -1, label %entry.cond.end_crit_edge
    i8 0, label %entry.cond.end_crit_edge32
  ]

entry.cond.end_crit_edge32:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx10 = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 16, i32 %1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv11
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 1350000
  %div20 = sdiv i32 %add, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge32
  %cond = phi i32 [ %div20, %cond.false ], [ 0, %entry.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge32 ]
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %cond)
  ret i32 %call21
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 16, i32 %5
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %mul = shl i32 %8, %conv
  %mul3 = mul i32 %mul, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350001, i32 %mul3)
  %cmp = icmp slt i32 %mul3, 1350001
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 1350000
  %div15 = sdiv i32 %add, %mul
  %phi.cast = trunc i32 %div15 to i8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i8 [ %phi.cast, %cond.false ], [ -1, %if.end.cond.end_crit_edge ]
  %arrayidx17 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 15, i32 %5
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %cond, ptr %arrayidx17, align 1
  %12 = trunc i32 %5 to i8
  %conv19 = add i8 %12, 59
  %call.i41 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv19, i8 noundef zeroext %cond) #8
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm87_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 15, i32 %5
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %8, label %cond.false [
    i8 -1, label %if.end.cond.end_crit_edge
    i8 0, label %if.end.cond.end_crit_edge126
  ]

if.end.cond.end_crit_edge126:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %8 to i32
  %arrayidx12 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 16, i32 %5
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %11 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 %mul, 2
  %add = add nsw i32 %div, 1350000
  %div22 = sdiv i32 %add, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge, %if.end.cond.end_crit_edge126
  %cond = phi i32 [ %div22, %cond.false ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge126 ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %cond.end.cleanup.sink.split_crit_edge

cond.end.cleanup.sink.split_crit_edge:            ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %cond.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup.sink.split_crit_edge, label %switch.lookup

switch.hole_check.cleanup.sink.split_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx33 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 16, i32 %5
  %17 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.load, ptr %arrayidx33, align 1
  %call.i121 = call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 71) #8
  %18 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %5, label %switch.lookup.sw.epilog53_crit_edge [
    i32 0, label %sw.bb37
    i32 1, label %sw.bb44
  ]

switch.lookup.sw.epilog53_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog53

sw.bb37:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call.i121, 207
  %fan_div39 = getelementptr inbounds %struct.lm87_data, ptr %3, i32 0, i32 16
  br label %sw.epilog53.sink.split

sw.bb44:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %and46 = and i32 %call.i121, 63
  %arrayidx48 = getelementptr %struct.lm87_data, ptr %3, i32 0, i32 16, i32 1
  br label %sw.epilog53.sink.split

sw.epilog53.sink.split:                           ; preds = %sw.bb44, %sw.bb37
  %arrayidx48.sink = phi ptr [ %arrayidx48, %sw.bb44 ], [ %fan_div39, %sw.bb37 ]
  %.sink124 = phi i32 [ 6, %sw.bb44 ], [ 4, %sw.bb37 ]
  %and46.sink = phi i32 [ %and46, %sw.bb44 ], [ %and, %sw.bb37 ]
  %19 = ptrtoint ptr %arrayidx48.sink to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx48.sink, align 1
  %conv49 = zext i8 %20 to i32
  %shl50 = shl nuw nsw i32 %conv49, %.sink124
  %or51 = or i32 %shl50, %and46.sink
  br label %sw.epilog53

sw.epilog53:                                      ; preds = %sw.epilog53.sink.split, %switch.lookup.sw.epilog53_crit_edge
  %reg.0.in = phi i32 [ %call.i121, %switch.lookup.sw.epilog53_crit_edge ], [ %or51, %sw.epilog53.sink.split ]
  %reg.0 = trunc i32 %reg.0.in to i8
  %call.i122 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 71, i8 noundef zeroext %reg.0) #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %mul55 = mul i32 %22, %cond
  %mul56 = mul i32 %mul55, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1350001, i32 %mul56)
  %cmp57 = icmp ult i32 %mul56, 1350001
  br i1 %cmp57, label %sw.epilog53.cond.end66_crit_edge, label %cond.false60

sw.epilog53.cond.end66_crit_edge:                 ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end66

cond.false60:                                     ; preds = %sw.epilog53
  call void @__sanitizer_cov_trace_pc() #10
  %div62120 = lshr i32 %mul55, 1
  %add63 = add nuw i32 %div62120, 1350000
  %div65 = udiv i32 %add63, %mul55
  %phi.cast = trunc i32 %div65 to i8
  br label %cond.end66

cond.end66:                                       ; preds = %cond.false60, %sw.epilog53.cond.end66_crit_edge
  %cond67 = phi i8 [ %phi.cast, %cond.false60 ], [ -1, %sw.epilog53.cond.end66_crit_edge ]
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %cond67, ptr %arrayidx, align 1
  %24 = trunc i32 %5 to i8
  %conv72 = add i8 %24, 59
  %call.i123 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv72, i8 noundef zeroext %cond67) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cond.end66, %switch.hole_check.cleanup.sink.split_crit_edge, %cond.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %cond.end66 ], [ -22, %cond.end.cleanup.sink.split_crit_edge ], [ -22, %switch.hole_check.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %3) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm87_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 2
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.lm87_data, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #8
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.lm87_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !278
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.lm87_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 161)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !40, !41, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !249, !251, !252, !254, !255, !257, !259, !261, !263, !264, !265}
!llvm.module.flags = !{!267, !268, !269, !270, !271, !272, !273, !274}
!llvm.ident = !{!275}

!0 = !{ptr @__initcall__kmod_lm87__294_1003_lm87_driver_init6, !1, !"__initcall__kmod_lm87__294_1003_lm87_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm87.c", i32 1003, i32 1}
!2 = !{ptr @__exitcall_lm87_driver_exit, !1, !"__exitcall_lm87_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm87.c", i32 1005, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm87.c", i32 1006, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm87.c", i32 1007, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm87.c", i32 994, i32 11}
!12 = !{ptr @lm87_driver, !13, !"lm87_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm87.c", i32 991, i32 26}
!14 = !{ptr @lm87_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm87.c", i32 927, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm87.c", i32 858, i32 38}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/lm87.c", i32 860, i32 38}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/lm87.c", i32 862, i32 38}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/lm87.c", i32 864, i32 51}
!25 = !{ptr @LM87_REG_TEMP_HIGH, !26, !"LM87_REG_TEMP_HIGH", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/lm87.c", i32 79, i32 11}
!27 = !{ptr @LM87_REG_TEMP_LOW, !28, !"LM87_REG_TEMP_LOW", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm87.c", i32 80, i32 11}
!29 = !{ptr @lm87_group, !30, !"lm87_group", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/lm87.c", i32 715, i32 37}
!31 = !{ptr @lm87_attributes, !32, !"lm87_attributes", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/lm87.c", i32 679, i32 26}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/lm87.c", i32 341, i32 8}
!35 = !{ptr @sensor_dev_attr_in1_input, !34, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/lm87.c", i32 272, i32 22}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/lm87.c", i32 193, i32 3}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @lm87_update_device.__UNIQUE_ID_ddebug288, !39, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!43 = !{ptr @LM87_REG_TEMP, !44, !"LM87_REG_TEMP", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/lm87.c", i32 78, i32 11}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/lm87.c", i32 342, i32 8}
!47 = !{ptr @sensor_dev_attr_in1_min, !46, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/lm87.c", i32 343, i32 8}
!50 = !{ptr @sensor_dev_attr_in1_max, !49, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/lm87.c", i32 660, i32 8}
!53 = !{ptr @sensor_dev_attr_in1_alarm, !52, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/lm87.c", i32 344, i32 8}
!56 = !{ptr @sensor_dev_attr_in2_input, !55, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/lm87.c", i32 345, i32 8}
!59 = !{ptr @sensor_dev_attr_in2_min, !58, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/lm87.c", i32 346, i32 8}
!62 = !{ptr @sensor_dev_attr_in2_max, !61, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/lm87.c", i32 661, i32 8}
!65 = !{ptr @sensor_dev_attr_in2_alarm, !64, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/lm87.c", i32 347, i32 8}
!68 = !{ptr @sensor_dev_attr_in3_input, !67, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/lm87.c", i32 348, i32 8}
!71 = !{ptr @sensor_dev_attr_in3_min, !70, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/lm87.c", i32 349, i32 8}
!74 = !{ptr @sensor_dev_attr_in3_max, !73, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/lm87.c", i32 662, i32 8}
!77 = !{ptr @sensor_dev_attr_in3_alarm, !76, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/lm87.c", i32 350, i32 8}
!80 = !{ptr @sensor_dev_attr_in4_input, !79, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/lm87.c", i32 351, i32 8}
!83 = !{ptr @sensor_dev_attr_in4_min, !82, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/lm87.c", i32 352, i32 8}
!86 = !{ptr @sensor_dev_attr_in4_max, !85, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/lm87.c", i32 663, i32 8}
!89 = !{ptr @sensor_dev_attr_in4_alarm, !88, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/lm87.c", i32 434, i32 8}
!92 = !{ptr @sensor_dev_attr_temp1_input, !91, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/lm87.c", i32 369, i32 22}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/lm87.c", i32 436, i32 8}
!97 = !{ptr @sensor_dev_attr_temp1_max, !96, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/lm87.c", i32 435, i32 8}
!100 = !{ptr @sensor_dev_attr_temp1_min, !99, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/lm87.c", i32 458, i32 8}
!103 = !{ptr @dev_attr_temp1_crit, !102, !"dev_attr_temp1_crit", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/lm87.c", i32 667, i32 8}
!106 = !{ptr @sensor_dev_attr_temp1_alarm, !105, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/lm87.c", i32 437, i32 8}
!109 = !{ptr @sensor_dev_attr_temp2_input, !108, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/lm87.c", i32 439, i32 8}
!112 = !{ptr @sensor_dev_attr_temp2_max, !111, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/lm87.c", i32 438, i32 8}
!115 = !{ptr @sensor_dev_attr_temp2_min, !114, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/lm87.c", i32 459, i32 8}
!118 = !{ptr @dev_attr_temp2_crit, !117, !"dev_attr_temp2_crit", i1 false, i1 false}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/lm87.c", i32 668, i32 8}
!121 = !{ptr @sensor_dev_attr_temp2_alarm, !120, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!122 = !{ptr @.str.37, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/lm87.c", i32 672, i32 8}
!124 = !{ptr @sensor_dev_attr_temp2_fault, !123, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!125 = !{ptr @.str.38, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/lm87.c", i32 590, i32 8}
!127 = !{ptr @dev_attr_alarms, !126, !"dev_attr_alarms", i1 false, i1 false}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/lm87.c", i32 650, i32 8}
!130 = !{ptr @dev_attr_aout_output, !129, !"dev_attr_aout_output", i1 false, i1 false}
!131 = !{ptr @lm87_group_in6, !132, !"lm87_group_in6", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/lm87.c", i32 727, i32 37}
!133 = !{ptr @lm87_attributes_in6, !134, !"lm87_attributes_in6", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/lm87.c", i32 719, i32 26}
!135 = !{ptr @.str.40, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/lm87.c", i32 356, i32 8}
!137 = !{ptr @sensor_dev_attr_in6_input, !136, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!138 = !{ptr @.str.41, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/lm87.c", i32 357, i32 8}
!140 = !{ptr @sensor_dev_attr_in6_min, !139, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!141 = !{ptr @.str.42, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/lm87.c", i32 358, i32 8}
!143 = !{ptr @sensor_dev_attr_in6_max, !142, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!144 = !{ptr @.str.43, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/lm87.c", i32 665, i32 8}
!146 = !{ptr @sensor_dev_attr_in6_alarm, !145, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!147 = !{ptr @lm87_group_fan1, !148, !"lm87_group_fan1", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/lm87.c", i32 739, i32 37}
!149 = !{ptr @lm87_attributes_fan1, !150, !"lm87_attributes_fan1", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/lm87.c", i32 731, i32 26}
!151 = !{ptr @.str.44, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/lm87.c", i32 577, i32 8}
!153 = !{ptr @sensor_dev_attr_fan1_input, !152, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!154 = !{ptr @.str.45, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/lm87.c", i32 578, i32 8}
!156 = !{ptr @sensor_dev_attr_fan1_min, !155, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!157 = !{ptr @.str.46, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/lm87.c", i32 579, i32 8}
!159 = !{ptr @sensor_dev_attr_fan1_div, !158, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!160 = !{ptr @.str.47, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/lm87.c", i32 670, i32 8}
!162 = !{ptr @sensor_dev_attr_fan1_alarm, !161, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!163 = !{ptr @lm87_group_in7, !164, !"lm87_group_in7", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/lm87.c", i32 751, i32 37}
!165 = !{ptr @lm87_attributes_in7, !166, !"lm87_attributes_in7", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/lm87.c", i32 743, i32 26}
!167 = !{ptr @.str.48, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/lm87.c", i32 359, i32 8}
!169 = !{ptr @sensor_dev_attr_in7_input, !168, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!170 = !{ptr @.str.49, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/lm87.c", i32 360, i32 8}
!172 = !{ptr @sensor_dev_attr_in7_min, !171, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!173 = !{ptr @.str.50, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/lm87.c", i32 361, i32 8}
!175 = !{ptr @sensor_dev_attr_in7_max, !174, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!176 = !{ptr @.str.51, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/lm87.c", i32 666, i32 8}
!178 = !{ptr @sensor_dev_attr_in7_alarm, !177, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!179 = !{ptr @lm87_group_fan2, !180, !"lm87_group_fan2", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/lm87.c", i32 763, i32 37}
!181 = !{ptr @lm87_attributes_fan2, !182, !"lm87_attributes_fan2", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/lm87.c", i32 755, i32 26}
!183 = !{ptr @.str.52, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/lm87.c", i32 580, i32 8}
!185 = !{ptr @sensor_dev_attr_fan2_input, !184, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!186 = !{ptr @.str.53, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/lm87.c", i32 581, i32 8}
!188 = !{ptr @sensor_dev_attr_fan2_min, !187, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!189 = !{ptr @.str.54, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/lm87.c", i32 582, i32 8}
!191 = !{ptr @sensor_dev_attr_fan2_div, !190, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!192 = !{ptr @.str.55, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/lm87.c", i32 671, i32 8}
!194 = !{ptr @sensor_dev_attr_fan2_alarm, !193, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!195 = !{ptr @lm87_group_temp3, !196, !"lm87_group_temp3", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/lm87.c", i32 777, i32 37}
!197 = !{ptr @lm87_attributes_temp3, !198, !"lm87_attributes_temp3", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/lm87.c", i32 767, i32 26}
!199 = !{ptr @.str.56, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/lm87.c", i32 440, i32 8}
!201 = !{ptr @sensor_dev_attr_temp3_input, !200, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!202 = !{ptr @.str.57, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/lm87.c", i32 442, i32 8}
!204 = !{ptr @sensor_dev_attr_temp3_max, !203, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!205 = !{ptr @.str.58, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/lm87.c", i32 441, i32 8}
!207 = !{ptr @sensor_dev_attr_temp3_min, !206, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!208 = !{ptr @.str.59, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/lm87.c", i32 460, i32 8}
!210 = !{ptr @dev_attr_temp3_crit, !209, !"dev_attr_temp3_crit", i1 false, i1 false}
!211 = !{ptr @.str.60, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/lm87.c", i32 669, i32 8}
!213 = !{ptr @sensor_dev_attr_temp3_alarm, !212, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!214 = !{ptr @.str.61, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/lm87.c", i32 673, i32 8}
!216 = !{ptr @sensor_dev_attr_temp3_fault, !215, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!217 = !{ptr @lm87_group_in0_5, !218, !"lm87_group_in0_5", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/lm87.c", i32 793, i32 37}
!219 = !{ptr @lm87_attributes_in0_5, !220, !"lm87_attributes_in0_5", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/lm87.c", i32 781, i32 26}
!221 = !{ptr @.str.62, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/lm87.c", i32 338, i32 8}
!223 = !{ptr @sensor_dev_attr_in0_input, !222, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!224 = !{ptr @.str.63, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/lm87.c", i32 339, i32 8}
!226 = !{ptr @sensor_dev_attr_in0_min, !225, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!227 = !{ptr @.str.64, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/lm87.c", i32 340, i32 8}
!229 = !{ptr @sensor_dev_attr_in0_max, !228, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!230 = !{ptr @.str.65, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/lm87.c", i32 659, i32 8}
!232 = !{ptr @sensor_dev_attr_in0_alarm, !231, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!233 = !{ptr @.str.66, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/lm87.c", i32 353, i32 8}
!235 = !{ptr @sensor_dev_attr_in5_input, !234, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!236 = !{ptr @.str.67, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/lm87.c", i32 354, i32 8}
!238 = !{ptr @sensor_dev_attr_in5_min, !237, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!239 = !{ptr @.str.68, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/lm87.c", i32 355, i32 8}
!241 = !{ptr @sensor_dev_attr_in5_max, !240, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!242 = !{ptr @.str.69, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/lm87.c", i32 664, i32 8}
!244 = !{ptr @sensor_dev_attr_in5_alarm, !243, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!245 = !{ptr @lm87_group_vid, !246, !"lm87_group_vid", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/lm87.c", i32 803, i32 37}
!247 = !{ptr @lm87_attributes_vid, !248, !"lm87_attributes_vid", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/lm87.c", i32 797, i32 26}
!249 = !{ptr @.str.70, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/lm87.c", i32 598, i32 8}
!251 = !{ptr @dev_attr_cpu0_vid, !250, !"dev_attr_cpu0_vid", i1 false, i1 false}
!252 = !{ptr @.str.71, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/lm87.c", i32 623, i32 8}
!254 = !{ptr @dev_attr_vrm, !253, !"dev_attr_vrm", i1 false, i1 false}
!255 = !{ptr @lm87_of_match, !256, !"lm87_of_match", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/lm87.c", i32 984, i32 34}
!257 = !{ptr @lm87_id, !258, !"lm87_id", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/lm87.c", i32 977, i32 35}
!259 = !{ptr @.str.72, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/lm87.c", i32 829, i32 10}
!261 = !{ptr @.str.73, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/lm87.c", i32 831, i32 3}
!263 = !{ptr @.str.74, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @lm87_detect.__UNIQUE_ID_ddebug293, !262, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!265 = !{ptr @normal_i2c, !266, !"normal_i2c", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/lm87.c", i32 63, i32 29}
!267 = !{i32 1, !"wchar_size", i32 2}
!268 = !{i32 1, !"min_enum_size", i32 4}
!269 = !{i32 8, !"branch-target-enforcement", i32 0}
!270 = !{i32 8, !"sign-return-address", i32 0}
!271 = !{i32 8, !"sign-return-address-all", i32 0}
!272 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!273 = !{i32 7, !"uwtable", i32 1}
!274 = !{i32 7, !"frame-pointer", i32 2}
!275 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!276 = !{i64 2148981276, i64 2148981281, i64 2148981294, i64 2148981338, i64 2148981372, i64 2148981393}
!277 = !{i8 0, i8 2}
!278 = !{!"auto-init"}
