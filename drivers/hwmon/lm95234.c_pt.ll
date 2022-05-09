; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm95234.c_pt.bc'
source_filename = "../drivers/hwmon/lm95234.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.lm95234_data = type { ptr, [3 x ptr], %struct.mutex, i32, i32, i8, [5 x i32], i32, [5 x i8], [2 x i8], [4 x i8], i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm95234__304_729_lm95234_driver_init6 = internal global ptr @lm95234_driver_init, section ".initcall6.init", align 4
@lm95234_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm95234_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm95234_id, ptr @lm95234_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm95234_driver_exit = internal global ptr @lm95234_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author305 = internal constant [50 x i8] c"lm95234.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description306 = internal constant [50 x i8] c"lm95234.description=LM95233/LM95234 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file307 = internal constant [35 x i8] c"lm95234.file=drivers/hwmon/lm95234\00", section ".modinfo", align 1
@__UNIQUE_ID_license308 = internal constant [20 x i8] c"lm95234.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95234\00", [24 x i8] zeroinitializer }, align 32
@lm95234_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm95233\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm95234\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 24, i16 42, i16 43, i16 77, i16 78, i16 -2], [20 x i8] zeroinitializer }, align 32
@lm95234_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm95234_common_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm95234_common_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm95234_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm95234_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm95234_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 673, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Fixing remote diode type misconfiguration (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"lm95234_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/lm95234.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm95234_init_client._entry_ptr = internal global ptr @lm95234_init_client._entry, section ".printk_index", align 4
@lm95234_common_attrs = internal global { [26 x ptr], [56 x i8] } { [26 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_offset, ptr @dev_attr_update_interval, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr @type_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr @type_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_show, ptr @tcrit1_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit2_show, ptr @tcrit2_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit2_show, ptr @tcrit2_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_hyst_show, ptr @tcrit1_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit2_hyst_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit2_hyst_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 256 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 131072 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 262144 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_show, ptr @tcrit1_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_show, ptr @tcrit1_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_hyst_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_hyst_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 512 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1024 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_update_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @update_interval_show, ptr @update_interval_store }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@update_intervals = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 143, i16 364, i16 1000, i16 2500], [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%lu\0A\00", [27 x i8] zeroinitializer }, align 32
@lm95234_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp4_type, ptr @sensor_dev_attr_temp5_type, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp4_max_hyst, ptr @sensor_dev_attr_temp5_max_hyst, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp4_offset, ptr @sensor_dev_attr_temp5_offset, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 48 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 192 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr @type_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @type_show, ptr @type_store }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_show, ptr @tcrit1_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_show, ptr @tcrit1_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_hyst_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcrit1_hyst_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2048 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4096 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_type\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_type\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp4_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp5_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp4_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp5_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm95233\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 121, i64 137]
@__sancov_gen_cov_switch_values.53 = internal global [5 x i64] [i64 3, i64 16, i64 24, i64 42, i64 43]
@__sancov_gen_cov_switch_values.54 = internal global [5 x i64] [i64 3, i64 16, i64 24, i64 77, i64 78]
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"lm95234_driver\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 718, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 721, i32 11 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"lm95234_id\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 711, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 26, i32 29 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 694, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [21 x i8] c"lm95234_common_group\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 565, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"lm95234_group\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 587, i32 37 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 671, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"lm95234_common_attrs\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 536, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.145 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_crit_hyst\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_crit_hyst\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [25 x i8] c"dev_attr_update_interval\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 486, i32 8 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 215, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"update_intervals\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 109, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 487, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 488, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 492, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 229, i32 22 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 493, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 497, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 242, i32 49 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 242, i32 57 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 498, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 502, i32 8 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 503, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 504, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 508, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 374, i32 22 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 509, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 510, i32 8 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 514, i32 8 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 515, i32 8 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 516, i32 8 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 520, i32 8 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 521, i32 8 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 523, i32 8 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 524, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 526, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 527, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 529, i32 8 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 530, i32 8 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 534, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 453, i32 22 }
@___asan_gen_.271 = private unnamed_addr constant [14 x i8] c"lm95234_attrs\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 569, i32 26 }
@___asan_gen_.274 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_fault\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_type\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_type\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp4_max_hyst\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp5_max_hyst\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_max_alarm\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp4_offset\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp5_offset\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 489, i32 8 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 490, i32 8 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 494, i32 8 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 495, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 499, i32 8 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 500, i32 8 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 505, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 506, i32 8 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 511, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 512, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 517, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 518, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 531, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 532, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [27 x i8] c"../drivers/hwmon/lm95234.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 614, i32 10 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description306, ptr @__UNIQUE_ID_file307, ptr @__UNIQUE_ID_license308, ptr @__exitcall_lm95234_driver_exit, ptr @__initcall__kmod_lm95234__304_729_lm95234_driver_init6, ptr @lm95234_driver_exit, ptr @lm95234_init_client._entry, ptr @lm95234_init_client._entry_ptr, ptr @lm95234_driver, ptr @.str, ptr @lm95234_id, ptr @normal_i2c, ptr @lm95234_probe.__key, ptr @.str.1, ptr @lm95234_common_group, ptr @lm95234_group, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @lm95234_common_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_type, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_offset, ptr @dev_attr_update_interval, ptr @.str.7, ptr @.str.8, ptr @update_intervals, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @lm95234_attrs, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp4_type, ptr @sensor_dev_attr_temp5_type, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp4_max_hyst, ptr @sensor_dev_attr_temp5_max_hyst, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp4_offset, ptr @sensor_dev_attr_temp5_offset, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_common_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_common_attrs to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @update_intervals to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm95234_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95234_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm95234_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm95234_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @lm95234_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95234_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm95234_probe.__key) #9
  %call.i31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %cmp.i = icmp slt i32 %call.i31, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %call.i31, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then1.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %1 = trunc i32 %call.i31 to i8
  %conv.i = and i8 %1, -65
  %call3.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext %conv.i) #9
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then1.i, %if.end.i.if.end4.i_crit_edge
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.cleanup_crit_edge, label %if.end9.i

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end4.i
  %call10.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.end9.i.cleanup_crit_edge, label %if.end14.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14.i:                                       ; preds = %if.end9.i
  %and15.i = and i32 %call10.i, %call5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.if.end5_crit_edge, label %do.end.i

