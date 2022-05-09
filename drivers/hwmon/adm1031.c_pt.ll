; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adm1031.c_pt.bc'
source_filename = "../drivers/hwmon/adm1031.c"
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
%struct.adm1031_data = type { ptr, [3 x ptr], %struct.mutex, i32, i8, i32, i32, ptr, i16, i8, i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8], [3 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adm1031__321_1077_adm1031_driver_init6 = internal global ptr @adm1031_driver_init, section ".initcall6.init", align 4
@adm1031_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adm1031_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1031_id, ptr @adm1031_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1031_driver_exit = internal global ptr @adm1031_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author322 = internal constant [55 x i8] c"adm1031.author=Alexandre d'Alton <alex@alexdalton.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description323 = internal constant [43 x i8] c"adm1031.description=ADM1031/ADM1030 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file324 = internal constant [35 x i8] c"adm1031.file=drivers/hwmon/adm1031\00", section ".modinfo", align 1
@__UNIQUE_ID_license325 = internal constant [20 x i8] c"adm1031.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1031\00", [24 x i8] zeroinitializer }, align 32
@adm1031_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1030\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adm1031\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@adm1031_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@auto_channel_select_table_adm1030 = internal constant { [8 x [2 x i8]], [16 x i8] } { [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\02\00", [2 x i8] c"\FF\00", [2 x i8] c"\FF\00", [2 x i8] c"\03\00"], [16 x i8] zeroinitializer }, align 32
@auto_channel_select_table_adm1031 = internal constant { [8 x [2 x i8]], [16 x i8] } { [8 x [2 x i8]] [[2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] zeroinitializer, [2 x i8] c"\02\04", [2 x i8] c"\02\02", [2 x i8] c"\04\04", [2 x i8] c"\07\07"], [16 x i8] zeroinitializer }, align 32
@adm1031_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1031_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1031_group_opt = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1031_attributes_opt, ptr null }, [44 x i8] zeroinitializer }, align 32
@update_intervals = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 500, i32 250, i32 125], [32 x i8] zeroinitializer }, align 32
@adm1031_attributes = internal global { [34 x ptr], [56 x i8] } { [34 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_auto_fan1_channel, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_auto_temp1_off, ptr @sensor_dev_attr_auto_temp1_min, ptr @sensor_dev_attr_auto_temp1_max, ptr @sensor_dev_attr_auto_temp2_off, ptr @sensor_dev_attr_auto_temp2_min, ptr @sensor_dev_attr_auto_temp2_max, ptr @sensor_dev_attr_auto_fan1_min_pwm, ptr @dev_attr_update_interval, ptr @dev_attr_alarms, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_fan1_channel = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_auto_channel_show, ptr @fan_auto_channel_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp1_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_off_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_min_show, ptr @auto_temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_max_show, ptr @auto_temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp2_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_off_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_min_show, ptr @auto_temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_max_show, ptr @auto_temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_fan1_min_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_update_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @update_interval_show, ptr @update_interval_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adm1031_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 30, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm1031_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adm1031.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting adm1031 update\0A\00", [39 x i8] zeroinitializer }, align 32
@adm1031_update_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 143, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Remote temperature may be wrong.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adm1031_update_device._entry_ptr = internal global ptr @adm1031_update_device._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto_fan1_channel\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp1_off\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp1_min\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp1_max\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp2_off\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp2_min\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp2_max\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto_fan1_min_pwm\00", [46 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@adm1031_attributes_opt = internal global { [21 x ptr], [44 x i8] } { [21 x ptr] [ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_fault, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_auto_fan2_channel, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_auto_temp3_off, ptr @sensor_dev_attr_auto_temp3_min, ptr @sensor_dev_attr_auto_temp3_max, ptr @sensor_dev_attr_auto_fan2_min_pwm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_fan2_channel = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_auto_channel_show, ptr @fan_auto_channel_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_offset_show, ptr @temp_offset_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp3_off = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_off_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_min_show, ptr @auto_temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @auto_temp_max_show, ptr @auto_temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_auto_fan2_min_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto_fan2_channel\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp3_off\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp3_min\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"auto_temp3_max\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"auto_fan2_min_pwm\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1030\00", [24 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00@\C0\80\C0\C0\C0\C0", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"adm1031_driver\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1066, i32 26 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1069, i32 11 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"adm1031_id\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1059, i32 35 }
@___asan_gen_.73 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 56, i32 29 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 1039, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [34 x i8] c"auto_channel_select_table_adm1030\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 272, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant [34 x i8] c"auto_channel_select_table_adm1031\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 264, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [14 x i8] c"adm1031_group\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 938, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"adm1031_group_opt\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 966, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"update_intervals\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 845, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant [19 x i8] c"adm1031_attributes\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 896, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_fault\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_auto_fan1_channel\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp1_off\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp1_min\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp1_max\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp2_off\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp2_min\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp2_max\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_auto_fan1_min_pwm\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [25 x i8] c"dev_attr_update_interval\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 657, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 564, i32 22 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 120, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 142, i32 6 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 659, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 658, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 828, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 829, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 502, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 381, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 794, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 795, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 796, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 835, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 797, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 834, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 798, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 842, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 799, i32 8 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 800, i32 8 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 801, i32 8 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 831, i32 8 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 802, i32 8 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 830, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 803, i32 8 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 832, i32 8 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 833, i32 8 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 455, i32 8 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 456, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 457, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 458, i32 8 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 459, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 460, i32 8 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 504, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 894, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 854, i32 22 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 818, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant [23 x i8] c"adm1031_attributes_opt\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 942, i32 26 }
@___asan_gen_.328 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_fault\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_auto_fan2_channel\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_min_alarm\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp3_off\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp3_min\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_auto_temp3_max\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [34 x i8] c"sensor_dev_attr_auto_fan2_min_pwm\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 660, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 662, i32 8 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 661, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 836, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 837, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 503, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 382, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 804, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 805, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 806, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 839, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 807, i32 8 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 838, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 808, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 840, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 841, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 461, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 462, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 463, i32 8 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 505, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.449 = private constant [27 x i8] c"../drivers/hwmon/adm1031.c\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 986, i32 24 }
@___asan_gen_.451 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [138 x ptr] [ptr @__UNIQUE_ID_author322, ptr @__UNIQUE_ID_description323, ptr @__UNIQUE_ID_file324, ptr @__UNIQUE_ID_license325, ptr @__exitcall_adm1031_driver_exit, ptr @__initcall__kmod_adm1031__321_1077_adm1031_driver_init6, ptr @adm1031_driver_exit, ptr @adm1031_update_device._entry, ptr @adm1031_update_device._entry_ptr, ptr @adm1031_driver, ptr @.str, ptr @adm1031_id, ptr @normal_i2c, ptr @adm1031_probe.__key, ptr @.str.1, ptr @auto_channel_select_table_adm1030, ptr @auto_channel_select_table_adm1031, ptr @adm1031_group, ptr @adm1031_group_opt, ptr @update_intervals, ptr @adm1031_attributes, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_auto_fan1_channel, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_auto_temp1_off, ptr @sensor_dev_attr_auto_temp1_min, ptr @sensor_dev_attr_auto_temp1_max, ptr @sensor_dev_attr_auto_temp2_off, ptr @sensor_dev_attr_auto_temp2_min, ptr @sensor_dev_attr_auto_temp2_max, ptr @sensor_dev_attr_auto_fan1_min_pwm, ptr @dev_attr_update_interval, ptr @dev_attr_alarms, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @adm1031_attributes_opt, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_fault, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_auto_fan2_channel, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_auto_temp3_off, ptr @sensor_dev_attr_auto_temp3_min, ptr @sensor_dev_attr_auto_temp3_max, ptr @sensor_dev_attr_auto_fan2_min_pwm, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_channel_select_table_adm1030 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_channel_select_table_adm1031 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_group_opt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_intervals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_attributes to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_fan1_channel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp1_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp2_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_fan1_min_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_update_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1031_attributes_opt to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_fan2_channel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp3_off to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_auto_fan2_min_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1031_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1031_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1031_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1031_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1031_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 172, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @i2c_match_id(ptr noundef nonnull @adm1031_id, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call3, i32 0, i32 1
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %chip_type = getelementptr inbounds %struct.adm1031_data, ptr %call.i, i32 0, i32 3
  %4 = ptrtoint ptr %chip_type to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %chip_type, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adm1031_probe.__key) #9
  %5 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  %spec.select = select i1 %cmp, ptr @auto_channel_select_table_adm1030, ptr @auto_channel_select_table_adm1031
  %7 = getelementptr inbounds %struct.adm1031_data, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %spec.select, ptr %7, align 4
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  %chip_type.i = getelementptr inbounds %struct.adm1031_data, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp.i = icmp eq i32 %12, 1
  %spec.select.i = select i1 %cmp.i, i32 15, i32 5
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #9
  %conv.i = and i32 %call.i.i, 255
  %or2.i = or i32 %spec.select.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or2.i, i32 %conv.i)
  %cmp3.not.i = icmp eq i32 %or2.i, %conv.i
  br i1 %cmp3.not.i, label %if.end.if.end8.i_crit_edge, label %if.then5.i

if.end.if.end8.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i35.i = trunc i32 %or2.i to i8
  %call.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv.i35.i) #9
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.if.end8.i_crit_edge
  %call.i37.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  %conv10.i = and i32 %call.i37.i, 255
  %or11.i = or i32 %conv10.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %or11.i, i32 %conv10.i)
  %cmp12.not.i = icmp eq i32 %or11.i, %conv10.i
  br i1 %cmp12.not.i, label %if.end8.i.adm1031_init_client.exit_crit_edge, label %if.then14.i

