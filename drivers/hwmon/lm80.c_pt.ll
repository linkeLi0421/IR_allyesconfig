; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lm80.c_pt.bc'
source_filename = "../drivers/hwmon/lm80.c"
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
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
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
%struct.lm80_data = type { ptr, %struct.mutex, i8, i8, i32, [3 x [7 x i8]], [2 x [2 x i8]], [2 x i8], [5 x i16], i16 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_lm80__305_642_lm80_driver_init6 = internal global ptr @lm80_driver_init, section ".initcall6.init", align 4
@lm80_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @lm80_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lm80_id, ptr @lm80_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lm80_driver_exit = internal global ptr @lm80_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [86 x i8] c"lm80.author=Frodo Looijaard <frodol@dds.nl> and Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [29 x i8] c"lm80.description=LM80 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [29 x i8] c"lm80.file=drivers/hwmon/lm80\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [17 x i8] c"lm80.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm80\00", [27 x i8] zeroinitializer }, align 32
@lm80_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lm80\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"lm96080\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 -2], [46 x i8] zeroinitializer }, align 32
@lm80_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@lm80_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @lm80_group, ptr null], [24 x i8] zeroinitializer }, align 32
@lm80_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lm80_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@lm80_attrs = internal global { [45 x ptr], [44 x i8] } { [45 x ptr] [ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @dev_attr_alarms, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 6, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr @in_store }, i8 6, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_show, ptr null }, i8 6, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_div_show, ptr @fan_div_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@lm80_update_device.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lm80_update_device\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hwmon/lm80.c\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Starting lm80 update\0A\00", [42 x i8] zeroinitializer }, align 32
@temp_regs = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"'89:;", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan_div_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.5, i32 378, ptr @.str.34, ptr @.str.35 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"fan_div value %ld not supported. Choose one of 1, 2, 4 or 8!\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fan_div_store\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fan_div_store._entry_ptr = internal global ptr @fan_div_store._entry, section ".printk_index", align 4
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lm96080\00", [24 x i8] zeroinitializer }, align 32
@switch.table.fan_div_store = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\00\01\00\02\00\00\00\03", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"lm80_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 631, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 634, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"lm80_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 624, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 22, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 605, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant [12 x i8] c"lm80_groups\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [11 x i8] c"lm80_group\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 546, i32 1 }
@___asan_gen_.83 = private unnamed_addr constant [11 x i8] c"lm80_attrs\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 499, i32 26 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 450, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 268, i32 22 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 171, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [10 x i8] c"temp_regs\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 91, i32 17 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 451, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 452, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 453, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 454, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 455, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 456, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 457, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 458, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 459, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 460, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 461, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 462, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 463, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 464, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 465, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 466, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 467, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 468, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 469, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 470, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 471, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 472, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 473, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 474, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 475, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 376, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 476, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 477, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 478, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 479, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 480, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 481, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 482, i32 8 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 437, i32 22 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 483, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 484, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 485, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 486, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 487, i32 8 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 488, i32 8 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 489, i32 8 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 490, i32 8 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 491, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 492, i32 8 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 493, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.384 = private constant [24 x i8] c"../drivers/hwmon/lm80.c\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.384, i32 575, i32 10 }
@___asan_gen_.386 = private unnamed_addr constant [27 x i8] c"switch.table.fan_div_store\00", align 1
@llvm.compiler.used = appending global [118 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_lm80_driver_exit, ptr @__initcall__kmod_lm80__305_642_lm80_driver_init6, ptr @fan_div_store._entry, ptr @fan_div_store._entry_ptr, ptr @lm80_driver_exit, ptr @lm80_driver, ptr @.str, ptr @lm80_id, ptr @normal_i2c, ptr @lm80_probe.__key, ptr @.str.1, ptr @lm80_groups, ptr @lm80_group, ptr @lm80_attrs, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @dev_attr_alarms, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @temp_regs, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @switch.table.fan_div_store], section "llvm.metadata"
@0 = internal global [110 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lm80_attrs to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_regs to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_div_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.fan_div_store to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lm80_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lm80_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lm80_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @lm80_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm80_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 144, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lm80_probe.__key) #8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext -128) #8
  %call.i5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 6, i8 noundef zeroext 8) #8
  %call.i6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  %call.i25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 60) #8
  %conv = trunc i32 %call.i25 to i8
  %arrayidx = getelementptr %struct.lm80_data, ptr %call.i, i32 0, i32 6, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %arrayidx, align 1
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #8
  %conv6 = trunc i32 %call.i26 to i8
  %arrayidx9 = getelementptr %struct.lm80_data, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %2 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv6, ptr %arrayidx9, align 1
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call10 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @lm80_groups) #8
  %cmp.i.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call10 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lm80_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #8
  %and = and i32 %call.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %call.i61 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #8
  %and5 = and i32 %call.i61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  %call.i62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62)
  %cmp = icmp eq i32 %call.i62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call.i63)
  %cmp11 = icmp eq i32 %call.i63, 8
  %or.cond = select i1 %cmp, i1 %cmp11, i1 false
  br i1 %or.cond, label %if.then12, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