if.end14.i.if.end5_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

do.end.i:                                         ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call5.i) #12
  %neg.i = xor i32 %call5.i, -1
  %and18.i = and i32 %call10.i, %neg.i
  %conv19.i = trunc i32 %and18.i to i8
  %call20.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 48, i8 noundef zeroext %conv19.i) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end.i, %if.end14.i.if.end5_crit_edge
  %groups = getelementptr inbounds %struct.lm95234_data, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @lm95234_common_group, ptr %groups, align 4
  %call6 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm95234_id, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call6, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then8, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx10 = getelementptr %struct.lm95234_data, ptr %call.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @lm95234_group, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %if.end5.if.end11_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call14 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #9
  %cmp.i.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call14 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end9.i.cleanup_crit_edge, %if.end4.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end11 ], [ -12, %entry.cleanup_crit_edge ], [ %call10.i, %if.end9.i.cleanup_crit_edge ], [ %call5.i, %if.end4.i.cleanup_crit_edge ], [ %call.i31, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm95234_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 1
  br i1 %cmp.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #9
  %8 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end5.cleanup_crit_edge [
    i32 137, label %sw.bb
    i32 121, label %sw.bb16
  ]

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end5
  %9 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %3, label %sw.bb.cleanup_crit_edge [
    i16 24, label %sw.bb.sw.epilog_crit_edge
    i16 42, label %sw.bb.sw.epilog_crit_edge80
    i16 43, label %sw.bb.sw.epilog_crit_edge81
  ]

sw.bb.sw.epilog_crit_edge81:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge80:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb16:                                          ; preds = %if.end5
  %10 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %3, label %sw.bb16.cleanup_crit_edge [
    i16 24, label %sw.bb16.sw.epilog_crit_edge
    i16 77, label %sw.bb16.sw.epilog_crit_edge82
    i16 78, label %sw.bb16.sw.epilog_crit_edge83
  ]

sw.bb16.sw.epilog_crit_edge83:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16.sw.epilog_crit_edge82:                    ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16.sw.epilog_crit_edge:                      ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb16.sw.epilog_crit_edge, %sw.bb16.sw.epilog_crit_edge82, %sw.bb16.sw.epilog_crit_edge83, %sw.bb.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge80, %sw.bb.sw.epilog_crit_edge81
  %config_mask.0 = phi i32 [ 191, %sw.bb.sw.epilog_crit_edge ], [ 191, %sw.bb.sw.epilog_crit_edge80 ], [ 191, %sw.bb.sw.epilog_crit_edge81 ], [ 188, %sw.bb16.sw.epilog_crit_edge ], [ 188, %sw.bb16.sw.epilog_crit_edge82 ], [ 188, %sw.bb16.sw.epilog_crit_edge83 ]
  %model_mask.0 = phi i32 [ 249, %sw.bb.sw.epilog_crit_edge ], [ 249, %sw.bb.sw.epilog_crit_edge80 ], [ 249, %sw.bb.sw.epilog_crit_edge81 ], [ 225, %sw.bb16.sw.epilog_crit_edge ], [ 225, %sw.bb16.sw.epilog_crit_edge82 ], [ 225, %sw.bb16.sw.epilog_crit_edge83 ]
  %name.0 = phi ptr [ @.str.52, %sw.bb.sw.epilog_crit_edge ], [ @.str.52, %sw.bb.sw.epilog_crit_edge80 ], [ @.str.52, %sw.bb.sw.epilog_crit_edge81 ], [ @.str, %sw.bb16.sw.epilog_crit_edge ], [ @.str, %sw.bb16.sw.epilog_crit_edge82 ], [ @.str, %sw.bb16.sw.epilog_crit_edge83 ]
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #9
  %and = and i32 %call27, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  br i1 %tobool28.not, label %if.end30, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %sw.epilog
  %call31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #9
  %and33 = and i32 %call31, %config_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %call37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #9
  %and38 = and i32 %call37, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end41:                                         ; preds = %if.end36
  %call42 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 48) #9
  %and44 = and i32 %call42, %model_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end47:                                         ; preds = %if.end41
  %call48 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 56) #9
  %and50 = and i32 %call48, %model_mask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.cleanup_crit_edge

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call54 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end47.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.end36.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end53 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %sw.bb.cleanup_crit_edge ], [ -19, %sw.bb16.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -19, %sw.epilog.cleanup_crit_edge ], [ -19, %if.end30.cleanup_crit_edge ], [ -19, %if.end36.cleanup_crit_edge ], [ -19, %if.end41.cleanup_crit_edge ], [ -19, %if.end47.cleanup_crit_edge ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 6, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %5, 125
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp, i32 16, i32 -16
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 32
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lm95234_update_device(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %interval = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 4
  %4 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interval, align 4
  %add = add i32 %5, %3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 5
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %valid2 = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 5
  %9 = ptrtoint ptr %valid2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid2, align 4, !range !179
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool3.not = icmp eq i8 %10, 0
  br i1 %tobool3.not, label %if.then4, label %if.then.if.end7_crit_edge

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then4:                                         ; preds = %if.then
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.abort_crit_edge, label %if.else.i.i

if.then4.abort_crit_edge:                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.else.i.i:                                      ; preds = %if.then4
  %and.i = and i32 %call.i, 3
  %arrayidx.i = getelementptr [4 x i16], ptr @update_intervals, i32 0, i32 %and.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %12 to i32
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv.i) #9
  %13 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2.i.i, ptr %interval, align 4
  %call5.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.else.i.i.abort_crit_edge, label %if.end9.i

if.else.i.i.abort_crit_edge:                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end9.i:                                        ; preds = %if.else.i.i
  %conv10.i = trunc i32 %call5.i to i8
  %arrayidx11.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 8, i32 0
  %14 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %call5.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %cmp6.1.i = icmp slt i32 %call5.1.i, 0
  br i1 %cmp6.1.i, label %if.end9.i.abort_crit_edge, label %if.end9.1.i

if.end9.i.abort_crit_edge:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end9.1.i:                                      ; preds = %if.end9.i
  %conv10.1.i = trunc i32 %call5.1.i to i8
  %arrayidx11.1.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv10.1.i, ptr %arrayidx11.1.i, align 1
  %call5.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.2.i)
  %cmp6.2.i = icmp slt i32 %call5.2.i, 0
  br i1 %cmp6.2.i, label %if.end9.1.i.abort_crit_edge, label %if.end9.2.i