if.end8.i.adm1031_init_client.exit_crit_edge:     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adm1031_init_client.exit

if.then14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i39.i = trunc i32 %or11.i to i8
  %call.i40.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv.i39.i) #9
  br label %adm1031_init_client.exit

adm1031_init_client.exit:                         ; preds = %if.then14.i, %if.end8.i.adm1031_init_client.exit_crit_edge
  %call.i41.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 35) #9
  %13 = lshr i32 %call.i41.i, 2
  %14 = and i32 %13, 7
  %arrayidx.i = getelementptr [8 x i32], ptr @update_intervals, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i, align 4
  %update_interval.i = getelementptr inbounds %struct.adm1031_data, ptr %10, i32 0, i32 6
  %17 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %update_interval.i, align 4
  %groups = getelementptr inbounds %struct.adm1031_data, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @adm1031_group, ptr %groups, align 4
  %19 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp9 = icmp eq i32 %20, 1
  br i1 %cmp9, label %if.then10, label %adm1031_init_client.exit.if.end13_crit_edge

adm1031_init_client.exit.if.end13_crit_edge:      ; preds = %adm1031_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %adm1031_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx12 = getelementptr %struct.adm1031_data, ptr %call.i, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @adm1031_group_opt, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %adm1031_init_client.exit.if.end13_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #9
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %22 = ptrtoint ptr %call16 to i32
  %spec.select.i38 = select i1 %cmp.i.i, i32 %22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i38, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1031_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #9
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  %6 = and i32 %call2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %6)
  %switch = icmp eq i32 %6, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call3)
  %cmp5 = icmp eq i32 %call3, 65
  %or.cond = select i1 %switch, i1 %cmp5, i1 false
  br i1 %or.cond, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %call2)
  %cmp8 = icmp eq i32 %call2, 48
  %cond = select i1 %cmp8, ptr @.str.63, ptr @.str
  %call9 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %cond, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %conf1.i = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 9
  %2 = ptrtoint ptr %conf1.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %conf1.i, align 2
  %conv.i = zext i8 %3 to i32
  %and.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %and3.i = lshr i32 %conv.i, 5
  %4 = and i32 %and3.i, 3
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %4, label %if.then.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb10.i
    i32 2, label %sw.bb22.i
    i32 3, label %sw.bb34.i
  ]

sw.bb.i:                                          ; preds = %if.then.i
  %add.i = add i32 %1, 1
  %arrayidx.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 %add.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  %arrayidx6.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 %add.i
  %8 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx6.i, align 1
  %10 = lshr i8 %9, 1
  %11 = and i8 %10, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %11)
  %cmp.i.not = icmp slt i8 %7, %11
  br i1 %cmp.i.not, label %sw.bb.i.cond.end10_crit_edge, label %sw.bb.i.cond.true_crit_edge

sw.bb.i.cond.true_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

sw.bb.i.cond.end10_crit_edge:                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

sw.bb10.i:                                        ; preds = %if.then.i
  %arrayidx12.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 1
  %12 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx12.i, align 1
  %arrayidx15.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 1
  %14 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx15.i, align 1
  %16 = lshr i8 %15, 1
  %17 = and i8 %16, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp20.i.not = icmp slt i8 %13, %17
  br i1 %cmp20.i.not, label %sw.bb10.i.cond.end10_crit_edge, label %sw.bb10.i.cond.true_crit_edge

sw.bb10.i.cond.true_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

sw.bb10.i.cond.end10_crit_edge:                   ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

sw.bb22.i:                                        ; preds = %if.then.i
  %arrayidx24.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 2
  %18 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx24.i, align 2
  %arrayidx27.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 2
  %20 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27.i, align 2
  %22 = lshr i8 %21, 1
  %23 = and i8 %22, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %23)
  %cmp32.i.not = icmp slt i8 %19, %23
  br i1 %cmp32.i.not, label %sw.bb22.i.cond.end10_crit_edge, label %sw.bb22.i.cond.true_crit_edge

sw.bb22.i.cond.true_crit_edge:                    ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

sw.bb22.i.cond.end10_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

sw.bb34.i:                                        ; preds = %if.then.i
  %temp35.i = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 16
  %24 = ptrtoint ptr %temp35.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %temp35.i, align 2
  %auto_temp38.i = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 18
  %26 = ptrtoint ptr %auto_temp38.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %auto_temp38.i, align 4
  %28 = lshr i8 %27, 1
  %29 = and i8 %28, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %29)
  %cmp44.not.i = icmp slt i8 %25, %29
  br i1 %cmp44.not.i, label %lor.lhs.false.i, label %sw.bb34.i.cond.true_crit_edge

sw.bb34.i.cond.true_crit_edge:                    ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

lor.lhs.false.i:                                  ; preds = %sw.bb34.i
  %arrayidx47.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 1
  %30 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx47.i, align 1
  %arrayidx50.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx50.i, align 1
  %34 = lshr i8 %33, 1
  %35 = and i8 %34, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %35)
  %cmp55.not.i = icmp slt i8 %31, %35
  br i1 %cmp55.not.i, label %lor.rhs.i, label %lor.lhs.false.i.cond.true_crit_edge

lor.lhs.false.i.cond.true_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

lor.rhs.i:                                        ; preds = %lor.lhs.false.i
  %chip_type.i = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %chip_type.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %chip_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp57.i = icmp eq i32 %37, 1
  br i1 %cmp57.i, label %trust_fan_readings.exit, label %lor.rhs.i.cond.end10_crit_edge

lor.rhs.i.cond.end10_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

if.then.unreachabledefault.i:                     ; preds = %if.then.i
  unreachable

if.else.i:                                        ; preds = %entry
  %arrayidx70.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 14, i32 %1
  %38 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx70.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %cmp72.i.not = icmp eq i8 %39, 0
  br i1 %cmp72.i.not, label %if.else.i.cond.end10_crit_edge, label %if.else.i.cond.true_crit_edge

if.else.i.cond.true_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

if.else.i.cond.end10_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

trust_fan_readings.exit:                          ; preds = %lor.rhs.i
  %arrayidx60.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 2
  %40 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx60.i, align 2
  %arrayidx63.i = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 2
  %42 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx63.i, align 2
  %44 = lshr i8 %43, 1
  %45 = and i8 %44, 124
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %45)
  %cmp68.i.not = icmp slt i8 %41, %45
  br i1 %cmp68.i.not, label %trust_fan_readings.exit.cond.end10_crit_edge, label %trust_fan_readings.exit.cond.true_crit_edge

trust_fan_readings.exit.cond.true_crit_edge:      ; preds = %trust_fan_readings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.true

trust_fan_readings.exit.cond.end10_crit_edge:     ; preds = %trust_fan_readings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