if.then12:                                        ; preds = %if.end8
  %call.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #8
  %and14 = and i32 %call.i64, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.then12.if.end38_crit_edge, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.if.end38_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

for.cond:                                         ; preds = %lor.lhs.false30
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 62
  br i1 %exitcond.not, label %for.cond.if.end38_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.if.end38_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.065 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 42, %if.end8.for.body_crit_edge ]
  %conv = trunc i32 %i.065 to i8
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv) #8
  %conv20 = add i8 %conv, 64
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv20) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %call19)
  %cmp22.not = icmp eq i32 %call21, %call19
  br i1 %cmp22.not, label %lor.lhs.false24, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false24:                                  ; preds = %for.body
  %conv26 = xor i8 %conv, -128
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv26) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call27, i32 %call19)
  %cmp28.not = icmp eq i32 %call27, %call19
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false30:                                  ; preds = %lor.lhs.false24
  %conv32 = add i8 %conv, -64
  %call33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv32) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %call33, i32 %call19)
  %cmp34.not = icmp eq i32 %call33, %call19
  br i1 %cmp34.not, label %for.cond, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end38:                                         ; preds = %for.cond.if.end38_crit_edge, %if.then12.if.end38_crit_edge
  %name.0 = phi ptr [ @.str.55, %if.then12.if.end38_crit_edge ], [ @.str, %for.cond.if.end38_crit_edge ]
  %call39 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %lor.lhs.false30.cleanup_crit_edge, %lor.lhs.false24.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end38 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then12.cleanup_crit_edge ], [ -19, %lor.lhs.false30.cleanup_crit_edge ], [ -19, %lor.lhs.false24.cleanup_crit_edge ], [ -19, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr5, align 1
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index1, align 4
  %conv6 = zext i8 %2 to i32
  %conv = zext i8 %4 to i32
  %arrayidx9 = getelementptr %struct.lm80_data, ptr %call, i32 0, i32 5, i32 %conv6, i32 %conv
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv10, 10
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call11, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index2, align 4
  %nr6 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr6 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr6, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !187
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv7 = zext i8 %7 to i32
  %conv = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp10 = icmp eq i8 %7, 2
  %mul = shl i8 %5, 1
  %cond.v = select i1 %cmp10, i8 43, i8 42
  %cond = add i8 %cond.v, %mul
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %add15 = add i32 %10, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %add15)
  %cmp17 = icmp sgt i32 %add15, 9
  %div = sdiv i32 %add15, 10
  %11 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %12 = trunc i32 %11 to i8
  %conv30 = select i1 %cmp17, i8 %12, i8 0
  %arrayidx31 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 5, i32 %conv7, i32 %conv
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv30, ptr %arrayidx31, align 1
  %call.i58 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %cond, i8 noundef zeroext %conv30) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @lm80_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %error = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext -128) #8
  %call.i5.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 6, i8 noundef zeroext 8) #8
  %call.i6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %last_updated = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated, align 4
  %add = add i32 %7, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %valid = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 1, !range !188
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool2.not = icmp eq i8 %10, 0
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lm80_update_device.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@lm80_update_device, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !189

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lm80_update_device.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %in = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %if.end38.for.body_crit_edge, %do.end
  %i.0229 = phi i32 [ 0, %do.end ], [ %inc, %if.end38.for.body_crit_edge ]
  %11 = trunc i32 %i.0229 to i8
  %conv = add i8 %11, 32
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %for.body.abort_crit_edge, label %if.end17

