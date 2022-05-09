; ModuleID = '/llk/IR_all_yes/drivers/hwmon/nct7802.c_pt.bc'
source_filename = "../drivers/hwmon/nct7802.c"
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
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
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
%struct.nct7802_data = type { ptr, %struct.mutex, i8, %struct.mutex }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_nct7802__300_1231_nct7802_driver_init6 = internal global ptr @nct7802_driver_init, section ".initcall6.init", align 4
@nct7802_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @nct7802_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nct7802_idtable, ptr @nct7802_detect, ptr @nct7802_address_list, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nct7802_driver_exit = internal global ptr @nct7802_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [50 x i8] c"nct7802.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [56 x i8] c"nct7802.description=NCT7802Y Hardware Monitoring Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [35 x i8] c"nct7802.file=drivers/hwmon/nct7802\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [23 x i8] c"nct7802.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nct7802\00", [24 x i8] zeroinitializer }, align 32
@nct7802_idtable = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nct7802\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nct7802_address_list = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 -2], [46 x i8] zeroinitializer }, align 32
@nct7802_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nct7802_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr @nct7802_regmap_is_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nct7802:1193:(&nct7802_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@nct7802_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->access_lock\00", [45 x i8] zeroinitializer }, align 32
@nct7802_probe.__key.3 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&data->in_alarm_lock\00", [43 x i8] zeroinitializer }, align 32
@nct7802_groups = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @nct7802_temp_group, ptr @nct7802_in_group, ptr @nct7802_fan_group, ptr @nct7802_pwm_group, ptr @nct7802_auto_point_group, ptr null], [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 1071, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Could not read reg value for '%s'\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nct7802_get_channel_config\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/nct7802.c\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr = internal global ptr @nct7802_get_channel_config._entry, section ".printk_index", align 4
@nct7802_get_channel_config._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.9, i32 1077, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid reg (%u) in '%s'\0A\00", [38 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr.14 = internal global ptr @nct7802_get_channel_config._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sensor-type\00", [20 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.8, ptr @.str.9, i32 1099, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No type for '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr.18 = internal global ptr @nct7802_get_channel_config._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"voltage\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temperature\00", [20 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 1112, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid type '%s' for '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr.23 = internal global ptr @nct7802_get_channel_config._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temperature-mode\00", [47 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.8, ptr @.str.9, i32 1122, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No mode for '%s'\0A\00", [46 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr.27 = internal global ptr @nct7802_get_channel_config._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thermal-diode\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"thermistor\00", [21 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.8, ptr @.str.9, i32 1132, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid mode '%s' for '%s'\0A\00", [36 x i8] zeroinitializer }, align 32
@nct7802_get_channel_config._entry_ptr.32 = internal global ptr @nct7802_get_channel_config._entry.30, section ".printk_index", align 4
@nct7802_temp_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @nct7802_temp_is_visible, ptr null, ptr @nct7802_temp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nct7802_in_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @nct7802_in_is_visible, ptr null, ptr @nct7802_in_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nct7802_fan_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @nct7802_fan_is_visible, ptr null, ptr @nct7802_fan_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nct7802_pwm_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nct7802_pwm_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nct7802_auto_point_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @nct7802_auto_point_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@nct7802_temp_attrs = internal global { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_beep, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_beep, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_beep, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_beep, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 49 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 48 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 58 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 0, i8 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 0, i8 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 0, i8 27 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 0, i8 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 0, i8 92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 51 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 50 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 59 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 1, i8 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 1, i8 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 1, i8 27 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 1, i8 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 1, i8 92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_type_show, ptr @temp_type_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 5, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 53 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 52 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 60 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 2, i8 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 2, i8 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 2, i8 27 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 2, i8 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 2, i8 92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 55 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 54 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 61 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 3, i8 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 3, i8 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 3, i8 27 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 3, i8 92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 8, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 57 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 56 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 62 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 4, i8 24 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 4, i8 25 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 4, i8 27 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 4, i8 92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 8, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 5, i8 92 }, [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_min\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp5_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_beep\00", [21 x i8] zeroinitializer }, align 32
@nct7802_in_attrs = internal global { [22 x ptr], [40 x i8] } { [22 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_alarm_show, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 3, i8 90 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_alarm_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 0, i8 90 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_alarm_show, ptr null }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 1, i8 90 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_alarm_show, ptr null }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 2, i8 90 }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@REG_VOLTAGE = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\09\0A\0C\0D\0E", [27 x i8] zeroinitializer }, align 32
@nct7802_vmul = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\04\02\02\02\02", [27 x i8] zeroinitializer }, align 32
@REG_VOLTAGE_LIMIT_MSB_SHIFT = internal constant { [2 x [5 x i8]], [22 x i8] } { [2 x [5 x i8]] [[5 x i8] c"\00\00\04\00\04", [5 x i8] c"\02\00\06\02\06"], [22 x i8] zeroinitializer }, align 32
@REG_VOLTAGE_LIMIT_LSB = internal constant { [2 x [5 x i8]], [22 x i8] } { [2 x [5 x i8]] [[5 x i8] c"F\00@BD", [5 x i8] c"E\00?AC"], [22 x i8] zeroinitializer }, align 32
@REG_VOLTAGE_LIMIT_MSB = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"H\00GGH", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@nct7802_fan_attrs = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i8 76, i8 73 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 0, i8 26 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 0, i8 91 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i8 77, i8 74 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 1, i8 26 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 1, i8 91 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i8 78, i8 75 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i8 2, i8 26 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_beep = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_show, ptr @beep_store }, i8 2, i8 91 }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@nct7802_pwm_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_pwm3, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_mode_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 96 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_mode_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 97 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_enable_show, ptr @pwm_enable_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_mode_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 98 }, [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"255\0A\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@nct7802_auto_point_attrs = internal global { [31 x ptr], [36 x i8] } { [31 x ptr] [ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point4_temp, ptr @sensor_dev_attr_pwm2_auto_point5_temp, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point3_pwm, ptr @sensor_dev_attr_pwm2_auto_point4_pwm, ptr @sensor_dev_attr_pwm2_auto_point5_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point4_temp, ptr @sensor_dev_attr_pwm3_auto_point5_temp, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point3_pwm, ptr @sensor_dev_attr_pwm3_auto_point4_pwm, ptr @sensor_dev_attr_pwm3_auto_point5_pwm, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -127 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -126 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -125 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -124 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 133 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 134 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 135 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 136 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -112 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -111 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -110 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -109 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point5_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -108 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 149 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 150 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 151 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point4_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 152 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point5_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -96 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -95 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -94 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point4_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -93 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point5_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 -92 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 165 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 166 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 167 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point4_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 168 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point5_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point5_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm2_auto_point5_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm3_auto_point5_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8191]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 8191]
@___asan_gen_.159 = private unnamed_addr constant [15 x i8] c"nct7802_driver\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1220, i32 26 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1223, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"nct7802_idtable\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1214, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant [21 x i8] c"nct7802_address_list\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1210, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [22 x i8] c"nct7802_regmap_config\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1051, i32 35 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1193, i32 17 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1197, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1198, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"nct7802_groups\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 994, i32 38 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1066, i32 21 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1069, i32 33 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1070, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1076, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1098, i32 36 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1099, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1103, i32 24 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1110, i32 23 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1111, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1120, i32 37 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1122, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1126, i32 23 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1128, i32 28 }
@___asan_gen_.261 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 1131, i32 4 }
@___asan_gen_.267 = private unnamed_addr constant [19 x i8] c"nct7802_temp_group\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 734, i32 37 }
@___asan_gen_.270 = private unnamed_addr constant [17 x i8] c"nct7802_in_group\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 820, i32 37 }
@___asan_gen_.273 = private unnamed_addr constant [18 x i8] c"nct7802_fan_group\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 886, i32 37 }
@___asan_gen_.276 = private unnamed_addr constant [18 x i8] c"nct7802_pwm_group\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 904, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant [25 x i8] c"nct7802_auto_point_group\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 990, i32 37 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"nct7802_temp_attrs\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 638, i32 26 }
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_beep\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_beep\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_min_alarm\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_beep\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_crit\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_min_alarm\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp4_crit_alarm\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_beep\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_min\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_crit\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_min_alarm\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_max_alarm\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp5_crit_alarm\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_beep\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp6_beep\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 579, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 94, i32 22 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 580, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 461, i32 22 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 581, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 582, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 583, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 609, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 615, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 621, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 627, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 631, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 585, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 586, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 587, i32 8 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 588, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 589, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 610, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 616, i32 8 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 622, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 628, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 632, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 591, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 592, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 593, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 594, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 595, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 611, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 617, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 623, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 629, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 633, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 597, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 598, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 599, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 600, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 612, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 618, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 624, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 634, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 602, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 603, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 604, i32 8 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 605, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 613, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 619, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 625, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 635, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 607, i32 8 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 636, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant [17 x i8] c"nct7802_in_attrs\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 765, i32 26 }
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_beep\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_beep\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_beep\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_beep\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 739, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant [12 x i8] c"REG_VOLTAGE\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 23, i32 17 }
@___asan_gen_.651 = private unnamed_addr constant [13 x i8] c"nct7802_vmul\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 301, i32 11 }
@___asan_gen_.654 = private unnamed_addr constant [28 x i8] c"REG_VOLTAGE_LIMIT_MSB_SHIFT\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 32, i32 17 }
@___asan_gen_.657 = private unnamed_addr constant [22 x i8] c"REG_VOLTAGE_LIMIT_LSB\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 25, i32 17 }
@___asan_gen_.660 = private unnamed_addr constant [22 x i8] c"REG_VOLTAGE_LIMIT_MSB\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 30, i32 17 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 740, i32 8 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 741, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 742, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 743, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 745, i32 8 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 747, i32 8 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 748, i32 8 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 749, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 750, i32 8 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 751, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 753, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 754, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 755, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 756, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 757, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 759, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 760, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 761, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 762, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 763, i32 8 }
@___asan_gen_.723 = private unnamed_addr constant [18 x i8] c"nct7802_fan_attrs\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 853, i32 26 }
@___asan_gen_.726 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_beep\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.744 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_beep\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan3_beep\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 825, i32 8 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 826, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 827, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 828, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 829, i32 8 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 830, i32 8 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 831, i32 8 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 832, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 833, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 834, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 835, i32 8 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 836, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant [18 x i8] c"nct7802_pwm_attrs\00", align 1
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 891, i32 26 }
@___asan_gen_.801 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_mode\00", align 1
@___asan_gen_.807 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.810 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.813 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_mode\00", align 1
@___asan_gen_.816 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.819 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_mode\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 849, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 839, i32 8 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 127, i32 23 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 844, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 145, i32 23 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 850, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 840, i32 8 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 845, i32 8 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 851, i32 8 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 841, i32 8 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 846, i32 8 }
@___asan_gen_.861 = private unnamed_addr constant [25 x i8] c"nct7802_auto_point_attrs\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 950, i32 26 }
@___asan_gen_.864 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.867 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.870 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.873 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp\00", align 1
@___asan_gen_.876 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point5_temp\00", align 1
@___asan_gen_.879 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.882 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.885 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_pwm\00", align 1
@___asan_gen_.888 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point4_pwm\00", align 1
@___asan_gen_.891 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point5_pwm\00", align 1
@___asan_gen_.894 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point1_temp\00", align 1
@___asan_gen_.897 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point2_temp\00", align 1
@___asan_gen_.900 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point3_temp\00", align 1
@___asan_gen_.903 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point4_temp\00", align 1
@___asan_gen_.906 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm2_auto_point5_temp\00", align 1
@___asan_gen_.909 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.912 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.915 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point3_pwm\00", align 1
@___asan_gen_.918 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point4_pwm\00", align 1
@___asan_gen_.921 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point5_pwm\00", align 1
@___asan_gen_.924 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point1_temp\00", align 1
@___asan_gen_.927 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point2_temp\00", align 1
@___asan_gen_.930 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point3_temp\00", align 1
@___asan_gen_.933 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point4_temp\00", align 1
@___asan_gen_.936 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm3_auto_point5_temp\00", align 1
@___asan_gen_.939 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.942 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.945 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point3_pwm\00", align 1
@___asan_gen_.948 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point4_pwm\00", align 1
@___asan_gen_.951 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point5_pwm\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 909, i32 8 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 910, i32 8 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 911, i32 8 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 912, i32 8 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 913, i32 8 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 916, i32 8 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 917, i32 8 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 918, i32 8 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 919, i32 8 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 920, i32 8 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 923, i32 8 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 924, i32 8 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 925, i32 8 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 926, i32 8 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 927, i32 8 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 930, i32 8 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 931, i32 8 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 932, i32 8 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 933, i32 8 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 934, i32 8 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 937, i32 8 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 938, i32 8 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 939, i32 8 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 940, i32 8 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 941, i32 8 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 944, i32 8 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 945, i32 8 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 946, i32 8 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 947, i32 8 }
@___asan_gen_.1041 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1042 = private constant [27 x i8] c"../drivers/hwmon/nct7802.c\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1042, i32 948, i32 8 }
@llvm.compiler.used = appending global [308 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_nct7802_driver_exit, ptr @__initcall__kmod_nct7802__300_1231_nct7802_driver_init6, ptr @nct7802_driver_exit, ptr @nct7802_get_channel_config._entry, ptr @nct7802_get_channel_config._entry.12, ptr @nct7802_get_channel_config._entry.16, ptr @nct7802_get_channel_config._entry.21, ptr @nct7802_get_channel_config._entry.25, ptr @nct7802_get_channel_config._entry.30, ptr @nct7802_get_channel_config._entry_ptr, ptr @nct7802_get_channel_config._entry_ptr.14, ptr @nct7802_get_channel_config._entry_ptr.18, ptr @nct7802_get_channel_config._entry_ptr.23, ptr @nct7802_get_channel_config._entry_ptr.27, ptr @nct7802_get_channel_config._entry_ptr.32, ptr @nct7802_driver, ptr @.str, ptr @nct7802_idtable, ptr @nct7802_address_list, ptr @nct7802_probe._key, ptr @nct7802_regmap_config, ptr @.str.1, ptr @nct7802_probe.__key, ptr @.str.2, ptr @nct7802_probe.__key.3, ptr @.str.4, ptr @nct7802_groups, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @nct7802_temp_group, ptr @nct7802_in_group, ptr @nct7802_fan_group, ptr @nct7802_pwm_group, ptr @nct7802_auto_point_group, ptr @nct7802_temp_attrs, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_beep, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_beep, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_beep, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_beep, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_beep, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @nct7802_in_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @.str.83, ptr @REG_VOLTAGE, ptr @nct7802_vmul, ptr @REG_VOLTAGE_LIMIT_MSB_SHIFT, ptr @REG_VOLTAGE_LIMIT_LSB, ptr @REG_VOLTAGE_LIMIT_MSB, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @nct7802_fan_attrs, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @nct7802_pwm_attrs, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_pwm3, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @nct7802_auto_point_attrs, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_temp, ptr @sensor_dev_attr_pwm2_auto_point2_temp, ptr @sensor_dev_attr_pwm2_auto_point3_temp, ptr @sensor_dev_attr_pwm2_auto_point4_temp, ptr @sensor_dev_attr_pwm2_auto_point5_temp, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point3_pwm, ptr @sensor_dev_attr_pwm2_auto_point4_pwm, ptr @sensor_dev_attr_pwm2_auto_point5_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_temp, ptr @sensor_dev_attr_pwm3_auto_point2_temp, ptr @sensor_dev_attr_pwm3_auto_point3_temp, ptr @sensor_dev_attr_pwm3_auto_point4_temp, ptr @sensor_dev_attr_pwm3_auto_point5_temp, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point3_pwm, ptr @sensor_dev_attr_pwm3_auto_point4_pwm, ptr @sensor_dev_attr_pwm3_auto_point5_pwm, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156], section "llvm.metadata"
@0 = internal global [295 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_idtable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_address_list to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_probe.__key.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_groups to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_get_channel_config._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_temp_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_in_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_fan_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_pwm_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_auto_point_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_temp_attrs to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_in_attrs to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_VOLTAGE to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_vmul to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_VOLTAGE_LIMIT_MSB_SHIFT to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_VOLTAGE_LIMIT_LSB to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @REG_VOLTAGE_LIMIT_MSB to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_fan_attrs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_pwm_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nct7802_auto_point_attrs to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point5_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point5_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point5_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point5_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7802_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nct7802_driver) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nct7802_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @i2c_del_driver(ptr noundef nonnull @nct7802_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7802_probe(ptr noundef %client) #2 align 64 {
entry:
  %reg.i.i.i = alloca i32, align 4
  %type_str.i.i.i = alloca ptr, align 4
  %md_str.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 192, i32 noundef 3520) #11
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @nct7802_regmap_config, ptr noundef nonnull @nct7802_probe._key, ptr noundef nonnull @.str.1) #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  %access_lock = getelementptr inbounds %struct.nct7802_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %access_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @nct7802_probe.__key) #11
  %in_alarm_lock = getelementptr inbounds %struct.nct7802_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %in_alarm_lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @nct7802_probe.__key.3) #11
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 33, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.body.nct7802_init_chip.exit_crit_edge

