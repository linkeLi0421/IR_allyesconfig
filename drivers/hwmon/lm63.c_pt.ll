; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm63.c_pt.bc'
source_filename = "../drivers/hwmon/lm63.c"
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
%struct.atomic_t = type { i32 }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.lm63_data = type { ptr, %struct.mutex, [5 x ptr], i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i16], i8, [13 x i8], [15 x i8], [4 x i16], i16, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm63__333_1173_lm63_driver_init6 = internal global ptr @lm63_driver_init, section ".initcall6.init", align 4
@lm63_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm63_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lm63_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm63_id, ptr @lm63_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm63_driver_exit = internal global ptr @lm63_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author334 = internal constant [44 x i8] c"lm63.author=Jean Delvare <jdelvare@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description335 = internal constant [29 x i8] c"lm63.description=LM63 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file336 = internal constant [29 x i8] c"lm63.file=drivers/hwmon/lm63\00", section ".modinfo", align 1
@__UNIQUE_ID_license337 = internal constant [17 x i8] c"lm63.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm63\00", [27 x i8] zeroinitializer }, align 32
@lm63_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"national,lm96163\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@lm63_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm63\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"lm96163\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 24, i16 76, i16 78, i16 -2], [24 x i8] zeroinitializer }, align 32
@lm63_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm63_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @lm63_attribute_mode, ptr null, ptr @lm63_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm63_group_fan1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm63_attributes_fan1, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm63_group_temp2_type = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm63_attributes_temp2_type, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm63_group_extra_lut = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm63_attributes_extra_lut, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm63_init_client.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 1, i8 0, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lm63_init_client\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm63.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Switching to operational mode\0A\00", [33 x i8] zeroinitializer }, align 32
@lm63_init_client.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 1, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Alert/tach pin configured for %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tachometer input\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"alert output\00", [19 x i8] zeroinitializer }, align 32
@lm63_init_client.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 1, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PWM clock %s kHz, output frequency %u Hz\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.4\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"360\00", [28 x i8] zeroinitializer }, align 32
@lm63_init_client.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 1, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"PWM output active %s, %s mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"manual\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@lm63_attributes = internal global { [42 x ptr], [56 x i8] } { [42 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point5_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point6_pwm, ptr @sensor_dev_attr_pwm1_auto_point6_temp, ptr @sensor_dev_attr_pwm1_auto_point6_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point7_pwm, ptr @sensor_dev_attr_pwm1_auto_point7_temp, ptr @sensor_dev_attr_pwm1_auto_point7_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point8_pwm, ptr @sensor_dev_attr_pwm1_auto_point8_temp, ptr @sensor_dev_attr_pwm1_auto_point8_temp_hyst, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_crit, ptr @dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr @dev_attr_update_interval, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_remote_temp8, ptr @set_temp8 }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_pwm1_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point4_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point5_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point6_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point6_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point6_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point7_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point7_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point7_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point8_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point8_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point8_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_local_temp8, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr @set_temp11 }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_local_temp8, ptr @set_temp8 }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr @set_temp11 }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr @set_temp11 }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_temp2_crit_hyst = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_crit_hyst_show, ptr @temp2_crit_hyst_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_update_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @update_interval_show, ptr @update_interval_store }, [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@lm63_lut_looks_bad._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 318, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Lookup table doesn't look sane (check entries %d and %d)\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm63_lut_looks_bad\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lm63_lut_looks_bad._entry_ptr = internal global ptr @lm63_lut_looks_bad._entry, section ".printk_index", align 4
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point1_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point1_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point2_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point2_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point3_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point3_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point4_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point4_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point4_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point5_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point5_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point5_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point6_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point6_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point6_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point7_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point7_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point7_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point8_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point8_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point8_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@set_temp11.reg = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\08\14\07\13\11\12", [26 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@lm63_attributes_fan1 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_min_alarm, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr @set_fan }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fan1_min_alarm\00", [17 x i8] zeroinitializer }, align 32
@lm63_attributes_temp2_type = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_temp2_type, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_temp2_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_type_show, ptr @temp2_type_store }, [36 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@lm63_attributes_extra_lut = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_pwm1_auto_point9_pwm, ptr @sensor_dev_attr_pwm1_auto_point9_temp, ptr @sensor_dev_attr_pwm1_auto_point9_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point10_pwm, ptr @sensor_dev_attr_pwm1_auto_point10_temp, ptr @sensor_dev_attr_pwm1_auto_point10_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point11_pwm, ptr @sensor_dev_attr_pwm1_auto_point11_temp, ptr @sensor_dev_attr_pwm1_auto_point11_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point12_pwm, ptr @sensor_dev_attr_pwm1_auto_point12_temp, ptr @sensor_dev_attr_pwm1_auto_point12_temp_hyst, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point9_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point9_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point9_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point10_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point10_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point10_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point11_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point11_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point11_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point12_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm1, ptr @set_pwm1 }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point12_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp, ptr @set_temp8 }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point12_temp_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_lut_temp_hyst, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point9_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point9_temp\00", [42 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm1_auto_point9_temp_hyst\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point10_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm1_auto_point10_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm1_auto_point10_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point11_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm1_auto_point11_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm1_auto_point11_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm1_auto_point12_pwm\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pwm1_auto_point12_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pwm1_auto_point12_temp_hyst\00", [36 x i8] zeroinitializer }, align 32
@lm63_detect.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.81, ptr @.str.3, ptr @.str.82, i8 0, i8 -8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lm63_detect\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unsupported chip (man_id=0x%02X, chip_id=0x%02X)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm64\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm96163\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 73, i64 81]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 16, i64 24, i64 78]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65532]
@___asan_gen_.90 = private unnamed_addr constant [12 x i8] c"lm63_driver\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1161, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1164, i32 11 }
@___asan_gen_.96 = private unnamed_addr constant [14 x i8] c"lm63_of_match\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1144, i32 49 }
@___asan_gen_.99 = private unnamed_addr constant [8 x i8] c"lm63_id\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1136, i32 35 }
@___asan_gen_.102 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 48, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1104, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [11 x i8] c"lm63_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 945, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [16 x i8] c"lm63_group_fan1\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 958, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [22 x i8] c"lm63_group_temp2_type\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 900, i32 37 }
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"lm63_group_extra_lut\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 920, i32 37 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1026, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1079, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1082, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1085, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant [16 x i8] c"lm63_attributes\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 848, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 830, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 471, i32 22 }
@___asan_gen_.177 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm1_enable\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point1_temp_hyst\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point2_temp_hyst\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_pwm\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point3_temp_hyst\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point4_pwm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point4_temp_hyst\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point5_pwm\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point5_temp\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point5_temp_hyst\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point6_pwm\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point6_temp\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point6_temp_hyst\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point7_pwm\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point7_temp\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point7_temp_hyst\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point8_pwm\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point8_temp\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point8_temp_hyst\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [25 x i8] c"dev_attr_temp2_crit_hyst\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"dev_attr_update_interval\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 744, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 745, i32 8 }
@___asan_gen_.303 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 316, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 746, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 748, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 750, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 752, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 754, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 756, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 758, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 760, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 762, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 764, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 766, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 768, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 770, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 772, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 774, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 776, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 778, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 780, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 782, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 784, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 786, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 788, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 790, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 792, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 819, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 823, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 824, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 553, i32 18 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 820, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 826, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 828, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 832, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 838, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 737, i32 22 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 839, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 840, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 841, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 842, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 844, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 846, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant [21 x i8] c"lm63_attributes_fan1\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 950, i32 26 }
@___asan_gen_.441 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_fan1_min_alarm\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 740, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 741, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 837, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant [27 x i8] c"lm63_attributes_temp2_type\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 895, i32 26 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c"dev_attr_temp2_type\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 834, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 693, i32 39 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 693, i32 47 }
@___asan_gen_.474 = private unnamed_addr constant [26 x i8] c"lm63_attributes_extra_lut\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 904, i32 26 }
@___asan_gen_.477 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point9_pwm\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point9_temp\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [43 x i8] c"sensor_dev_attr_pwm1_auto_point9_temp_hyst\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point10_pwm\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_pwm1_auto_point10_temp\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_pwm1_auto_point10_temp_hyst\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point11_pwm\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_pwm1_auto_point11_temp\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_pwm1_auto_point11_temp_hyst\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_pwm1_auto_point12_pwm\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_pwm1_auto_point12_temp\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [44 x i8] c"sensor_dev_attr_pwm1_auto_point12_temp_hyst\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 794, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 796, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 798, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 800, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 802, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 804, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 806, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 808, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 810, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 812, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 814, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 816, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 992, i32 3 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1001, i32 23 }
@___asan_gen_.558 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.559 = private constant [24 x i8] c"../drivers/hwmon/lm63.c\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.559, i32 1003, i32 23 }
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_author334, ptr @__UNIQUE_ID_description335, ptr @__UNIQUE_ID_file336, ptr @__UNIQUE_ID_license337, ptr @__exitcall_lm63_driver_exit, ptr @__initcall__kmod_lm63__333_1173_lm63_driver_init6, ptr @lm63_driver_exit, ptr @lm63_lut_looks_bad._entry, ptr @lm63_lut_looks_bad._entry_ptr, ptr @lm63_driver, ptr @.str, ptr @lm63_of_match, ptr @lm63_id, ptr @normal_i2c, ptr @lm63_probe.__key, ptr @.str.1, ptr @lm63_group, ptr @lm63_group_fan1, ptr @lm63_group_temp2_type, ptr @lm63_group_extra_lut, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @lm63_attributes, ptr @sensor_dev_attr_temp2_crit, ptr @.str.16, ptr @.str.17, ptr @sensor_dev_attr_pwm1, ptr @dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point1_temp, ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_temp, ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_temp, ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point4_pwm, ptr @sensor_dev_attr_pwm1_auto_point4_temp, ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point5_pwm, ptr @sensor_dev_attr_pwm1_auto_point5_temp, ptr @sensor_dev_attr_pwm1_auto_point5_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point6_pwm, ptr @sensor_dev_attr_pwm1_auto_point6_temp, ptr @sensor_dev_attr_pwm1_auto_point6_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point7_pwm, ptr @sensor_dev_attr_pwm1_auto_point7_temp, ptr @sensor_dev_attr_pwm1_auto_point7_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point8_pwm, ptr @sensor_dev_attr_pwm1_auto_point8_temp, ptr @sensor_dev_attr_pwm1_auto_point8_temp_hyst, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_offset, ptr @dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr @dev_attr_update_interval, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @set_temp11.reg, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @lm63_attributes_fan1, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_min_alarm, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @lm63_attributes_temp2_type, ptr @dev_attr_temp2_type, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @lm63_attributes_extra_lut, ptr @sensor_dev_attr_pwm1_auto_point9_pwm, ptr @sensor_dev_attr_pwm1_auto_point9_temp, ptr @sensor_dev_attr_pwm1_auto_point9_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point10_pwm, ptr @sensor_dev_attr_pwm1_auto_point10_temp, ptr @sensor_dev_attr_pwm1_auto_point10_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point11_pwm, ptr @sensor_dev_attr_pwm1_auto_point11_temp, ptr @sensor_dev_attr_pwm1_auto_point11_temp_hyst, ptr @sensor_dev_attr_pwm1_auto_point12_pwm, ptr @sensor_dev_attr_pwm1_auto_point12_temp, ptr @sensor_dev_attr_pwm1_auto_point12_temp_hyst, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84], section "llvm.metadata"
@0 = internal global [157 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_group_fan1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_group_temp2_type to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_group_extra_lut to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_attributes to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm1_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point5_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point6_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point6_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point6_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point7_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point7_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point7_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point8_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point8_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point8_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_crit_hyst to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_lut_looks_bad._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_temp11.reg to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_attributes_fan1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_attributes_temp2_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_temp2_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm63_attributes_extra_lut to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point9_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point9_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point9_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point10_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point10_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point10_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point11_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point11_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point11_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point12_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point12_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point12_temp_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm63_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm63_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm63_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @lm63_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm63_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 204, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm63_probe.__key) #10
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #10
  %3 = ptrtoint ptr %call7 to i32
  br label %if.end10

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call8 = tail call ptr @i2c_match_id(ptr noundef nonnull @lm63_id, ptr noundef %client) #10
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call8, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5
  %.sink = phi i32 [ %5, %if.else ], [ %3, %if.then5 ]
  %6 = getelementptr inbounds %struct.lm63_data, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink)
  %cmp = icmp eq i32 %.sink, 1
  br i1 %cmp, label %if.then12, label %if.end10.if.end13_crit_edge

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call.i, i32 0, i32 8
  %8 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16000, ptr %temp2_offset, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  tail call fastcc void @lm63_init_client(ptr noundef nonnull %call.i)
  %groups14 = getelementptr inbounds %struct.lm63_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %groups14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @lm63_group, ptr %groups14, align 4
  %config = getelementptr inbounds %struct.lm63_data, ptr %call.i, i32 0, i32 12
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 4
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %if.then16

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19 = getelementptr %struct.lm63_data, ptr %call.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @lm63_group_fan1, ptr %arrayidx19, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.end13.if.end20_crit_edge
  %groups.0 = phi i32 [ 2, %if.then16 ], [ 1, %if.end13.if.end20_crit_edge ]
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp22 = icmp eq i32 %15, 2
  br i1 %cmp22, label %if.then24, label %if.end20.if.end31_crit_edge