for.body.abort_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end17:                                         ; preds = %for.body
  %conv18 = trunc i32 %call.i to i8
  %arrayidx19 = getelementptr [7 x i8], ptr %in, i32 0, i32 %i.0229
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv18, ptr %arrayidx19, align 1
  %13 = shl i8 %11, 1
  %conv21 = add i8 %13, 43
  %call.i215 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %cmp23 = icmp slt i32 %call.i215, 0
  br i1 %cmp23, label %if.end17.abort_crit_edge, label %if.end26

if.end17.abort_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end26:                                         ; preds = %if.end17
  %conv27 = trunc i32 %call.i215 to i8
  %arrayidx30 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 5, i32 2, i32 %i.0229
  %14 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %arrayidx30, align 1
  %conv33 = add i8 %13, 42
  %call.i216 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i216)
  %cmp35 = icmp slt i32 %call.i216, 0
  br i1 %cmp35, label %if.end26.abort_crit_edge, label %if.end38

if.end26.abort_crit_edge:                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end38:                                         ; preds = %if.end26
  %conv39 = trunc i32 %call.i216 to i8
  %arrayidx42 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 5, i32 1, i32 %i.0229
  %15 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv39, ptr %arrayidx42, align 1
  %inc = add nuw nsw i32 %i.0229, 1
  %exitcond.not = icmp eq i32 %inc, 7
  br i1 %exitcond.not, label %for.end, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end38
  %call.i217 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp44 = icmp slt i32 %call.i217, 0
  br i1 %cmp44, label %for.end.abort_crit_edge, label %if.end47

for.end.abort_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end47:                                         ; preds = %for.end
  %conv48 = trunc i32 %call.i217 to i8
  %fan = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %fan to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv48, ptr %fan, align 1
  %call.i218 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 60) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i218)
  %cmp52 = icmp slt i32 %call.i218, 0
  br i1 %cmp52, label %if.end47.abort_crit_edge, label %if.end55

if.end47.abort_crit_edge:                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end55:                                         ; preds = %if.end47
  %conv56 = trunc i32 %call.i218 to i8
  %arrayidx58 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv56, ptr %arrayidx58, align 1
  %call.i219 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i219)
  %cmp61 = icmp slt i32 %call.i219, 0
  br i1 %cmp61, label %if.end55.abort_crit_edge, label %if.end64

if.end55.abort_crit_edge:                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end64:                                         ; preds = %if.end55
  %conv65 = trunc i32 %call.i219 to i8
  %arrayidx68 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv65, ptr %arrayidx68, align 1
  %call.i220 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i220)
  %cmp70 = icmp slt i32 %call.i220, 0
  br i1 %cmp70, label %if.end64.abort_crit_edge, label %if.end73

if.end64.abort_crit_edge:                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end73:                                         ; preds = %if.end64
  %conv74 = trunc i32 %call.i220 to i8
  %arrayidx77 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 6, i32 1, i32 1
  %19 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv74, ptr %arrayidx77, align 1
  %call.i221 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i221)
  %cmp79 = icmp slt i32 %call.i221, 0
  br i1 %cmp79, label %if.end73.abort_crit_edge, label %if.end82

if.end73.abort_crit_edge:                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end82:                                         ; preds = %if.end73
  %call.i222 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i222)
  %cmp84 = icmp slt i32 %call.i222, 0
  br i1 %cmp84, label %if.end82.abort_crit_edge, label %if.end87

if.end82.abort_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end87:                                         ; preds = %if.end82
  %shl = shl i32 %call.i221, 8
  %and = and i32 %call.i222, 240
  %or = or i32 %and, %shl
  %conv88 = trunc i32 %or to i16
  %temp = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv88, ptr %temp, align 4
  %call.i223 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223)
  %cmp96 = icmp slt i32 %call.i223, 0
  br i1 %cmp96, label %if.end87.abort_crit_edge, label %if.end99

if.end87.abort_crit_edge:                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end99:                                         ; preds = %if.end87
  %call95.tr = trunc i32 %call.i223 to i16
  %conv101 = shl i16 %call95.tr, 8
  %arrayidx103 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 8, i32 1
  %21 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv101, ptr %arrayidx103, align 2
  %call.i223.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 57) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.1)
  %cmp96.1 = icmp slt i32 %call.i223.1, 0
  br i1 %cmp96.1, label %if.end99.abort_crit_edge, label %if.end99.1