cond.true:                                        ; preds = %trust_fan_readings.exit.cond.true_crit_edge, %if.else.i.cond.true_crit_edge, %lor.lhs.false.i.cond.true_crit_edge, %sw.bb34.i.cond.true_crit_edge, %sw.bb22.i.cond.true_crit_edge, %sw.bb10.i.cond.true_crit_edge, %sw.bb.i.cond.true_crit_edge
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 11, i32 %1
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool2.not = icmp eq i8 %47, 0
  br i1 %tobool2.not, label %cond.true.cond.end10_crit_edge, label %cond.true3

cond.true.cond.end10_crit_edge:                   ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end10

cond.true3:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %47 to i32
  %arrayidx7 = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 12, i32 %1
  %48 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx7, align 1
  %50 = lshr i8 %49, 6
  %51 = zext i8 %50 to i32
  %mul = shl nuw nsw i32 %conv, %51
  %div = udiv i32 675000, %mul
  br label %cond.end10

cond.end10:                                       ; preds = %cond.true3, %cond.true.cond.end10_crit_edge, %trust_fan_readings.exit.cond.end10_crit_edge, %if.else.i.cond.end10_crit_edge, %lor.rhs.i.cond.end10_crit_edge, %sw.bb22.i.cond.end10_crit_edge, %sw.bb10.i.cond.end10_crit_edge, %sw.bb.i.cond.end10_crit_edge
  %cond11 = phi i32 [ %div, %cond.true3 ], [ 0, %cond.true.cond.end10_crit_edge ], [ 0, %trust_fan_readings.exit.cond.end10_crit_edge ], [ 0, %lor.rhs.i.cond.end10_crit_edge ], [ 0, %sw.bb22.i.cond.end10_crit_edge ], [ 0, %sw.bb10.i.cond.end10_crit_edge ], [ 0, %sw.bb.i.cond.end10_crit_edge ], [ 0, %if.else.i.cond.end10_crit_edge ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %cond11)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adm1031_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #9
  %add = add i32 %call2.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 4, !range !220
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end109_crit_edge

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1031_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1031_update_device, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !221

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1031_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev9, ptr noundef nonnull @.str.6) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %chip_type = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 3
  %dev37 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end39.for.body_crit_edge, %do.end
  %chan.0225 = phi i32 [ 0, %do.end ], [ %inc, %if.end39.for.body_crit_edge ]
  %11 = trunc i32 %chan.0225 to i8
  %conv = add i8 %11, 10
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #9
  %conv.i = trunc i32 %call.i to i8
  %call.i188 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #9
  %conv.i189 = trunc i32 %call.i188 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 17, i32 %chan.0225
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i189, ptr %arrayidx, align 1
  %call.i190 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #9
  %conv.i191 = trunc i32 %call.i190 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i191, i8 %conv.i)
  %cmp20.not = icmp eq i8 %conv.i191, %conv.i
  br i1 %cmp20.not, label %for.body.if.end39_crit_edge, label %if.then22

for.body.if.end39_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then22:                                        ; preds = %for.body
  %call.i192 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #9
  %conv.i193 = trunc i32 %call.i192 to i8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i193, ptr %arrayidx, align 1
  %call.i194 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #9
  %conv.i195 = trunc i32 %call.i194 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i191, i8 %conv.i195)
  %cmp31.not = icmp eq i8 %conv.i191, %conv.i195
  br i1 %cmp31.not, label %if.then22.if.end39_crit_edge, label %do.end36

if.then22.if.end39_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

do.end36:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev37, ptr noundef nonnull @.str.7) #12
  br label %if.end39

if.end39:                                         ; preds = %do.end36, %if.then22.if.end39_crit_edge, %for.body.if.end39_crit_edge
  %arrayidx40 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 16, i32 %chan.0225
  %14 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i191, ptr %arrayidx40, align 1
  %conv42 = add i8 %11, 13
  %call.i196 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv42) #9
  %conv.i197 = trunc i32 %call.i196 to i8
  %arrayidx44 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 22, i32 %chan.0225
  %15 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i197, ptr %arrayidx44, align 1
  %16 = shl i8 %11, 2
  %conv46 = add i8 %16, 21
  %call.i198 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv46) #9
  %conv.i199 = trunc i32 %call.i198 to i8
  %arrayidx48 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 23, i32 %chan.0225
  %17 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i199, ptr %arrayidx48, align 1
  %conv51 = add i8 %16, 20
  %call.i200 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv51) #9
  %conv.i201 = trunc i32 %call.i200 to i8
  %arrayidx53 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 24, i32 %chan.0225
  %18 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i201, ptr %arrayidx53, align 1
  %conv56 = add i8 %16, 22
  %call.i202 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv56) #9
  %conv.i203 = trunc i32 %call.i202 to i8
  %arrayidx58 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 25, i32 %chan.0225
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i203, ptr %arrayidx58, align 1
  %conv60 = add i8 %11, 36
  %call.i204 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv60) #9
  %conv.i205 = trunc i32 %call.i204 to i8
  %arrayidx62 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 18, i32 %chan.0225
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i205, ptr %arrayidx62, align 1
  %inc = add nuw nsw i32 %chan.0225, 1
  %21 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp10 = icmp eq i32 %22, 1
  %cond = select i1 %cmp10, i32 3, i32 2
  %cmp11 = icmp ult i32 %inc, %cond
  br i1 %cmp11, label %if.end39.for.body_crit_edge, label %for.end

if.end39.for.body_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end39
  %call.i206 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #9
  %conv.i207 = trunc i32 %call.i206 to i8
  %conf1 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %conf1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv.i207, ptr %conf1, align 2
  %call.i208 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  %conv.i209 = trunc i32 %call.i208 to i8
  %conf2 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 10
  %24 = ptrtoint ptr %conf2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i209, ptr %conf2, align 1
  %call.i210 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #9
  %25 = trunc i32 %call.i210 to i16
  %conv66 = and i16 %25, 255
  %call.i212 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #9
  %26 = trunc i32 %call.i212 to i16
  %conv68 = shl i16 %26, 8
  %or = or i16 %conv68, %conv66
  %alarm = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %alarm to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %alarm, align 4
  %28 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp71 = icmp eq i32 %29, 0
  br i1 %cmp71, label %if.then73, label %for.end.for.body85_crit_edge

for.end.for.body85_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body85

if.then73:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %30 = and i16 %or, -16129
  %31 = ptrtoint ptr %alarm to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %alarm, align 4
  br label %for.body85

for.body85:                                       ; preds = %if.then73, %for.end.for.body85_crit_edge
  %call.i214 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #9
  %conv.i215 = trunc i32 %call.i214 to i8
  %arrayidx89 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 12, i32 0
  %32 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.i215, ptr %arrayidx89, align 1
  %call.i216 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #9
  %conv.i217 = trunc i32 %call.i216 to i8
  %arrayidx93 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 13, i32 0
  %33 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i217, ptr %arrayidx93, align 1
  %call.i218 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #9
  %conv.i219 = trunc i32 %call.i218 to i8
  %arrayidx97 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 11, i32 0
  %34 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.i219, ptr %arrayidx97, align 1
  %call.i220 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #9
  %35 = trunc i32 %call.i220 to i8
  %conv102 = and i8 %35, 15
  %arrayidx103 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 0
  %36 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv102, ptr %arrayidx103, align 1
  %37 = ptrtoint ptr %chip_type to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %chip_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp80.not = icmp eq i32 %38, 0
  br i1 %cmp80.not, label %for.body85.for.end106_crit_edge, label %for.body85.1

for.body85.for.end106_crit_edge:                  ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end106

for.body85.1:                                     ; preds = %for.body85
  call void @__sanitizer_cov_trace_pc() #11
  %call.i214.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #9
  %conv.i215.1 = trunc i32 %call.i214.1 to i8
  %arrayidx89.1 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 12, i32 1
  %39 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i215.1, ptr %arrayidx89.1, align 1
  %call.i216.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #9
  %conv.i217.1 = trunc i32 %call.i216.1 to i8
  %arrayidx93.1 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %arrayidx93.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i217.1, ptr %arrayidx93.1, align 1
  %call.i218.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #9
  %conv.i219.1 = trunc i32 %call.i218.1 to i8
  %arrayidx97.1 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 11, i32 1
  %41 = ptrtoint ptr %arrayidx97.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.i219.1, ptr %arrayidx97.1, align 1
  %call.i220.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #9
  %42 = trunc i32 %call.i220.1 to i8
  %43 = lshr i8 %42, 4
  %arrayidx103.1 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %arrayidx103.1, align 1
  br label %for.end106