if.end9.1.i.abort_crit_edge:                      ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end9.2.i:                                      ; preds = %if.end9.1.i
  %conv10.2.i = trunc i32 %call5.2.i to i8
  %arrayidx11.2.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv10.2.i, ptr %arrayidx11.2.i, align 1
  %call5.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.3.i)
  %cmp6.3.i = icmp slt i32 %call5.3.i, 0
  br i1 %cmp6.3.i, label %if.end9.2.i.abort_crit_edge, label %if.end9.3.i

if.end9.2.i.abort_crit_edge:                      ; preds = %if.end9.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end9.3.i:                                      ; preds = %if.end9.2.i
  %conv10.3.i = trunc i32 %call5.3.i to i8
  %arrayidx11.3.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 8, i32 3
  %17 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.3.i, ptr %arrayidx11.3.i, align 1
  %call5.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.4.i)
  %cmp6.4.i = icmp slt i32 %call5.4.i, 0
  br i1 %cmp6.4.i, label %if.end9.3.i.abort_crit_edge, label %if.end9.4.i

if.end9.3.i.abort_crit_edge:                      ; preds = %if.end9.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end9.4.i:                                      ; preds = %if.end9.3.i
  %conv10.4.i = trunc i32 %call5.4.i to i8
  %arrayidx11.4.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 8, i32 4
  %18 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv10.4.i, ptr %arrayidx11.4.i, align 1
  %call18.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end9.4.i.abort_crit_edge, label %if.end22.i