if.end99.abort_crit_edge:                         ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end99.1:                                       ; preds = %if.end99
  %call95.tr.1 = trunc i32 %call.i223.1 to i16
  %conv101.1 = shl i16 %call95.tr.1, 8
  %arrayidx103.1 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv101.1, ptr %arrayidx103.1, align 2
  %call.i223.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 58) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.2)
  %cmp96.2 = icmp slt i32 %call.i223.2, 0
  br i1 %cmp96.2, label %if.end99.1.abort_crit_edge, label %if.end99.2

if.end99.1.abort_crit_edge:                       ; preds = %if.end99.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end99.2:                                       ; preds = %if.end99.1
  %call95.tr.2 = trunc i32 %call.i223.2 to i16
  %conv101.2 = shl i16 %call95.tr.2, 8
  %arrayidx103.2 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv101.2, ptr %arrayidx103.2, align 2
  %call.i223.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i223.3)
  %cmp96.3 = icmp slt i32 %call.i223.3, 0
  br i1 %cmp96.3, label %if.end99.2.abort_crit_edge, label %if.end99.3

if.end99.2.abort_crit_edge:                       ; preds = %if.end99.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end99.3:                                       ; preds = %if.end99.2
  %call95.tr.3 = trunc i32 %call.i223.3 to i16
  %conv101.3 = shl i16 %call95.tr.3, 8
  %arrayidx103.3 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv101.3, ptr %arrayidx103.3, align 2
  %call.i224 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i224)
  %cmp108 = icmp slt i32 %call.i224, 0
  br i1 %cmp108, label %if.end99.3.abort_crit_edge, label %if.end111

if.end99.3.abort_crit_edge:                       ; preds = %if.end99.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end111:                                        ; preds = %if.end99.3
  %25 = trunc i32 %call.i224 to i8
  %26 = lshr i8 %25, 2
  %conv113 = and i8 %26, 3
  %fan_div = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 7
  %27 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv113, ptr %fan_div, align 1
  %28 = lshr i8 %25, 4
  %conv117 = and i8 %28, 3
  %arrayidx119 = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv117, ptr %arrayidx119, align 1
  %call.i225 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i225)
  %cmp121 = icmp slt i32 %call.i225, 0
  br i1 %cmp121, label %if.end111.abort_crit_edge, label %if.end124

if.end111.abort_crit_edge:                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end124:                                        ; preds = %if.end111
  %call.i226 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i226)
  %cmp126 = icmp slt i32 %call.i226, 0
  br i1 %cmp126, label %if.end124.abort_crit_edge, label %if.end129

if.end124.abort_crit_edge:                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

if.end129:                                        ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #10
  %shl130 = shl i32 %call.i226, 8
  %add131 = add i32 %shl130, %call.i225
  %conv132 = trunc i32 %add131 to i16
  %alarms = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv132, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_updated, align 4
  br label %done.sink.split

abort:                                            ; preds = %if.end124.abort_crit_edge, %if.end111.abort_crit_edge, %if.end99.3.abort_crit_edge, %if.end99.2.abort_crit_edge, %if.end99.1.abort_crit_edge, %if.end99.abort_crit_edge, %if.end87.abort_crit_edge, %if.end82.abort_crit_edge, %if.end73.abort_crit_edge, %if.end64.abort_crit_edge, %if.end55.abort_crit_edge, %if.end47.abort_crit_edge, %for.end.abort_crit_edge, %if.end26.abort_crit_edge, %if.end17.abort_crit_edge, %for.body.abort_crit_edge
  %rv.0 = phi i32 [ %call.i217, %for.end.abort_crit_edge ], [ %call.i218, %if.end47.abort_crit_edge ], [ %call.i219, %if.end55.abort_crit_edge ], [ %call.i220, %if.end64.abort_crit_edge ], [ %call.i221, %if.end73.abort_crit_edge ], [ %call.i222, %if.end82.abort_crit_edge ], [ %call.i224, %if.end99.3.abort_crit_edge ], [ %call.i225, %if.end111.abort_crit_edge ], [ %call.i226, %if.end124.abort_crit_edge ], [ %call.i223, %if.end87.abort_crit_edge ], [ %call.i223.1, %if.end99.abort_crit_edge ], [ %call.i223.2, %if.end99.1.abort_crit_edge ], [ %call.i223.3, %if.end99.2.abort_crit_edge ], [ %call.i216, %if.end26.abort_crit_edge ], [ %call.i215, %if.end17.abort_crit_edge ], [ %call.i, %for.body.abort_crit_edge ]
  %33 = inttoptr i32 %rv.0 to ptr
  br label %done.sink.split