do.body.nct7802_init_chip.exit_crit_edge:         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_init_chip.exit

if.end.i:                                         ; preds = %do.body
  %of_node.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.nct7802_configure_channels.exit.i_crit_edge, label %if.then.i.i

if.end.i.nct7802_configure_channels.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_configure_channels.exit.i

if.then.i.i:                                      ; preds = %if.end.i
  %call.i12.i = tail call ptr @of_get_next_child(ptr noundef nonnull %5, ptr noundef null) #11
  %cmp.not62.i.i = icmp eq ptr %call.i12.i, null
  br i1 %cmp.not62.i.i, label %if.then.i.i.nct7802_configure_channels.exit.i_crit_edge, label %if.then.i.i.for.body.i.i_crit_edge

if.then.i.i.for.body.i.i_crit_edge:               ; preds = %if.then.i.i
  br label %for.body.i.i

if.then.i.i.nct7802_configure_channels.exit.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_configure_channels.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then.i.i.for.body.i.i_crit_edge
  %node.065.i.i = phi ptr [ %call6.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call.i12.i, %if.then.i.i.for.body.i.i_crit_edge ]
  %mode_val.064.i.i = phi i8 [ %mode_val.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 64, %if.then.i.i.for.body.i.i_crit_edge ]
  %mode_mask.063.i.i = phi i8 [ %mode_mask.1.ph.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 64, %if.then.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i.i) #11
  %6 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i.i.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type_str.i.i.i) #11
  %7 = ptrtoint ptr %type_str.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %type_str.i.i.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %md_str.i.i.i) #11
  %8 = ptrtoint ptr %md_str.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %md_str.i.i.i, align 4, !annotation !482
  %9 = ptrtoint ptr %node.065.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node.065.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i
  %call.i.i.i = call i32 @strcasecmp(ptr noundef nonnull %10, ptr noundef nonnull @.str.5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %node.065.i.i, ptr noundef nonnull @.str.6, ptr noundef nonnull %reg.i.i.i, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i.i)
  %tobool4.not.i.i.i = icmp sgt i32 %call.i.i.i.i.i, -1
  br i1 %tobool4.not.i.i.i, label %if.end6.i.i.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %full_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %full_name.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7, ptr noundef %12) #14
  br label %nct7802_init_chip.exit.thread

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i
  %13 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i.i.i = icmp ugt i32 %14, 3
  br i1 %cmp.i.i.i, label %do.end10.i.i.i, label %if.end12.i.i.i

do.end10.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name11.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %full_name11.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %full_name11.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %14, ptr noundef %16) #14
  br label %nct7802_init_chip.exit.thread

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp13.i.i.i = icmp eq i32 %14, 0
  %call15.i.i.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %node.065.i.i) #11
  br i1 %cmp13.i.i.i, label %if.then14.i.i.i, label %if.end24.i.i.i

if.then14.i.i.i:                                  ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = and i8 %mode_val.064.i.i, -65
  %masksel.i.i.i = select i1 %call15.i.i.i, i8 64, i8 0
  %storemerge.i.i.i = or i8 %masksel.i.i.i, %17
  %18 = or i8 %mode_mask.063.i.i, 64
  br label %for.inc.i.i

if.end24.i.i.i:                                   ; preds = %if.end12.i.i.i
  br i1 %call15.i.i.i, label %if.end36.i.i.i, label %if.then26.i.i.i

if.then26.i.i.i:                                  ; preds = %if.end24.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg.i.i.i, align 4
  %sub.i.i.i = shl i32 %20, 1
  %mul.i.i.i = add i32 %sub.i.i.i, -2
  %shl.i.i.i = shl i32 3, %mul.i.i.i
  %21 = trunc i32 %shl.i.i.i to i8
  %22 = xor i8 %21, -1
  %conv29.i.i.i = and i8 %mode_val.064.i.i, %22
  %conv35.i.i.i = or i8 %mode_mask.063.i.i, %21
  br label %for.inc.i.i

if.end36.i.i.i:                                   ; preds = %if.end24.i.i.i
  %call37.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %node.065.i.i, ptr noundef nonnull @.str.15, ptr noundef nonnull %type_str.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i.i.i)
  %tobool38.not.i.i.i = icmp eq i32 %call37.i.i.i, 0
  br i1 %tobool38.not.i.i.i, label %if.end44.i.i.i, label %do.end42.i.i.i

do.end42.i.i.i:                                   ; preds = %if.end36.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name43.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %full_name43.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %full_name43.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17, ptr noundef %24) #14
  br label %nct7802_init_chip.exit.thread

if.end44.i.i.i:                                   ; preds = %if.end36.i.i.i
  %25 = ptrtoint ptr %type_str.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %type_str.i.i.i, align 4
  %call45.i.i.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(8) @.str.19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i.i.i)
  %tobool46.not.i.i.i = icmp eq i32 %call45.i.i.i, 0
  br i1 %tobool46.not.i.i.i, label %if.then47.i.i.i, label %if.end60.i.i.i

if.then47.i.i.i:                                  ; preds = %if.end44.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %reg.i.i.i, align 4
  %sub48.i.i.i = shl i32 %28, 1
  %mul49.i.i.i = add i32 %sub48.i.i.i, -2
  %shl50.i.i.i = shl i32 3, %mul49.i.i.i
  %29 = trunc i32 %shl50.i.i.i to i8
  %conv53.i.i.i = or i8 %mode_val.064.i.i, %29
  %conv59.i.i.i = or i8 %mode_mask.063.i.i, %29
  br label %for.inc.i.i

if.end60.i.i.i:                                   ; preds = %if.end44.i.i.i
  %call61.i.i.i = call i32 @strcmp(ptr noundef %26, ptr noundef nonnull dereferenceable(12) @.str.20) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.i.i)
  %tobool62.not.i.i.i = icmp eq i32 %call61.i.i.i, 0
  br i1 %tobool62.not.i.i.i, label %if.end68.i.i.i, label %do.end66.i.i.i

do.end66.i.i.i:                                   ; preds = %if.end60.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name67.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %full_name67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %full_name67.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22, ptr noundef %26, ptr noundef %31) #14
  br label %nct7802_init_chip.exit.thread