if.end20.if.end31_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %inc26 = add nuw nsw i32 %groups.0, 1
  %arrayidx27 = getelementptr %struct.lm63_data, ptr %call.i, i32 0, i32 2, i32 %groups.0
  %16 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @lm63_group_temp2_type, ptr %arrayidx27, align 4
  %arrayidx30 = getelementptr %struct.lm63_data, ptr %call.i, i32 0, i32 2, i32 %inc26
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @lm63_group_extra_lut, ptr %arrayidx30, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then24, %if.end20.if.end31_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call34 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups14) #10
  %cmp.i.i = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call34 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %18, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm63_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %call.i.i = tail call i32 %7(ptr noundef %1) #10
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #10
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #10
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #10
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -65) #10
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #10
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 22) #10
  %conv14 = and i32 %call2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv14)
  %cmp.not = icmp eq i32 %conv14, 1
  %and = and i32 %call6, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp17.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp.not, i1 %cmp17.not, i1 false
  %and21 = and i32 %call8, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22.not = icmp eq i32 %and21, 0
  %or.cond104 = select i1 %or.cond, i1 %cmp22.not, i1 false
  %and26 = and i32 %call10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %cmp27.not = icmp eq i32 %and26, 0
  %or.cond105 = select i1 %or.cond104, i1 %cmp27.not, i1 false
  %and31 = and i32 %call12, 164
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %and31)
  %cmp32.not = icmp eq i32 %and31, 164
  %or.cond106 = select i1 %or.cond105, i1 %cmp32.not, i1 false
  br i1 %or.cond106, label %if.end44, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm63_detect.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm63_detect, %cleanup)) #10
          to label %if.then40 [label %cleanup], !srcloc !266

if.then40:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %conv42 = and i32 %call4, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm63_detect.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.82, i32 noundef %conv14, i32 noundef %conv42) #10
  br label %cleanup

if.end44:                                         ; preds = %if.end
  %conv45 = and i32 %call4, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %conv45)
  %cmp46 = icmp eq i32 %conv45, 65
  call void @__sanitizer_cov_trace_const_cmp2(i16 76, i16 %3)
  %cmp48 = icmp eq i16 %3, 76
  %or.cond107 = select i1 %cmp46, i1 %cmp48, i1 false
  br i1 %or.cond107, label %if.then50, label %if.else

if.then50:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %call51 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #10
  br label %cleanup

if.else:                                          ; preds = %if.end44
  %trunc = trunc i32 %call4 to i8
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %if.else.cleanup_crit_edge [
    i8 81, label %land.lhs.true55
    i8 73, label %land.lhs.true69
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true55:                                  ; preds = %if.else
  %9 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.85)
  switch i16 %3, label %land.lhs.true55.cleanup_crit_edge [
    i16 24, label %land.lhs.true55.if.then61_crit_edge
    i16 78, label %land.lhs.true55.if.then61_crit_edge110
  ]

land.lhs.true55.if.then61_crit_edge110:           ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

land.lhs.true55.if.then61_crit_edge:              ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then61

land.lhs.true55.cleanup_crit_edge:                ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then61:                                        ; preds = %land.lhs.true55.if.then61_crit_edge, %land.lhs.true55.if.then61_crit_edge110
  %call64 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str.83, i32 noundef 20) #10
  br label %cleanup

land.lhs.true69:                                  ; preds = %if.else
  br i1 %cmp48, label %if.then72, label %land.lhs.true69.cleanup_crit_edge

land.lhs.true69.cleanup_crit_edge:                ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then72:                                        ; preds = %land.lhs.true69
  call void @__sanitizer_cov_trace_pc() #12
  %call75 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str.84, i32 noundef 20) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then72, %land.lhs.true69.cleanup_crit_edge, %if.then61, %land.lhs.true55.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then50, %if.then40, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then40 ], [ -19, %if.else.cleanup_crit_edge ], [ -19, %land.lhs.true69.cleanup_crit_edge ], [ 0, %if.then61 ], [ 0, %if.then72 ], [ 0, %if.then50 ], [ -19, %do.body ], [ -19, %land.lhs.true55.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lm63_init_client(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 3) #10
  %conv = trunc i32 %call to i8
  %config = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 12
  %2 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %config, align 4
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 74) #10
  %conv4 = trunc i32 %call3 to i8
  %config_fan = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 13
  %3 = ptrtoint ptr %config_fan to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv4, ptr %config_fan, align 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4
  %6 = and i8 %5, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm63_init_client.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm63_init_client, %do.end)) #10
          to label %if.then12 [label %do.end], !srcloc !266

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm63_init_client.__UNIQUE_ID_ddebug329, ptr noundef %dev2, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config, align 4
  %9 = and i8 %8, -89
  store i8 %9, ptr %config, align 4
  %call18 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %9) #10
  br label %if.end19