done.sink.split:                                  ; preds = %abort, %if.end129
  %.sink234 = phi i8 [ 1, %if.end129 ], [ 0, %abort ]
  %.sink = phi i8 [ 0, %if.end129 ], [ 1, %abort ]
  %ret.0.ph = phi ptr [ %1, %if.end129 ], [ %33, %abort ]
  %valid134 = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 3
  %34 = ptrtoint ptr %valid134 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %.sink234, ptr %valid134, align 1
  %35 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %.sink, ptr %error, align 4
  br label %done

done:                                             ; preds = %done.sink.split, %lor.lhs.false.done_crit_edge
  %ret.0 = phi ptr [ %1, %lor.lhs.false.done_crit_edge ], [ %ret.0.ph, %done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %conv = zext i8 %1 to i32
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr5, align 1
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %3 to i32
  %arrayidx9 = getelementptr %struct.lm80_data, ptr %call, i32 0, i32 6, i32 %conv6, i32 %conv
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx9, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %cond.false19 [
    i8 0, label %if.end.cond.end26_crit_edge
    i8 -1, label %cond.end26.fold.split
  ]

if.end.cond.end26_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

cond.false19:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv10 = zext i8 %6 to i32
  %arrayidx20 = getelementptr %struct.lm80_data, ptr %call, i32 0, i32 7, i32 %conv
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %9 to i32
  %mul = shl i32 %conv10, %conv21
  %div = sdiv i32 1350000, %mul
  br label %cond.end26

cond.end26.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end26

cond.end26:                                       ; preds = %cond.end26.fold.split, %cond.false19, %if.end.cond.end26_crit_edge
  %cond27 = phi i32 [ -1, %if.end.cond.end26_crit_edge ], [ %div, %cond.false19 ], [ 0, %cond.end26.fold.split ]
  %call28 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %cond27)
  br label %cleanup

cleanup:                                          ; preds = %cond.end26, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call28, %cond.end26 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index1, align 4
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr5, align 1
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !187
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv6 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.lm80_data, ptr %5, i32 0, i32 7, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv10 = zext i8 %12 to i32
  %13 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %10, label %cond.end.i [
    i32 0, label %if.end.FAN_TO_REG.exit_crit_edge
    i32 1, label %if.end.cond.end.thread.i_crit_edge
  ]

if.end.cond.end.thread.i_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.thread.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

cond.end.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %10)
  %cmp3.i = icmp ult i32 %10, 1000000
  br i1 %cmp3.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i._crit_edge

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %14

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %if.end.cond.end.thread.i_crit_edge
  br label %14

14:                                               ; preds = %cond.end.thread.i, %cond.end.i._crit_edge
  %15 = phi i32 [ %10, %cond.end.thread.i ], [ 1000000, %cond.end.i._crit_edge ]
  %mul.i = shl i32 %15, %conv10
  %div835.i = lshr i32 %mul.i, 1
  %add.i = add nuw i32 %div835.i, 1350000
  %div10.i = udiv i32 %add.i, %mul.i
  %16 = call i32 @llvm.umax.i32(i32 %div10.i, i32 1) #8
  %17 = call i32 @llvm.umin.i32(i32 %16, i32 254) #8
  %conv.i = trunc i32 %17 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %14, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %14 ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx13 = getelementptr %struct.lm80_data, ptr %5, i32 0, i32 6, i32 %conv6, i32 %conv
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %retval.0.i, ptr %arrayidx13, align 1
  %add14 = add i8 %1, 60
  %call.i37 = call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %add14, i8 noundef zeroext %retval.0.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.lm80_data, ptr %call, i32 0, i32 7, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %shl = shl nuw i32 1, %conv
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %shl)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_div_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !187
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx3 = getelementptr %struct.lm80_data, ptr %3, i32 0, i32 6, i32 1, i32 %1
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx3, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %8, label %cond.false13 [
    i8 0, label %if.end.cond.end20_crit_edge
    i8 -1, label %cond.end20.fold.split
  ]

if.end.cond.end20_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.false13:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %8 to i32
  %arrayidx14 = getelementptr %struct.lm80_data, ptr %3, i32 0, i32 7, i32 %1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %mul = shl i32 %conv, %conv15
  %div = sdiv i32 1350000, %mul
  br label %cond.end20