if.end9.4.i.abort_crit_edge:                      ; preds = %if.end9.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end22.i:                                       ; preds = %if.end9.4.i
  %conv23.i = trunc i32 %call18.i to i8
  %arrayidx24.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 9, i32 0
  %19 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23.i, ptr %arrayidx24.i, align 1
  %call18.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1.i)
  %cmp19.1.i = icmp slt i32 %call18.1.i, 0
  br i1 %cmp19.1.i, label %if.end22.i.abort_crit_edge, label %if.end22.1.i

if.end22.i.abort_crit_edge:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end22.1.i:                                     ; preds = %if.end22.i
  %conv23.1.i = trunc i32 %call18.1.i to i8
  %arrayidx24.1.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx24.1.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv23.1.i, ptr %arrayidx24.1.i, align 1
  %call34.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %cmp35.i = icmp slt i32 %call34.i, 0
  br i1 %cmp35.i, label %if.end22.1.i.abort_crit_edge, label %if.end38.i

if.end22.1.i.abort_crit_edge:                     ; preds = %if.end22.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end38.i:                                       ; preds = %if.end22.1.i
  %conv39.i = trunc i32 %call34.i to i8
  %arrayidx40.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 10, i32 0
  %21 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv39.i, ptr %arrayidx40.i, align 1
  %call34.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.1.i)
  %cmp35.1.i = icmp slt i32 %call34.1.i, 0
  br i1 %cmp35.1.i, label %if.end38.i.abort_crit_edge, label %if.end38.1.i

if.end38.i.abort_crit_edge:                       ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end38.1.i:                                     ; preds = %if.end38.i
  %conv39.1.i = trunc i32 %call34.1.i to i8
  %arrayidx40.1.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 10, i32 1
  %22 = ptrtoint ptr %arrayidx40.1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv39.1.i, ptr %arrayidx40.1.i, align 1
  %call34.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.2.i)
  %cmp35.2.i = icmp slt i32 %call34.2.i, 0
  br i1 %cmp35.2.i, label %if.end38.1.i.abort_crit_edge, label %if.end38.2.i

if.end38.1.i.abort_crit_edge:                     ; preds = %if.end38.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end38.2.i:                                     ; preds = %if.end38.1.i
  %conv39.2.i = trunc i32 %call34.2.i to i8
  %arrayidx40.2.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 10, i32 2
  %23 = ptrtoint ptr %arrayidx40.2.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv39.2.i, ptr %arrayidx40.2.i, align 1
  %call34.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.3.i)
  %cmp35.3.i = icmp slt i32 %call34.3.i, 0
  br i1 %cmp35.3.i, label %if.end38.2.i.abort_crit_edge, label %if.end38.3.i

if.end38.2.i.abort_crit_edge:                     ; preds = %if.end38.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end38.3.i:                                     ; preds = %if.end38.2.i
  %conv39.3.i = trunc i32 %call34.3.i to i8
  %arrayidx40.3.i = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 10, i32 3
  %24 = ptrtoint ptr %arrayidx40.3.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv39.3.i, ptr %arrayidx40.3.i, align 1
  %call44.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %cmp45.i = icmp slt i32 %call44.i, 0
  br i1 %cmp45.i, label %if.end38.3.i.abort_crit_edge, label %if.end48.i

if.end38.3.i.abort_crit_edge:                     ; preds = %if.end38.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end48.i:                                       ; preds = %if.end38.3.i
  %conv49.i = trunc i32 %call44.i to i8
  %thyst.i = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 11
  %25 = ptrtoint ptr %thyst.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv49.i, ptr %thyst.i, align 1
  %call50.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.end48.i.abort_crit_edge, label %lm95234_fill_cache.exit

if.end48.i.abort_crit_edge:                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

lm95234_fill_cache.exit:                          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv55.i = trunc i32 %call50.i to i8
  %sensor_type.i = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 12
  %26 = ptrtoint ptr %sensor_type.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv55.i, ptr %sensor_type.i, align 4
  br label %if.end7

if.end7:                                          ; preds = %lm95234_fill_cache.exit, %if.then.if.end7_crit_edge
  %27 = ptrtoint ptr %valid2 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %valid2, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7
  %i.078 = phi i32 [ 0, %if.end7 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.lm95234_data, ptr %data, i32 0, i32 6, i32 %i.078
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.078)
  %tobool.not.i = icmp eq i32 %i.078, 0
  br i1 %tobool.not.i, label %for.body.if.then17.i_crit_edge, label %if.then.i

for.body.if.then17.i_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.then.i:                                        ; preds = %for.body
  %28 = trunc i32 %i.078 to i8
  %conv.i66 = add nuw nsw i8 %28, 24
  %call.i67 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv.i66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %cmp.i68 = icmp slt i32 %call.i67, 0
  br i1 %cmp.i68, label %if.then.i.abort_crit_edge, label %if.end.i69