if.end19:                                         ; preds = %do.end, %entry.if.end19_crit_edge
  %kind = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 7
  %10 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp eq i32 %11, 1
  br i1 %cmp, label %if.then21, label %if.end19.if.end25_crit_edge

if.end19.if.end25_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %config, align 4
  %14 = or i8 %13, 4
  store i8 %14, ptr %config, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %if.end19.if.end25_crit_edge
  %call26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 77) #10
  %conv27 = trunc i32 %call26 to i8
  %pwm1_freq = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 15
  %conv29 = and i32 %call26, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv29)
  %cmp30 = icmp eq i32 %conv29, 0
  %spec.select = select i1 %cmp30, i8 1, i8 %conv27
  %15 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %spec.select, ptr %pwm1_freq, align 2
  %16 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kind, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %17, label %if.end25.sw.epilog_crit_edge [
    i32 0, label %if.end25.sw.bb_crit_edge
    i32 1, label %if.end25.sw.bb_crit_edge232
    i32 2, label %sw.bb36
  ]

if.end25.sw.bb_crit_edge232:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end25.sw.bb_crit_edge:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end25.sw.bb_crit_edge, %if.end25.sw.bb_crit_edge232
  %max_convrate_hz = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 10
  %19 = ptrtoint ptr %max_convrate_hz to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %max_convrate_hz, align 4
  %lut_size = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 11
  %20 = ptrtoint ptr %lut_size to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %lut_size, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %max_convrate_hz37 = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 10
  %21 = ptrtoint ptr %max_convrate_hz37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 26, ptr %max_convrate_hz37, align 4
  %lut_size38 = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 11
  %22 = ptrtoint ptr %lut_size38 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 12, ptr %lut_size38, align 4
  %call39 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 48) #10
  %trutherm = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 26
  %23 = trunc i32 %call39 to i8
  %24 = lshr i8 %23, 1
  %25 = and i8 %24, 1
  %26 = ptrtoint ptr %trutherm to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %trutherm, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb36, %sw.bb, %if.end25.sw.epilog_crit_edge
  %call43 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 4) #10
  %conv45 = and i32 %call43, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %conv45)
  %cmp46 = icmp ugt i32 %conv45, 9
  br i1 %cmp46, label %if.then54, label %sw.epilog.if.end55_crit_edge, !prof !267

sw.epilog.if.end55_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.then54:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

if.end55:                                         ; preds = %if.then54, %sw.epilog.if.end55_crit_edge
  %convrate.0 = phi i32 [ 9, %if.then54 ], [ %call43, %sw.epilog.if.end55_crit_edge ]
  %conv56 = and i32 %convrate.0, 255
  %sub = sub nsw i32 9, %conv56
  %shl = shl nuw nsw i32 1000, %sub
  %max_convrate_hz57 = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 10
  %27 = ptrtoint ptr %max_convrate_hz57 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_convrate_hz57, align 4
  %div = sdiv i32 %shl, %28
  %update_interval = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 9
  %29 = ptrtoint ptr %update_interval to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %update_interval, align 4
  %30 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp59 = icmp eq i32 %31, 2
  br i1 %cmp59, label %if.then61, label %if.end55.if.end88_crit_edge

if.end55.if.end88_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

if.then61:                                        ; preds = %if.end55
  %call62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 69) #10
  %and65 = and i32 %call62, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.then61.if.end68_crit_edge, label %if.then67

if.then61.if.end68_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.then67:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #12
  %lut_temp_highres = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 24
  %32 = ptrtoint ptr %lut_temp_highres to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %lut_temp_highres, align 2
  br label %if.end68

if.end68:                                         ; preds = %if.then67, %if.then61.if.end68_crit_edge
  %and70 = and i32 %call62, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end82_crit_edge, label %land.lhs.true

if.end68.if.end82_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true:                                    ; preds = %if.end68
  %33 = ptrtoint ptr %config_fan to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %config_fan, align 1
  %35 = and i8 %34, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool75.not = icmp eq i8 %35, 0
  br i1 %tobool75.not, label %land.lhs.true76, label %land.lhs.true.if.end82_crit_edge

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

land.lhs.true76:                                  ; preds = %land.lhs.true
  %36 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %pwm1_freq, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %cmp79 = icmp eq i8 %37, 8
  br i1 %cmp79, label %if.then81, label %land.lhs.true76.if.end82_crit_edge

land.lhs.true76.if.end82_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then81:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  %pwm_highres = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 23
  %38 = ptrtoint ptr %pwm_highres to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %pwm_highres, align 1
  br label %if.end82

if.end82:                                         ; preds = %if.then81, %land.lhs.true76.if.end82_crit_edge, %land.lhs.true.if.end82_crit_edge, %if.end68.if.end82_crit_edge
  %and84 = and i32 %call62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end82.if.end88thread-pre-split_crit_edge, label %if.then86

if.end82.if.end88thread-pre-split_crit_edge:      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88thread-pre-split

if.then86:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %remote_unsigned = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 25
  %39 = ptrtoint ptr %remote_unsigned to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %remote_unsigned, align 1
  br label %if.end88thread-pre-split

if.end88thread-pre-split:                         ; preds = %if.then86, %if.end82.if.end88thread-pre-split_crit_edge
  %40 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr = load i32, ptr %kind, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.end88thread-pre-split, %if.end55.if.end88_crit_edge
  %41 = phi i32 [ %.pr, %if.end88thread-pre-split ], [ %31, %if.end55.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp90 = icmp eq i32 %41, 0
  br i1 %cmp90, label %do.body93, label %if.end88.do.body116_crit_edge

if.end88.do.body116_crit_edge:                    ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body116

do.body93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm63_init_client.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm63_init_client, %do.body116)) #10
          to label %if.then107 [label %do.body116], !srcloc !266

if.then107:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %config, align 4
  %44 = and i8 %43, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool111.not = icmp eq i8 %44, 0
  %cond = select i1 %tobool111.not, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm63_init_client.__UNIQUE_ID_ddebug330, ptr noundef %dev2, ptr noundef nonnull @.str.5, ptr noundef nonnull %cond) #10
  br label %do.body116

do.body116:                                       ; preds = %if.then107, %do.body93, %if.end88.do.body116_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm63_init_client.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm63_init_client, %do.body147)) #10
          to label %if.then130 [label %do.body147], !srcloc !266

if.then130:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %config_fan to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %config_fan, align 1
  %47 = and i8 %46, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool134.not = icmp eq i8 %47, 0
  %cond135 = select i1 %tobool134.not, ptr @.str.10, ptr @.str.9
  %cond140 = select i1 %tobool134.not, i32 180000, i32 700
  %48 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pwm1_freq, align 2
  %conv142 = zext i8 %49 to i32
  %div143 = udiv i32 %cond140, %conv142
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm63_init_client.__UNIQUE_ID_ddebug331, ptr noundef %dev2, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond135, i32 noundef %div143) #10
  br label %do.body147

do.body147:                                       ; preds = %if.then130, %do.body116
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm63_init_client.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm63_init_client, %do.end174)) #10
          to label %if.then161 [label %do.end174], !srcloc !266

if.then161:                                       ; preds = %do.body147
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %config_fan to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %config_fan, align 1
  %conv163 = zext i8 %51 to i32
  %and164 = and i32 %conv163, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  %cond166 = select i1 %tobool165.not, ptr @.str.13, ptr @.str.12
  %and169 = and i32 %conv163, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  %cond171 = select i1 %tobool170.not, ptr @.str.15, ptr @.str.14
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm63_init_client.__UNIQUE_ID_ddebug332, ptr noundef %dev2, ptr noundef nonnull @.str.11, ptr noundef nonnull %cond166, ptr noundef nonnull %cond171) #10
  br label %do.end174