cond.end20.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end20

cond.end20:                                       ; preds = %cond.end20.fold.split, %cond.false13, %if.end.cond.end20_crit_edge
  %cond21 = phi i32 [ -1, %if.end.cond.end20_crit_edge ], [ %div, %cond.false13 ], [ 0, %cond.end20.fold.split ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %cond.end20.do.end_crit_edge

cond.end20.do.end_crit_edge:                      ; preds = %cond.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %cond.end20.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %13) #11
  br label %cleanup.sink.split

switch.hole_check:                                ; preds = %cond.end20
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.fan_div_store, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %16)
  %switch.load = load i8, ptr %switch.gep, align 1
  %arrayidx32 = getelementptr %struct.lm80_data, ptr %3, i32 0, i32 7, i32 %1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %switch.load, ptr %arrayidx32, align 1
  %call.i109 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %cmp35 = icmp slt i32 %call.i109, 0
  br i1 %cmp35, label %switch.lookup.cleanup.sink.split_crit_edge, label %if.end39

switch.lookup.cleanup.sink.split_crit_edge:       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end39:                                         ; preds = %switch.lookup
  %add = shl i32 %1, 1
  %mul40 = add i32 %add, 2
  %shl41 = shl i32 3, %mul40
  %neg = xor i32 %shl41, -1
  %and = and i32 %call.i109, %neg
  %arrayidx43 = getelementptr %struct.lm80_data, ptr %3, i32 0, i32 7, i32 %1
  %18 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx43, align 1
  %conv44 = zext i8 %19 to i32
  %shl47 = shl i32 %conv44, %mul40
  %or = or i32 %shl47, %and
  %conv48 = trunc i32 %or to i8
  %call.i110 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 5, i8 noundef zeroext %conv48) #8
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx43, align 1
  %conv52 = zext i8 %21 to i32
  %22 = zext i32 %cond21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %cond21, label %cond.end.i [
    i32 0, label %if.end39.FAN_TO_REG.exit_crit_edge
    i32 1, label %if.end39.cond.end.thread.i_crit_edge
  ]

if.end39.cond.end.thread.i_crit_edge:             ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.thread.i

if.end39.FAN_TO_REG.exit_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

cond.end.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %cond21)
  %cmp3.i = icmp ult i32 %cond21, 1000000
  br i1 %cmp3.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i._crit_edge

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %23

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %if.end39.cond.end.thread.i_crit_edge
  br label %23

23:                                               ; preds = %cond.end.thread.i, %cond.end.i._crit_edge
  %24 = phi i32 [ %cond21, %cond.end.thread.i ], [ 1000000, %cond.end.i._crit_edge ]
  %mul.i = shl i32 %24, %conv52
  %div835.i = lshr i32 %mul.i, 1
  %add.i = add nuw i32 %div835.i, 1350000
  %div10.i = udiv i32 %add.i, %mul.i
  %25 = call i32 @llvm.umax.i32(i32 %div10.i, i32 1) #8
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 254) #8
  %conv.i = trunc i32 %26 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %23, %if.end39.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %23 ], [ -1, %if.end39.FAN_TO_REG.exit_crit_edge ]
  %27 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %28 = trunc i32 %1 to i8
  %conv60 = add i8 %28, 60
  %call.i111 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv60, i8 noundef zeroext %retval.0.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %FAN_TO_REG.exit, %switch.lookup.cleanup.sink.split_crit_edge, %do.end
  %retval.0.ph = phi i32 [ %count, %FAN_TO_REG.exit ], [ -22, %do.end ], [ %call.i109, %switch.lookup.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.lm80_data, ptr %call, i32 0, i32 8, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = sext i16 %4 to i32
  %mul = mul nsw i32 %conv, 125
  %div = sdiv i32 %mul, 32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !187
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.lm80_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp12 = icmp sgt i32 %9, 0
  %cond23.in.v = select i1 %cmp12, i32 500, i32 -500
  %cond23.in = add nsw i32 %cond23.in.v, %10
  %cond23 = sdiv i32 %cond23.in, 1000
  %cond23.tr = trunc i32 %cond23 to i16
  %conv24 = shl nsw i16 %cond23.tr, 8
  %arrayidx = getelementptr %struct.lm80_data, ptr %1, i32 0, i32 8, i32 %5
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv24, ptr %arrayidx, align 2
  %arrayidx25 = getelementptr [5 x i8], ptr @temp_regs, i32 0, i32 %5
  %12 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx25, align 1
  %conv29 = trunc i32 %cond23 to i8
  %call.i54 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %13, i8 noundef zeroext %conv29) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %alarms = getelementptr inbounds %struct.lm80_data, ptr %call, i32 0, i32 9
  %1 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %alarms, align 2
  %conv = zext i16 %2 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @lm80_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %alarms = getelementptr inbounds %struct.lm80_data, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %alarms, align 2
  %conv = zext i16 %4 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.43, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 110)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !113, !114, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !176}