if.then.i.abort_crit_edge:                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end.i69:                                       ; preds = %if.then.i
  %conv6.i = add nuw nsw i8 %28, 40
  %call7.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %if.end.i69.abort_crit_edge, label %if.end11.i

if.end.i69.abort_crit_edge:                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end11.i:                                       ; preds = %if.end.i69
  %conv3.i = shl i32 %call.i67, 8
  %or.i = or i32 %call7.i, %conv3.i
  %conv13.i = trunc i32 %or.i to i16
  %conv14.i = and i32 %or.i, 65535
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv14.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv13.i)
  %phi.cmp.i = icmp eq i16 %conv13.i, 0
  br i1 %phi.cmp.i, label %if.end11.i.if.then17.i_crit_edge, label %if.end11.i.for.inc_crit_edge

if.end11.i.for.inc_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11.i.if.then17.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end11.i.if.then17.i_crit_edge, %for.body.if.then17.i_crit_edge
  %.pre-phi.i = phi i8 [ %28, %if.end11.i.if.then17.i_crit_edge ], [ 0, %for.body.if.then17.i_crit_edge ]
  %conv19.i = add nuw nsw i8 %.pre-phi.i, 16
  %call20.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.then17.i.abort_crit_edge, label %if.end24.i

if.then17.i.abort_crit_edge:                      ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end24.i:                                       ; preds = %if.then17.i
  %conv28.i = add nuw nsw i8 %.pre-phi.i, 32
  %call29.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv28.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  br i1 %cmp30.i, label %if.end24.i.abort_crit_edge, label %if.end33.i

if.end24.i.abort_crit_edge:                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end33.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = shl i32 %call20.i, 24
  %31 = shl i32 %call29.i, 16
  %sext.i = or i32 %31, %30
  %conv37.i = ashr exact i32 %sext.i, 16
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv37.i, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end33.i, %if.end11.i.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %for.end.abort_crit_edge, label %if.end17

for.end.abort_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end17:                                         ; preds = %for.end
  %status = getelementptr inbounds %struct.lm95234_data, ptr %data, i32 0, i32 7
  %33 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call14, ptr %status, align 4
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.abort_crit_edge, label %if.end21

if.end17.abort_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end21:                                         ; preds = %if.end17
  %shl = shl i32 %call18, 8
  %34 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %status, align 4
  %or = or i32 %35, %shl
  store i32 %or, ptr %status, align 4
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end21.abort_crit_edge, label %cleanup

if.end21.abort_crit_edge:                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

cleanup:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %shl27 = shl i32 %call23, 16
  %36 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %status, align 4
  %or29 = or i32 %37, %shl27
  store i32 %or29, ptr %status, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_updated, align 4
  %40 = ptrtoint ptr %valid2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %valid2, align 4
  br label %abort