do.end174:                                        ; preds = %if.then161, %do.body147
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @lm63_attribute_mode(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cmp = icmp eq ptr %attr, @sensor_dev_attr_temp2_crit
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %kind = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kind, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %3, label %land.lhs.true.if.end_crit_edge [
    i32 1, label %land.lhs.true.if.then_crit_edge
    i32 2, label %land.lhs.true5
  ]

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %config = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %config, align 4
  %7 = and i8 %6, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true5.if.end_crit_edge, label %land.lhs.true5.if.then_crit_edge

land.lhs.true5.if.then_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true5.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %8 = load i16, ptr getelementptr inbounds (%struct.sensor_device_attribute, ptr @sensor_dev_attr_temp2_crit, i32 0, i32 0, i32 0, i32 1), align 4
  %9 = or i16 %8, 128
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %mode8 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %10 = ptrtoint ptr %mode8 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %mode8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i16 [ %9, %if.then ], [ %11, %if.end ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_remote_temp8(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %remote_unsigned.i = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 25
  %2 = ptrtoint ptr %remote_unsigned.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %remote_unsigned.i, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %arrayidx2.i = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 17, i32 %1
  %4 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %5 to i32
  %conv3.i = sext i8 %5 to i32
  %retval.0.in.i = select i1 %tobool.not.i, i32 %conv3.i, i32 %conv.i
  %retval.0.i = mul nsw i32 %retval.0.in.i, 1000
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp2_offset, align 4
  %add = add i32 %retval.0.i, %7
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %add)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp8(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %5, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb62
  ]

sw.bb:                                            ; preds = %if.end
  %remote_unsigned = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %remote_unsigned to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %remote_unsigned, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %temp2_offset27 = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %temp2_offset27 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp2_offset27, align 4
  %sub28 = sub i32 %11, %13
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %14 = call i32 @llvm.smax.i32(i32 %sub28, i32 0)
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 255000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp13.not = icmp eq i32 %15, 0
  %add = add nuw nsw i32 %15, 500
  %div19152 = udiv i32 %add, 1000
  %cond25 = select i1 %cmp13.not, i32 0, i32 %div19152
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %16 = call i32 @llvm.smax.i32(i32 %sub28, i32 -128000)
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp45 = icmp sgt i32 %16, 0
  %cond60.in.v = select i1 %cmp45, i32 500, i32 -500
  %cond60.in = add nsw i32 %cond60.in.v, %17
  %cond60 = sdiv i32 %cond60.in, 1000
  br label %sw.epilog

sw.bb62:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %20 = call i32 @llvm.smax.i32(i32 %19, i32 -128000)
  %21 = call i32 @llvm.smin.i32(i32 %20, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp80 = icmp sgt i32 %20, 0
  %cond95.in.v = select i1 %cmp80, i32 500, i32 -500
  %cond95.in = add nsw i32 %cond95.in.v, %21
  %cond95 = sdiv i32 %cond95.in, 1000
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %.tr = trunc i32 %5 to i8
  %22 = shl i8 %.tr, 1
  %conv98 = add i8 %22, 74
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %temp2_offset.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %temp2_offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %temp2_offset.i, align 4
  %sub.i = sub i32 %24, %26
  %lut_temp_highres.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 24
  %27 = ptrtoint ptr %lut_temp_highres.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %lut_temp_highres.i, align 2, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  %29 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #10
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 127500) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp8.not.i = icmp eq i32 %30, 0
  %add.i = add nuw nsw i32 %30, 250
  %div1479.i = udiv i32 %add.i, 500
  %cond20.i = select i1 %cmp8.not.i, i32 0, i32 %div1479.i
  br label %sw.epilog

if.else.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %31 = call i32 @llvm.umin.i32(i32 %29, i32 127000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp38.not.i = icmp eq i32 %31, 0
  %add46.i = add nuw nsw i32 %31, 500
  %div4778.i = udiv i32 %add46.i, 1000
  %cond53.i = select i1 %cmp38.not.i, i32 0, i32 %div4778.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else.i, %if.then.i, %sw.bb62, %if.else, %if.then4
  %reg.0 = phi i8 [ 5, %sw.bb62 ], [ 25, %if.then4 ], [ 25, %if.else ], [ %conv98, %if.then.i ], [ %conv98, %if.else.i ]
  %temp.0 = phi i32 [ %cond95, %sw.bb62 ], [ %cond25, %if.then4 ], [ %cond60, %if.else ], [ %cond20.i, %if.then.i ], [ %cond53.i, %if.else.i ]
  %conv100 = trunc i32 %temp.0 to i8
  %arrayidx = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 %5
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv100, ptr %arrayidx, align 1
  %call102 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv100) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm63_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %last_updated = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %7) #10
  %add = add i32 %call2.i, %5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end91_crit_edge

lor.lhs.false.if.end91_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end91

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %config = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %config, align 4
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not = icmp eq i8 %13, 0
  br i1 %tobool3.not, label %if.then.if.end_crit_edge, label %if.then4

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 70) #10
  %14 = trunc i32 %call5 to i16
  %conv7 = and i16 %14, 252
  %fan = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %fan to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv7, ptr %fan, align 2
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 71) #10
  %16 = ptrtoint ptr %fan to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %fan, align 2
  %call8.tr = trunc i32 %call8 to i16
  %18 = shl i16 %call8.tr, 8
  %conv12 = or i16 %18, %17
  store i16 %conv12, ptr %fan, align 2
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 72) #10
  %and14 = and i32 %call13, 252
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 73) #10
  %shl16 = shl i32 %call15, 8
  %or17 = or i32 %shl16, %and14
  %conv18 = trunc i32 %or17 to i16
  %arrayidx20 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv18, ptr %arrayidx20, align 2
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.then.if.end_crit_edge
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 77) #10
  %conv22 = trunc i32 %call21 to i8
  %pwm1_freq = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 15
  %conv24 = and i32 %call21, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv24)
  %cmp25 = icmp eq i32 %conv24, 0
  %spec.select = select i1 %cmp25, i8 1, i8 %conv22
  %20 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %spec.select, ptr %pwm1_freq, align 2
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 76) #10
  %conv31 = trunc i32 %call30 to i8
  %pwm1 = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 16
  %21 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv31, ptr %pwm1, align 1
  %call33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #10
  %conv34 = trunc i32 %call33 to i8
  %temp8 = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 17
  %22 = ptrtoint ptr %temp8 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv34, ptr %temp8, align 4
  %call36 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #10
  %conv37 = trunc i32 %call36 to i8
  %arrayidx39 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 1
  %23 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv37, ptr %arrayidx39, align 1
  %call40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #10
  %call40.tr = trunc i32 %call40 to i16
  %conv42 = shl i16 %call40.tr, 8
  %temp11 = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %temp11 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv42, ptr %temp11, align 4
  %call44 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #10
  %25 = ptrtoint ptr %temp11 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %temp11, align 4
  %27 = trunc i32 %call44 to i16
  %conv49 = or i16 %26, %27
  store i16 %conv49, ptr %temp11, align 4
  %call50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #10
  %shl51 = shl i32 %call50, 8
  %call52 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #10
  %or53 = or i32 %shl51, %call52
  %conv54 = trunc i32 %or53 to i16
  %arrayidx56 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv54, ptr %arrayidx56, align 2
  %call57 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #10
  %shl58 = shl i32 %call57, 8
  %call59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #10
  %or60 = or i32 %shl58, %call59
  %conv61 = trunc i32 %or60 to i16
  %arrayidx63 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 18, i32 2
  %29 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv61, ptr %arrayidx63, align 4
  %call64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #10
  %shl65 = shl i32 %call64, 8
  %call66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #10
  %or67 = or i32 %shl65, %call66
  %conv68 = trunc i32 %or67 to i16
  %arrayidx70 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 18, i32 3
  %30 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv68, ptr %arrayidx70, align 2
  %kind = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 7
  %31 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp71 = icmp eq i32 %32, 2
  br i1 %cmp71, label %if.then73, label %if.end.if.end79_crit_edge

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then73:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 49) #10
  %shl75 = shl i32 %call74, 8
  %call76 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 50) #10
  %or77 = or i32 %shl75, %call76
  %conv78 = trunc i32 %or77 to i16
  %temp11u = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 19
  %33 = ptrtoint ptr %temp11u to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv78, ptr %temp11u, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %if.end.if.end79_crit_edge
  %call80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #10
  %conv81 = trunc i32 %call80 to i8
  %arrayidx83 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 2
  %34 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv81, ptr %arrayidx83, align 2
  %call84 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #10
  %conv85 = trunc i32 %call84 to i8
  %temp2_crit_hyst = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 20
  %35 = ptrtoint ptr %temp2_crit_hyst to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv85, ptr %temp2_crit_hyst, align 2
  %call86 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #10
  %36 = trunc i32 %call86 to i8
  %conv88 = and i8 %36, 127
  %alarms = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 22
  %37 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv88, ptr %alarms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %38 = load volatile i32, ptr @jiffies, align 128
  %39 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %last_updated, align 4
  %valid90 = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 3
  %40 = ptrtoint ptr %valid90 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %valid90, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.end79, %lor.lhs.false.if.end91_crit_edge
  tail call fastcc void @lm63_update_lut(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %update_lock) #10
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lm63_update_lut(ptr nocapture noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %lut_last_updated = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %lut_last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lut_last_updated, align 4
  %add = add i32 %3, 500
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %lut_valid = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 4
  %5 = ptrtoint ptr %lut_valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %lut_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %lut_size = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 11
  %7 = ptrtoint ptr %lut_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %lut_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp232 = icmp sgt i32 %8, 0
  br i1 %cmp232, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.033 = phi i32 [ %add5, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.033 to i8
  %9 = shl i8 %i.0.tr, 1
  %conv = add i8 %9, 81
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #10
  %conv4 = trunc i32 %call to i8
  %add5 = add nuw nsw i32 %i.033, 1
  %arrayidx = getelementptr %struct.lm63_data, ptr %data, i32 0, i32 16, i32 %add5
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv4, ptr %arrayidx, align 1
  %conv8 = add i8 %9, 80
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv8) #10
  %conv10 = trunc i32 %call9 to i8
  %add11 = add nuw i32 %i.033, 3
  %arrayidx12 = getelementptr %struct.lm63_data, ptr %data, i32 0, i32 17, i32 %add11
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %arrayidx12, align 1
  %12 = ptrtoint ptr %lut_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lut_size, align 4
  %cmp2 = icmp slt i32 %add5, %13
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 79) #10
  %conv14 = trunc i32 %call13 to i8
  %lut_temp_hyst = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 21
  %14 = ptrtoint ptr %lut_temp_hyst to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %lut_temp_hyst, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %16 = ptrtoint ptr %lut_last_updated to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %lut_last_updated, align 4
  %lut_valid16 = getelementptr inbounds %struct.lm63_data, ptr %data, i32 0, i32 4
  %17 = ptrtoint ptr %lut_valid16 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %lut_valid16, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %pwm_highres = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %pwm_highres to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pwm_highres, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %arrayidx2 = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 16, i32 %1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %5 to i32
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  %pwm1_freq = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pwm1_freq, align 2
  %conv4 = zext i8 %7 to i32
  %mul = shl nuw nsw i32 %conv4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %conv3)
  %cmp.not = icmp ugt i32 %mul, %conv3
  br i1 %cmp.not, label %cond.false, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.false:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul9 = mul nuw nsw i32 %conv3, 255
  %add = add nuw nsw i32 %mul9, %conv4
  %div.lhs.trunc = trunc i32 %add to i16
  %div.rhs.trunc = trunc i32 %mul to i16
  %div24 = udiv i16 %div.lhs.trunc, %div.rhs.trunc
  %div.zext = zext i16 %div24 to i32
  br label %if.end