!llvm.module.flags = !{!178, !179, !180, !181, !182, !183, !184, !185}
!llvm.ident = !{!186}

!0 = !{ptr @__initcall__kmod_lm80__305_642_lm80_driver_init6, !1, !"__initcall__kmod_lm80__305_642_lm80_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lm80.c", i32 642, i32 1}
!2 = !{ptr @__exitcall_lm80_driver_exit, !1, !"__exitcall_lm80_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lm80.c", i32 644, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lm80.c", i32 646, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lm80.c", i32 647, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lm80.c", i32 634, i32 11}
!12 = !{ptr @lm80_driver, !13, !"lm80_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lm80.c", i32 631, i32 26}
!14 = !{ptr @lm80_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lm80.c", i32 605, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lm80_groups, !18, !"lm80_groups", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lm80.c", i32 546, i32 1}
!19 = !{ptr @lm80_group, !18, !"lm80_group", i1 false, i1 false}
!20 = !{ptr @lm80_attrs, !21, !"lm80_attrs", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/lm80.c", i32 499, i32 26}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/lm80.c", i32 450, i32 8}
!24 = !{ptr @sensor_dev_attr_in0_min, !23, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/lm80.c", i32 268, i32 22}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lm80.c", i32 171, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @lm80_update_device.__UNIQUE_ID_ddebug296, !28, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!32 = !{ptr @temp_regs, !33, !"temp_regs", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lm80.c", i32 91, i32 17}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lm80.c", i32 451, i32 8}
!36 = !{ptr @sensor_dev_attr_in1_min, !35, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/lm80.c", i32 452, i32 8}
!39 = !{ptr @sensor_dev_attr_in2_min, !38, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/lm80.c", i32 453, i32 8}
!42 = !{ptr @sensor_dev_attr_in3_min, !41, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/lm80.c", i32 454, i32 8}
!45 = !{ptr @sensor_dev_attr_in4_min, !44, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/lm80.c", i32 455, i32 8}
!48 = !{ptr @sensor_dev_attr_in5_min, !47, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/lm80.c", i32 456, i32 8}
!51 = !{ptr @sensor_dev_attr_in6_min, !50, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/lm80.c", i32 457, i32 8}
!54 = !{ptr @sensor_dev_attr_in0_max, !53, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!55 = !{ptr @.str.14, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/lm80.c", i32 458, i32 8}
!57 = !{ptr @sensor_dev_attr_in1_max, !56, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/lm80.c", i32 459, i32 8}
!60 = !{ptr @sensor_dev_attr_in2_max, !59, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!61 = !{ptr @.str.16, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/lm80.c", i32 460, i32 8}
!63 = !{ptr @sensor_dev_attr_in3_max, !62, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/lm80.c", i32 461, i32 8}
!66 = !{ptr @sensor_dev_attr_in4_max, !65, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!67 = !{ptr @.str.18, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/lm80.c", i32 462, i32 8}
!69 = !{ptr @sensor_dev_attr_in5_max, !68, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/lm80.c", i32 463, i32 8}
!72 = !{ptr @sensor_dev_attr_in6_max, !71, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!73 = !{ptr @.str.20, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/lm80.c", i32 464, i32 8}
!75 = !{ptr @sensor_dev_attr_in0_input, !74, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/lm80.c", i32 465, i32 8}
!78 = !{ptr @sensor_dev_attr_in1_input, !77, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/lm80.c", i32 466, i32 8}
!81 = !{ptr @sensor_dev_attr_in2_input, !80, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/lm80.c", i32 467, i32 8}
!84 = !{ptr @sensor_dev_attr_in3_input, !83, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/lm80.c", i32 468, i32 8}
!87 = !{ptr @sensor_dev_attr_in4_input, !86, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/lm80.c", i32 469, i32 8}
!90 = !{ptr @sensor_dev_attr_in5_input, !89, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/lm80.c", i32 470, i32 8}
!93 = !{ptr @sensor_dev_attr_in6_input, !92, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/lm80.c", i32 471, i32 8}
!96 = !{ptr @sensor_dev_attr_fan1_min, !95, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!97 = !{ptr @.str.28, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/lm80.c", i32 472, i32 8}
!99 = !{ptr @sensor_dev_attr_fan2_min, !98, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!100 = !{ptr @.str.29, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/lm80.c", i32 473, i32 8}
!102 = !{ptr @sensor_dev_attr_fan1_input, !101, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/lm80.c", i32 474, i32 8}
!105 = !{ptr @sensor_dev_attr_fan2_input, !104, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!106 = !{ptr @.str.31, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/lm80.c", i32 475, i32 8}
!108 = !{ptr @sensor_dev_attr_fan1_div, !107, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!109 = !{ptr @.str.32, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/lm80.c", i32 376, i32 3}
!111 = !{ptr @.str.33, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.34, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @fan_div_store._entry, !110, !"_entry", i1 false, i1 false}
!115 = !{ptr @fan_div_store._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/lm80.c", i32 476, i32 8}
!118 = !{ptr @sensor_dev_attr_fan2_div, !117, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/lm80.c", i32 477, i32 8}
!121 = !{ptr @sensor_dev_attr_temp1_input, !120, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/lm80.c", i32 478, i32 8}
!124 = !{ptr @sensor_dev_attr_temp1_max, !123, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/lm80.c", i32 479, i32 8}
!127 = !{ptr @sensor_dev_attr_temp1_max_hyst, !126, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/lm80.c", i32 480, i32 8}
!130 = !{ptr @sensor_dev_attr_temp1_crit, !129, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/lm80.c", i32 481, i32 8}
!133 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !132, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/lm80.c", i32 482, i32 8}
!136 = !{ptr @dev_attr_alarms, !135, !"dev_attr_alarms", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/lm80.c", i32 437, i32 22}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/lm80.c", i32 483, i32 8}
!141 = !{ptr @sensor_dev_attr_in0_alarm, !140, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/lm80.c", i32 484, i32 8}
!144 = !{ptr @sensor_dev_attr_in1_alarm, !143, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!145 = !{ptr @.str.46, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/lm80.c", i32 485, i32 8}
!147 = !{ptr @sensor_dev_attr_in2_alarm, !146, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/lm80.c", i32 486, i32 8}
!150 = !{ptr @sensor_dev_attr_in3_alarm, !149, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/lm80.c", i32 487, i32 8}
!153 = !{ptr @sensor_dev_attr_in4_alarm, !152, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/lm80.c", i32 488, i32 8}
!156 = !{ptr @sensor_dev_attr_in5_alarm, !155, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/lm80.c", i32 489, i32 8}
!159 = !{ptr @sensor_dev_attr_in6_alarm, !158, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/lm80.c", i32 490, i32 8}
!162 = !{ptr @sensor_dev_attr_fan1_alarm, !161, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/lm80.c", i32 491, i32 8}
!165 = !{ptr @sensor_dev_attr_fan2_alarm, !164, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/lm80.c", i32 492, i32 8}
!168 = !{ptr @sensor_dev_attr_temp1_max_alarm, !167, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/lm80.c", i32 493, i32 8}
!171 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !170, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!172 = !{ptr @lm80_id, !173, !"lm80_id", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/lm80.c", i32 624, i32 35}
!174 = !{ptr @.str.55, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/lm80.c", i32 575, i32 10}
!176 = !{ptr @normal_i2c, !177, !"normal_i2c", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/lm80.c", i32 22, i32 29}
!178 = !{i32 1, !"wchar_size", i32 2}
!179 = !{i32 1, !"min_enum_size", i32 4}
!180 = !{i32 8, !"branch-target-enforcement", i32 0}
!181 = !{i32 8, !"sign-return-address", i32 0}
!182 = !{i32 8, !"sign-return-address-all", i32 0}
!183 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!184 = !{i32 7, !"uwtable", i32 1}
!185 = !{i32 7, !"frame-pointer", i32 2}
!186 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!187 = !{!"auto-init"}
!188 = !{i8 0, i8 2}
!189 = !{i64 2148970165, i64 2148970170, i64 2148970183, i64 2148970227, i64 2148970261, i64 2148970282}