if.end68.i.i.i:                                   ; preds = %if.end60.i.i.i
  %32 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp69.i.i.i = icmp eq i32 %33, 3
  br i1 %cmp69.i.i.i, label %if.end68.i.i.i.if.end95.i.i.i_crit_edge, label %if.else72.i.i.i

if.end68.i.i.i.if.end95.i.i.i_crit_edge:          ; preds = %if.end68.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i.i.i

if.else72.i.i.i:                                  ; preds = %if.end68.i.i.i
  %call73.i.i.i = call i32 @of_property_read_string(ptr noundef nonnull %node.065.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull %md_str.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i.i)
  %tobool74.not.i.i.i = icmp eq i32 %call73.i.i.i, 0
  br i1 %tobool74.not.i.i.i, label %if.end80.i.i.i, label %do.end78.i.i.i

do.end78.i.i.i:                                   ; preds = %if.else72.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name79.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %34 = ptrtoint ptr %full_name79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %full_name79.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef %35) #14
  br label %nct7802_init_chip.exit.thread

if.end80.i.i.i:                                   ; preds = %if.else72.i.i.i
  %36 = ptrtoint ptr %md_str.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %md_str.i.i.i, align 4
  %call81.i.i.i = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(14) @.str.28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i.i.i)
  %tobool82.not.i.i.i = icmp eq i32 %call81.i.i.i, 0
  br i1 %tobool82.not.i.i.i, label %if.end80.i.i.i.if.end95.i.i.i_crit_edge, label %if.else84.i.i.i

if.end80.i.i.i.if.end95.i.i.i_crit_edge:          ; preds = %if.end80.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i.i.i

if.else84.i.i.i:                                  ; preds = %if.end80.i.i.i
  %call85.i.i.i = call i32 @strcmp(ptr noundef %37, ptr noundef nonnull dereferenceable(11) @.str.29) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.i.i.i)
  %tobool86.not.i.i.i = icmp eq i32 %call85.i.i.i, 0
  br i1 %tobool86.not.i.i.i, label %if.else84.i.i.i.if.end95.i.i.i_crit_edge, label %do.end91.i.i.i

if.else84.i.i.i.if.end95.i.i.i_crit_edge:         ; preds = %if.else84.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95.i.i.i

do.end91.i.i.i:                                   ; preds = %if.else84.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %full_name92.i.i.i = getelementptr inbounds %struct.device_node, ptr %node.065.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %full_name92.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %full_name92.i.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.31, ptr noundef %37, ptr noundef %39) #14
  br label %nct7802_init_chip.exit.thread

if.end95.i.i.i:                                   ; preds = %if.else84.i.i.i.if.end95.i.i.i_crit_edge, %if.end80.i.i.i.if.end95.i.i.i_crit_edge, %if.end68.i.i.i.if.end95.i.i.i_crit_edge
  %md.0.i.i.i = phi i32 [ 2, %if.end68.i.i.i.if.end95.i.i.i_crit_edge ], [ 1, %if.end80.i.i.i.if.end95.i.i.i_crit_edge ], [ 2, %if.else84.i.i.i.if.end95.i.i.i_crit_edge ]
  %40 = ptrtoint ptr %reg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg.i.i.i, align 4
  %sub98.i.i.i = shl i32 %41, 1
  %mul99.i.i.i = add i32 %sub98.i.i.i, -2
  %shl100.i.i.i = shl i32 %md.0.i.i.i, %mul99.i.i.i
  %42 = trunc i32 %shl100.i.i.i to i8
  %conv103.i.i.i = or i8 %mode_val.064.i.i, %42
  %shl106.i.i.i = shl i32 3, %mul99.i.i.i
  %43 = trunc i32 %shl106.i.i.i to i8
  %conv109.i.i.i = or i8 %mode_mask.063.i.i, %43
  br label %for.inc.i.i

nct7802_init_chip.exit.thread:                    ; preds = %do.end91.i.i.i, %do.end78.i.i.i, %do.end66.i.i.i, %do.end42.i.i.i, %do.end10.i.i.i, %do.end.i.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md_str.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type_str.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #11
  call void @of_node_put(ptr noundef nonnull %node.065.i.i) #11
  br label %cleanup

for.inc.i.i:                                      ; preds = %if.end95.i.i.i, %if.then47.i.i.i, %if.then26.i.i.i, %if.then14.i.i.i, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %mode_mask.1.ph.i.i = phi i8 [ %mode_mask.063.i.i, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge ], [ %conv35.i.i.i, %if.then26.i.i.i ], [ %conv109.i.i.i, %if.end95.i.i.i ], [ %conv59.i.i.i, %if.then47.i.i.i ], [ %18, %if.then14.i.i.i ], [ %mode_mask.063.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  %mode_val.1.ph.i.i = phi i8 [ %mode_val.064.i.i, %lor.lhs.false.i.i.i.for.inc.i.i_crit_edge ], [ %conv29.i.i.i, %if.then26.i.i.i ], [ %conv103.i.i.i, %if.end95.i.i.i ], [ %conv53.i.i.i, %if.then47.i.i.i ], [ %storemerge.i.i.i, %if.then14.i.i.i ], [ %mode_val.064.i.i, %for.body.i.i.for.inc.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %md_str.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type_str.i.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i.i) #11
  %44 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node.i.i, align 8
  %call6.i.i = call ptr @of_get_next_child(ptr noundef %45, ptr noundef nonnull %node.065.i.i) #11
  %cmp.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.not.i.i, label %for.inc.i.i.nct7802_configure_channels.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

for.inc.i.i.nct7802_configure_channels.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_configure_channels.exit.i

nct7802_configure_channels.exit.i:                ; preds = %for.inc.i.i.nct7802_configure_channels.exit.i_crit_edge, %if.then.i.i.nct7802_configure_channels.exit.i_crit_edge, %if.end.i.nct7802_configure_channels.exit.i_crit_edge
  %mode_mask.2.i.i = phi i8 [ 64, %if.end.i.nct7802_configure_channels.exit.i_crit_edge ], [ 64, %if.then.i.i.nct7802_configure_channels.exit.i_crit_edge ], [ %mode_mask.1.ph.i.i, %for.inc.i.i.nct7802_configure_channels.exit.i_crit_edge ]
  %mode_val.2.i.i = phi i8 [ 64, %if.end.i.nct7802_configure_channels.exit.i_crit_edge ], [ 64, %if.then.i.i.nct7802_configure_channels.exit.i_crit_edge ], [ %mode_val.1.ph.i.i, %for.inc.i.i.nct7802_configure_channels.exit.i_crit_edge ]
  %46 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %call.i, align 4
  %conv.i.i = zext i8 %mode_mask.2.i.i to i32
  %conv8.i.i = zext i8 %mode_val.2.i.i to i32
  %call.i20.i.i = call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 34, i32 noundef %conv.i.i, i32 noundef %conv8.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool2.not.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %nct7802_configure_channels.exit.i.nct7802_init_chip.exit_crit_edge

nct7802_configure_channels.exit.i.nct7802_init_chip.exit_crit_edge: ; preds = %nct7802_configure_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_init_chip.exit

if.end4.i:                                        ; preds = %nct7802_configure_channels.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %call.i, align 4
  %call.i13.i = call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 37, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %nct7802_init_chip.exit

nct7802_init_chip.exit:                           ; preds = %if.end4.i, %nct7802_configure_channels.exit.i.nct7802_init_chip.exit_crit_edge, %do.body.nct7802_init_chip.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i13.i, %if.end4.i ], [ %call.i.i, %do.body.nct7802_init_chip.exit_crit_edge ], [ %call.i20.i.i, %nct7802_configure_channels.exit.i.nct7802_init_chip.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp13 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp13, label %nct7802_init_chip.exit.cleanup_crit_edge, label %if.end15

nct7802_init_chip.exit.cleanup_crit_edge:         ; preds = %nct7802_init_chip.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %nct7802_init_chip.exit
  call void @__sanitizer_cov_trace_pc() #13
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @nct7802_groups) #11
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %50 = ptrtoint ptr %call16 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %50, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %nct7802_init_chip.exit.cleanup_crit_edge, %nct7802_init_chip.exit.thread, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %spec.select.i, %if.end15 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %nct7802_init_chip.exit.cleanup_crit_edge ], [ -22, %nct7802_init_chip.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nct7802_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 80
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 195, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 195
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #11
  %0 = and i32 %call9, -2147483408
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp eq i32 %0, 32
  br i1 %1, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 5) #11
  %2 = and i32 %call14, -2147483617
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %if.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 8) #11
  %4 = and i32 %call20, -2147483585
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %if.end26, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end26:                                         ; preds = %if.end19
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 15) #11
  %6 = and i32 %call27, -2147483585
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %if.end33, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %call34 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.end26.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end33 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ -19, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nct7802_regmap_is_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %0)
  %1 = icmp ult i32 %0, 32
  %2 = add i32 %reg, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %3 = icmp ult i32 %2, 3
  %4 = or i1 %1, %3
  ret i1 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @nct7802_temp_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !482
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 34, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %index)
  %cmp3 = icmp slt i32 %index, 10
  br i1 %cmp3, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 3
  %and.off = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.off)
  %switch = icmp ult i32 %and.off, 2
  br i1 %switch, label %land.lhs.true.if.end33_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end33_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %index)
  %cmp12 = icmp ult i32 %index, 20
  br i1 %cmp12, label %land.lhs.true13, label %if.end20

land.lhs.true13:                                  ; preds = %if.end9
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and14 = and i32 %8, 12
  %9 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and14, label %land.lhs.true13.cleanup_crit_edge [
    i32 4, label %land.lhs.true13.if.end33_crit_edge
    i32 8, label %land.lhs.true13.if.end33_crit_edge81
  ]

land.lhs.true13.if.end33_crit_edge81:             ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true13.if.end33_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end20:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %index)
  %cmp23 = icmp ult i32 %index, 30
  br i1 %cmp23, label %land.lhs.true24, label %if.end28

land.lhs.true24:                                  ; preds = %if.end20
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %and25 = and i32 %11, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and25)
  %cmp26.not = icmp eq i32 %and25, 32
  br i1 %cmp26.not, label %land.lhs.true24.if.end33_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true24.if.end33_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_const_cmp4(i32 38, i32 %index)
  %cmp31 = icmp ult i32 %index, 38
  br i1 %cmp31, label %if.end28.cleanup.sink.split_crit_edge, label %if.end28.if.end33_crit_edge

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end33:                                         ; preds = %if.end28.if.end33_crit_edge, %land.lhs.true24.if.end33_crit_edge, %land.lhs.true13.if.end33_crit_edge, %land.lhs.true13.if.end33_crit_edge81, %land.lhs.true.if.end33_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %call35 = call i32 @regmap_read(ptr noundef %13, i32 noundef 35, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end33.cleanup_crit_edge, label %if.end38

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %14 = add i32 %index, -38
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %14)
  %15 = icmp ult i32 %14, 8
  br i1 %15, label %land.lhs.true42, label %if.end45

land.lhs.true42:                                  ; preds = %if.end38
  %16 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reg, align 4
  %and43 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool.not = icmp eq i32 %and43, 0
  br i1 %tobool.not, label %land.lhs.true42.cleanup_crit_edge, label %land.lhs.true42.cleanup.sink.split_crit_edge

land.lhs.true42.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true42.cleanup_crit_edge:                ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 69, i32 %index)
  %cmp46 = icmp sgt i32 %index, 69
  br i1 %cmp46, label %land.lhs.true47, label %if.end45.cleanup.sink.split_crit_edge

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true47:                                  ; preds = %if.end45
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %and48 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %land.lhs.true47.cleanup_crit_edge, label %land.lhs.true47.cleanup.sink.split_crit_edge