if.end:                                           ; preds = %cond.false, %if.else.if.end_crit_edge, %entry.if.end_crit_edge
  %pwm.0 = phi i32 [ %div.zext, %cond.false ], [ 255, %if.else.if.end_crit_edge ], [ %conv3, %entry.if.end_crit_edge ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %pwm.0)
  ret i32 %call15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm1(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !269
  %config_fan = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %config_fan to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %config_fan, align 1
  %9 = and i8 %8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool6.not = icmp eq i32 %5, 0
  %10 = trunc i32 %5 to i8
  %11 = shl i8 %10, 1
  %phi.cast = add i8 %11, 79
  %cond = select i1 %tobool6.not, i8 76, i8 %phi.cast
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 255)
  %15 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %pwm_highres = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 23
  %16 = ptrtoint ptr %pwm_highres to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pwm_highres, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool21.not = icmp eq i8 %17, 0
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  br i1 %tobool21.not, label %cond.false24, label %if.end5.cond.end29_crit_edge

if.end5.cond.end29_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end29

cond.false24:                                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %pwm1_freq = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %pwm1_freq to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pwm1_freq, align 2
  %conv25 = zext i8 %21 to i32
  %mul26 = shl i32 %19, 1
  %mul27 = mul i32 %mul26, %conv25
  %add28 = add i32 %mul27, 127
  %div = udiv i32 %add28, 255
  br label %cond.end29

cond.end29:                                       ; preds = %cond.false24, %if.end5.cond.end29_crit_edge
  %cond30 = phi i32 [ %div, %cond.false24 ], [ %19, %if.end5.cond.end29_crit_edge ]
  %conv31 = trunc i32 %cond30 to i8
  %arrayidx = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 16, i32 %5
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv31, ptr %arrayidx, align 1
  %call34 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %cond, i8 noundef zeroext %conv31) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end29, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end29 ], [ -1, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %config_fan = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %config_fan to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config_fan, align 1
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr noundef %dev, ptr nocapture noundef readnone %dummy, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %7)
  %8 = icmp ult i32 %7, -2
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp6 = icmp eq i32 %6, 2
  br i1 %cmp6, label %land.lhs.true, label %if.end5.if.end10_crit_edge

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %update_lock.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #10
  call fastcc void @lm63_update_lut(ptr noundef %1) #10
  %lut_size.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %lut_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lut_size.i, align 4
  %smax.i = call i32 @llvm.smax.i32(i32 %10, i32 1) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %lor.lhs.false.i.for.cond.i_crit_edge, %land.lhs.true
  %i.0.i = phi i32 [ 1, %land.lhs.true ], [ %add.i, %lor.lhs.false.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i, i32 %smax.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, %smax.i
  br i1 %exitcond.not.i, label %for.cond.i.lm63_lut_looks_bad.exit_crit_edge, label %for.body.i

for.cond.i.lm63_lut_looks_bad.exit_crit_edge:     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm63_lut_looks_bad.exit

for.body.i:                                       ; preds = %for.cond.i
  %add.i = add nuw i32 %i.0.i, 1
  %arrayidx.i = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 16, i32 %i.0.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %arrayidx3.i = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 16, i32 %add.i
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp5.i = icmp ugt i8 %12, %14
  br i1 %cmp5.i, label %for.body.i.do.end.i_crit_edge, label %lor.lhs.false.i

for.body.i.do.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %add7.i = add nuw i32 %i.0.i, 3
  %sub8.i = add nuw i32 %i.0.i, 2
  %arrayidx9.i = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 %sub8.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i, align 1
  %arrayidx13.i = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 %add7.i
  %17 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13.i, align 1
  %cmp15.i = icmp sgt i8 %16, %18
  br i1 %cmp15.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.for.cond.i_crit_edge

lor.lhs.false.i.for.cond.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %for.body.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %i.0.i, i32 noundef %add.i) #13
  br label %lm63_lut_looks_bad.exit

lm63_lut_looks_bad.exit:                          ; preds = %do.end.i, %for.cond.i.lm63_lut_looks_bad.exit_crit_edge
  %i.044.i = phi i32 [ %i.0.i, %do.end.i ], [ %smax.i, %for.cond.i.lm63_lut_looks_bad.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock.i) #10
  %19 = ptrtoint ptr %lut_size.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lut_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.044.i, i32 %20)
  %cmp20.i.not = icmp eq i32 %i.044.i, %20
  br i1 %cmp20.i.not, label %lm63_lut_looks_bad.exit.if.end10_crit_edge, label %lm63_lut_looks_bad.exit.cleanup_crit_edge