for.end106:                                       ; preds = %for.body85.1, %for.body85.for.end106_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %46 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %last_updated, align 4
  %valid108 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 4
  %47 = ptrtoint ptr %valid108 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %valid108, align 4
  br label %if.end109

if.end109:                                        ; preds = %for.end106, %lor.lhs.false.if.end109_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 6
  %5 = zext i8 %4 to i32
  %shl = shl nuw nsw i32 1, %5
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %8, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %9 = icmp ult i32 %switch.tableidx, 8
  br i1 %9, label %switch.hole_check, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %10 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %switch.lobit.not = icmp eq i8 %10, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %11)
  %switch.load = load i8, ptr %switch.gep, align 1
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = trunc i32 %5 to i8
  %conv21 = add i8 %12, 32
  %call.i102 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv21) #9
  %conv.i = trunc i32 %call.i102 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 12, i32 %5
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i, ptr %arrayidx, align 1
  %conv24 = add i8 %12, 16
  %call.i103 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv24) #9
  %arrayidx26 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 13, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = lshr i8 %15, 6
  %17 = zext i8 %16 to i32
  %and34 = and i8 %15, 63
  %or = or i8 %and34, %switch.load
  store i8 %or, ptr %arrayidx, align 1
  %conv40 = and i32 %call.i103, 255
  %mul = shl nuw nsw i32 %conv40, %17
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %div = sdiv i32 %mul, %19
  %20 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %21 = trunc i32 %20 to i8
  %22 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx26, align 1
  %call.i105 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv21, i8 noundef zeroext %or) #9
  %23 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx26, align 1
  %call.i106 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv24, i8 noundef zeroext %24) #9
  %valid = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %switch.lookup ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = lshr i8 %5, 6
  %7 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv, %7
  %div = udiv i32 675000, %mul
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %div, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %cond)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.if.end10_crit_edge, label %if.then4

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then4:                                         ; preds = %if.end
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0) #9
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 65535) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %if.then4.if.end10_crit_edge, label %cond.end27.i

if.then4.if.end10_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

cond.end27.i:                                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 12, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = lshr i8 %12, 6
  %14 = zext i8 %13 to i32
  %mul.i = shl nuw nsw i32 %10, %14
  %div25.i33 = udiv i32 675000, %mul.i
  %15 = call i32 @llvm.smin.i32(i32 %div25.i33, i32 255) #9
  %phi.cast = trunc i32 %15 to i8
  br label %if.end10

if.end10:                                         ; preds = %cond.end27.i, %if.then4.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %.sink = phi i8 [ 0, %if.then4.if.end10_crit_edge ], [ %phi.cast, %cond.end27.i ], [ -1, %if.end.if.end10_crit_edge ]
  %arrayidx9 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 13, i32 %5
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %arrayidx9, align 1
  %17 = trunc i32 %5 to i8
  %conv11 = add i8 %17, 16
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %.sink) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %alarm = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %alarm to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %alarm, align 4
  %conv = zext i16 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %conf1 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %conf1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %tobool3.not = icmp sgt i8 %8, -1
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.lhs.true

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = and i32 %10, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %11)
  %cmp.not = icmp eq i32 %11, 80
  br i1 %cmp.not, label %land.lhs.true.if.end8_crit_edge, label %land.lhs.true.cleanup.sink.split_crit_edge

land.lhs.true.cleanup.sink.split_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true.if.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %land.lhs.true.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 255)
  %16 = lshr i32 %15, 4
  %conv20 = trunc i32 %16 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 %5
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv20, ptr %arrayidx, align 1
  %call.i63 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool23.not = icmp eq i32 %5, 0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = and i8 %19, 15
  %and34 = zext i8 %20 to i32
  %conv27 = zext i8 %19 to i32
  %shl = shl nuw nsw i32 %conv27, 4
  %and29 = and i32 %call.i63, 15
  %and34.sink = select i1 %tobool23.not, i32 %and34, i32 %and29
  %and35.sink.in = select i1 %tobool23.not, i32 %call.i63, i32 %shl
  %and35.sink = and i32 %and35.sink.in, 240
  %or36 = or i32 %and35.sink, %and34.sink
  %conv.i64 = trunc i32 %or36 to i8
  %call.i65 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 34, i8 noundef zeroext %conv.i64) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %land.lhs.true.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end8 ], [ -22, %land.lhs.true.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_auto_channel_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %chan_select_table = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 7
  %2 = ptrtoint ptr %chan_select_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_select_table, align 4
  %conf1 = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %conf1, align 2
  %6 = lshr i8 %5, 5
  %7 = zext i8 %6 to i32
  %rem = srem i32 %1, 2
  %arrayidx1 = getelementptr [8 x [2 x i8]], ptr %3, i32 0, i32 %7, i32 %rem
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %9 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv2)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_auto_channel_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conf1 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %conf1, align 2
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %11 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %conf1, align 2
  %chan_select_table.i = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %chan_select_table.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan_select_table.i, align 4
  %15 = lshr i8 %12, 5
  %16 = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %cond.i = zext i1 %tobool.not.i to i32
  %arrayidx1.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 %16, i32 %cond.i
  %17 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %cmp.i = icmp eq i8 %conv, 0
  br i1 %cmp.i, label %if.end.if.end8_crit_edge, label %for.body.preheader.i

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

for.body.preheader.i:                             ; preds = %if.end
  %arrayidx9.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 0, i32 %5
  %19 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %conv)
  %cmp11.i = icmp eq i8 %20, %conv
  br i1 %cmp11.i, label %land.lhs.true.i, label %for.body.preheader.i.if.else.i_crit_edge

for.body.preheader.i.if.else.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %arrayidx17.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 0, i32 %cond.i
  %21 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx17.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %18)
  %cmp20.i = icmp eq i8 %22, %18
  br i1 %cmp20.i, label %land.lhs.true.i.if.end8_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i.if.end8_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %for.body.preheader.i.if.else.i_crit_edge
  %not.cmp11.i = xor i1 %cmp11.i, true
  %first_match.1.i = sext i1 %not.cmp11.i to i32
  %arrayidx9.1.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 1, i32 %5
  %23 = ptrtoint ptr %arrayidx9.1.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx9.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %conv)
  %cmp11.1.i = icmp eq i8 %24, %conv
  br i1 %cmp11.1.i, label %land.lhs.true.1.i, label %if.else.i.if.else.1.thread.i_crit_edge

if.else.i.if.else.1.thread.i_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.1.thread.i

land.lhs.true.1.i:                                ; preds = %if.else.i
  %arrayidx17.1.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 1, i32 %cond.i
  %25 = ptrtoint ptr %arrayidx17.1.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx17.1.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %18)
  %cmp20.1.i = icmp eq i8 %26, %18
  br i1 %cmp20.1.i, label %land.lhs.true.1.i.if.end8_crit_edge, label %if.else.1.i

land.lhs.true.1.i.if.end8_crit_edge:              ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.1.i:                                      ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select.i = zext i1 %not.cmp11.i to i32
  br label %if.else.1.thread.i

if.else.1.thread.i:                               ; preds = %if.else.1.i, %if.else.i.if.else.1.thread.i_crit_edge
  %27 = phi i32 [ %first_match.1.i, %if.else.i.if.else.1.thread.i_crit_edge ], [ %spec.select.i, %if.else.1.i ]
  %arrayidx9.2.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 2, i32 %5
  %28 = ptrtoint ptr %arrayidx9.2.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx9.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %29, i8 %conv)
  %cmp11.2.i = icmp eq i8 %29, %conv
  br i1 %cmp11.2.i, label %land.lhs.true.2.i, label %if.else.1.thread.i.if.else.2.i_crit_edge

if.else.1.thread.i.if.else.2.i_crit_edge:         ; preds = %if.else.1.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.2.i

land.lhs.true.2.i:                                ; preds = %if.else.1.thread.i
  %arrayidx17.2.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 2, i32 %cond.i
  %30 = ptrtoint ptr %arrayidx17.2.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx17.2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %18)
  %cmp20.2.i = icmp eq i8 %31, %18
  br i1 %cmp20.2.i, label %land.lhs.true.2.i.if.end8_crit_edge, label %land.lhs.true.2.i.if.else.2.i_crit_edge