land.lhs.true47.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true47.cleanup.sink.split_crit_edge, %if.end45.cleanup.sink.split_crit_edge, %land.lhs.true42.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge
  %mode52 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %20 = ptrtoint ptr %mode52 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mode52, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true42.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %land.lhs.true13.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %land.lhs.true42.cleanup_crit_edge ], [ 0, %land.lhs.true47.cleanup_crit_edge ], [ %21, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #11
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %mode, align 4, !annotation !482
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 34, ptr noundef nonnull %mode) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mode, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %mul = shl i32 %8, 1
  %shr = lshr i32 %6, %mul
  %and = and i32 %shr, 3
  %add = add nuw nsw i32 %and, 2
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_type_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #11
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %type, align 4, !annotation !482
  %call1 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %type) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp2 = icmp eq i32 %4, 2
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp3.not = icmp eq i32 %6, 4
  br i1 %cmp3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %7 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type, align 4
  %9 = add i32 %8, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %mul = shl i32 %4, 1
  %shl = shl i32 3, %mul
  %sub = add nsw i32 %8, -2
  %shl13 = shl i32 %sub, %mul
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 34, i32 noundef %shl, i32 noundef %shl13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end9 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #11
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %t1.i = alloca i32, align 4
  %t2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t1.i) #11
  %6 = ptrtoint ptr %t1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %t1.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t2.i) #11
  %7 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %t2.i, align 4
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %3 to i32
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %conv.i, ptr noundef nonnull %t1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.nct7802_read_temp.exit.thread_crit_edge, label %if.end.i

entry.nct7802_read_temp.exit.thread_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_temp.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %t1.i, align 4
  %shl.i = shl i32 %11, 8
  store i32 %shl.i, ptr %t1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.end.i.if.end_crit_edge, label %if.then2.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2.i:                                       ; preds = %if.end.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %conv4.i = zext i8 %5 to i32
  %call5.i = call i32 @regmap_read(ptr noundef %13, i32 noundef %conv4.i, ptr noundef nonnull %t2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then2.i.nct7802_read_temp.exit.thread_crit_edge, label %if.then2.i.if.end_crit_edge

if.then2.i.if.end_crit_edge:                      ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2.i.nct7802_read_temp.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_temp.exit.thread

nct7802_read_temp.exit.thread:                    ; preds = %if.then2.i.nct7802_read_temp.exit.thread_crit_edge, %entry.nct7802_read_temp.exit.thread_crit_edge
  %err.1.i.ph = phi i32 [ %call5.i, %if.then2.i.nct7802_read_temp.exit.thread_crit_edge ], [ %call.i, %entry.nct7802_read_temp.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.then2.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %14 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t2.i, align 4
  %and.i = and i32 %15, 224
  %16 = ptrtoint ptr %t1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %t1.i, align 4
  %or.i = or i32 %17, %and.i
  store i32 %or.i, ptr %t1.i, align 4
  %div.lhs.trunc.i = trunc i32 %or.i to i16
  %div21.i = sdiv i16 %div.lhs.trunc.i, 32
  %div.sext.i = sext i16 %div21.i to i32
  %mul.i = mul nsw i32 %div.sext.i, 125
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t1.i) #11
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nct7802_read_temp.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %err.1.i.ph, %nct7802_read_temp.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr1, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !482
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %3 to i32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -128000)
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15 = icmp sgt i32 %7, 0
  %cond27.in.v = select i1 %cmp15, i32 500, i32 -500
  %cond27.in = add nsw i32 %cond27.in.v, %8
  %cond27 = sdiv i32 %cond27.in, 1000
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond27, ptr %val, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %and = and i32 %cond27, 255
  %call28 = call i32 @regmap_write(ptr noundef %11, i32 noundef %conv, i32 noundef %and) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool.not = icmp eq i32 %call28, 0
  %cond32 = select i1 %tobool.not, i32 %count, i32 %call28
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond32, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !482
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr, align 1
  %conv1 = zext i8 %8 to i32
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %conv1, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %3 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = lshr i32 %10, %conv
  %12 = and i32 %11, 1
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #11
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !482
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr, align 1
  %conv = zext i8 %6 to i32
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %conv, ptr noundef nonnull %regval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %regval, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 4
  %conv2 = zext i8 %10 to i32
  %11 = lshr i32 %8, %conv2
  %12 = and i32 %11, 1
  %call5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %12)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !482
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp2 = icmp ugt i32 %4, 1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %7 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nr, align 1
  %conv = zext i8 %8 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 4
  %conv5 = zext i8 %10 to i32
  %shl = shl nuw i32 1, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %spec.select = select i1 %tobool.not, i32 0, i32 %shl
  %call.i22 = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef %conv, i32 noundef %shl, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool10.not = icmp eq i32 %call.i22, 0
  %cond14 = select i1 %tobool10.not, i32 %count, i32 %call.i22
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond14, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @nct7802_in_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !482
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %index)
  %cmp = icmp slt i32 %index, 6
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 34, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %index)
  %cmp7 = icmp ult i32 %index, 11
  br i1 %cmp7, label %land.lhs.true8, label %if.end11

land.lhs.true8:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %and = and i32 %6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp9.not = icmp eq i32 %and, 3
  br i1 %cmp9.not, label %land.lhs.true8.cleanup.sink.split_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true8.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

if.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %index)
  %cmp14 = icmp ult i32 %index, 16
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true21

land.lhs.true15:                                  ; preds = %if.end11
  %and16 = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %and16)
  %cmp17.not = icmp eq i32 %and16, 12
  br i1 %cmp17.not, label %land.lhs.true15.cleanup.sink.split_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true15.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