abort:                                            ; preds = %cleanup, %if.end21.abort_crit_edge, %if.end17.abort_crit_edge, %for.end.abort_crit_edge, %if.end24.i.abort_crit_edge, %if.then17.i.abort_crit_edge, %if.end.i69.abort_crit_edge, %if.then.i.abort_crit_edge, %if.end48.i.abort_crit_edge, %if.end38.3.i.abort_crit_edge, %if.end38.2.i.abort_crit_edge, %if.end38.1.i.abort_crit_edge, %if.end38.i.abort_crit_edge, %if.end22.1.i.abort_crit_edge, %if.end22.i.abort_crit_edge, %if.end9.4.i.abort_crit_edge, %if.end9.3.i.abort_crit_edge, %if.end9.2.i.abort_crit_edge, %if.end9.1.i.abort_crit_edge, %if.end9.i.abort_crit_edge, %if.else.i.i.abort_crit_edge, %if.then4.abort_crit_edge, %lor.lhs.false.abort_crit_edge
  %ret.1 = phi i32 [ 0, %cleanup ], [ 0, %lor.lhs.false.abort_crit_edge ], [ %call23, %if.end21.abort_crit_edge ], [ %call18, %if.end17.abort_crit_edge ], [ %call14, %for.end.abort_crit_edge ], [ %call5.4.i, %if.end9.3.i.abort_crit_edge ], [ %call5.3.i, %if.end9.2.i.abort_crit_edge ], [ %call5.2.i, %if.end9.1.i.abort_crit_edge ], [ %call5.1.i, %if.end9.i.abort_crit_edge ], [ %call5.i, %if.else.i.i.abort_crit_edge ], [ %call18.1.i, %if.end22.i.abort_crit_edge ], [ %call18.i, %if.end9.4.i.abort_crit_edge ], [ %call34.3.i, %if.end38.2.i.abort_crit_edge ], [ %call34.2.i, %if.end38.1.i.abort_crit_edge ], [ %call34.1.i, %if.end38.i.abort_crit_edge ], [ %call34.i, %if.end22.1.i.abort_crit_edge ], [ %call50.i, %if.end48.i.abort_crit_edge ], [ %call44.i, %if.end38.3.i.abort_crit_edge ], [ %call.i, %if.then4.abort_crit_edge ], [ %call.i67, %if.then.i.abort_crit_edge ], [ %call7.i, %if.end.i69.abort_crit_edge ], [ %call20.i, %if.then17.i.abort_crit_edge ], [ %call29.i, %if.end24.i.abort_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret i32 %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  %and = and i32 %5, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool2 to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %lnot.ext)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sensor_type = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %sensor_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sensor_type, align 4
  %conv2 = zext i8 %5 to i32
  %and = and i32 %3, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool4.not, ptr @.str.16, ptr @.str.15
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @type_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !180
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp12 = icmp eq i32 %8, 1
  %sensor_type = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %sensor_type to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sensor_type, align 4
  %11 = trunc i32 %4 to i8
  %12 = xor i8 %11, -1
  %conv21 = and i8 %10, %12
  %conv17 = or i8 %10, %11
  %conv21.sink = select i1 %cmp12, i8 %conv17, i8 %conv21
  store i8 %conv21.sink, ptr %sensor_type, align 4
  %valid = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %valid, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %call24 = call i32 @i2c_smbus_write_byte_data(ptr noundef %15, i8 noundef zeroext 48, i8 noundef zeroext %conv21.sink) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %mul)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp7, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.in)
  %cmp16 = icmp sgt i32 %cond.in, 999
  %cond = sdiv i32 %cond.in, 1000
  %7 = call i32 @llvm.smin.i32(i32 %cond, i32 255)
  %8 = select i1 %cmp16, i32 %7, i32 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv29 = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 8, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv29, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = trunc i32 %3 to i8
  %conv31 = add i8 %15, 64
  %16 = load i32, ptr %val, align 4
  %conv32 = trunc i32 %16 to i8
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit2_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !180
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp7, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond.in)
  %cmp16 = icmp sgt i32 %cond.in, 999
  %cond = sdiv i32 %cond.in, 1000
  %cond21 = select i1 %cmp16, i32 %cond, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool22.not = icmp eq i32 %3, 0
  %cond23 = select i1 %tobool22.not, i32 127, i32 255
  %7 = call i32 @llvm.smin.i32(i32 %cond21, i32 %cond23)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv31 = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 9, i32 %3
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv31, ptr %arrayidx, align 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = trunc i32 %3 to i8
  %conv33 = add i8 %14, 73
  %15 = load i32, ptr %val, align 4
  %conv34 = trunc i32 %15 to i8
  %call35 = call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext %conv33, i8 noundef zeroext %conv34) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit1_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %thyst = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %thyst to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %thyst, align 1
  %conv3 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %mul = mul nsw i32 %sub, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit1_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp7, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  %cond.neg = sdiv i32 %cond.in, -1000
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 8, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv15 = zext i8 %8 to i32
  %sub16 = add nsw i32 %cond.neg, %conv15
  %9 = call i32 @llvm.smax.i32(i32 %sub16, i32 0)
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 31)
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %conv31 = trunc i32 %13 to i8
  %thyst = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 11
  %14 = ptrtoint ptr %thyst to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv31, ptr %thyst, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 90, i8 noundef zeroext %conv31) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcrit2_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %thyst = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %thyst to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %thyst, align 1
  %conv3 = zext i8 %7 to i32
  %sub = sub nsw i32 %conv, %conv3
  %mul = mul nsw i32 %sub, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 10, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %5 to i32
  %mul = mul nsw i32 %conv, 500
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp7 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp7, i32 250, i32 -250
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64000, i32 %cond.in)
  %cmp16 = icmp sgt i32 %cond.in, -64000
  %cond = sdiv i32 %cond.in, 500
  %7 = call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %8 = select i1 %cmp16, i32 %7, i32 -128
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %conv29 = trunc i32 %11 to i8
  %arrayidx = getelementptr %struct.lm95234_data, ptr %1, i32 0, i32 10, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv29, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %15 = trunc i32 %3 to i8
  %conv31 = add i8 %15, 49
  %16 = load i32, ptr %val, align 4
  %conv32 = trunc i32 %16 to i8
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call2, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %interval = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %interval, align 4
  %mul = mul i32 %3, 1000
  %add = add i32 %mul, 50
  %div2 = udiv i32 %add, 100
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %div2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %call1 = tail call fastcc i32 @lm95234_update_device(ptr noundef %1)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %4)
  %cmp8.not = icmp ugt i32 %4, 143
  br i1 %cmp8.not, label %for.inc, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 364, i32 %4)
  %cmp8.not.1 = icmp ugt i32 %4, 364
  br i1 %cmp8.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %4)
  %cmp8.not.2 = icmp ugt i32 %4, 1000
  %spec.select = select i1 %cmp8.not.2, i8 3, i8 2
  %spec.select34 = select i1 %cmp8.not.2, i32 3, i32 2
  br label %for.end