land.lhs.true.2.i.if.else.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.2.i

land.lhs.true.2.i.if.end8_crit_edge:              ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.2.i:                                      ; preds = %land.lhs.true.2.i.if.else.2.i_crit_edge, %if.else.1.thread.i.if.else.2.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %27)
  %cmp31.2.i = icmp eq i32 %27, -1
  %or.cond.2.i = select i1 %cmp11.2.i, i1 %cmp31.2.i, i1 false
  %first_match.1.2.i = select i1 %or.cond.2.i, i32 2, i32 %27
  %arrayidx9.3.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 3, i32 %5
  %32 = ptrtoint ptr %arrayidx9.3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx9.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %33, i8 %conv)
  %cmp11.3.i = icmp eq i8 %33, %conv
  br i1 %cmp11.3.i, label %land.lhs.true.3.i, label %if.else.2.i.if.else.3.i_crit_edge

if.else.2.i.if.else.3.i_crit_edge:                ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.3.i

land.lhs.true.3.i:                                ; preds = %if.else.2.i
  %arrayidx17.3.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 3, i32 %cond.i
  %34 = ptrtoint ptr %arrayidx17.3.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx17.3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %18)
  %cmp20.3.i = icmp eq i8 %35, %18
  br i1 %cmp20.3.i, label %land.lhs.true.3.i.if.end8_crit_edge, label %land.lhs.true.3.i.if.else.3.i_crit_edge

land.lhs.true.3.i.if.else.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.3.i

land.lhs.true.3.i.if.end8_crit_edge:              ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.3.i:                                      ; preds = %land.lhs.true.3.i.if.else.3.i_crit_edge, %if.else.2.i.if.else.3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.2.i)
  %cmp31.3.i = icmp eq i32 %first_match.1.2.i, -1
  %or.cond.3.i = select i1 %cmp11.3.i, i1 %cmp31.3.i, i1 false
  %first_match.1.3.i = select i1 %or.cond.3.i, i32 3, i32 %first_match.1.2.i
  %arrayidx9.4.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 4, i32 %5
  %36 = ptrtoint ptr %arrayidx9.4.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx9.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %conv)
  %cmp11.4.i = icmp eq i8 %37, %conv
  br i1 %cmp11.4.i, label %land.lhs.true.4.i, label %if.else.3.i.if.else.4.i_crit_edge

if.else.3.i.if.else.4.i_crit_edge:                ; preds = %if.else.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.4.i

land.lhs.true.4.i:                                ; preds = %if.else.3.i
  %arrayidx17.4.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 4, i32 %cond.i
  %38 = ptrtoint ptr %arrayidx17.4.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx17.4.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %18)
  %cmp20.4.i = icmp eq i8 %39, %18
  br i1 %cmp20.4.i, label %land.lhs.true.4.i.if.end8_crit_edge, label %land.lhs.true.4.i.if.else.4.i_crit_edge

land.lhs.true.4.i.if.else.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.4.i

land.lhs.true.4.i.if.end8_crit_edge:              ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.4.i:                                      ; preds = %land.lhs.true.4.i.if.else.4.i_crit_edge, %if.else.3.i.if.else.4.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.3.i)
  %cmp31.4.i = icmp eq i32 %first_match.1.3.i, -1
  %or.cond.4.i = select i1 %cmp11.4.i, i1 %cmp31.4.i, i1 false
  %first_match.1.4.i = select i1 %or.cond.4.i, i32 4, i32 %first_match.1.3.i
  %arrayidx9.5.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 5, i32 %5
  %40 = ptrtoint ptr %arrayidx9.5.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %arrayidx9.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %conv)
  %cmp11.5.i = icmp eq i8 %41, %conv
  br i1 %cmp11.5.i, label %land.lhs.true.5.i, label %if.else.4.i.if.else.5.i_crit_edge

if.else.4.i.if.else.5.i_crit_edge:                ; preds = %if.else.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.5.i

land.lhs.true.5.i:                                ; preds = %if.else.4.i
  %arrayidx17.5.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 5, i32 %cond.i
  %42 = ptrtoint ptr %arrayidx17.5.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx17.5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %18)
  %cmp20.5.i = icmp eq i8 %43, %18
  br i1 %cmp20.5.i, label %land.lhs.true.5.i.if.end8_crit_edge, label %land.lhs.true.5.i.if.else.5.i_crit_edge

land.lhs.true.5.i.if.else.5.i_crit_edge:          ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.5.i

land.lhs.true.5.i.if.end8_crit_edge:              ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.5.i:                                      ; preds = %land.lhs.true.5.i.if.else.5.i_crit_edge, %if.else.4.i.if.else.5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.4.i)
  %cmp31.5.i = icmp eq i32 %first_match.1.4.i, -1
  %or.cond.5.i = select i1 %cmp11.5.i, i1 %cmp31.5.i, i1 false
  %first_match.1.5.i = select i1 %or.cond.5.i, i32 5, i32 %first_match.1.4.i
  %arrayidx9.6.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 6, i32 %5
  %44 = ptrtoint ptr %arrayidx9.6.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx9.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %45, i8 %conv)
  %cmp11.6.i = icmp eq i8 %45, %conv
  br i1 %cmp11.6.i, label %land.lhs.true.6.i, label %if.else.5.i.if.else.6.i_crit_edge

if.else.5.i.if.else.6.i_crit_edge:                ; preds = %if.else.5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.6.i

land.lhs.true.6.i:                                ; preds = %if.else.5.i
  %arrayidx17.6.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 6, i32 %cond.i
  %46 = ptrtoint ptr %arrayidx17.6.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx17.6.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %47, i8 %18)
  %cmp20.6.i = icmp eq i8 %47, %18
  br i1 %cmp20.6.i, label %land.lhs.true.6.i.if.end8_crit_edge, label %land.lhs.true.6.i.if.else.6.i_crit_edge

land.lhs.true.6.i.if.else.6.i_crit_edge:          ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.6.i

land.lhs.true.6.i.if.end8_crit_edge:              ; preds = %land.lhs.true.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.6.i:                                      ; preds = %land.lhs.true.6.i.if.else.6.i_crit_edge, %if.else.5.i.if.else.6.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.5.i)
  %cmp31.6.i = icmp eq i32 %first_match.1.5.i, -1
  %or.cond.6.i = select i1 %cmp11.6.i, i1 %cmp31.6.i, i1 false
  %first_match.1.6.i = select i1 %or.cond.6.i, i32 6, i32 %first_match.1.5.i
  %arrayidx9.7.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 7, i32 %5
  %48 = ptrtoint ptr %arrayidx9.7.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx9.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %conv)
  %cmp11.7.i = icmp eq i8 %49, %conv
  br i1 %cmp11.7.i, label %land.lhs.true.7.i, label %if.else.6.i.if.else.7.i_crit_edge

if.else.6.i.if.else.7.i_crit_edge:                ; preds = %if.else.6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.7.i

land.lhs.true.7.i:                                ; preds = %if.else.6.i
  %arrayidx17.7.i = getelementptr [8 x [2 x i8]], ptr %14, i32 0, i32 7, i32 %cond.i
  %50 = ptrtoint ptr %arrayidx17.7.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx17.7.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %51, i8 %18)
  %cmp20.7.i = icmp eq i8 %51, %18
  br i1 %cmp20.7.i, label %land.lhs.true.7.i.if.end8_crit_edge, label %land.lhs.true.7.i.if.else.7.i_crit_edge

land.lhs.true.7.i.if.else.7.i_crit_edge:          ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.7.i

land.lhs.true.7.i.if.end8_crit_edge:              ; preds = %land.lhs.true.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else.7.i:                                      ; preds = %land.lhs.true.7.i.if.else.7.i_crit_edge, %if.else.6.i.if.else.7.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.6.i)
  %cmp31.7.i = icmp eq i32 %first_match.1.6.i, -1
  %or.cond.7.i = select i1 %cmp11.7.i, i1 %cmp31.7.i, i1 false
  %first_match.1.7.i = select i1 %or.cond.7.i, i32 7, i32 %first_match.1.6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %first_match.1.7.i)
  %cmp40.i = icmp sgt i32 %first_match.1.7.i, -1
  br i1 %cmp40.i, label %if.else.7.i.if.end8_crit_edge, label %if.else.7.i.cleanup.sink.split_crit_edge