land.lhs.true21:                                  ; preds = %if.end11
  %and22 = and i32 %8, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and22)
  %cmp23.not = icmp eq i32 %and22, 48
  br i1 %cmp23.not, label %land.lhs.true21.cleanup.sink.split_crit_edge, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true21.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %land.lhs.true21.cleanup.sink.split_crit_edge, %land.lhs.true15.cleanup.sink.split_crit_edge, %land.lhs.true8.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %mode26 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %mode26 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mode26, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i16 [ 0, %if.end.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %land.lhs.true21.cleanup_crit_edge ], [ %10, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %conv = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv1 = zext i8 %5 to i32
  %call2 = tail call fastcc i32 @nct7802_read_voltage(ptr noundef %1, i32 noundef %conv, i32 noundef %conv1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nct7802_read_voltage(ptr noundef %data, i32 noundef %nr, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  %v1 = alloca i32, align 4
  %v2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v1) #11
  %0 = ptrtoint ptr %v1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %v1, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v2) #11
  %1 = ptrtoint ptr %v2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %v2, align 4, !annotation !482
  %access_lock = getelementptr inbounds %struct.nct7802_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr [5 x i8], ptr @REG_VOLTAGE, i32 0, i32 %nr
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call = call i32 @regmap_read(ptr noundef %3, i32 noundef %conv, ptr noundef nonnull %v1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.then.abort_crit_edge, label %if.end

if.then.abort_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 4
  %call5 = call i32 @regmap_read(ptr noundef %7, i32 noundef 15, ptr noundef nonnull %v2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.abort_crit_edge, label %if.end9

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v1, align 4
  %shl = shl i32 %9, 2
  %10 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %v2, align 4
  %shr = lshr i32 %11, 6
  %or = or i32 %shr, %shl
  br label %abort.sink.split

if.else:                                          ; preds = %entry
  %sub = add i32 %index, -1
  %arrayidx13 = getelementptr [2 x [5 x i8]], ptr @REG_VOLTAGE_LIMIT_MSB_SHIFT, i32 0, i32 %sub, i32 %nr
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %13 to i32
  %sub15 = sub nsw i32 8, %conv14
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %arrayidx19 = getelementptr [2 x [5 x i8]], ptr @REG_VOLTAGE_LIMIT_LSB, i32 0, i32 %sub, i32 %nr
  %16 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %17 to i32
  %call21 = call i32 @regmap_read(ptr noundef %15, i32 noundef %conv20, ptr noundef nonnull %v1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.else.abort_crit_edge, label %if.end25

if.else.abort_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end25:                                         ; preds = %if.else
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %arrayidx27 = getelementptr [5 x i8], ptr @REG_VOLTAGE_LIMIT_MSB, i32 0, i32 %nr
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx27, align 1
  %conv28 = zext i8 %21 to i32
  %call29 = call i32 @regmap_read(ptr noundef %19, i32 noundef %conv28, ptr noundef nonnull %v2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end25.abort_crit_edge, label %if.end33

if.end25.abort_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %v1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %v1, align 4
  %24 = ptrtoint ptr %v2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %v2, align 4
  %shl34 = shl i32 %25, %sub15
  %and = and i32 %shl34, 768
  %or35 = or i32 %and, %23
  br label %abort.sink.split

abort.sink.split:                                 ; preds = %if.end33, %if.end9
  %or35.sink = phi i32 [ %or35, %if.end33 ], [ %or, %if.end9 ]
  %arrayidx36 = getelementptr [5 x i8], ptr @nct7802_vmul, i32 0, i32 %nr
  %26 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %27 to i32
  %mul38 = mul i32 %or35.sink, %conv37
  br label %abort

abort:                                            ; preds = %abort.sink.split, %if.end25.abort_crit_edge, %if.else.abort_crit_edge, %if.end.abort_crit_edge, %if.then.abort_crit_edge
  %ret.1 = phi i32 [ %call, %if.then.abort_crit_edge ], [ %call5, %if.end.abort_crit_edge ], [ %call21, %if.else.abort_crit_edge ], [ %call29, %if.end25.abort_crit_edge ], [ %mul38, %abort.sink.split ]
  call void @mutex_unlock(ptr noundef %access_lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v2) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v1) #11
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index1, align 4
  %nr2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr2, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !482
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv3 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %sub.i = add nsw i32 %conv, -1
  %arrayidx1.i = getelementptr [2 x [5 x i8]], ptr @REG_VOLTAGE_LIMIT_MSB_SHIFT, i32 0, i32 %sub.i, i32 %conv3
  %9 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx1.i, align 1
  %arrayidx4.i = getelementptr [5 x i8], ptr @nct7802_vmul, i32 0, i32 %conv3
  %11 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx4.i, align 1
  %conv5.i = zext i8 %12 to i32
  %mul.i = mul nuw nsw i32 %conv5.i, 1023
  %13 = call i32 @llvm.umin.i32(i32 %mul.i, i32 %8) #11
  %div49.i = lshr i32 %conv5.i, 1
  %add.i = add nuw nsw i32 %13, %div49.i
  %div17.i = udiv i32 %add.i, %conv5.i
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %arrayidx20.i = getelementptr [2 x [5 x i8]], ptr @REG_VOLTAGE_LIMIT_LSB, i32 0, i32 %sub.i, i32 %conv3
  %16 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx20.i, align 1
  %conv21.i = zext i8 %17 to i32
  %and.i = and i32 %div17.i, 255
  %call.i15 = call i32 @regmap_write(ptr noundef %15, i32 noundef %conv21.i, i32 noundef %and.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %cmp22.i = icmp slt i32 %call.i15, 0
  br i1 %cmp22.i, label %if.end.nct7802_write_voltage.exit_crit_edge, label %if.end.i

if.end.nct7802_write_voltage.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_write_voltage.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %10 to i32
  %sub2.i = sub nsw i32 8, %conv.i
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %arrayidx25.i = getelementptr [5 x i8], ptr @REG_VOLTAGE_LIMIT_MSB, i32 0, i32 %conv3
  %20 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25.i, align 1
  %conv26.i = zext i8 %21 to i32
  %shr.i = lshr i32 768, %sub2.i
  %and27.i = and i32 %div17.i, 768
  %shr28.i = lshr i32 %and27.i, %sub2.i
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef %conv26.i, i32 noundef %shr.i, i32 noundef %shr28.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  br label %nct7802_write_voltage.exit

nct7802_write_voltage.exit:                       ; preds = %if.end.i, %if.end.nct7802_write_voltage.exit_crit_edge
  %err.0.i = phi i32 [ %call.i15, %if.end.nct7802_write_voltage.exit_crit_edge ], [ %call.i.i, %if.end.i ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not = icmp eq i32 %err.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %err.0.i
  br label %cleanup

cleanup:                                          ; preds = %nct7802_write_voltage.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %nct7802_write_voltage.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %v1.i = alloca i32, align 4
  %v2.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !482
  %in_alarm_lock = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %in_alarm_lock, i32 noundef 0) #11
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef 30, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.abort_crit_edge, label %if.end

entry.abort_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %in_status = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %in_status to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %in_status, align 4
  %.tr = trunc i32 %6 to i8
  %9 = shl i8 %.tr, 4
  %10 = xor i8 %9, -1
  %conv3 = and i8 %8, %10
  store i8 %conv3, ptr %in_status, align 4
  %conv5 = zext i8 %conv3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %conv6 = zext i8 %12 to i32
  %shl7 = shl i32 16, %conv6
  %and8 = and i32 %shl7, %conv5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.then9, label %if.end.if.end57_crit_edge

if.end.if.end57_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end57

if.then9:                                         ; preds = %if.end
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %13 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nr, align 1
  %conv10 = zext i8 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v1.i) #11
  %15 = ptrtoint ptr %v1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %v1.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v2.i) #11
  %16 = ptrtoint ptr %v2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %v2.i, align 4, !annotation !482
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %arrayidx.i = getelementptr [5 x i8], ptr @REG_VOLTAGE, i32 0, i32 %conv10
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %20 to i32
  %call.i = call i32 @regmap_read(ptr noundef %18, i32 noundef %conv.i, ptr noundef nonnull %v1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.then9.nct7802_read_voltage.exit.thread_crit_edge, label %if.end.i

if.then9.nct7802_read_voltage.exit.thread_crit_edge: ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_voltage.exit.thread

if.end.i:                                         ; preds = %if.then9
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call5.i = call i32 @regmap_read(ptr noundef %22, i32 noundef 15, ptr noundef nonnull %v2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end.i.nct7802_read_voltage.exit.thread_crit_edge, label %nct7802_read_voltage.exit

if.end.i.nct7802_read_voltage.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_voltage.exit.thread

nct7802_read_voltage.exit.thread:                 ; preds = %if.end.i.nct7802_read_voltage.exit.thread_crit_edge, %if.then9.nct7802_read_voltage.exit.thread_crit_edge
  %ret.1.i.ph = phi i32 [ %call5.i, %if.end.i.nct7802_read_voltage.exit.thread_crit_edge ], [ %call.i, %if.then9.nct7802_read_voltage.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v1.i) #11
  br label %abort

nct7802_read_voltage.exit:                        ; preds = %if.end.i
  %23 = ptrtoint ptr %v1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %v1.i, align 4
  %shl.i = shl i32 %24, 2
  %25 = ptrtoint ptr %v2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %v2.i, align 4
  %shr.i = lshr i32 %26, 6
  %or.i = or i32 %shr.i, %shl.i
  %arrayidx36.i = getelementptr [5 x i8], ptr @nct7802_vmul, i32 0, i32 %conv10
  %27 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = zext i8 %28 to i32
  %mul38.i = mul i32 %or.i, %conv37.i
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul38.i)
  %cmp12 = icmp slt i32 %mul38.i, 0
  br i1 %cmp12, label %nct7802_read_voltage.exit.abort_crit_edge, label %if.end15

nct7802_read_voltage.exit.abort_crit_edge:        ; preds = %nct7802_read_voltage.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end15:                                         ; preds = %nct7802_read_voltage.exit
  %29 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %nr, align 1
  %conv17 = zext i8 %30 to i32
  %call18 = call fastcc i32 @nct7802_read_voltage(ptr noundef %1, i32 noundef %conv17, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end15.abort_crit_edge, label %if.end22

if.end15.abort_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end22:                                         ; preds = %if.end15
  %31 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %nr, align 1
  %conv24 = zext i8 %32 to i32
  %call25 = call fastcc i32 @nct7802_read_voltage(ptr noundef %1, i32 noundef %conv24, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end22.abort_crit_edge, label %if.end29

if.end22.abort_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %abort

if.end29:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.i, i32 %call18)
  %cmp30 = icmp ult i32 %mul38.i, %call18
  call void @__sanitizer_cov_trace_cmp4(i32 %mul38.i, i32 %call25)
  %cmp32 = icmp ugt i32 %mul38.i, %call25
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp32
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index, align 4
  %conv36 = zext i8 %34 to i32
  %shl37 = shl nuw i32 1, %conv36
  %35 = ptrtoint ptr %in_status to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %in_status, align 4
  %37 = trunc i32 %shl37 to i8
  %38 = xor i8 %37, -1
  %conv48 = and i8 %36, %38
  %conv40 = or i8 %36, %37
  %storemerge = select i1 %or.cond, i8 %conv40, i8 %conv48
  store i8 %storemerge, ptr %in_status, align 4
  %39 = load i8, ptr %index, align 4
  %conv51 = zext i8 %39 to i32
  %shl52 = shl i32 16, %conv51
  %40 = trunc i32 %shl52 to i8
  %conv56 = or i8 %storemerge, %40
  store i8 %conv56, ptr %in_status, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.end29, %if.end.if.end57_crit_edge
  %41 = ptrtoint ptr %in_status to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %in_status, align 4
  %conv59 = zext i8 %42 to i32
  %43 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %index, align 4
  %conv61 = zext i8 %44 to i32
  %45 = lshr i32 %conv59, %conv61
  %46 = and i32 %45, 1
  %call66 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %46)
  br label %abort

abort:                                            ; preds = %if.end57, %if.end22.abort_crit_edge, %if.end15.abort_crit_edge, %nct7802_read_voltage.exit.abort_crit_edge, %nct7802_read_voltage.exit.thread, %entry.abort_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.abort_crit_edge ], [ %call66, %if.end57 ], [ %mul38.i, %nct7802_read_voltage.exit.abort_crit_edge ], [ %call18, %if.end15.abort_crit_edge ], [ %call25, %if.end22.abort_crit_edge ], [ %ret.1.i.ph, %nct7802_read_voltage.exit.thread ]
  call void @mutex_unlock(ptr noundef %in_alarm_lock) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @nct7802_fan_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !482
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 36, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %div = sdiv i32 %index, 4
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %shl = shl nuw i32 1, %div
  %and = and i32 %6, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %8, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %f1.i = alloca i32, align 4
  %f2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f1.i) #11
  %4 = ptrtoint ptr %f1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %f1.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f2.i) #11
  %5 = ptrtoint ptr %f2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %f2.i, align 4, !annotation !482
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %conv.i = and i32 %3, 255
  %call.i = call i32 @regmap_read(ptr noundef %7, i32 noundef %conv.i, ptr noundef nonnull %f1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.nct7802_read_fan.exit.thread_crit_edge, label %if.end.i

entry.nct7802_read_fan.exit.thread_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan.exit.thread

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call3.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 19, ptr noundef nonnull %f2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.nct7802_read_fan.exit.thread_crit_edge, label %if.end7.i

if.end.i.nct7802_read_fan.exit.thread_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %10 = ptrtoint ptr %f1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %f1.i, align 4
  %shl.i = shl i32 %11, 5
  %12 = ptrtoint ptr %f2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f2.i, align 4
  %shr.i = lshr i32 %13, 3
  %or.i = or i32 %shr.i, %shl.i
  %14 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %or.i, label %nct7802_read_fan.exit [
    i32 8191, label %if.end7.i.nct7802_read_fan.exit.thread11_crit_edge
    i32 0, label %if.end7.i.nct7802_read_fan.exit.thread11_crit_edge15
  ]

if.end7.i.nct7802_read_fan.exit.thread11_crit_edge15: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan.exit.thread11

if.end7.i.nct7802_read_fan.exit.thread11_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan.exit.thread11

nct7802_read_fan.exit.thread:                     ; preds = %if.end.i.nct7802_read_fan.exit.thread_crit_edge, %entry.nct7802_read_fan.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call3.i, %if.end.i.nct7802_read_fan.exit.thread_crit_edge ], [ %call.i, %entry.nct7802_read_fan.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  br label %cleanup

nct7802_read_fan.exit.thread11:                   ; preds = %if.end7.i.nct7802_read_fan.exit.thread11_crit_edge, %if.end7.i.nct7802_read_fan.exit.thread11_crit_edge15
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  br label %if.end

nct7802_read_fan.exit:                            ; preds = %if.end7.i
  %div.i = sdiv i32 %or.i, 2
  %add.i = add nsw i32 %div.i, 1350000
  %div12.i = udiv i32 %add.i, %or.i
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div12.i)
  %cmp = icmp slt i32 %div12.i, 0
  br i1 %cmp, label %nct7802_read_fan.exit.cleanup_crit_edge, label %nct7802_read_fan.exit.if.end_crit_edge

nct7802_read_fan.exit.if.end_crit_edge:           ; preds = %nct7802_read_fan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

nct7802_read_fan.exit.cleanup_crit_edge:          ; preds = %nct7802_read_fan.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nct7802_read_fan.exit.if.end_crit_edge, %nct7802_read_fan.exit.thread11
  %ret.0.i14 = phi i32 [ 0, %nct7802_read_fan.exit.thread11 ], [ %div12.i, %nct7802_read_fan.exit.if.end_crit_edge ]
  %call3 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %ret.0.i14)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nct7802_read_fan.exit.cleanup_crit_edge, %nct7802_read_fan.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %div12.i, %nct7802_read_fan.exit.cleanup_crit_edge ], [ %ret.0.i.ph, %nct7802_read_fan.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %f1.i = alloca i32, align 4
  %f2.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f1.i) #11
  %6 = ptrtoint ptr %f1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %f1.i, align 4, !annotation !482
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f2.i) #11
  %7 = ptrtoint ptr %f2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %f2.i, align 4, !annotation !482
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %3 to i32
  %call.i = call i32 @regmap_read(ptr noundef %9, i32 noundef %conv.i, ptr noundef nonnull %f1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.nct7802_read_fan_min.exit.thread_crit_edge, label %if.end.i

entry.nct7802_read_fan_min.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan_min.exit.thread

if.end.i:                                         ; preds = %entry
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %conv3.i = zext i8 %5 to i32
  %call4.i = call i32 @regmap_read(ptr noundef %11, i32 noundef %conv3.i, ptr noundef nonnull %f2.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end.i.nct7802_read_fan_min.exit.thread_crit_edge, label %if.end8.i

if.end.i.nct7802_read_fan_min.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan_min.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %f1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %f1.i, align 4
  %14 = ptrtoint ptr %f2.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f2.i, align 4
  %and.i = shl i32 %15, 5
  %shl.i = and i32 %and.i, 7936
  %or.i = or i32 %shl.i, %13
  %16 = zext i32 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %or.i, label %nct7802_read_fan_min.exit [
    i32 8191, label %if.end8.i.nct7802_read_fan_min.exit.thread12_crit_edge
    i32 0, label %if.else14.i
  ]

if.end8.i.nct7802_read_fan_min.exit.thread12_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan_min.exit.thread12

if.else14.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_read_fan_min.exit.thread12

nct7802_read_fan_min.exit.thread:                 ; preds = %if.end.i.nct7802_read_fan_min.exit.thread_crit_edge, %entry.nct7802_read_fan_min.exit.thread_crit_edge
  %ret.0.i.ph = phi i32 [ %call4.i, %if.end.i.nct7802_read_fan_min.exit.thread_crit_edge ], [ %call.i, %entry.nct7802_read_fan_min.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  br label %cleanup

nct7802_read_fan_min.exit.thread12:               ; preds = %if.else14.i, %if.end8.i.nct7802_read_fan_min.exit.thread12_crit_edge
  %ret.0.i.ph11 = phi i32 [ 0, %if.end8.i.nct7802_read_fan_min.exit.thread12_crit_edge ], [ 1350000, %if.else14.i ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  br label %if.end

nct7802_read_fan_min.exit:                        ; preds = %if.end8.i
  %div.i = sdiv i32 %or.i, 2
  %add.i = add nsw i32 %div.i, 1350000
  %div13.i = udiv i32 %add.i, %or.i
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f2.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div13.i)
  %cmp = icmp slt i32 %div13.i, 0
  br i1 %cmp, label %nct7802_read_fan_min.exit.cleanup_crit_edge, label %nct7802_read_fan_min.exit.if.end_crit_edge

nct7802_read_fan_min.exit.if.end_crit_edge:       ; preds = %nct7802_read_fan_min.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

nct7802_read_fan_min.exit.cleanup_crit_edge:      ; preds = %nct7802_read_fan_min.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nct7802_read_fan_min.exit.if.end_crit_edge, %nct7802_read_fan_min.exit.thread12
  %ret.0.i15 = phi i32 [ %ret.0.i.ph11, %nct7802_read_fan_min.exit.thread12 ], [ %div13.i, %nct7802_read_fan_min.exit.if.end_crit_edge ]
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %ret.0.i15)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nct7802_read_fan_min.exit.cleanup_crit_edge, %nct7802_read_fan_min.exit.thread
  %retval.0 = phi i32 [ %call2, %if.end ], [ %div13.i, %nct7802_read_fan_min.exit.cleanup_crit_edge ], [ %ret.0.i.ph, %nct7802_read_fan_min.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !482
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %3 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i, label %if.end.if.end.thread.i_crit_edge, label %if.end.i

if.end.if.end.thread.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.thread.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %div31.i = lshr i32 %8, 1
  %add.i = add nuw i32 %div31.i, 1350000
  %div1.i = udiv i32 %add.i, %8
  %9 = call i32 @llvm.umin.i32(i32 %div1.i, i32 8191) #11
  br label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end.i, %if.end.if.end.thread.i_crit_edge
  %10 = phi i32 [ 8191, %if.end.if.end.thread.i_crit_edge ], [ %9, %if.end.i ]
  %access_lock.i = getelementptr inbounds %struct.nct7802_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %access_lock.i, i32 noundef 0) #11
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %conv.i = zext i8 %4 to i32
  %and.i = and i32 %10, 255
  %call.i9 = call i32 @regmap_write(ptr noundef %12, i32 noundef %conv.i, i32 noundef %and.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9)
  %cmp9.i = icmp slt i32 %call.i9, 0
  br i1 %cmp9.i, label %if.end.thread.i.nct7802_write_fan_min.exit_crit_edge, label %if.end12.i

if.end.thread.i.nct7802_write_fan_min.exit_crit_edge: ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nct7802_write_fan_min.exit

if.end12.i:                                       ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %conv14.i = zext i8 %6 to i32
  %and15.i = lshr i32 %10, 5
  %shr.i = and i32 %and15.i, 248
  %call16.i = call i32 @regmap_write(ptr noundef %14, i32 noundef %conv14.i, i32 noundef %shr.i) #11
  br label %nct7802_write_fan_min.exit

nct7802_write_fan_min.exit:                       ; preds = %if.end12.i, %if.end.thread.i.nct7802_write_fan_min.exit_crit_edge
  %err.0.i = phi i32 [ %call.i9, %if.end.thread.i.nct7802_write_fan_min.exit_crit_edge ], [ %call16.i, %if.end12.i ]
  call void @mutex_unlock(ptr noundef %access_lock.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not = icmp eq i32 %err.0.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %err.0.i
  br label %cleanup

cleanup:                                          ; preds = %nct7802_write_fan_min.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %nct7802_write_fan_min.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !482
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %div = sdiv i32 %6, 2
  %add = add nsw i32 %div, 100
  %call1 = call i32 @regmap_read(ptr noundef %4, i32 noundef %add, ptr noundef nonnull %reg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %rem = srem i32 %10, 2
  %mul = shl nsw i32 %rem, 2
  %shr = lshr i32 %8, %mul
  %and = and i32 %shr, 1
  %add3 = add nuw nsw i32 %and, 1
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %add3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !482
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %5 = add i8 %4, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %5)
  %6 = icmp ult i8 %5, -2
  br i1 %6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i8 %4 to i32
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %.frozen = freeze i32 %10
  %div = sdiv i32 %.frozen, 2
  %add = add nsw i32 %div, 100
  %11 = mul i32 %div, 2
  %rem.decomposed = sub i32 %.frozen, %11
  %mul = shl nsw i32 %rem.decomposed, 2
  %shl = shl nuw i32 1, %mul
  %sub = add nsw i32 %conv, -1
  %shl14 = shl nuw i32 %sub, %mul
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef %add, i32 noundef %shl, i32 noundef %shl14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call.i
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #11
  %2 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %regval, align 4, !annotation !482
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp sgt i32 %4, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.118, i32 3)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call2 = call i32 @regmap_read(ptr noundef %7, i32 noundef 94, ptr noundef nonnull %regval) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %regval, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %12 = xor i32 %9, -1
  %13 = lshr i32 %12, %11
  %14 = and i32 %13, 1
  %call7 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.34, i32 noundef %14)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 2, %if.then ], [ %call7, %if.end5 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !482
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.120, i32 5)
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call3 = call i32 @regmap_read(ptr noundef %7, i32 noundef %4, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %call6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call6, %if.end5 ], [ 4, %if.then ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #11
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %val, align 1, !annotation !482
  %call1 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %val) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %val, align 1
  %conv = zext i8 %8 to i32
  %call2 = call i32 @regmap_write(ptr noundef %4, i32 noundef %6, i32 noundef %conv) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  %spec.select = select i1 %tobool.not, i32 %count, i32 %call2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 295)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !23, !25, !27, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !53, !54, !55, !57, !59, !60, !61, !63, !65, !67, !68, !69, !71, !73, !75, !77, !78, !80, !82, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !220, !222, !223, !225, !227, !229, !230, !232, !234, !236, !238, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !258, !260, !261, !263, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !334, !336, !337, !339, !340, !342, !344, !346, !347, !349, !350, !352, !354, !355, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !379, !381, !382, !384, !385, !387, !388, !390, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !421, !423, !424, !426, !427, !429, !430, !432, !433, !435, !436, !438, !439, !441, !442, !444, !445, !447, !448, !450, !451, !453, !454, !456, !457, !459, !460, !462, !463, !465, !466, !468, !469, !471}