lm63_lut_looks_bad.exit.cleanup_crit_edge:        ; preds = %lm63_lut_looks_bad.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lm63_lut_looks_bad.exit.if.end10_crit_edge:       ; preds = %lm63_lut_looks_bad.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %lm63_lut_looks_bad.exit.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %call11 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 74) #10
  %conv = trunc i32 %call11 to i8
  %config_fan = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 13
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp12 = icmp eq i32 %22, 1
  %conv20 = and i8 %conv, -33
  %masksel = select i1 %cmp12, i8 32, i8 0
  %storemerge = or i8 %masksel, %conv20
  %23 = ptrtoint ptr %config_fan to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %storemerge, ptr %config_fan, align 1
  %call23 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 74, i8 noundef zeroext %storemerge) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lm63_lut_looks_bad.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -1, %lm63_lut_looks_bad.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_lut_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx.i = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %3 to i32
  %lut_temp_highres.i = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 24
  %4 = ptrtoint ptr %lut_temp_highres.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lut_temp_highres.i, align 2, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, i32 1000, i32 500
  %mul.i = mul nsw i32 %cond.i, %conv.i
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp2_offset, align 4
  %add = add i32 %mul.i, %7
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %add)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_lut_temp_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx.i = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = sext i8 %3 to i32
  %lut_temp_highres.i = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 24
  %4 = ptrtoint ptr %lut_temp_highres.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %lut_temp_highres.i, align 2, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond.i = select i1 %tobool.not.i, i32 1000, i32 500
  %mul.i = mul nsw i32 %cond.i, %conv.i
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 8
  %6 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp2_offset, align 4
  %add = add i32 %mul.i, %7
  %lut_temp_hyst = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 21
  %8 = ptrtoint ptr %lut_temp_hyst to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %lut_temp_hyst, align 1
  %conv = zext i8 %9 to i32
  %mul.neg = mul nsw i32 %conv, -1000
  %sub = add i32 %add, %mul.neg
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %sub)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_local_temp8(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp11(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %temp11u = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %temp11u to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %temp11u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool1.not = icmp eq i16 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %4 = lshr i16 %3, 5
  %div = zext i16 %4 to i32
  br label %if.end24

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %temp11 = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 18
  %5 = ptrtoint ptr %temp11 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %temp11, align 2
  %7 = sdiv i16 %6, 32
  %div5 = sext i16 %7 to i32
  br label %if.end24

if.else7:                                         ; preds = %entry
  %remote_unsigned = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 25
  %8 = ptrtoint ptr %remote_unsigned to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %remote_unsigned, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp ne i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %or.cond = select i1 %tobool8.not, i1 %cmp, i1 false
  br i1 %or.cond, label %if.then11, label %if.else17

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13 = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 18, i32 2
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %arrayidx13, align 2
  %12 = lshr i16 %11, 5
  %div15 = zext i16 %12 to i32
  br label %if.end24

if.else17:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx19 = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 18, i32 %1
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx19, align 2
  %15 = sdiv i16 %14, 32
  %div21 = sext i16 %15 to i32
  br label %if.end24

if.end24:                                         ; preds = %if.else17, %if.then11, %if.else, %if.then2
  %temp.0.in = phi i32 [ %div15, %if.then11 ], [ %div21, %if.else17 ], [ %div, %if.then2 ], [ %div5, %if.else ]
  %temp.0 = mul nsw i32 %temp.0.in, 125
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 8
  %16 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp2_offset, align 4
  %add = add i32 %temp.0, %17
  %call25 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %add)
  ret i32 %call25
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp11(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !269
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %remote_unsigned = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 25
  %7 = ptrtoint ptr %remote_unsigned to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %remote_unsigned, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool3.not = icmp ne i8 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  %or.cond = select i1 %tobool3.not, i1 %cmp, i1 false
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 8
  %11 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %temp2_offset, align 4
  %sub = sub i32 %10, %12
  br i1 %or.cond, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 255875)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14.not = icmp eq i32 %14, 0
  %add = add nuw nsw i32 %14, 62
  %div20129 = udiv i32 %add, 125
  %div20.tr = trunc i32 %div20129 to i16
  %phi.cast = shl nuw i16 %div20.tr, 5
  %cond26 = select i1 %cmp14.not, i16 0, i16 %phi.cast
  br label %if.end67

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = call i32 @llvm.smax.i32(i32 %sub, i32 -128000)
  %16 = call i32 @llvm.smin.i32(i32 %15, i32 127875)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp47 = icmp sgt i32 %15, 0
  %cond62.in.v = select i1 %cmp47, i32 62, i32 -62
  %cond62.in = add nsw i32 %cond62.in.v, %16
  %cond62 = sdiv i32 %cond62.in, 125
  %cond62.tr = trunc i32 %cond62 to i16
  %conv64 = shl nsw i16 %cond62.tr, 5
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.then4
  %.sink = phi i32 [ %6, %if.else ], [ 2, %if.then4 ]
  %conv64.sink = phi i16 [ %conv64, %if.else ], [ %cond26, %if.then4 ]
  %arrayidx66 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 18, i32 %.sink
  %17 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv64.sink, ptr %arrayidx66, align 2
  %sub68 = shl i32 %6, 1
  %mul69 = add i32 %sub68, -2
  %arrayidx70 = getelementptr [6 x i8], ptr @set_temp11.reg, i32 0, i32 %mul69
  %18 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx70, align 1
  %arrayidx72 = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 18, i32 %6
  %20 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx72, align 2
  %22 = lshr i16 %21, 8
  %conv74 = trunc i16 %22 to i8
  %call75 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %19, i8 noundef zeroext %conv74) #10
  %add78 = add i32 %sub68, -1
  %arrayidx79 = getelementptr [6 x i8], ptr @set_temp11.reg, i32 0, i32 %add78
  %23 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx79, align 1
  %25 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx72, align 2
  %conv83 = trunc i16 %26 to i8
  %call84 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %24, i8 noundef zeroext %conv83) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end67 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_crit_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %remote_unsigned.i = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 25
  %0 = ptrtoint ptr %remote_unsigned.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %remote_unsigned.i, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %arrayidx2.i = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 17, i32 2
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %3 to i32
  %conv3.i = sext i8 %3 to i32
  %retval.0.in.i = select i1 %tobool.not.i, i32 %conv3.i, i32 %conv.i
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 8
  %4 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %temp2_offset, align 4
  %temp2_crit_hyst = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 20
  %6 = ptrtoint ptr %temp2_crit_hyst to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %temp2_crit_hyst, align 2
  %conv = zext i8 %7 to i32
  %reass.add = sub nsw i32 %retval.0.in.i, %conv
  %reass.mul = mul nsw i32 %reass.add, 1000
  %sub = add i32 %reass.mul, %5
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %sub)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_crit_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %remote_unsigned.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 25
  %5 = ptrtoint ptr %remote_unsigned.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %remote_unsigned.i, align 1, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %arrayidx2.i = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 17, i32 2
  %7 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx2.i, align 1
  %conv.i = zext i8 %8 to i32
  %conv3.i = sext i8 %8 to i32
  %retval.0.in.i = select i1 %tobool.not.i, i32 %conv3.i, i32 %conv.i
  %retval.0.i = mul nsw i32 %retval.0.in.i, 1000
  %temp2_offset = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %temp2_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp2_offset, align 4
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %add = sub i32 %10, %12
  %sub = add i32 %add, %retval.0.i
  %13 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp11.not = icmp eq i32 %14, 0
  %add17 = add nuw nsw i32 %14, 500
  %div1847 = udiv i32 %add17, 1000
  %phi.cast = trunc i32 %div1847 to i8
  %cond24 = select i1 %cmp11.not, i8 0, i8 %phi.cast
  %call26 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 33, i8 noundef zeroext %cond24) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 22
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarms, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.lm63_data, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarms, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_interval = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %update_interval, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 100000)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %shl.i = shl nuw nsw i32 %5, 6
  %max_convrate_hz.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %max_convrate_hz.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_convrate_hz.i, align 4
  %div.i = sdiv i32 32768000, %9
  %mul17.i = mul nsw i32 %div.i, 3
  %div21618.i = lshr i32 %mul17.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %div21618.i)
  %cmp3.not19.i = icmp ult i32 %shl.i, %div21618.i
  br i1 %cmp3.not19.i, label %if.end.for.inc.i_crit_edge, label %if.end.lm63_set_convrate.exit_crit_edge

if.end.lm63_set_convrate.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm63_set_convrate.exit

if.end.for.inc.i_crit_edge:                       ; preds = %if.end
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.i.for.inc.i_crit_edge, %if.end.for.inc.i_crit_edge
  %i.021.i = phi i32 [ %inc.i, %for.inc.i.for.inc.i_crit_edge ], [ 0, %if.end.for.inc.i_crit_edge ]
  %update_interval.020.i = phi i32 [ %shr.i, %for.inc.i.for.inc.i_crit_edge ], [ %div.i, %if.end.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %shr.i = lshr i32 %update_interval.020.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.021.i)
  %cmp.i = icmp ult i32 %i.021.i, 8
  %mul.i = mul i32 %shr.i, 3
  %div216.i = lshr i32 %mul.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %div216.i)
  %cmp3.not.i = icmp ult i32 %shl.i, %div216.i
  %or.cond.i = select i1 %cmp.i, i1 %cmp3.not.i, i1 false
  br i1 %or.cond.i, label %for.inc.i.for.inc.i_crit_edge, label %for.inc.i.lm63_set_convrate.exit_crit_edge

for.inc.i.lm63_set_convrate.exit_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lm63_set_convrate.exit

for.inc.i.for.inc.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lm63_set_convrate.exit:                           ; preds = %for.inc.i.lm63_set_convrate.exit_crit_edge, %if.end.lm63_set_convrate.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.lm63_set_convrate.exit_crit_edge ], [ %inc.i, %for.inc.i.lm63_set_convrate.exit_crit_edge ]
  %conv.i = trunc i32 %i.0.lcssa.i to i8
  %call.i18 = call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #10
  %sub.i = sub nuw nsw i32 9, %i.0.lcssa.i
  %shl4.i = shl nuw nsw i32 1000, %sub.i
  %10 = ptrtoint ptr %max_convrate_hz.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_convrate_hz.i, align 4
  %div6.i = sdiv i32 %shl4.i, %11
  %update_interval7.i = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %update_interval7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div6.i, ptr %update_interval7.i, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %lm63_set_convrate.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %lm63_set_convrate.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm63_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm63_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.89)
  switch i16 %3, label %cond.false [
    i16 -4, label %entry.cond.end_crit_edge
    i16 0, label %entry.cond.end_crit_edge17
  ]