for.end:                                          ; preds = %for.inc.1, %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %regval.0.lcssa = phi i8 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ %spec.select, %for.inc.1 ]
  %conv.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.inc.for.end_crit_edge ], [ %spec.select34, %for.inc.1 ]
  %update_lock = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx13 = getelementptr [4 x i16], ptr @update_intervals, i32 0, i32 %conv.lcssa
  %5 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx13, align 2
  %conv14 = zext i16 %6 to i32
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %conv14) #9
  %interval = getelementptr inbounds %struct.lm95234_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2.i, ptr %interval, align 4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call16 = call i32 @i2c_smbus_write_byte_data(ptr noundef %9, i8 noundef zeroext 4, i8 noundef zeroext %regval.0.lcssa) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ %call1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !42, !44, !45, !47, !49, !50, !52, !53, !55, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_lm95234__304_729_lm95234_driver_init6, !1, !"__initcall__kmod_lm95234__304_729_lm95234_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm95234.c", i32 729, i32 1}
!2 = !{ptr @__exitcall_lm95234_driver_exit, !1, !"__exitcall_lm95234_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author305, !4, !"__UNIQUE_ID_author305", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm95234.c", i32 731, i32 1}
!5 = !{ptr @__UNIQUE_ID_description306, !6, !"__UNIQUE_ID_description306", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm95234.c", i32 732, i32 1}
!7 = !{ptr @__UNIQUE_ID_file307, !8, !"__UNIQUE_ID_file307", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm95234.c", i32 733, i32 1}
!9 = !{ptr @__UNIQUE_ID_license308, !8, !"__UNIQUE_ID_license308", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm95234.c", i32 721, i32 11}
!12 = !{ptr @lm95234_driver, !13, !"lm95234_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm95234.c", i32 718, i32 26}
!14 = !{ptr @lm95234_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm95234.c", i32 694, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm95234.c", i32 671, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @lm95234_init_client._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @lm95234_init_client._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @lm95234_common_group, !26, !"lm95234_common_group", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/lm95234.c", i32 565, i32 37}
!27 = !{ptr @lm95234_common_attrs, !28, !"lm95234_common_attrs", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm95234.c", i32 536, i32 26}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/lm95234.c", i32 486, i32 8}
!31 = !{ptr @sensor_dev_attr_temp1_input, !30, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lm95234.c", i32 215, i32 22}
!34 = !{ptr @update_intervals, !35, !"update_intervals", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lm95234.c", i32 109, i32 12}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/lm95234.c", i32 487, i32 8}
!38 = !{ptr @sensor_dev_attr_temp2_input, !37, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lm95234.c", i32 488, i32 8}
!41 = !{ptr @sensor_dev_attr_temp3_input, !40, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/lm95234.c", i32 492, i32 8}
!44 = !{ptr @sensor_dev_attr_temp2_fault, !43, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/lm95234.c", i32 229, i32 22}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lm95234.c", i32 493, i32 8}
!49 = !{ptr @sensor_dev_attr_temp3_fault, !48, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/lm95234.c", i32 497, i32 8}
!52 = !{ptr @sensor_dev_attr_temp2_type, !51, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/lm95234.c", i32 242, i32 49}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/lm95234.c", i32 242, i32 57}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/lm95234.c", i32 498, i32 8}
!59 = !{ptr @sensor_dev_attr_temp3_type, !58, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/lm95234.c", i32 502, i32 8}
!62 = !{ptr @sensor_dev_attr_temp1_max, !61, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!63 = !{ptr @.str.19, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/lm95234.c", i32 503, i32 8}
!65 = !{ptr @sensor_dev_attr_temp2_max, !64, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/lm95234.c", i32 504, i32 8}
!68 = !{ptr @sensor_dev_attr_temp3_max, !67, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!69 = !{ptr @.str.21, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/lm95234.c", i32 508, i32 8}
!71 = !{ptr @sensor_dev_attr_temp1_max_hyst, !70, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/lm95234.c", i32 374, i32 22}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/lm95234.c", i32 509, i32 8}
!76 = !{ptr @sensor_dev_attr_temp2_max_hyst, !75, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/lm95234.c", i32 510, i32 8}
!79 = !{ptr @sensor_dev_attr_temp3_max_hyst, !78, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!80 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/lm95234.c", i32 514, i32 8}
!82 = !{ptr @sensor_dev_attr_temp1_max_alarm, !81, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!83 = !{ptr @.str.26, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/lm95234.c", i32 515, i32 8}
!85 = !{ptr @sensor_dev_attr_temp2_max_alarm, !84, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!86 = !{ptr @.str.27, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/lm95234.c", i32 516, i32 8}
!88 = !{ptr @sensor_dev_attr_temp3_max_alarm, !87, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/lm95234.c", i32 520, i32 8}
!91 = !{ptr @sensor_dev_attr_temp2_crit, !90, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!92 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/lm95234.c", i32 521, i32 8}
!94 = !{ptr @sensor_dev_attr_temp3_crit, !93, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!95 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/lm95234.c", i32 523, i32 8}
!97 = !{ptr @sensor_dev_attr_temp2_crit_hyst, !96, !"sensor_dev_attr_temp2_crit_hyst", i1 false, i1 false}
!98 = !{ptr @.str.31, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/lm95234.c", i32 524, i32 8}
!100 = !{ptr @sensor_dev_attr_temp3_crit_hyst, !99, !"sensor_dev_attr_temp3_crit_hyst", i1 false, i1 false}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/lm95234.c", i32 526, i32 8}
!103 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !102, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/lm95234.c", i32 527, i32 8}
!106 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !105, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/lm95234.c", i32 529, i32 8}
!109 = !{ptr @sensor_dev_attr_temp2_offset, !108, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/lm95234.c", i32 530, i32 8}
!112 = !{ptr @sensor_dev_attr_temp3_offset, !111, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!113 = !{ptr @.str.36, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/lm95234.c", i32 534, i32 8}
!115 = !{ptr @dev_attr_update_interval, !114, !"dev_attr_update_interval", i1 false, i1 false}
!116 = !{ptr @.str.37, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/lm95234.c", i32 453, i32 22}
!118 = !{ptr @lm95234_group, !119, !"lm95234_group", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/lm95234.c", i32 587, i32 37}
!120 = !{ptr @lm95234_attrs, !121, !"lm95234_attrs", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/lm95234.c", i32 569, i32 26}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/lm95234.c", i32 489, i32 8}
!124 = !{ptr @sensor_dev_attr_temp4_input, !123, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/lm95234.c", i32 490, i32 8}
!127 = !{ptr @sensor_dev_attr_temp5_input, !126, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/lm95234.c", i32 494, i32 8}
!130 = !{ptr @sensor_dev_attr_temp4_fault, !129, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/lm95234.c", i32 495, i32 8}
!133 = !{ptr @sensor_dev_attr_temp5_fault, !132, !"sensor_dev_attr_temp5_fault", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/lm95234.c", i32 499, i32 8}
!136 = !{ptr @sensor_dev_attr_temp4_type, !135, !"sensor_dev_attr_temp4_type", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/lm95234.c", i32 500, i32 8}
!139 = !{ptr @sensor_dev_attr_temp5_type, !138, !"sensor_dev_attr_temp5_type", i1 false, i1 false}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/lm95234.c", i32 505, i32 8}
!142 = !{ptr @sensor_dev_attr_temp4_max, !141, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/lm95234.c", i32 506, i32 8}
!145 = !{ptr @sensor_dev_attr_temp5_max, !144, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/lm95234.c", i32 511, i32 8}
!148 = !{ptr @sensor_dev_attr_temp4_max_hyst, !147, !"sensor_dev_attr_temp4_max_hyst", i1 false, i1 false}
!149 = !{ptr @.str.47, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/lm95234.c", i32 512, i32 8}
!151 = !{ptr @sensor_dev_attr_temp5_max_hyst, !150, !"sensor_dev_attr_temp5_max_hyst", i1 false, i1 false}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/lm95234.c", i32 517, i32 8}
!154 = !{ptr @sensor_dev_attr_temp4_max_alarm, !153, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/lm95234.c", i32 518, i32 8}
!157 = !{ptr @sensor_dev_attr_temp5_max_alarm, !156, !"sensor_dev_attr_temp5_max_alarm", i1 false, i1 false}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/lm95234.c", i32 531, i32 8}
!160 = !{ptr @sensor_dev_attr_temp4_offset, !159, !"sensor_dev_attr_temp4_offset", i1 false, i1 false}
!161 = !{ptr @.str.51, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/lm95234.c", i32 532, i32 8}
!163 = !{ptr @sensor_dev_attr_temp5_offset, !162, !"sensor_dev_attr_temp5_offset", i1 false, i1 false}
!164 = !{ptr @lm95234_id, !165, !"lm95234_id", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/lm95234.c", i32 711, i32 35}
!166 = !{ptr @.str.52, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/lm95234.c", i32 614, i32 10}
!168 = !{ptr @normal_i2c, !169, !"normal_i2c", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/lm95234.c", i32 26, i32 29}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i8 0, i8 2}
!180 = !{!"auto-init"}