!llvm.module.flags = !{!473, !474, !475, !476, !477, !478, !479, !480}
!llvm.ident = !{!481}

!0 = !{ptr @__initcall__kmod_nct7802__300_1231_nct7802_driver_init6, !1, !"__initcall__kmod_nct7802__300_1231_nct7802_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/nct7802.c", i32 1231, i32 1}
!2 = !{ptr @__exitcall_nct7802_driver_exit, !1, !"__exitcall_nct7802_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/nct7802.c", i32 1233, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/nct7802.c", i32 1234, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/nct7802.c", i32 1235, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/nct7802.c", i32 1223, i32 11}
!12 = !{ptr @nct7802_driver, !13, !"nct7802_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/nct7802.c", i32 1220, i32 26}
!14 = !{ptr @nct7802_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/nct7802.c", i32 1193, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nct7802_probe.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/nct7802.c", i32 1197, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @nct7802_probe.__key.3, !21, !"__key", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/nct7802.c", i32 1198, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nct7802_regmap_config, !24, !"nct7802_regmap_config", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/nct7802.c", i32 1051, i32 35}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/nct7802.c", i32 1066, i32 21}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/nct7802.c", i32 1069, i32 33}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/nct7802.c", i32 1070, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @nct7802_get_channel_config._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @nct7802_get_channel_config._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/nct7802.c", i32 1076, i32 3}
!39 = !{ptr @nct7802_get_channel_config._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @nct7802_get_channel_config._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/nct7802.c", i32 1098, i32 36}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/nct7802.c", i32 1099, i32 3}
!45 = !{ptr @nct7802_get_channel_config._entry.16, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @nct7802_get_channel_config._entry_ptr.18, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/nct7802.c", i32 1103, i32 24}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/nct7802.c", i32 1110, i32 23}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/nct7802.c", i32 1111, i32 3}
!53 = !{ptr @nct7802_get_channel_config._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @nct7802_get_channel_config._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/nct7802.c", i32 1120, i32 37}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/nct7802.c", i32 1122, i32 4}
!59 = !{ptr @nct7802_get_channel_config._entry.25, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @nct7802_get_channel_config._entry_ptr.27, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/nct7802.c", i32 1126, i32 23}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/nct7802.c", i32 1128, i32 28}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/nct7802.c", i32 1131, i32 4}
!67 = !{ptr @nct7802_get_channel_config._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @nct7802_get_channel_config._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @nct7802_groups, !70, !"nct7802_groups", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/nct7802.c", i32 994, i32 38}
!71 = !{ptr @nct7802_temp_group, !72, !"nct7802_temp_group", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/nct7802.c", i32 734, i32 37}
!73 = !{ptr @nct7802_temp_attrs, !74, !"nct7802_temp_attrs", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/nct7802.c", i32 638, i32 26}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/nct7802.c", i32 579, i32 8}
!77 = !{ptr @sensor_dev_attr_temp1_type, !76, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/nct7802.c", i32 94, i32 22}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/nct7802.c", i32 580, i32 8}
!82 = !{ptr @sensor_dev_attr_temp1_input, !81, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/nct7802.c", i32 461, i32 22}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/nct7802.c", i32 581, i32 8}
!87 = !{ptr @sensor_dev_attr_temp1_min, !86, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/nct7802.c", i32 582, i32 8}
!90 = !{ptr @sensor_dev_attr_temp1_max, !89, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/nct7802.c", i32 583, i32 8}
!93 = !{ptr @sensor_dev_attr_temp1_crit, !92, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/nct7802.c", i32 609, i32 8}
!96 = !{ptr @sensor_dev_attr_temp1_min_alarm, !95, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/nct7802.c", i32 615, i32 8}
!99 = !{ptr @sensor_dev_attr_temp1_max_alarm, !98, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/nct7802.c", i32 621, i32 8}
!102 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !101, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/nct7802.c", i32 627, i32 8}
!105 = !{ptr @sensor_dev_attr_temp1_fault, !104, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!106 = !{ptr @.str.44, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/nct7802.c", i32 631, i32 8}
!108 = !{ptr @sensor_dev_attr_temp1_beep, !107, !"sensor_dev_attr_temp1_beep", i1 false, i1 false}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/nct7802.c", i32 585, i32 8}
!111 = !{ptr @sensor_dev_attr_temp2_type, !110, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/nct7802.c", i32 586, i32 8}
!114 = !{ptr @sensor_dev_attr_temp2_input, !113, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/nct7802.c", i32 587, i32 8}
!117 = !{ptr @sensor_dev_attr_temp2_min, !116, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/nct7802.c", i32 588, i32 8}
!120 = !{ptr @sensor_dev_attr_temp2_max, !119, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/nct7802.c", i32 589, i32 8}
!123 = !{ptr @sensor_dev_attr_temp2_crit, !122, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!124 = !{ptr @.str.50, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/nct7802.c", i32 610, i32 8}
!126 = !{ptr @sensor_dev_attr_temp2_min_alarm, !125, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!127 = !{ptr @.str.51, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/nct7802.c", i32 616, i32 8}
!129 = !{ptr @sensor_dev_attr_temp2_max_alarm, !128, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!130 = !{ptr @.str.52, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/nct7802.c", i32 622, i32 8}
!132 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !131, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!133 = !{ptr @.str.53, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/nct7802.c", i32 628, i32 8}
!135 = !{ptr @sensor_dev_attr_temp2_fault, !134, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!136 = !{ptr @.str.54, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/nct7802.c", i32 632, i32 8}
!138 = !{ptr @sensor_dev_attr_temp2_beep, !137, !"sensor_dev_attr_temp2_beep", i1 false, i1 false}
!139 = !{ptr @.str.55, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/nct7802.c", i32 591, i32 8}
!141 = !{ptr @sensor_dev_attr_temp3_type, !140, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/nct7802.c", i32 592, i32 8}
!144 = !{ptr @sensor_dev_attr_temp3_input, !143, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!145 = !{ptr @.str.57, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/nct7802.c", i32 593, i32 8}
!147 = !{ptr @sensor_dev_attr_temp3_min, !146, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/nct7802.c", i32 594, i32 8}
!150 = !{ptr @sensor_dev_attr_temp3_max, !149, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!151 = !{ptr @.str.59, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/nct7802.c", i32 595, i32 8}
!153 = !{ptr @sensor_dev_attr_temp3_crit, !152, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!154 = !{ptr @.str.60, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/nct7802.c", i32 611, i32 8}
!156 = !{ptr @sensor_dev_attr_temp3_min_alarm, !155, !"sensor_dev_attr_temp3_min_alarm", i1 false, i1 false}
!157 = !{ptr @.str.61, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/nct7802.c", i32 617, i32 8}
!159 = !{ptr @sensor_dev_attr_temp3_max_alarm, !158, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!160 = !{ptr @.str.62, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/nct7802.c", i32 623, i32 8}
!162 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !161, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!163 = !{ptr @.str.63, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/nct7802.c", i32 629, i32 8}
!165 = !{ptr @sensor_dev_attr_temp3_fault, !164, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/nct7802.c", i32 633, i32 8}
!168 = !{ptr @sensor_dev_attr_temp3_beep, !167, !"sensor_dev_attr_temp3_beep", i1 false, i1 false}
!169 = !{ptr @.str.65, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/nct7802.c", i32 597, i32 8}
!171 = !{ptr @sensor_dev_attr_temp4_input, !170, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!172 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/nct7802.c", i32 598, i32 8}
!174 = !{ptr @sensor_dev_attr_temp4_min, !173, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!175 = !{ptr @.str.67, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/nct7802.c", i32 599, i32 8}
!177 = !{ptr @sensor_dev_attr_temp4_max, !176, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!178 = !{ptr @.str.68, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/nct7802.c", i32 600, i32 8}
!180 = !{ptr @sensor_dev_attr_temp4_crit, !179, !"sensor_dev_attr_temp4_crit", i1 false, i1 false}
!181 = !{ptr @.str.69, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/nct7802.c", i32 612, i32 8}
!183 = !{ptr @sensor_dev_attr_temp4_min_alarm, !182, !"sensor_dev_attr_temp4_min_alarm", i1 false, i1 false}
!184 = !{ptr @.str.70, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/nct7802.c", i32 618, i32 8}
!186 = !{ptr @sensor_dev_attr_temp4_max_alarm, !185, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/nct7802.c", i32 624, i32 8}
!189 = !{ptr @sensor_dev_attr_temp4_crit_alarm, !188, !"sensor_dev_attr_temp4_crit_alarm", i1 false, i1 false}
!190 = !{ptr @.str.72, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/nct7802.c", i32 634, i32 8}
!192 = !{ptr @sensor_dev_attr_temp4_beep, !191, !"sensor_dev_attr_temp4_beep", i1 false, i1 false}
!193 = !{ptr @.str.73, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/nct7802.c", i32 602, i32 8}
!195 = !{ptr @sensor_dev_attr_temp5_input, !194, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!196 = !{ptr @.str.74, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/nct7802.c", i32 603, i32 8}
!198 = !{ptr @sensor_dev_attr_temp5_min, !197, !"sensor_dev_attr_temp5_min", i1 false, i1 false}
!199 = !{ptr @.str.75, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/nct7802.c", i32 604, i32 8}
!201 = !{ptr @sensor_dev_attr_temp5_max, !200, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!202 = !{ptr @.str.76, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/nct7802.c", i32 605, i32 8}
!204 = !{ptr @sensor_dev_attr_temp5_crit, !203, !"sensor_dev_attr_temp5_crit", i1 false, i1 false}
!205 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/nct7802.c", i32 613, i32 8}
!207 = !{ptr @sensor_dev_attr_temp5_min_alarm, !206, !"sensor_dev_attr_temp5_min_alarm", i1 false, i1 false}
!208 = !{ptr @.str.78, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/nct7802.c", i32 619, i32 8}
!210 = !{ptr @sensor_dev_attr_temp5_max_alarm, !209, !"sensor_dev_attr_temp5_max_alarm", i1 false, i1 false}
!211 = !{ptr @.str.79, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/nct7802.c", i32 625, i32 8}
!213 = !{ptr @sensor_dev_attr_temp5_crit_alarm, !212, !"sensor_dev_attr_temp5_crit_alarm", i1 false, i1 false}
!214 = !{ptr @.str.80, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/nct7802.c", i32 635, i32 8}
!216 = !{ptr @sensor_dev_attr_temp5_beep, !215, !"sensor_dev_attr_temp5_beep", i1 false, i1 false}
!217 = !{ptr @.str.81, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/nct7802.c", i32 607, i32 8}
!219 = !{ptr @sensor_dev_attr_temp6_input, !218, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!220 = !{ptr @.str.82, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/nct7802.c", i32 636, i32 8}
!222 = !{ptr @sensor_dev_attr_temp6_beep, !221, !"sensor_dev_attr_temp6_beep", i1 false, i1 false}
!223 = !{ptr @nct7802_in_group, !224, !"nct7802_in_group", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/nct7802.c", i32 820, i32 37}
!225 = !{ptr @nct7802_in_attrs, !226, !"nct7802_in_attrs", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/nct7802.c", i32 765, i32 26}
!227 = !{ptr @.str.83, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/nct7802.c", i32 739, i32 8}
!229 = !{ptr @sensor_dev_attr_in0_input, !228, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!230 = !{ptr @REG_VOLTAGE, !231, !"REG_VOLTAGE", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/nct7802.c", i32 23, i32 17}
!232 = !{ptr @nct7802_vmul, !233, !"nct7802_vmul", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/nct7802.c", i32 301, i32 11}
!234 = !{ptr @REG_VOLTAGE_LIMIT_MSB_SHIFT, !235, !"REG_VOLTAGE_LIMIT_MSB_SHIFT", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/nct7802.c", i32 32, i32 17}
!236 = !{ptr @REG_VOLTAGE_LIMIT_LSB, !237, !"REG_VOLTAGE_LIMIT_LSB", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/nct7802.c", i32 25, i32 17}
!238 = !{ptr @REG_VOLTAGE_LIMIT_MSB, !239, !"REG_VOLTAGE_LIMIT_MSB", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/nct7802.c", i32 30, i32 17}
!240 = !{ptr @.str.84, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/nct7802.c", i32 740, i32 8}
!242 = !{ptr @sensor_dev_attr_in0_min, !241, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!243 = !{ptr @.str.85, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/nct7802.c", i32 741, i32 8}
!245 = !{ptr @sensor_dev_attr_in0_max, !244, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!246 = !{ptr @.str.86, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/nct7802.c", i32 742, i32 8}
!248 = !{ptr @sensor_dev_attr_in0_alarm, !247, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!249 = !{ptr @.str.87, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/nct7802.c", i32 743, i32 8}
!251 = !{ptr @sensor_dev_attr_in0_beep, !250, !"sensor_dev_attr_in0_beep", i1 false, i1 false}
!252 = !{ptr @.str.88, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/nct7802.c", i32 745, i32 8}
!254 = !{ptr @sensor_dev_attr_in1_input, !253, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!255 = !{ptr @.str.89, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/nct7802.c", i32 747, i32 8}
!257 = !{ptr @sensor_dev_attr_in2_input, !256, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!258 = !{ptr @.str.90, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/nct7802.c", i32 748, i32 8}
!260 = !{ptr @sensor_dev_attr_in2_min, !259, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!261 = !{ptr @.str.91, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/nct7802.c", i32 749, i32 8}
!263 = !{ptr @sensor_dev_attr_in2_max, !262, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!264 = !{ptr @.str.92, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/nct7802.c", i32 750, i32 8}
!266 = !{ptr @sensor_dev_attr_in2_alarm, !265, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!267 = !{ptr @.str.93, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/nct7802.c", i32 751, i32 8}
!269 = !{ptr @sensor_dev_attr_in2_beep, !268, !"sensor_dev_attr_in2_beep", i1 false, i1 false}
!270 = !{ptr @.str.94, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/nct7802.c", i32 753, i32 8}
!272 = !{ptr @sensor_dev_attr_in3_input, !271, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!273 = !{ptr @.str.95, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/nct7802.c", i32 754, i32 8}
!275 = !{ptr @sensor_dev_attr_in3_min, !274, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!276 = !{ptr @.str.96, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/nct7802.c", i32 755, i32 8}
!278 = !{ptr @sensor_dev_attr_in3_max, !277, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!279 = !{ptr @.str.97, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/nct7802.c", i32 756, i32 8}
!281 = !{ptr @sensor_dev_attr_in3_alarm, !280, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!282 = !{ptr @.str.98, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/nct7802.c", i32 757, i32 8}
!284 = !{ptr @sensor_dev_attr_in3_beep, !283, !"sensor_dev_attr_in3_beep", i1 false, i1 false}
!285 = !{ptr @.str.99, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/nct7802.c", i32 759, i32 8}
!287 = !{ptr @sensor_dev_attr_in4_input, !286, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!288 = !{ptr @.str.100, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/nct7802.c", i32 760, i32 8}
!290 = !{ptr @sensor_dev_attr_in4_min, !289, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!291 = !{ptr @.str.101, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/nct7802.c", i32 761, i32 8}
!293 = !{ptr @sensor_dev_attr_in4_max, !292, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!294 = !{ptr @.str.102, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/nct7802.c", i32 762, i32 8}
!296 = !{ptr @sensor_dev_attr_in4_alarm, !295, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!297 = !{ptr @.str.103, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/nct7802.c", i32 763, i32 8}
!299 = !{ptr @sensor_dev_attr_in4_beep, !298, !"sensor_dev_attr_in4_beep", i1 false, i1 false}
!300 = !{ptr @nct7802_fan_group, !301, !"nct7802_fan_group", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/nct7802.c", i32 886, i32 37}
!302 = !{ptr @nct7802_fan_attrs, !303, !"nct7802_fan_attrs", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/nct7802.c", i32 853, i32 26}
!304 = !{ptr @.str.104, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/nct7802.c", i32 825, i32 8}
!306 = !{ptr @sensor_dev_attr_fan1_input, !305, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!307 = !{ptr @.str.105, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hwmon/nct7802.c", i32 826, i32 8}
!309 = !{ptr @sensor_dev_attr_fan1_min, !308, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!310 = !{ptr @.str.106, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/nct7802.c", i32 827, i32 8}
!312 = !{ptr @sensor_dev_attr_fan1_alarm, !311, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!313 = !{ptr @.str.107, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/nct7802.c", i32 828, i32 8}
!315 = !{ptr @sensor_dev_attr_fan1_beep, !314, !"sensor_dev_attr_fan1_beep", i1 false, i1 false}
!316 = !{ptr @.str.108, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/nct7802.c", i32 829, i32 8}
!318 = !{ptr @sensor_dev_attr_fan2_input, !317, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!319 = !{ptr @.str.109, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/hwmon/nct7802.c", i32 830, i32 8}
!321 = !{ptr @sensor_dev_attr_fan2_min, !320, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!322 = !{ptr @.str.110, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/nct7802.c", i32 831, i32 8}
!324 = !{ptr @sensor_dev_attr_fan2_alarm, !323, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!325 = !{ptr @.str.111, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/hwmon/nct7802.c", i32 832, i32 8}
!327 = !{ptr @sensor_dev_attr_fan2_beep, !326, !"sensor_dev_attr_fan2_beep", i1 false, i1 false}
!328 = !{ptr @.str.112, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/nct7802.c", i32 833, i32 8}
!330 = !{ptr @sensor_dev_attr_fan3_input, !329, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!331 = !{ptr @.str.113, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/nct7802.c", i32 834, i32 8}
!333 = !{ptr @sensor_dev_attr_fan3_min, !332, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!334 = !{ptr @.str.114, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/nct7802.c", i32 835, i32 8}
!336 = !{ptr @sensor_dev_attr_fan3_alarm, !335, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!337 = !{ptr @.str.115, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/nct7802.c", i32 836, i32 8}
!339 = !{ptr @sensor_dev_attr_fan3_beep, !338, !"sensor_dev_attr_fan3_beep", i1 false, i1 false}
!340 = !{ptr @nct7802_pwm_group, !341, !"nct7802_pwm_group", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/nct7802.c", i32 904, i32 37}
!342 = !{ptr @nct7802_pwm_attrs, !343, !"nct7802_pwm_attrs", i1 false, i1 false}
!343 = !{!"../drivers/hwmon/nct7802.c", i32 891, i32 26}
!344 = !{ptr @.str.116, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/nct7802.c", i32 849, i32 8}
!346 = !{ptr @sensor_dev_attr_pwm1_enable, !345, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!347 = !{ptr @.str.117, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/nct7802.c", i32 839, i32 8}
!349 = !{ptr @sensor_dev_attr_pwm1_mode, !348, !"sensor_dev_attr_pwm1_mode", i1 false, i1 false}
!350 = !{ptr @.str.118, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/nct7802.c", i32 127, i32 23}
!352 = !{ptr @.str.119, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/nct7802.c", i32 844, i32 8}
!354 = !{ptr @sensor_dev_attr_pwm1, !353, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!355 = !{ptr @.str.120, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/nct7802.c", i32 145, i32 23}
!357 = !{ptr @.str.121, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/hwmon/nct7802.c", i32 850, i32 8}
!359 = !{ptr @sensor_dev_attr_pwm2_enable, !358, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!360 = !{ptr @.str.122, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/hwmon/nct7802.c", i32 840, i32 8}
!362 = !{ptr @sensor_dev_attr_pwm2_mode, !361, !"sensor_dev_attr_pwm2_mode", i1 false, i1 false}
!363 = !{ptr @.str.123, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/nct7802.c", i32 845, i32 8}
!365 = !{ptr @sensor_dev_attr_pwm2, !364, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!366 = !{ptr @.str.124, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/nct7802.c", i32 851, i32 8}
!368 = !{ptr @sensor_dev_attr_pwm3_enable, !367, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!369 = !{ptr @.str.125, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/hwmon/nct7802.c", i32 841, i32 8}
!371 = !{ptr @sensor_dev_attr_pwm3_mode, !370, !"sensor_dev_attr_pwm3_mode", i1 false, i1 false}
!372 = !{ptr @.str.126, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/hwmon/nct7802.c", i32 846, i32 8}
!374 = !{ptr @sensor_dev_attr_pwm3, !373, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!375 = !{ptr @nct7802_auto_point_group, !376, !"nct7802_auto_point_group", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/nct7802.c", i32 990, i32 37}
!377 = !{ptr @nct7802_auto_point_attrs, !378, !"nct7802_auto_point_attrs", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/nct7802.c", i32 950, i32 26}
!379 = !{ptr @.str.127, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/nct7802.c", i32 909, i32 8}
!381 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !380, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!382 = !{ptr @.str.128, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/nct7802.c", i32 910, i32 8}
!384 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !383, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!385 = !{ptr @.str.129, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/nct7802.c", i32 911, i32 8}
!387 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !386, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!388 = !{ptr @.str.130, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/hwmon/nct7802.c", i32 912, i32 8}
!390 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp, !389, !"sensor_dev_attr_pwm1_auto_point4_temp", i1 false, i1 false}
!391 = !{ptr @.str.131, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/nct7802.c", i32 913, i32 8}
!393 = !{ptr @sensor_dev_attr_pwm1_auto_point5_temp, !392, !"sensor_dev_attr_pwm1_auto_point5_temp", i1 false, i1 false}
!394 = !{ptr @.str.132, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/nct7802.c", i32 916, i32 8}
!396 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !395, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!397 = !{ptr @.str.133, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/nct7802.c", i32 917, i32 8}
!399 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !398, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!400 = !{ptr @.str.134, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/nct7802.c", i32 918, i32 8}
!402 = !{ptr @sensor_dev_attr_pwm1_auto_point3_pwm, !401, !"sensor_dev_attr_pwm1_auto_point3_pwm", i1 false, i1 false}
!403 = !{ptr @.str.135, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/nct7802.c", i32 919, i32 8}
!405 = !{ptr @sensor_dev_attr_pwm1_auto_point4_pwm, !404, !"sensor_dev_attr_pwm1_auto_point4_pwm", i1 false, i1 false}
!406 = !{ptr @.str.136, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/nct7802.c", i32 920, i32 8}
!408 = !{ptr @sensor_dev_attr_pwm1_auto_point5_pwm, !407, !"sensor_dev_attr_pwm1_auto_point5_pwm", i1 false, i1 false}
!409 = !{ptr @.str.137, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/nct7802.c", i32 923, i32 8}
!411 = !{ptr @sensor_dev_attr_pwm2_auto_point1_temp, !410, !"sensor_dev_attr_pwm2_auto_point1_temp", i1 false, i1 false}
!412 = !{ptr @.str.138, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/hwmon/nct7802.c", i32 924, i32 8}
!414 = !{ptr @sensor_dev_attr_pwm2_auto_point2_temp, !413, !"sensor_dev_attr_pwm2_auto_point2_temp", i1 false, i1 false}
!415 = !{ptr @.str.139, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/hwmon/nct7802.c", i32 925, i32 8}
!417 = !{ptr @sensor_dev_attr_pwm2_auto_point3_temp, !416, !"sensor_dev_attr_pwm2_auto_point3_temp", i1 false, i1 false}
!418 = !{ptr @.str.140, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/nct7802.c", i32 926, i32 8}
!420 = !{ptr @sensor_dev_attr_pwm2_auto_point4_temp, !419, !"sensor_dev_attr_pwm2_auto_point4_temp", i1 false, i1 false}
!421 = !{ptr @.str.141, !422, !"<string literal>", i1 false, i1 false}
!422 = !{!"../drivers/hwmon/nct7802.c", i32 927, i32 8}
!423 = !{ptr @sensor_dev_attr_pwm2_auto_point5_temp, !422, !"sensor_dev_attr_pwm2_auto_point5_temp", i1 false, i1 false}
!424 = !{ptr @.str.142, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/hwmon/nct7802.c", i32 930, i32 8}
!426 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !425, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!427 = !{ptr @.str.143, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/hwmon/nct7802.c", i32 931, i32 8}
!429 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !428, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!430 = !{ptr @.str.144, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/nct7802.c", i32 932, i32 8}
!432 = !{ptr @sensor_dev_attr_pwm2_auto_point3_pwm, !431, !"sensor_dev_attr_pwm2_auto_point3_pwm", i1 false, i1 false}
!433 = !{ptr @.str.145, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../drivers/hwmon/nct7802.c", i32 933, i32 8}
!435 = !{ptr @sensor_dev_attr_pwm2_auto_point4_pwm, !434, !"sensor_dev_attr_pwm2_auto_point4_pwm", i1 false, i1 false}
!436 = !{ptr @.str.146, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/hwmon/nct7802.c", i32 934, i32 8}
!438 = !{ptr @sensor_dev_attr_pwm2_auto_point5_pwm, !437, !"sensor_dev_attr_pwm2_auto_point5_pwm", i1 false, i1 false}
!439 = !{ptr @.str.147, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../drivers/hwmon/nct7802.c", i32 937, i32 8}
!441 = !{ptr @sensor_dev_attr_pwm3_auto_point1_temp, !440, !"sensor_dev_attr_pwm3_auto_point1_temp", i1 false, i1 false}
!442 = !{ptr @.str.148, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/hwmon/nct7802.c", i32 938, i32 8}
!444 = !{ptr @sensor_dev_attr_pwm3_auto_point2_temp, !443, !"sensor_dev_attr_pwm3_auto_point2_temp", i1 false, i1 false}
!445 = !{ptr @.str.149, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/hwmon/nct7802.c", i32 939, i32 8}
!447 = !{ptr @sensor_dev_attr_pwm3_auto_point3_temp, !446, !"sensor_dev_attr_pwm3_auto_point3_temp", i1 false, i1 false}
!448 = !{ptr @.str.150, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/hwmon/nct7802.c", i32 940, i32 8}
!450 = !{ptr @sensor_dev_attr_pwm3_auto_point4_temp, !449, !"sensor_dev_attr_pwm3_auto_point4_temp", i1 false, i1 false}
!451 = !{ptr @.str.151, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/hwmon/nct7802.c", i32 941, i32 8}
!453 = !{ptr @sensor_dev_attr_pwm3_auto_point5_temp, !452, !"sensor_dev_attr_pwm3_auto_point5_temp", i1 false, i1 false}
!454 = !{ptr @.str.152, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/hwmon/nct7802.c", i32 944, i32 8}
!456 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !455, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!457 = !{ptr @.str.153, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/hwmon/nct7802.c", i32 945, i32 8}
!459 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !458, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!460 = !{ptr @.str.154, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/hwmon/nct7802.c", i32 946, i32 8}
!462 = !{ptr @sensor_dev_attr_pwm3_auto_point3_pwm, !461, !"sensor_dev_attr_pwm3_auto_point3_pwm", i1 false, i1 false}
!463 = !{ptr @.str.155, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/hwmon/nct7802.c", i32 947, i32 8}
!465 = !{ptr @sensor_dev_attr_pwm3_auto_point4_pwm, !464, !"sensor_dev_attr_pwm3_auto_point4_pwm", i1 false, i1 false}
!466 = !{ptr @.str.156, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/hwmon/nct7802.c", i32 948, i32 8}
!468 = !{ptr @sensor_dev_attr_pwm3_auto_point5_pwm, !467, !"sensor_dev_attr_pwm3_auto_point5_pwm", i1 false, i1 false}
!469 = !{ptr @nct7802_idtable, !470, !"nct7802_idtable", i1 false, i1 false}
!470 = !{!"../drivers/hwmon/nct7802.c", i32 1214, i32 35}
!471 = !{ptr @nct7802_address_list, !472, !"nct7802_address_list", i1 false, i1 false}
!472 = !{!"../drivers/hwmon/nct7802.c", i32 1210, i32 29}
!473 = !{i32 1, !"wchar_size", i32 2}
!474 = !{i32 1, !"min_enum_size", i32 4}
!475 = !{i32 8, !"branch-target-enforcement", i32 0}
!476 = !{i32 8, !"sign-return-address", i32 0}
!477 = !{i32 8, !"sign-return-address-all", i32 0}
!478 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!479 = !{i32 7, !"uwtable", i32 1}
!480 = !{i32 7, !"frame-pointer", i32 2}
!481 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!482 = !{!"auto-init"}