entry.cond.end_crit_edge17:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %3 to i32
  %div = udiv i32 5400000, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge, %entry.cond.end_crit_edge17
  %cond = phi i32 [ %div, %cond.false ], [ 0, %entry.cond.end_crit_edge ], [ 0, %entry.cond.end_crit_edge17 ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %cond)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %dummy, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %6)
  %cmp = icmp ult i32 %6, 83
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 5400000, %6
  %7 = trunc i32 %div to i16
  %phi.cast = and i16 %7, -4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i16 [ %phi.cast, %cond.false ], [ -4, %if.end.cond.end_crit_edge ]
  %arrayidx = getelementptr %struct.lm63_data, ptr %1, i32 0, i32 14, i32 1
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %cond, ptr %arrayidx, align 2
  %conv7 = trunc i16 %cond to i8
  %call8 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 72, i8 noundef zeroext %conv7) #10
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = lshr i16 %10, 8
  %conv12 = trunc i16 %11 to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 73, i8 noundef zeroext %conv12) #10
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_type_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %trutherm = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %trutherm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %trutherm, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool.not, ptr @.str.68, ptr @.str.67
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull %cond)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_type_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !269
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %.off = add i32 %6, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %update_lock = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #10
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp7 = icmp eq i32 %8, 1
  %trutherm = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 26
  %frombool = zext i1 %cmp7 to i8
  %9 = ptrtoint ptr %trutherm to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %trutherm, align 4
  %call8 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 48) #10
  %conv = and i32 %call8, 253
  %10 = ptrtoint ptr %trutherm to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %trutherm, align 4, !range !268
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %or = or i32 %cond, %conv
  %conv12 = trunc i32 %or to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 48, i8 noundef zeroext %conv12) #10
  %valid = getelementptr inbounds %struct.lm63_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 157)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !24, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !37, !38, !39, !41, !43, !44, !46, !48, !50, !51, !53, !54, !56, !57, !58, !59, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !183, !185, !186, !188, !189, !191, !192, !194, !196, !198, !199, !201, !203, !205, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !247, !249, !250, !251, !253, !255}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__initcall__kmod_lm63__333_1173_lm63_driver_init6, !1, !"__initcall__kmod_lm63__333_1173_lm63_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm63.c", i32 1173, i32 1}