if.else.7.i.cleanup.sink.split_crit_edge:         ; preds = %if.else.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.else.7.i.if.end8_crit_edge:                    ; preds = %if.else.7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.end8:                                          ; preds = %if.else.7.i.if.end8_crit_edge, %land.lhs.true.7.i.if.end8_crit_edge, %land.lhs.true.6.i.if.end8_crit_edge, %land.lhs.true.5.i.if.end8_crit_edge, %land.lhs.true.4.i.if.end8_crit_edge, %land.lhs.true.3.i.if.end8_crit_edge, %land.lhs.true.2.i.if.end8_crit_edge, %land.lhs.true.1.i.if.end8_crit_edge, %land.lhs.true.i.if.end8_crit_edge, %if.end.if.end8_crit_edge
  %retval.0.i.ph = phi i32 [ 7, %land.lhs.true.7.i.if.end8_crit_edge ], [ 6, %land.lhs.true.6.i.if.end8_crit_edge ], [ 5, %land.lhs.true.5.i.if.end8_crit_edge ], [ 4, %land.lhs.true.4.i.if.end8_crit_edge ], [ 3, %land.lhs.true.3.i.if.end8_crit_edge ], [ 2, %land.lhs.true.2.i.if.end8_crit_edge ], [ 1, %land.lhs.true.1.i.if.end8_crit_edge ], [ 0, %land.lhs.true.i.if.end8_crit_edge ], [ 0, %if.end.if.end8_crit_edge ], [ %first_match.1.7.i, %if.else.7.i.if.end8_crit_edge ]
  %52 = and i8 %12, 31
  %conv12 = shl nuw nsw i32 %retval.0.i.ph, 5
  %53 = trunc i32 %conv12 to i8
  %conv14 = or i8 %52, %53
  %54 = ptrtoint ptr %conf1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv14, ptr %conf1, align 2
  %and18 = and i32 %conv12, 128
  %55 = and i8 %8, -128
  %and20 = zext i8 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and18, i32 %and20)
  %tobool21.not = icmp eq i32 %and18, %and20
  br i1 %tobool21.not, label %if.end8.if.end52_crit_edge, label %if.then22

if.end8.if.end52_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then22:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool26.not = icmp eq i32 %and18, 0
  br i1 %tobool26.not, label %if.else, label %if.then27

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %pwm = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 14
  %56 = ptrtoint ptr %pwm to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pwm, align 2
  %old_pwm = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 15
  %58 = ptrtoint ptr %old_pwm to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %old_pwm, align 4
  %arrayidx30 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 1
  %59 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx30, align 1
  %arrayidx32 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 15, i32 1
  %61 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %arrayidx32, align 1
  br label %if.end52.sink.split

if.else:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #11
  %old_pwm34 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 15
  %62 = ptrtoint ptr %old_pwm34 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %old_pwm34, align 4
  %pwm36 = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 14
  %64 = ptrtoint ptr %pwm36 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %pwm36, align 2
  %arrayidx39 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 15, i32 1
  %65 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx39, align 1
  %arrayidx41 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 1
  %67 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %arrayidx41, align 1
  %shl48 = shl i8 %66, 4
  %or49 = or i8 %shl48, %63
  br label %if.end52.sink.split

if.end52.sink.split:                              ; preds = %if.else, %if.then27
  %.sink = phi i8 [ 85, %if.then27 ], [ %or49, %if.else ]
  %call.i102 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 34, i8 noundef zeroext %.sink) #9
  br label %if.end52

if.end52:                                         ; preds = %if.end52.sink.split, %if.end8.if.end52_crit_edge
  %68 = ptrtoint ptr %conf1 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %conf1, align 2
  %70 = and i8 %69, 31
  %conv60 = or i8 %70, %53
  store i8 %conv60, ptr %conf1, align 2
  %call.i104 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv60) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end52, %if.else.7.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %if.end52 ], [ -22, %if.else.7.i.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ext_temp = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 17
  %2 = ptrtoint ptr %ext_temp to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ext_temp, align 1
  %4 = lshr i8 %3, 5
  %5 = and i8 %4, 6
  %mul = zext i8 %5 to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 17, i32 %1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %7 to i32
  %8 = mul i32 %1, 3
  %mul4 = add i32 %8, -3
  %shr5 = lshr i32 %conv3, %mul4
  %and6 = and i32 %shr5, 7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %mul, %cond.true ], [ %and6, %cond.false ]
  %arrayidx7 = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 16, i32 %1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx7, align 1
  %conv8 = sext i8 %10 to i32
  %mul9 = mul nsw i32 %conv8, 1000
  %mul10 = mul nuw nsw i32 %cond, 125
  %add = add nsw i32 %mul9, %mul10
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %add)
  ret i32 %call11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 22, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  %or = or i32 %conv, 112
  %cond = select i1 %cmp, i32 %or, i32 %conv
  %mul = mul nsw i32 %cond, 1000
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -15000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 15000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10 = icmp slt i32 %13, 0
  %cond15.in.v = select i1 %cmp10, i32 -500, i32 500
  %cond15.in = add i32 %cond15.in.v, %13
  %cond15 = sdiv i32 %cond15.in, 1000
  %14 = trunc i32 %cond15 to i8
  %conv = and i8 %14, -113
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 22, i32 %5
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 1
  %16 = trunc i32 %5 to i8
  %conv17 = add i8 %16, 13
  %call.i39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 23, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -55000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10 = icmp slt i32 %13, 0
  %cond15.in.v = select i1 %cmp10, i32 -500, i32 500
  %cond15.in = add i32 %cond15.in.v, %13
  %cond15 = sdiv i32 %cond15.in, 1000
  %conv = trunc i32 %cond15 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 23, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %5 to i8
  %15 = shl i8 %.tr, 2
  %conv17 = add i8 %15, 21
  %call.i39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 24, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -55000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10 = icmp slt i32 %13, 0
  %cond15.in.v = select i1 %cmp10, i32 -500, i32 500
  %cond15.in = add i32 %cond15.in.v, %13
  %cond15 = sdiv i32 %cond15.in, 1000
  %conv = trunc i32 %cond15 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 24, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %5 to i8
  %15 = shl i8 %.tr, 2
  %conv17 = add i8 %15, 20
  %call.i39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 25, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -55000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp10 = icmp slt i32 %13, 0
  %cond15.in.v = select i1 %cmp10, i32 -500, i32 500
  %cond15.in = add i32 %cond15.in.v, %13
  %cond15 = sdiv i32 %cond15.in, 1000
  %conv = trunc i32 %cond15 to i8
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 25, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %5 to i8
  %15 = shl i8 %.tr, 2
  %conv17 = add i8 %15, 22
  %call.i39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv17, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_temp_off_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 124
  %shl = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %shl, 1000
  %sub = add nsw i32 %mul, -5000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %sub)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 1
  %5 = and i8 %4, 124
  %shl = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %shl, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 127000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %div = sdiv i32 %13, 500
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 18, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %16 = and i8 %15, 7
  %17 = trunc i32 %div to i8
  %18 = and i8 %17, -8
  %conv11 = or i8 %18, %16
  store i8 %conv11, ptr %arrayidx, align 1
  %19 = trunc i32 %5 to i8
  %conv14 = add i8 %19, 36
  %call.i37 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv14, i8 noundef zeroext %conv11) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1031_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 7
  %mul = shl nuw nsw i32 5000, %and
  %4 = lshr i32 %conv, 1
  %shl5 = and i32 %4, 124
  %mul6 = mul nuw nsw i32 %shl5, 1000
  %add = add nuw nsw i32 %mul6, %mul
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %add)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @auto_temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 127000)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 18, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 14, i32 %5
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %17 to i32
  %18 = lshr i8 %15, 1
  %19 = and i8 %18, 124
  %shl.i = zext i8 %19 to i32
  %mul.neg.i = mul nsw i32 %shl.i, -1000
  %sub.i = add i32 %mul.neg.i, %13
  %mul1.i = mul i32 %sub.i, 10
  %sub2.i = sub nsw i32 16, %conv11
  %div.i = sdiv i32 %mul1.i, %sub2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %div.i)
  %cmp.i = icmp slt i32 %div.i, 10000
  br i1 %cmp.i, label %if.end.AUTO_TEMP_MAX_TO_REG.exit_crit_edge, label %cond.false.i

if.end.AUTO_TEMP_MAX_TO_REG.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %AUTO_TEMP_MAX_TO_REG.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000, i32 %div.i)
  %cmp4.i = icmp ult i32 %div.i, 20000
  br i1 %cmp4.i, label %cond.false.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge, label %cond.false6.i

cond.false.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %AUTO_TEMP_MAX_TO_REG.exit

cond.false6.i:                                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 40000, i32 %div.i)
  %cmp7.i = icmp ult i32 %div.i, 40000
  br i1 %cmp7.i, label %cond.false6.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge, label %cond.false9.i

cond.false6.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge: ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %AUTO_TEMP_MAX_TO_REG.exit

cond.false9.i:                                    ; preds = %cond.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 80000, i32 %div.i)
  %cmp10.i = icmp ult i32 %div.i, 80000
  %cond.i = select i1 %cmp10.i, i8 3, i8 4
  br label %AUTO_TEMP_MAX_TO_REG.exit

AUTO_TEMP_MAX_TO_REG.exit:                        ; preds = %cond.false9.i, %cond.false6.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge, %cond.false.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge, %if.end.AUTO_TEMP_MAX_TO_REG.exit_crit_edge
  %cond15.i = phi i8 [ 0, %if.end.AUTO_TEMP_MAX_TO_REG.exit_crit_edge ], [ 1, %cond.false.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge ], [ %cond.i, %cond.false9.i ], [ 2, %cond.false6.i.AUTO_TEMP_MAX_TO_REG.exit_crit_edge ]
  %and3.i = and i8 %15, -8
  %or.i = or i8 %cond15.i, %and3.i
  %arrayidx14 = getelementptr %struct.adm1031_data, ptr %1, i32 0, i32 24, i32 %5
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or.i, ptr %arrayidx14, align 1
  %21 = trunc i32 %5 to i8
  %conv15 = add i8 %21, 36
  %call.i40 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv15, i8 noundef zeroext %or.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %AUTO_TEMP_MAX_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %AUTO_TEMP_MAX_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_interval = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %update_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.41, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !222
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16000, i32 %6)
  %cmp3.not = icmp ult i32 %6, 16000
  br i1 %cmp3.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %6)
  %cmp3.not.1 = icmp ult i32 %6, 8000
  br i1 %cmp3.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %6)
  %cmp3.not.2 = icmp ult i32 %6, 4000
  br i1 %cmp3.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %6)
  %cmp3.not.3 = icmp ult i32 %6, 2000
  br i1 %cmp3.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %6)
  %cmp3.not.4 = icmp ult i32 %6, 1000
  br i1 %cmp3.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %6)
  %cmp3.not.5 = icmp ult i32 %6, 500
  br i1 %cmp3.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 250, i32 %6)
  %cmp3.not.6 = icmp ult i32 %6, 250
  %spec.select = select i1 %cmp3.not.6, i32 7, i32 6
  br label %for.end

for.end:                                          ; preds = %for.inc.5, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ 2, %for.inc.1.for.end_crit_edge ], [ 3, %for.inc.2.for.end_crit_edge ], [ 4, %for.inc.3.for.end_crit_edge ], [ 5, %for.inc.4.for.end_crit_edge ], [ %spec.select, %for.inc.5 ]
  %call.i30 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 35) #9
  %conv.i = trunc i32 %call.i30 to i8
  %7 = and i8 %conv.i, -29
  %i.0.tr = trunc i32 %i.0.lcssa to i8
  %8 = shl nuw nsw i8 %i.0.tr, 2
  %conv9 = or i8 %7, %8
  %call.i31 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 35, i8 noundef zeroext %conv9) #9
  %update_lock = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx12 = getelementptr [8 x i32], ptr @update_intervals, i32 0, i32 %i.0.lcssa
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx12, align 4
  %update_interval = getelementptr inbounds %struct.adm1031_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %update_interval, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1031_update_device(ptr noundef %dev)
  %alarm = getelementptr inbounds %struct.adm1031_data, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %alarm to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %alarm, align 4
  %conv = zext i16 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !140, !141, !143, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !209}
!llvm.module.flags = !{!211, !212, !213, !214, !215, !216, !217, !218}
!llvm.ident = !{!219}