!2 = !{ptr @__exitcall_lm63_driver_exit, !1, !"__exitcall_lm63_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author334, !4, !"__UNIQUE_ID_author334", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm63.c", i32 1175, i32 1}
!5 = !{ptr @__UNIQUE_ID_description335, !6, !"__UNIQUE_ID_description335", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm63.c", i32 1176, i32 1}
!7 = !{ptr @__UNIQUE_ID_file336, !8, !"__UNIQUE_ID_file336", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm63.c", i32 1177, i32 1}
!9 = !{ptr @__UNIQUE_ID_license337, !8, !"__UNIQUE_ID_license337", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm63.c", i32 1164, i32 11}
!12 = !{ptr @lm63_driver, !13, !"lm63_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm63.c", i32 1161, i32 26}
!14 = !{ptr @lm63_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm63.c", i32 1104, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm63.c", i32 1026, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @lm63_init_client.__UNIQUE_ID_ddebug329, !18, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/lm63.c", i32 1079, i32 3}
!24 = !{ptr @lm63_init_client.__UNIQUE_ID_ddebug330, !23, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm63.c", i32 1082, i32 2}
!29 = !{ptr @lm63_init_client.__UNIQUE_ID_ddebug331, !28, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lm63.c", i32 1085, i32 2}
!34 = !{ptr @lm63_init_client.__UNIQUE_ID_ddebug332, !33, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @lm63_group, !40, !"lm63_group", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lm63.c", i32 945, i32 37}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/lm63.c", i32 830, i32 8}
!43 = !{ptr @sensor_dev_attr_temp2_crit, !42, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/lm63.c", i32 471, i32 22}
!46 = !{ptr @lm63_attributes, !47, !"lm63_attributes", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/lm63.c", i32 848, i32 26}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/lm63.c", i32 744, i32 8}
!50 = !{ptr @sensor_dev_attr_pwm1, !49, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/lm63.c", i32 745, i32 8}
!53 = !{ptr @dev_attr_pwm1_enable, !52, !"dev_attr_pwm1_enable", i1 false, i1 false}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/lm63.c", i32 316, i32 4}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @lm63_lut_looks_bad._entry, !55, !"_entry", i1 false, i1 false}
!60 = !{ptr @lm63_lut_looks_bad._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/lm63.c", i32 746, i32 8}
!63 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !62, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/lm63.c", i32 748, i32 8}
!66 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp, !65, !"sensor_dev_attr_pwm1_auto_point1_temp", i1 false, i1 false}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/lm63.c", i32 750, i32 8}
!69 = !{ptr @sensor_dev_attr_pwm1_auto_point1_temp_hyst, !68, !"sensor_dev_attr_pwm1_auto_point1_temp_hyst", i1 false, i1 false}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/lm63.c", i32 752, i32 8}
!72 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !71, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/lm63.c", i32 754, i32 8}
!75 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp, !74, !"sensor_dev_attr_pwm1_auto_point2_temp", i1 false, i1 false}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/lm63.c", i32 756, i32 8}
!78 = !{ptr @sensor_dev_attr_pwm1_auto_point2_temp_hyst, !77, !"sensor_dev_attr_pwm1_auto_point2_temp_hyst", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/lm63.c", i32 758, i32 8}
!81 = !{ptr @sensor_dev_attr_pwm1_auto_point3_pwm, !80, !"sensor_dev_attr_pwm1_auto_point3_pwm", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/lm63.c", i32 760, i32 8}
!84 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp, !83, !"sensor_dev_attr_pwm1_auto_point3_temp", i1 false, i1 false}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/lm63.c", i32 762, i32 8}
!87 = !{ptr @sensor_dev_attr_pwm1_auto_point3_temp_hyst, !86, !"sensor_dev_attr_pwm1_auto_point3_temp_hyst", i1 false, i1 false}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/lm63.c", i32 764, i32 8}
!90 = !{ptr @sensor_dev_attr_pwm1_auto_point4_pwm, !89, !"sensor_dev_attr_pwm1_auto_point4_pwm", i1 false, i1 false}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/lm63.c", i32 766, i32 8}
!93 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp, !92, !"sensor_dev_attr_pwm1_auto_point4_temp", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/lm63.c", i32 768, i32 8}
!96 = !{ptr @sensor_dev_attr_pwm1_auto_point4_temp_hyst, !95, !"sensor_dev_attr_pwm1_auto_point4_temp_hyst", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/lm63.c", i32 770, i32 8}
!99 = !{ptr @sensor_dev_attr_pwm1_auto_point5_pwm, !98, !"sensor_dev_attr_pwm1_auto_point5_pwm", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/lm63.c", i32 772, i32 8}
!102 = !{ptr @sensor_dev_attr_pwm1_auto_point5_temp, !101, !"sensor_dev_attr_pwm1_auto_point5_temp", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/lm63.c", i32 774, i32 8}
!105 = !{ptr @sensor_dev_attr_pwm1_auto_point5_temp_hyst, !104, !"sensor_dev_attr_pwm1_auto_point5_temp_hyst", i1 false, i1 false}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/lm63.c", i32 776, i32 8}
!108 = !{ptr @sensor_dev_attr_pwm1_auto_point6_pwm, !107, !"sensor_dev_attr_pwm1_auto_point6_pwm", i1 false, i1 false}
!109 = !{ptr @.str.40, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/lm63.c", i32 778, i32 8}
!111 = !{ptr @sensor_dev_attr_pwm1_auto_point6_temp, !110, !"sensor_dev_attr_pwm1_auto_point6_temp", i1 false, i1 false}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/lm63.c", i32 780, i32 8}
!114 = !{ptr @sensor_dev_attr_pwm1_auto_point6_temp_hyst, !113, !"sensor_dev_attr_pwm1_auto_point6_temp_hyst", i1 false, i1 false}
!115 = !{ptr @.str.42, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/lm63.c", i32 782, i32 8}
!117 = !{ptr @sensor_dev_attr_pwm1_auto_point7_pwm, !116, !"sensor_dev_attr_pwm1_auto_point7_pwm", i1 false, i1 false}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/lm63.c", i32 784, i32 8}
!120 = !{ptr @sensor_dev_attr_pwm1_auto_point7_temp, !119, !"sensor_dev_attr_pwm1_auto_point7_temp", i1 false, i1 false}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/lm63.c", i32 786, i32 8}
!123 = !{ptr @sensor_dev_attr_pwm1_auto_point7_temp_hyst, !122, !"sensor_dev_attr_pwm1_auto_point7_temp_hyst", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/lm63.c", i32 788, i32 8}
!126 = !{ptr @sensor_dev_attr_pwm1_auto_point8_pwm, !125, !"sensor_dev_attr_pwm1_auto_point8_pwm", i1 false, i1 false}
!127 = !{ptr @.str.46, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/lm63.c", i32 790, i32 8}
!129 = !{ptr @sensor_dev_attr_pwm1_auto_point8_temp, !128, !"sensor_dev_attr_pwm1_auto_point8_temp", i1 false, i1 false}
!130 = !{ptr @.str.47, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/lm63.c", i32 792, i32 8}
!132 = !{ptr @sensor_dev_attr_pwm1_auto_point8_temp_hyst, !131, !"sensor_dev_attr_pwm1_auto_point8_temp_hyst", i1 false, i1 false}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/lm63.c", i32 819, i32 8}
!135 = !{ptr @sensor_dev_attr_temp1_input, !134, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!136 = !{ptr @.str.49, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/lm63.c", i32 823, i32 8}
!138 = !{ptr @sensor_dev_attr_temp2_input, !137, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!139 = !{ptr @.str.50, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/lm63.c", i32 824, i32 8}
!141 = !{ptr @sensor_dev_attr_temp2_min, !140, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!142 = !{ptr @set_temp11.reg, !143, !"reg", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/lm63.c", i32 553, i32 18}
!144 = !{ptr @.str.51, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/lm63.c", i32 820, i32 8}
!146 = !{ptr @sensor_dev_attr_temp1_max, !145, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!147 = !{ptr @.str.52, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/lm63.c", i32 826, i32 8}
!149 = !{ptr @sensor_dev_attr_temp2_max, !148, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!150 = !{ptr @.str.53, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/lm63.c", i32 828, i32 8}
!152 = !{ptr @sensor_dev_attr_temp2_offset, !151, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!153 = !{ptr @.str.54, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/lm63.c", i32 832, i32 8}
!155 = !{ptr @dev_attr_temp2_crit_hyst, !154, !"dev_attr_temp2_crit_hyst", i1 false, i1 false}
!156 = !{ptr @.str.55, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/lm63.c", i32 838, i32 8}
!158 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !157, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!159 = !{ptr @.str.56, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/lm63.c", i32 737, i32 22}
!161 = !{ptr @.str.57, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/lm63.c", i32 839, i32 8}
!163 = !{ptr @sensor_dev_attr_temp2_fault, !162, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!164 = !{ptr @.str.58, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/lm63.c", i32 840, i32 8}
!166 = !{ptr @sensor_dev_attr_temp2_min_alarm, !165, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!167 = !{ptr @.str.59, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/lm63.c", i32 841, i32 8}
!169 = !{ptr @sensor_dev_attr_temp2_max_alarm, !168, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!170 = !{ptr @.str.60, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/lm63.c", i32 842, i32 8}
!172 = !{ptr @sensor_dev_attr_temp1_max_alarm, !171, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/lm63.c", i32 844, i32 8}
!175 = !{ptr @dev_attr_alarms, !174, !"dev_attr_alarms", i1 false, i1 false}
!176 = !{ptr @.str.62, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/lm63.c", i32 846, i32 8}
!178 = !{ptr @dev_attr_update_interval, !177, !"dev_attr_update_interval", i1 false, i1 false}
!179 = !{ptr @lm63_group_fan1, !180, !"lm63_group_fan1", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/lm63.c", i32 958, i32 37}
!181 = !{ptr @lm63_attributes_fan1, !182, !"lm63_attributes_fan1", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/lm63.c", i32 950, i32 26}
!183 = !{ptr @.str.63, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/lm63.c", i32 740, i32 8}
!185 = !{ptr @sensor_dev_attr_fan1_input, !184, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!186 = !{ptr @.str.64, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/lm63.c", i32 741, i32 8}
!188 = !{ptr @sensor_dev_attr_fan1_min, !187, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!189 = !{ptr @.str.65, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/lm63.c", i32 837, i32 8}
!191 = !{ptr @sensor_dev_attr_fan1_min_alarm, !190, !"sensor_dev_attr_fan1_min_alarm", i1 false, i1 false}
!192 = !{ptr @lm63_group_temp2_type, !193, !"lm63_group_temp2_type", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/lm63.c", i32 900, i32 37}
!194 = !{ptr @lm63_attributes_temp2_type, !195, !"lm63_attributes_temp2_type", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/lm63.c", i32 895, i32 26}
!196 = !{ptr @.str.66, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/lm63.c", i32 834, i32 8}
!198 = !{ptr @dev_attr_temp2_type, !197, !"dev_attr_temp2_type", i1 false, i1 false}
!199 = !{ptr @.str.67, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/lm63.c", i32 693, i32 39}
!201 = !{ptr @.str.68, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/lm63.c", i32 693, i32 47}
!203 = !{ptr @lm63_group_extra_lut, !204, !"lm63_group_extra_lut", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/lm63.c", i32 920, i32 37}
!205 = !{ptr @lm63_attributes_extra_lut, !206, !"lm63_attributes_extra_lut", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/lm63.c", i32 904, i32 26}
!207 = !{ptr @.str.69, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/lm63.c", i32 794, i32 8}
!209 = !{ptr @sensor_dev_attr_pwm1_auto_point9_pwm, !208, !"sensor_dev_attr_pwm1_auto_point9_pwm", i1 false, i1 false}
!210 = !{ptr @.str.70, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/lm63.c", i32 796, i32 8}
!212 = !{ptr @sensor_dev_attr_pwm1_auto_point9_temp, !211, !"sensor_dev_attr_pwm1_auto_point9_temp", i1 false, i1 false}
!213 = !{ptr @.str.71, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/lm63.c", i32 798, i32 8}
!215 = !{ptr @sensor_dev_attr_pwm1_auto_point9_temp_hyst, !214, !"sensor_dev_attr_pwm1_auto_point9_temp_hyst", i1 false, i1 false}
!216 = !{ptr @.str.72, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/lm63.c", i32 800, i32 8}
!218 = !{ptr @sensor_dev_attr_pwm1_auto_point10_pwm, !217, !"sensor_dev_attr_pwm1_auto_point10_pwm", i1 false, i1 false}
!219 = !{ptr @.str.73, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/lm63.c", i32 802, i32 8}
!221 = !{ptr @sensor_dev_attr_pwm1_auto_point10_temp, !220, !"sensor_dev_attr_pwm1_auto_point10_temp", i1 false, i1 false}
!222 = !{ptr @.str.74, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/lm63.c", i32 804, i32 8}
!224 = !{ptr @sensor_dev_attr_pwm1_auto_point10_temp_hyst, !223, !"sensor_dev_attr_pwm1_auto_point10_temp_hyst", i1 false, i1 false}
!225 = !{ptr @.str.75, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/lm63.c", i32 806, i32 8}
!227 = !{ptr @sensor_dev_attr_pwm1_auto_point11_pwm, !226, !"sensor_dev_attr_pwm1_auto_point11_pwm", i1 false, i1 false}
!228 = !{ptr @.str.76, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/lm63.c", i32 808, i32 8}
!230 = !{ptr @sensor_dev_attr_pwm1_auto_point11_temp, !229, !"sensor_dev_attr_pwm1_auto_point11_temp", i1 false, i1 false}
!231 = !{ptr @.str.77, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/lm63.c", i32 810, i32 8}
!233 = !{ptr @sensor_dev_attr_pwm1_auto_point11_temp_hyst, !232, !"sensor_dev_attr_pwm1_auto_point11_temp_hyst", i1 false, i1 false}
!234 = !{ptr @.str.78, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/lm63.c", i32 812, i32 8}
!236 = !{ptr @sensor_dev_attr_pwm1_auto_point12_pwm, !235, !"sensor_dev_attr_pwm1_auto_point12_pwm", i1 false, i1 false}
!237 = !{ptr @.str.79, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/lm63.c", i32 814, i32 8}
!239 = !{ptr @sensor_dev_attr_pwm1_auto_point12_temp, !238, !"sensor_dev_attr_pwm1_auto_point12_temp", i1 false, i1 false}
!240 = !{ptr @.str.80, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/lm63.c", i32 816, i32 8}
!242 = !{ptr @sensor_dev_attr_pwm1_auto_point12_temp_hyst, !241, !"sensor_dev_attr_pwm1_auto_point12_temp_hyst", i1 false, i1 false}
!243 = !{ptr @lm63_of_match, !244, !"lm63_of_match", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/lm63.c", i32 1144, i32 49}
!245 = !{ptr @lm63_id, !246, !"lm63_id", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/lm63.c", i32 1136, i32 35}
!247 = !{ptr @.str.81, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/lm63.c", i32 992, i32 3}
!249 = !{ptr @.str.82, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @lm63_detect.__UNIQUE_ID_ddebug328, !248, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!251 = !{ptr @.str.83, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/lm63.c", i32 1001, i32 23}
!253 = !{ptr @.str.84, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/lm63.c", i32 1003, i32 23}
!255 = !{ptr @normal_i2c, !256, !"normal_i2c", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/lm63.c", i32 48, i32 29}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 2148987969, i64 2148987974, i64 2148987987, i64 2148988031, i64 2148988065, i64 2148988086}
!267 = !{!"branch_weights", i32 1, i32 2000}
!268 = !{i8 0, i8 2}
!269 = !{!"auto-init"}