!0 = !{ptr @__initcall__kmod_adm1031__321_1077_adm1031_driver_init6, !1, !"__initcall__kmod_adm1031__321_1077_adm1031_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adm1031.c", i32 1077, i32 1}
!2 = !{ptr @__exitcall_adm1031_driver_exit, !1, !"__exitcall_adm1031_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author322, !4, !"__UNIQUE_ID_author322", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adm1031.c", i32 1079, i32 1}
!5 = !{ptr @__UNIQUE_ID_description323, !6, !"__UNIQUE_ID_description323", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adm1031.c", i32 1080, i32 1}
!7 = !{ptr @__UNIQUE_ID_file324, !8, !"__UNIQUE_ID_file324", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adm1031.c", i32 1081, i32 1}
!9 = !{ptr @__UNIQUE_ID_license325, !8, !"__UNIQUE_ID_license325", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adm1031.c", i32 1069, i32 11}
!12 = !{ptr @adm1031_driver, !13, !"adm1031_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adm1031.c", i32 1066, i32 26}
!14 = !{ptr @adm1031_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adm1031.c", i32 1039, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @auto_channel_select_table_adm1030, !18, !"auto_channel_select_table_adm1030", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adm1031.c", i32 272, i32 32}
!19 = !{ptr @auto_channel_select_table_adm1031, !20, !"auto_channel_select_table_adm1031", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/adm1031.c", i32 264, i32 32}
!21 = !{ptr @update_intervals, !22, !"update_intervals", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/adm1031.c", i32 845, i32 27}
!23 = !{ptr @adm1031_group, !24, !"adm1031_group", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/adm1031.c", i32 938, i32 37}
!25 = !{ptr @adm1031_attributes, !26, !"adm1031_attributes", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/adm1031.c", i32 896, i32 26}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/adm1031.c", i32 657, i32 8}
!29 = !{ptr @sensor_dev_attr_fan1_input, !28, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adm1031.c", i32 564, i32 22}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/adm1031.c", i32 120, i32 3}
!34 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @adm1031_update_device.__UNIQUE_ID_ddebug288, !33, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/adm1031.c", i32 142, i32 6}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @adm1031_update_device._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @adm1031_update_device._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/adm1031.c", i32 659, i32 8}
!45 = !{ptr @sensor_dev_attr_fan1_div, !44, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/adm1031.c", i32 658, i32 8}
!48 = !{ptr @sensor_dev_attr_fan1_min, !47, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/adm1031.c", i32 828, i32 8}
!51 = !{ptr @sensor_dev_attr_fan1_alarm, !50, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/adm1031.c", i32 829, i32 8}
!54 = !{ptr @sensor_dev_attr_fan1_fault, !53, !"sensor_dev_attr_fan1_fault", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/adm1031.c", i32 502, i32 8}
!57 = !{ptr @sensor_dev_attr_pwm1, !56, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/adm1031.c", i32 381, i32 8}
!60 = !{ptr @sensor_dev_attr_auto_fan1_channel, !59, !"sensor_dev_attr_auto_fan1_channel", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/adm1031.c", i32 794, i32 8}
!63 = !{ptr @sensor_dev_attr_temp1_input, !62, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adm1031.c", i32 795, i32 8}
!66 = !{ptr @sensor_dev_attr_temp1_offset, !65, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/adm1031.c", i32 796, i32 8}
!69 = !{ptr @sensor_dev_attr_temp1_min, !68, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/adm1031.c", i32 835, i32 8}
!72 = !{ptr @sensor_dev_attr_temp1_min_alarm, !71, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/adm1031.c", i32 797, i32 8}
!75 = !{ptr @sensor_dev_attr_temp1_max, !74, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/adm1031.c", i32 834, i32 8}
!78 = !{ptr @sensor_dev_attr_temp1_max_alarm, !77, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adm1031.c", i32 798, i32 8}
!81 = !{ptr @sensor_dev_attr_temp1_crit, !80, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/adm1031.c", i32 842, i32 8}
!84 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !83, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/adm1031.c", i32 799, i32 8}
!87 = !{ptr @sensor_dev_attr_temp2_input, !86, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/adm1031.c", i32 800, i32 8}
!90 = !{ptr @sensor_dev_attr_temp2_offset, !89, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/adm1031.c", i32 801, i32 8}
!93 = !{ptr @sensor_dev_attr_temp2_min, !92, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/adm1031.c", i32 831, i32 8}
!96 = !{ptr @sensor_dev_attr_temp2_min_alarm, !95, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/adm1031.c", i32 802, i32 8}
!99 = !{ptr @sensor_dev_attr_temp2_max, !98, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/adm1031.c", i32 830, i32 8}
!102 = !{ptr @sensor_dev_attr_temp2_max_alarm, !101, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/adm1031.c", i32 803, i32 8}
!105 = !{ptr @sensor_dev_attr_temp2_crit, !104, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/adm1031.c", i32 832, i32 8}
!108 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !107, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/adm1031.c", i32 833, i32 8}
!111 = !{ptr @sensor_dev_attr_temp2_fault, !110, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!112 = !{ptr @.str.33, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/adm1031.c", i32 455, i32 8}
!114 = !{ptr @sensor_dev_attr_auto_temp1_off, !113, !"sensor_dev_attr_auto_temp1_off", i1 false, i1 false}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/adm1031.c", i32 456, i32 8}
!117 = !{ptr @sensor_dev_attr_auto_temp1_min, !116, !"sensor_dev_attr_auto_temp1_min", i1 false, i1 false}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/adm1031.c", i32 457, i32 8}
!120 = !{ptr @sensor_dev_attr_auto_temp1_max, !119, !"sensor_dev_attr_auto_temp1_max", i1 false, i1 false}
!121 = !{ptr @.str.36, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/adm1031.c", i32 458, i32 8}
!123 = !{ptr @sensor_dev_attr_auto_temp2_off, !122, !"sensor_dev_attr_auto_temp2_off", i1 false, i1 false}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/adm1031.c", i32 459, i32 8}
!126 = !{ptr @sensor_dev_attr_auto_temp2_min, !125, !"sensor_dev_attr_auto_temp2_min", i1 false, i1 false}
!127 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/adm1031.c", i32 460, i32 8}
!129 = !{ptr @sensor_dev_attr_auto_temp2_max, !128, !"sensor_dev_attr_auto_temp2_max", i1 false, i1 false}
!130 = !{ptr @.str.39, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/adm1031.c", i32 504, i32 8}
!132 = !{ptr @sensor_dev_attr_auto_fan1_min_pwm, !131, !"sensor_dev_attr_auto_fan1_min_pwm", i1 false, i1 false}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/adm1031.c", i32 894, i32 8}
!135 = !{ptr @dev_attr_update_interval, !134, !"dev_attr_update_interval", i1 false, i1 false}
!136 = !{ptr @.str.41, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/adm1031.c", i32 854, i32 22}
!138 = !{ptr @.str.42, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/adm1031.c", i32 818, i32 8}
!140 = !{ptr @dev_attr_alarms, !139, !"dev_attr_alarms", i1 false, i1 false}
!141 = !{ptr @adm1031_group_opt, !142, !"adm1031_group_opt", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/adm1031.c", i32 966, i32 37}
!143 = !{ptr @adm1031_attributes_opt, !144, !"adm1031_attributes_opt", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/adm1031.c", i32 942, i32 26}
!145 = !{ptr @.str.43, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/adm1031.c", i32 660, i32 8}
!147 = !{ptr @sensor_dev_attr_fan2_input, !146, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!148 = !{ptr @.str.44, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/adm1031.c", i32 662, i32 8}
!150 = !{ptr @sensor_dev_attr_fan2_div, !149, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!151 = !{ptr @.str.45, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/adm1031.c", i32 661, i32 8}
!153 = !{ptr @sensor_dev_attr_fan2_min, !152, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!154 = !{ptr @.str.46, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/adm1031.c", i32 836, i32 8}
!156 = !{ptr @sensor_dev_attr_fan2_alarm, !155, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!157 = !{ptr @.str.47, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/adm1031.c", i32 837, i32 8}
!159 = !{ptr @sensor_dev_attr_fan2_fault, !158, !"sensor_dev_attr_fan2_fault", i1 false, i1 false}
!160 = !{ptr @.str.48, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/adm1031.c", i32 503, i32 8}
!162 = !{ptr @sensor_dev_attr_pwm2, !161, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!163 = !{ptr @.str.49, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/adm1031.c", i32 382, i32 8}
!165 = !{ptr @sensor_dev_attr_auto_fan2_channel, !164, !"sensor_dev_attr_auto_fan2_channel", i1 false, i1 false}
!166 = !{ptr @.str.50, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/adm1031.c", i32 804, i32 8}
!168 = !{ptr @sensor_dev_attr_temp3_input, !167, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!169 = !{ptr @.str.51, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/adm1031.c", i32 805, i32 8}
!171 = !{ptr @sensor_dev_attr_temp3_offset, !170, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!172 = !{ptr @.str.52, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/adm1031.c", i32 806, i32 8}
!174 = !{ptr @sensor_dev_attr_temp3_min, !173, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!175 = !{ptr @.str.53, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/adm1031.c", i32 839, i32 8}
!177 = !{ptr @sensor_dev_attr_temp3_min_alarm, !176, !"sensor_dev_attr_temp3_min_alarm", i1 false, i1 false}
!178 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/adm1031.c", i32 807, i32 8}
!180 = !{ptr @sensor_dev_attr_temp3_max, !179, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!181 = !{ptr @.str.55, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/adm1031.c", i32 838, i32 8}
!183 = !{ptr @sensor_dev_attr_temp3_max_alarm, !182, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!184 = !{ptr @.str.56, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/adm1031.c", i32 808, i32 8}
!186 = !{ptr @sensor_dev_attr_temp3_crit, !185, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!187 = !{ptr @.str.57, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/adm1031.c", i32 840, i32 8}
!189 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !188, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!190 = !{ptr @.str.58, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/adm1031.c", i32 841, i32 8}
!192 = !{ptr @sensor_dev_attr_temp3_fault, !191, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!193 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/adm1031.c", i32 461, i32 8}
!195 = !{ptr @sensor_dev_attr_auto_temp3_off, !194, !"sensor_dev_attr_auto_temp3_off", i1 false, i1 false}
!196 = !{ptr @.str.60, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/adm1031.c", i32 462, i32 8}
!198 = !{ptr @sensor_dev_attr_auto_temp3_min, !197, !"sensor_dev_attr_auto_temp3_min", i1 false, i1 false}
!199 = !{ptr @.str.61, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/adm1031.c", i32 463, i32 8}
!201 = !{ptr @sensor_dev_attr_auto_temp3_max, !200, !"sensor_dev_attr_auto_temp3_max", i1 false, i1 false}
!202 = !{ptr @.str.62, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/adm1031.c", i32 505, i32 8}
!204 = !{ptr @sensor_dev_attr_auto_fan2_min_pwm, !203, !"sensor_dev_attr_auto_fan2_min_pwm", i1 false, i1 false}
!205 = !{ptr @adm1031_id, !206, !"adm1031_id", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/adm1031.c", i32 1059, i32 35}
!207 = !{ptr @.str.63, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/adm1031.c", i32 986, i32 24}
!209 = !{ptr @normal_i2c, !210, !"normal_i2c", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/adm1031.c", i32 56, i32 29}
!211 = !{i32 1, !"wchar_size", i32 2}
!212 = !{i32 1, !"min_enum_size", i32 4}
!213 = !{i32 8, !"branch-target-enforcement", i32 0}
!214 = !{i32 8, !"sign-return-address", i32 0}
!215 = !{i32 8, !"sign-return-address-all", i32 0}
!216 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!217 = !{i32 7, !"uwtable", i32 1}
!218 = !{i32 7, !"frame-pointer", i32 2}
!219 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!220 = !{i8 0, i8 2}
!221 = !{i64 2148984050, i64 2148984055, i64 2148984068, i64 2148984112, i64 2148984146, i64 2148984167}
!222 = !{!"auto-init"}
