; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adt7462.c_pt.bc'
source_filename = "../drivers/hwmon/adt7462.c"
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
%struct.adt7462_data = type { ptr, %struct.mutex, i8, i8, i32, i32, [4 x i8], [4 x i8], [4 x i8], [4 x i8], [8 x i16], i8, [8 x i8], i8, [4 x i8], [4 x i8], [13 x i8], [13 x i8], [13 x i8], [4 x i8], [4 x i8], [4 x i8], i8, [4 x i8], [4 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adt7462__328_1828_adt7462_driver_init6 = internal global ptr @adt7462_driver_init, section ".initcall6.init", align 4
@adt7462_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adt7462_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adt7462_id, ptr @adt7462_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adt7462_driver_exit = internal global ptr @adt7462_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author329 = internal constant [57 x i8] c"adt7462.author=Darrick J. Wong <darrick.wong@oracle.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description330 = internal constant [35 x i8] c"adt7462.description=ADT7462 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file331 = internal constant [35 x i8] c"adt7462.file=drivers/hwmon/adt7462\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [20 x i8] c"adt7462.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7462\00", [24 x i8] zeroinitializer }, align 32
@adt7462_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adt7462\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 88, i16 92, i16 -2], [26 x i8] zeroinitializer }, align 32
@adt7462_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adt7462_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1803, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s chip found\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adt7462_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adt7462.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adt7462_probe._entry_ptr = internal global ptr @adt7462_probe._entry, section ".printk_index", align 4
@adt7462_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @adt7462_group, ptr null], [24 x i8] zeroinitializer }, align 32
@adt7462_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7462_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7462_attrs = internal global { [147 x ptr], [148 x i8] } { [147 x ptr] [ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp3_label, ptr @sensor_dev_attr_temp4_label, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp4_alarm, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in11_max, ptr @sensor_dev_attr_in12_max, ptr @sensor_dev_attr_in13_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in11_min, ptr @sensor_dev_attr_in12_min, ptr @sensor_dev_attr_in13_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_in10_label, ptr @sensor_dev_attr_in11_label, ptr @sensor_dev_attr_in12_label, ptr @sensor_dev_attr_in13_label, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_alarm, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_alarm, ptr @sensor_dev_attr_in12_alarm, ptr @sensor_dev_attr_in13_alarm, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_force_pwm_max, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm4_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm4_auto_point2_pwm, ptr @sensor_dev_attr_temp1_auto_point1_hyst, ptr @sensor_dev_attr_temp2_auto_point1_hyst, ptr @sensor_dev_attr_temp3_auto_point1_hyst, ptr @sensor_dev_attr_temp4_auto_point1_hyst, ptr @sensor_dev_attr_temp1_auto_point2_hyst, ptr @sensor_dev_attr_temp2_auto_point2_hyst, ptr @sensor_dev_attr_temp3_auto_point2_hyst, ptr @sensor_dev_attr_temp4_auto_point2_hyst, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp4_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp4_auto_point2_temp, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr null], [148 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_label_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_label_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_label_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_label_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_max_show, ptr @volt_max_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @volt_min_show, ptr @volt_min_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_label_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 257 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 384 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 260 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 320 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 288 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 272 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 264 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 258 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 544 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 528 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 520 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 576 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 640 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_min_show, ptr @fan_min_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 769 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 770 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 772 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 776 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 784 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 800 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 832 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 896 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_force_pwm_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @force_pwm_max_show, ptr @force_pwm_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.147, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.148, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.149, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.150, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.151, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_min_show, ptr @pwm_min_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.152, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.153, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.154, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.155, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_max_show, ptr @pwm_max_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.156, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.157, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point1_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.158, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_auto_point1_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.159, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point2_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point2_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.161, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point2_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_auto_point2_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.163, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_hyst_show, ptr @pwm_hyst_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.164, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.165, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.166, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_auto_point1_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.167, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmin_show, ptr @pwm_tmin_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.168, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr @pwm_tmax_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.169, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr @pwm_tmax_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.170, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr @pwm_tmax_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_auto_point2_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.171, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_tmax_show, ptr @pwm_tmax_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.172, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_show, ptr @pwm_auto_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.174, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_show, ptr @pwm_auto_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.175, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_show, ptr @pwm_auto_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.176, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_show, ptr @pwm_auto_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.177, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.180, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.181, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.182, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_auto_temp_show, ptr @pwm_auto_temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_label\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"local\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remote1\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remote2\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"remote3\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N/A\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_label\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_label\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_label\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"1\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_max\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in12_max\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in13_max\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_min\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in12_min\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in13_min\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_input\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_label\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+12V1\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vccp1\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+2.5V\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+1.8V\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+1.5V\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+12V3\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"+5V\00", [28 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+0.9V\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"+1.25V\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+3.3V\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+12V2\00", [26 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vbatt\00", [26 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FSB_Vtt\00", [24 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"+1.2V1\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Vccp2\00", [26 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+1.5\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"+1.5V ICH\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"+1.5V 3GPIO\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_label\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_label\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_label\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_label\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_label\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_label\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_label\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_label\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_label\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_label\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_min\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan8_min\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"force_pwm_max\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm4_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point1_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point2_hyst\00", [41 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@trange_values = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000, i32 2500, i32 3300, i32 4000, i32 5000, i32 6700, i32 8000, i32 10000, i32 13300, i32 16000, i32 20000, i32 26700, i32 32000, i32 40000, i32 53300, i32 80000], [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp4_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"2\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm4_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"9\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm4_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@switch.table.voltage_multiplier = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 6250, i32 13000, i32 9400, i32 7800], [16 x i8] zeroinitializer }, align 32
@switch.table.voltage_label_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80], [16 x i8] zeroinitializer }, align 32
@switch.table.voltage_label_show.183 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.90, ptr @.str.78, ptr @.str.79, ptr @.str.91], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.185 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.186 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.187 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.188 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.189 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.190 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.191 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.192 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.193 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.194 = internal global [15 x i64] [i64 13, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.195 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.196 = internal global [18 x i64] [i64 16, i64 32, i64 2000, i64 2500, i64 3300, i64 4000, i64 5000, i64 6700, i64 8000, i64 10000, i64 13300, i64 16000, i64 20000, i64 26700, i64 32000, i64 40000, i64 53300, i64 80000]
@__sancov_gen_cov_switch_values.197 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.198 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.199 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6]
@__sancov_gen_cov_switch_values.200 = internal global [4 x i64] [i64 2, i64 32, i64 9, i64 15]
@___asan_gen_.201 = private unnamed_addr constant [15 x i8] c"adt7462_driver\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1817, i32 26 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1820, i32 11 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"adt7462_id\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1811, i32 35 }
@___asan_gen_.210 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 20, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1801, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1803, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [15 x i8] c"adt7462_groups\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [14 x i8] c"adt7462_group\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1761, i32 1 }
@___asan_gen_.243 = private unnamed_addr constant [14 x i8] c"adt7462_attrs\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1590, i32 26 }
@___asan_gen_.246 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_label\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_label\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_label\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_label\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_alarm\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_max\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_max\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_max\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in12_max\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in13_max\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_min\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_min\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_min\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in12_min\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in13_min\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_input\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_label\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_label\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_label\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_label\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_label\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_label\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_label\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_label\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_label\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_label\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_label\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_label\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_label\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_alarm\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_alarm\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_alarm\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_alarm\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_alarm\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_min\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan8_min\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.531 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.534 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.540 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.543 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.546 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_input\00", align 1
@___asan_gen_.549 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.552 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.555 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.558 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.561 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_alarm\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_alarm\00", align 1
@___asan_gen_.573 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_force_pwm_max\00", align 1
@___asan_gen_.576 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.582 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.597 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm4_auto_point1_pwm\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.603 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.606 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.609 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm4_auto_point2_pwm\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_hyst\00", align 1
@___asan_gen_.615 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point1_hyst\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point1_hyst\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp4_auto_point1_hyst\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point2_hyst\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point2_hyst\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point2_hyst\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp4_auto_point2_hyst\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_temp\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point1_temp\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point1_temp\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp4_auto_point1_temp\00", align 1
@___asan_gen_.648 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point2_temp\00", align 1
@___asan_gen_.651 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point2_temp\00", align 1
@___asan_gen_.654 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point2_temp\00", align 1
@___asan_gen_.657 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp4_auto_point2_temp\00", align 1
@___asan_gen_.660 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.663 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.666 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.669 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm4_enable\00", align 1
@___asan_gen_.672 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_temp\00", align 1
@___asan_gen_.675 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm2_auto_channels_temp\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm3_auto_channels_temp\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm4_auto_channels_temp\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1396, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 821, i32 23 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 823, i32 22 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1397, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1398, i32 8 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1399, i32 8 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1401, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1402, i32 8 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1403, i32 8 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1404, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1406, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1407, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1408, i32 8 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1409, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1411, i32 8 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 870, i32 22 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 625, i32 10 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 628, i32 11 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 631, i32 10 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 634, i32 11 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 637, i32 9 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1412, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1413, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1414, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1416, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 984, i32 23 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1418, i32 8 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1420, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1422, i32 8 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1425, i32 8 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1426, i32 8 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1427, i32 8 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1428, i32 8 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1429, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1430, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1431, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1432, i32 8 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1433, i32 8 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1434, i32 8 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1435, i32 8 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1436, i32 8 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1437, i32 8 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1439, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1440, i32 8 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1441, i32 8 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1442, i32 8 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1443, i32 8 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1444, i32 8 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1445, i32 8 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1446, i32 8 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1447, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1448, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1449, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1450, i32 8 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1451, i32 8 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1453, i32 8 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1454, i32 8 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1455, i32 8 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1456, i32 8 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1457, i32 8 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1458, i32 8 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1459, i32 8 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1460, i32 8 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1461, i32 8 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1462, i32 8 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1463, i32 8 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1464, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1465, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1467, i32 8 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 425, i32 11 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 430, i32 11 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 432, i32 11 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 434, i32 11 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 436, i32 11 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 441, i32 11 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 445, i32 11 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 450, i32 12 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 451, i32 11 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 463, i32 11 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 467, i32 11 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 472, i32 11 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 474, i32 11 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 482, i32 11 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 488, i32 11 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 494, i32 11 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 501, i32 11 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 507, i32 11 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1468, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1469, i32 8 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1470, i32 8 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1471, i32 8 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1472, i32 8 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1473, i32 8 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1474, i32 8 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1475, i32 8 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1476, i32 8 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1477, i32 8 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1478, i32 8 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1479, i32 8 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1481, i32 8 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1483, i32 8 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1485, i32 8 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1487, i32 8 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1489, i32 8 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1491, i32 8 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1493, i32 8 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1495, i32 8 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1497, i32 8 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1499, i32 8 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1501, i32 8 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1503, i32 8 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1505, i32 8 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1508, i32 8 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1509, i32 8 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1510, i32 8 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1511, i32 8 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1512, i32 8 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1513, i32 8 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1514, i32 8 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1515, i32 8 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1517, i32 8 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1518, i32 8 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1519, i32 8 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1520, i32 8 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1521, i32 8 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1522, i32 8 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1523, i32 8 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1524, i32 8 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1526, i32 8 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1528, i32 8 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1530, i32 8 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1532, i32 8 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1534, i32 8 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1536, i32 8 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1538, i32 8 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1540, i32 8 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1543, i32 8 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1545, i32 8 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1546, i32 8 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1547, i32 8 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1548, i32 8 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1550, i32 8 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1551, i32 8 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1552, i32 8 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1553, i32 8 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1555, i32 8 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1556, i32 8 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1557, i32 8 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1558, i32 8 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1560, i32 8 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1561, i32 8 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1562, i32 8 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1563, i32 8 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1565, i32 8 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1566, i32 8 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1567, i32 8 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1568, i32 8 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1570, i32 8 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1571, i32 8 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1572, i32 8 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1573, i32 8 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1575, i32 8 }
@___asan_gen_.1170 = private unnamed_addr constant [14 x i8] c"trange_values\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 642, i32 18 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1576, i32 8 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1577, i32 8 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1578, i32 8 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1580, i32 8 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1300, i32 23 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1581, i32 8 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1582, i32 8 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1583, i32 8 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1585, i32 8 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1356, i32 23 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1586, i32 8 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1587, i32 8 }
@___asan_gen_.1209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1210 = private constant [27 x i8] c"../drivers/hwmon/adt7462.c\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1210, i32 1588, i32 8 }
@___asan_gen_.1212 = private unnamed_addr constant [32 x i8] c"switch.table.voltage_multiplier\00", align 1
@___asan_gen_.1213 = private unnamed_addr constant [32 x i8] c"switch.table.voltage_label_show\00", align 1
@___asan_gen_.1214 = private unnamed_addr constant [36 x i8] c"switch.table.voltage_label_show.183\00", align 1
@llvm.compiler.used = appending global [348 x ptr] [ptr @__UNIQUE_ID_author329, ptr @__UNIQUE_ID_description330, ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_adt7462_driver_exit, ptr @__initcall__kmod_adt7462__328_1828_adt7462_driver_init6, ptr @adt7462_driver_exit, ptr @adt7462_probe._entry, ptr @adt7462_probe._entry_ptr, ptr @adt7462_driver, ptr @.str, ptr @adt7462_id, ptr @normal_i2c, ptr @adt7462_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @adt7462_groups, ptr @adt7462_group, ptr @adt7462_attrs, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp1_label, ptr @sensor_dev_attr_temp2_label, ptr @sensor_dev_attr_temp3_label, ptr @sensor_dev_attr_temp4_label, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp4_alarm, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in11_max, ptr @sensor_dev_attr_in12_max, ptr @sensor_dev_attr_in13_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in11_min, ptr @sensor_dev_attr_in12_min, ptr @sensor_dev_attr_in13_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_in10_label, ptr @sensor_dev_attr_in11_label, ptr @sensor_dev_attr_in12_label, ptr @sensor_dev_attr_in13_label, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_alarm, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_alarm, ptr @sensor_dev_attr_in12_alarm, ptr @sensor_dev_attr_in13_alarm, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan8_min, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_alarm, ptr @sensor_dev_attr_force_pwm_max, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm4_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm4_auto_point2_pwm, ptr @sensor_dev_attr_temp1_auto_point1_hyst, ptr @sensor_dev_attr_temp2_auto_point1_hyst, ptr @sensor_dev_attr_temp3_auto_point1_hyst, ptr @sensor_dev_attr_temp4_auto_point1_hyst, ptr @sensor_dev_attr_temp1_auto_point2_hyst, ptr @sensor_dev_attr_temp2_auto_point2_hyst, ptr @sensor_dev_attr_temp3_auto_point2_hyst, ptr @sensor_dev_attr_temp4_auto_point2_hyst, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp4_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp4_auto_point2_temp, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm4_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm4_auto_channels_temp, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @trange_values, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @switch.table.voltage_multiplier, ptr @switch.table.voltage_label_show, ptr @switch.table.voltage_label_show.183], section "llvm.metadata"
@0 = internal global [340 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7462_attrs to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_force_pwm_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point1_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_auto_point1_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point2_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point2_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point2_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_auto_point2_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trange_values to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.voltage_multiplier to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.voltage_label_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.voltage_label_show.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7462_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adt7462_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adt7462_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adt7462_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7462_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 220, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adt7462_probe.__key) #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef %name) #12
  %call9 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adt7462_groups) #9
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %1 = ptrtoint ptr %call9 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %1, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7462_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 65
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 98, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 98
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 4
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge11
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1.i:                                         ; preds = %entry
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pin_cfg.i, align 2
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb1.i.if.then_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i.if.then_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i:                                         ; preds = %entry
  %pin_cfg3.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %pin_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pin_cfg3.i, align 2
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not.i = icmp eq i8 %8, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.if.then_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i.if.then_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sw.bb2.i.if.then_crit_edge, %sw.bb1.i.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 9, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %12, -64000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %6, label %lor.lhs.false.cleanup_crit_edge [
    i32 0, label %lor.lhs.false.if.end_crit_edge
    i32 2, label %lor.lhs.false.if.end_crit_edge55
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

lor.lhs.false.if.end_crit_edge55:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %lor.lhs.false
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pin_cfg.i, align 2
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %lor.lhs.false
  %pin_cfg3.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %pin_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pin_cfg3.i, align 2
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge55
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 -64000)
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 191000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp sgt i32 %16, 0
  %cond24.in.v = select i1 %cmp13, i32 500, i32 -500
  %cond24.in = add nsw i32 %cond24.in.v, %17
  %cond24 = sdiv i32 %cond24.in, 1000
  %add25 = add nsw i32 %cond24, 64
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add25, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %conv26 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 9, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %arrayidx, align 1
  %24 = load i32, ptr %index, align 4
  %25 = trunc i32 %24 to i8
  %conv30 = add i8 %25, 72
  %26 = load i32, ptr %temp, align 4
  %conv31 = trunc i32 %26 to i8
  %call32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv30, i8 noundef zeroext %conv31) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb2.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb1.i.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adt7462_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %sensors_last_updated = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sensors_last_updated to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensors_last_updated, align 4
  %add.neg = add i32 %4, -200
  %sub = sub i32 %add.neg, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %sensors_valid = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %sensors_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sensors_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.no_sensor_update_crit_edge

land.lhs.true.no_sensor_update_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %no_sensor_update

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -120) #9
  %conv7 = trunc i32 %call6 to i8
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 7, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv7, ptr %arrayidx, align 1
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -119) #9
  %conv13 = trunc i32 %call12 to i8
  %arrayidx14 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv13, ptr %arrayidx14, align 1
  %call6.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -118) #9
  %conv7.1 = trunc i32 %call6.1 to i8
  %arrayidx.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv7.1, ptr %arrayidx.1, align 1
  %call12.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -117) #9
  %conv13.1 = trunc i32 %call12.1 to i8
  %arrayidx14.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx14.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13.1, ptr %arrayidx14.1, align 1
  %call6.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -116) #9
  %conv7.2 = trunc i32 %call6.2 to i8
  %arrayidx.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 7, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv7.2, ptr %arrayidx.2, align 1
  %call12.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -115) #9
  %conv13.2 = trunc i32 %call12.2 to i8
  %arrayidx14.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %arrayidx14.2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv13.2, ptr %arrayidx14.2, align 1
  %call6.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -114) #9
  %conv7.3 = trunc i32 %call6.3 to i8
  %arrayidx.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 7, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv7.3, ptr %arrayidx.3, align 1
  %call12.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -113) #9
  %conv13.3 = trunc i32 %call12.3 to i8
  %arrayidx14.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx14.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv13.3, ptr %arrayidx14.3, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -104) #9
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -103) #9
  %conv5.i = shl i32 %call3.i, 8
  %or.i = or i32 %conv5.i, %call.i
  %conv22 = trunc i32 %or.i to i16
  %arrayidx23 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 0
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv22, ptr %arrayidx23, align 2
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -102) #9
  %call3.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -101) #9
  %conv5.i.1 = shl i32 %call3.i.1, 8
  %or.i.1 = or i32 %conv5.i.1, %call.i.1
  %conv22.1 = trunc i32 %or.i.1 to i16
  %arrayidx23.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv22.1, ptr %arrayidx23.1, align 2
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -100) #9
  %call3.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -99) #9
  %conv5.i.2 = shl i32 %call3.i.2, 8
  %or.i.2 = or i32 %conv5.i.2, %call.i.2
  %conv22.2 = trunc i32 %or.i.2 to i16
  %arrayidx23.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 2
  %19 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22.2, ptr %arrayidx23.2, align 2
  %call.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -98) #9
  %call3.i.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -97) #9
  %conv5.i.3 = shl i32 %call3.i.3, 8
  %or.i.3 = or i32 %conv5.i.3, %call.i.3
  %conv22.3 = trunc i32 %or.i.3 to i16
  %arrayidx23.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 3
  %20 = ptrtoint ptr %arrayidx23.3 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv22.3, ptr %arrayidx23.3, align 2
  %call.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -94) #9
  %call3.i.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -93) #9
  %conv5.i.4 = shl i32 %call3.i.4, 8
  %or.i.4 = or i32 %conv5.i.4, %call.i.4
  %conv22.4 = trunc i32 %or.i.4 to i16
  %arrayidx23.4 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 4
  %21 = ptrtoint ptr %arrayidx23.4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv22.4, ptr %arrayidx23.4, align 2
  %call.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -92) #9
  %call3.i.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -91) #9
  %conv5.i.5 = shl i32 %call3.i.5, 8
  %or.i.5 = or i32 %conv5.i.5, %call.i.5
  %conv22.5 = trunc i32 %or.i.5 to i16
  %arrayidx23.5 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 5
  %22 = ptrtoint ptr %arrayidx23.5 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22.5, ptr %arrayidx23.5, align 2
  %call.i.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -90) #9
  %call3.i.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -89) #9
  %conv5.i.6 = shl i32 %call3.i.6, 8
  %or.i.6 = or i32 %conv5.i.6, %call.i.6
  %conv22.6 = trunc i32 %or.i.6 to i16
  %arrayidx23.6 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 6
  %23 = ptrtoint ptr %arrayidx23.6 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv22.6, ptr %arrayidx23.6, align 2
  %call.i.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -88) #9
  %call3.i.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -87) #9
  %conv5.i.7 = shl i32 %call3.i.7, 8
  %or.i.7 = or i32 %conv5.i.7, %call.i.7
  %conv22.7 = trunc i32 %or.i.7 to i16
  %arrayidx23.7 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 10, i32 7
  %24 = ptrtoint ptr %arrayidx23.7 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv22.7, ptr %arrayidx23.7, align 2
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #9
  %conv28 = trunc i32 %call27 to i8
  %fan_enabled = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %fan_enabled to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv28, ptr %fan_enabled, align 4
  %call35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -86) #9
  %conv36 = trunc i32 %call35 to i8
  %arrayidx37 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 14, i32 0
  %26 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv36, ptr %arrayidx37, align 1
  %call35.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -85) #9
  %conv36.1 = trunc i32 %call35.1 to i8
  %arrayidx37.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 14, i32 1
  %27 = ptrtoint ptr %arrayidx37.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv36.1, ptr %arrayidx37.1, align 1
  %call35.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -84) #9
  %conv36.2 = trunc i32 %call35.2 to i8
  %arrayidx37.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 14, i32 2
  %28 = ptrtoint ptr %arrayidx37.2 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv36.2, ptr %arrayidx37.2, align 1
  %call35.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -83) #9
  %conv36.3 = trunc i32 %call35.3 to i8
  %arrayidx37.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 14, i32 3
  %29 = ptrtoint ptr %arrayidx37.3 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv36.3, ptr %arrayidx37.3, align 1
  %call47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #9
  %conv48 = trunc i32 %call47 to i8
  %arrayidx49 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 15, i32 0
  %30 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv48, ptr %arrayidx49, align 1
  %call47.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #9
  %conv48.1 = trunc i32 %call47.1 to i8
  %arrayidx49.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv48.1, ptr %arrayidx49.1, align 1
  %call47.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #9
  %conv48.2 = trunc i32 %call47.2 to i8
  %arrayidx49.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 15, i32 2
  %32 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv48.2, ptr %arrayidx49.2, align 1
  %call47.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #9
  %conv48.3 = trunc i32 %call47.3 to i8
  %arrayidx49.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 15, i32 3
  %33 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv48.3, ptr %arrayidx49.3, align 1
  br label %for.body56

for.body56:                                       ; preds = %if.end66.for.body56_crit_edge, %if.end
  %i.4306 = phi i32 [ 0, %if.end ], [ %inc68, %if.end66.for.body56_crit_edge ]
  %34 = zext i32 %i.4306 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %i.4306, label %for.body56.if.end66_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %for.body56.if.else_crit_edge
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb10.i
    i32 4, label %sw.bb18.i
    i32 5, label %sw.bb26.i
    i32 6, label %sw.bb34.i
    i32 7, label %sw.bb42.i
    i32 8, label %sw.bb50.i
    i32 9, label %sw.bb58.i
    i32 10, label %sw.bb66.i
    i32 11, label %sw.bb67.i
    i32 12, label %sw.bb79.i
  ]

for.body56.if.else_crit_edge:                     ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

for.body56.if.end66_crit_edge:                    ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb.i:                                          ; preds = %for.body56
  %35 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx49, align 2
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i, label %sw.bb.i.if.else_crit_edge, label %sw.bb.i.if.end66_crit_edge

sw.bb.i.if.end66_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb.i.if.else_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb2.i:                                         ; preds = %for.body56
  %38 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx49.1, align 1
  %40 = and i8 %39, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool7.not.i = icmp eq i8 %40, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.if.else_crit_edge, label %sw.bb2.i.if.end66_crit_edge

sw.bb2.i.if.end66_crit_edge:                      ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb2.i.if.else_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb10.i:                                        ; preds = %for.body56
  %41 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx49.1, align 1
  %43 = and i8 %42, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool15.not.i = icmp eq i8 %43, 0
  br i1 %tobool15.not.i, label %sw.bb10.i.if.else_crit_edge, label %sw.bb10.i.if.end66_crit_edge

sw.bb10.i.if.end66_crit_edge:                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb10.i.if.else_crit_edge:                      ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb18.i:                                        ; preds = %for.body56
  %44 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx49, align 2
  %46 = and i8 %45, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool23.not.i = icmp eq i8 %46, 0
  br i1 %tobool23.not.i, label %sw.bb18.i.if.else_crit_edge, label %sw.bb18.i.if.end66_crit_edge

sw.bb18.i.if.end66_crit_edge:                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb18.i.if.else_crit_edge:                      ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb26.i:                                        ; preds = %for.body56
  %47 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx49, align 2
  %49 = and i8 %48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool31.not.i = icmp eq i8 %49, 0
  br i1 %tobool31.not.i, label %sw.bb26.i.if.else_crit_edge, label %sw.bb26.i.if.end66_crit_edge

sw.bb26.i.if.end66_crit_edge:                     ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb26.i.if.else_crit_edge:                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb34.i:                                        ; preds = %for.body56
  %50 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx49.1, align 1
  %52 = and i8 %51, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool39.not.i = icmp eq i8 %52, 0
  br i1 %tobool39.not.i, label %sw.bb34.i.if.else_crit_edge, label %sw.bb34.i.if.end66_crit_edge

sw.bb34.i.if.end66_crit_edge:                     ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb34.i.if.else_crit_edge:                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb42.i:                                        ; preds = %for.body56
  %53 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx49.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %54)
  %tobool47.not.i = icmp sgt i8 %54, -1
  br i1 %tobool47.not.i, label %sw.bb42.i.if.else_crit_edge, label %sw.bb42.i.if.end66_crit_edge

sw.bb42.i.if.end66_crit_edge:                     ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb42.i.if.else_crit_edge:                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb50.i:                                        ; preds = %for.body56
  %55 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %arrayidx49.2, align 2
  %57 = and i8 %56, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool55.not.i = icmp eq i8 %57, 0
  br i1 %tobool55.not.i, label %sw.bb50.i.if.else_crit_edge, label %sw.bb50.i.if.end66_crit_edge

sw.bb50.i.if.end66_crit_edge:                     ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb50.i.if.else_crit_edge:                      ; preds = %sw.bb50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb58.i:                                        ; preds = %for.body56
  %58 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx49.2, align 2
  %60 = and i8 %59, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool63.not.i = icmp eq i8 %60, 0
  br i1 %tobool63.not.i, label %sw.bb58.i.if.else_crit_edge, label %sw.bb58.i.if.end66_crit_edge

sw.bb58.i.if.end66_crit_edge:                     ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

sw.bb58.i.if.else_crit_edge:                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb66.i:                                        ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb67.i:                                        ; preds = %for.body56
  %61 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx49.3, align 1
  %.mask106.i = and i8 %62, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask106.i)
  %cmp.i296 = icmp eq i8 %.mask106.i, 80
  br i1 %cmp.i296, label %land.lhs.true.i, label %sw.bb67.i.if.end66_crit_edge

sw.bb67.i.if.end66_crit_edge:                     ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true.i:                                  ; preds = %sw.bb67.i
  %63 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %64)
  %tobool76.not.i = icmp sgt i8 %64, -1
  br i1 %tobool76.not.i, label %land.lhs.true.i.if.else_crit_edge, label %land.lhs.true.i.if.end66_crit_edge

land.lhs.true.i.if.end66_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

sw.bb79.i:                                        ; preds = %for.body56
  %65 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx49.3, align 1
  %.mask.i = and i8 %66, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask.i)
  %cmp84.i = icmp eq i8 %.mask.i, 80
  br i1 %cmp84.i, label %land.lhs.true86.i, label %sw.bb79.i.if.end66_crit_edge

sw.bb79.i.if.end66_crit_edge:                     ; preds = %sw.bb79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true86.i:                                ; preds = %sw.bb79.i
  %67 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx49, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %68)
  %tobool91.not.i = icmp sgt i8 %68, -1
  br i1 %tobool91.not.i, label %land.lhs.true86.i.if.else_crit_edge, label %land.lhs.true86.i.if.end66_crit_edge

land.lhs.true86.i.if.end66_crit_edge:             ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

land.lhs.true86.i.if.else_crit_edge:              ; preds = %land.lhs.true86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true86.i.if.else_crit_edge, %land.lhs.true.i.if.else_crit_edge, %sw.bb66.i, %sw.bb58.i.if.else_crit_edge, %sw.bb50.i.if.else_crit_edge, %sw.bb42.i.if.else_crit_edge, %sw.bb34.i.if.else_crit_edge, %sw.bb26.i.if.else_crit_edge, %sw.bb18.i.if.else_crit_edge, %sw.bb10.i.if.else_crit_edge, %sw.bb2.i.if.else_crit_edge, %sw.bb.i.if.else_crit_edge, %for.body56.if.else_crit_edge
  %retval.0.i297.ph = phi i8 [ -107, %land.lhs.true86.i.if.else_crit_edge ], [ -108, %land.lhs.true.i.if.else_crit_edge ], [ -110, %sw.bb58.i.if.else_crit_edge ], [ -109, %sw.bb50.i.if.else_crit_edge ], [ -91, %sw.bb42.i.if.else_crit_edge ], [ -106, %sw.bb34.i.if.else_crit_edge ], [ -117, %sw.bb26.i.if.else_crit_edge ], [ -113, %sw.bb18.i.if.else_crit_edge ], [ -89, %sw.bb10.i.if.else_crit_edge ], [ -87, %sw.bb2.i.if.else_crit_edge ], [ -112, %for.body56.if.else_crit_edge ], [ -93, %sw.bb.i.if.else_crit_edge ], [ -111, %sw.bb66.i ]
  %call62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %retval.0.i297.ph) #9
  %conv63 = trunc i32 %call62 to i8
  br label %if.end66

if.end66:                                         ; preds = %if.else, %land.lhs.true86.i.if.end66_crit_edge, %sw.bb79.i.if.end66_crit_edge, %land.lhs.true.i.if.end66_crit_edge, %sw.bb67.i.if.end66_crit_edge, %sw.bb58.i.if.end66_crit_edge, %sw.bb50.i.if.end66_crit_edge, %sw.bb42.i.if.end66_crit_edge, %sw.bb34.i.if.end66_crit_edge, %sw.bb26.i.if.end66_crit_edge, %sw.bb18.i.if.end66_crit_edge, %sw.bb10.i.if.end66_crit_edge, %sw.bb2.i.if.end66_crit_edge, %sw.bb.i.if.end66_crit_edge, %for.body56.if.end66_crit_edge
  %conv63.sink = phi i8 [ %conv63, %if.else ], [ 0, %land.lhs.true86.i.if.end66_crit_edge ], [ 0, %sw.bb79.i.if.end66_crit_edge ], [ 0, %land.lhs.true.i.if.end66_crit_edge ], [ 0, %sw.bb67.i.if.end66_crit_edge ], [ 0, %sw.bb58.i.if.end66_crit_edge ], [ 0, %sw.bb50.i.if.end66_crit_edge ], [ 0, %sw.bb42.i.if.end66_crit_edge ], [ 0, %sw.bb34.i.if.end66_crit_edge ], [ 0, %sw.bb26.i.if.end66_crit_edge ], [ 0, %sw.bb18.i.if.end66_crit_edge ], [ 0, %sw.bb10.i.if.end66_crit_edge ], [ 0, %sw.bb2.i.if.end66_crit_edge ], [ 0, %sw.bb.i.if.end66_crit_edge ], [ 0, %for.body56.if.end66_crit_edge ]
  %arrayidx65 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 16, i32 %i.4306
  %69 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv63.sink, ptr %arrayidx65, align 1
  %inc68 = add nuw nsw i32 %i.4306, 1
  %exitcond.not = icmp eq i32 %inc68, 13
  br i1 %exitcond.not, label %for.end69, label %if.end66.for.body56_crit_edge

if.end66.for.body56_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body56

for.end69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -72) #9
  %conv71 = trunc i32 %call70 to i8
  %alarms = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 24
  %70 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv71, ptr %alarms, align 2
  %call73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -69) #9
  %conv74 = trunc i32 %call73 to i8
  %arrayidx76 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 24, i32 1
  %71 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv74, ptr %arrayidx76, align 1
  %call77 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -68) #9
  %conv78 = trunc i32 %call77 to i8
  %arrayidx80 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 24, i32 2
  %72 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv78, ptr %arrayidx80, align 2
  %call81 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -67) #9
  %conv82 = trunc i32 %call81 to i8
  %arrayidx84 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 24, i32 3
  %73 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %conv82, ptr %arrayidx84, align 1
  %74 = ptrtoint ptr %sensors_last_updated to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %4, ptr %sensors_last_updated, align 4
  %sensors_valid86 = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 2
  %75 = ptrtoint ptr %sensors_valid86 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 1, ptr %sensors_valid86, align 4
  br label %no_sensor_update

no_sensor_update:                                 ; preds = %for.end69, %land.lhs.true.no_sensor_update_crit_edge
  %limits_last_updated = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 5
  %76 = ptrtoint ptr %limits_last_updated to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %limits_last_updated, align 4
  %add87.neg = add i32 %4, -6000
  %sub88 = sub i32 %add87.neg, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub88)
  %cmp89 = icmp slt i32 %sub88, 0
  br i1 %cmp89, label %land.lhs.true91, label %no_sensor_update.if.end95_crit_edge

no_sensor_update.if.end95_crit_edge:              ; preds = %no_sensor_update
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

land.lhs.true91:                                  ; preds = %no_sensor_update
  %limits_valid = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 3
  %78 = ptrtoint ptr %limits_valid to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %limits_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool93.not = icmp eq i8 %79, 0
  br i1 %tobool93.not, label %land.lhs.true91.if.end95_crit_edge, label %land.lhs.true91.out_crit_edge

land.lhs.true91.out_crit_edge:                    ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

land.lhs.true91.if.end95_crit_edge:               ; preds = %land.lhs.true91
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end95

if.end95:                                         ; preds = %land.lhs.true91.if.end95_crit_edge, %no_sensor_update.if.end95_crit_edge
  %call102 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 68) #9
  %conv103 = trunc i32 %call102 to i8
  %arrayidx104 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 8, i32 0
  %80 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv103, ptr %arrayidx104, align 1
  %call107 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 72) #9
  %conv108 = trunc i32 %call107 to i8
  %arrayidx109 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 9, i32 0
  %81 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv108, ptr %arrayidx109, align 1
  %call102.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 69) #9
  %conv103.1 = trunc i32 %call102.1 to i8
  %arrayidx104.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 8, i32 1
  %82 = ptrtoint ptr %arrayidx104.1 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv103.1, ptr %arrayidx104.1, align 1
  %call107.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 73) #9
  %conv108.1 = trunc i32 %call107.1 to i8
  %arrayidx109.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 9, i32 1
  %83 = ptrtoint ptr %arrayidx109.1 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv108.1, ptr %arrayidx109.1, align 1
  %call102.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 70) #9
  %conv103.2 = trunc i32 %call102.2 to i8
  %arrayidx104.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 8, i32 2
  %84 = ptrtoint ptr %arrayidx104.2 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv103.2, ptr %arrayidx104.2, align 1
  %call107.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 74) #9
  %conv108.2 = trunc i32 %call107.2 to i8
  %arrayidx109.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 9, i32 2
  %85 = ptrtoint ptr %arrayidx109.2 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv108.2, ptr %arrayidx109.2, align 1
  %call102.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 71) #9
  %conv103.3 = trunc i32 %call102.3 to i8
  %arrayidx104.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 8, i32 3
  %86 = ptrtoint ptr %arrayidx104.3 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv103.3, ptr %arrayidx104.3, align 1
  %call107.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 75) #9
  %conv108.3 = trunc i32 %call107.3 to i8
  %arrayidx109.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 9, i32 3
  %87 = ptrtoint ptr %arrayidx109.3 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv108.3, ptr %arrayidx109.3, align 1
  %call119 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 120) #9
  %conv120 = trunc i32 %call119 to i8
  %arrayidx121 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 0
  %88 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv120, ptr %arrayidx121, align 1
  %call119.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 121) #9
  %conv120.1 = trunc i32 %call119.1 to i8
  %arrayidx121.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 1
  %89 = ptrtoint ptr %arrayidx121.1 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv120.1, ptr %arrayidx121.1, align 1
  %call119.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 122) #9
  %conv120.2 = trunc i32 %call119.2 to i8
  %arrayidx121.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 2
  %90 = ptrtoint ptr %arrayidx121.2 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv120.2, ptr %arrayidx121.2, align 1
  %call119.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 123) #9
  %conv120.3 = trunc i32 %call119.3 to i8
  %arrayidx121.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 3
  %91 = ptrtoint ptr %arrayidx121.3 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv120.3, ptr %arrayidx121.3, align 1
  %call119.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 124) #9
  %conv120.4 = trunc i32 %call119.4 to i8
  %arrayidx121.4 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 4
  %92 = ptrtoint ptr %arrayidx121.4 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv120.4, ptr %arrayidx121.4, align 1
  %call119.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 125) #9
  %conv120.5 = trunc i32 %call119.5 to i8
  %arrayidx121.5 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 5
  %93 = ptrtoint ptr %arrayidx121.5 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv120.5, ptr %arrayidx121.5, align 1
  %call119.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 126) #9
  %conv120.6 = trunc i32 %call119.6 to i8
  %arrayidx121.6 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 6
  %94 = ptrtoint ptr %arrayidx121.6 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv120.6, ptr %arrayidx121.6, align 1
  %call119.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 127) #9
  %conv120.7 = trunc i32 %call119.7 to i8
  %arrayidx121.7 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 7
  %95 = ptrtoint ptr %arrayidx121.7 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv120.7, ptr %arrayidx121.7, align 1
  br label %for.body128

for.body128:                                      ; preds = %cond.end142.for.body128_crit_edge, %if.end95
  %i.7311 = phi i32 [ %inc147, %cond.end142.for.body128_crit_edge ], [ 0, %if.end95 ]
  %call130 = tail call fastcc i32 @ADT7462_REG_VOLT_MAX(ptr noundef %1, i32 noundef %i.7311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %for.body128.cond.end_crit_edge, label %cond.true

for.body128.cond.end_crit_edge:                   ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #11
  %conv132 = trunc i32 %call130 to i8
  %call133 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv132) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.body128.cond.end_crit_edge
  %cond = phi i32 [ %call133, %cond.true ], [ 0, %for.body128.cond.end_crit_edge ]
  %conv134 = trunc i32 %cond to i8
  %arrayidx135 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 17, i32 %i.7311
  %96 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv134, ptr %arrayidx135, align 1
  %call136 = tail call fastcc i32 @ADT7462_REG_VOLT_MIN(ptr noundef %1, i32 noundef %i.7311)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %cond.end.cond.end142_crit_edge, label %cond.true138

cond.end.cond.end142_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end142

cond.true138:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv139 = trunc i32 %call136 to i8
  %call140 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv139) #9
  br label %cond.end142

cond.end142:                                      ; preds = %cond.true138, %cond.end.cond.end142_crit_edge
  %cond143 = phi i32 [ %call140, %cond.true138 ], [ 0, %cond.end.cond.end142_crit_edge ]
  %conv144 = trunc i32 %cond143 to i8
  %arrayidx145 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 18, i32 %i.7311
  %97 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv144, ptr %arrayidx145, align 1
  %inc147 = add nuw nsw i32 %i.7311, 1
  %exitcond315.not = icmp eq i32 %inc147, 13
  br i1 %exitcond315.not, label %for.body152.preheader, label %cond.end142.for.body128_crit_edge

cond.end142.for.body128_crit_edge:                ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body128

for.body152.preheader:                            ; preds = %cond.end142
  call void @__sanitizer_cov_trace_pc() #11
  %call155 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 40) #9
  %conv156 = trunc i32 %call155 to i8
  %arrayidx157 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 19, i32 0
  %98 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv156, ptr %arrayidx157, align 1
  %call160 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 92) #9
  %conv161 = trunc i32 %call160 to i8
  %arrayidx162 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 0
  %99 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %conv161, ptr %arrayidx162, align 1
  %call165 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 96) #9
  %conv166 = trunc i32 %call165 to i8
  %arrayidx167 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 0
  %100 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv166, ptr %arrayidx167, align 1
  %call170 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #9
  %conv171 = trunc i32 %call170 to i8
  %arrayidx172 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 0
  %101 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %conv171, ptr %arrayidx172, align 1
  %call155.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #9
  %conv156.1 = trunc i32 %call155.1 to i8
  %arrayidx157.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 19, i32 1
  %102 = ptrtoint ptr %arrayidx157.1 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv156.1, ptr %arrayidx157.1, align 1
  %call160.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 93) #9
  %conv161.1 = trunc i32 %call160.1 to i8
  %arrayidx162.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 1
  %103 = ptrtoint ptr %arrayidx162.1 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 %conv161.1, ptr %arrayidx162.1, align 1
  %call165.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 97) #9
  %conv166.1 = trunc i32 %call165.1 to i8
  %arrayidx167.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 1
  %104 = ptrtoint ptr %arrayidx167.1 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv166.1, ptr %arrayidx167.1, align 1
  %call170.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #9
  %conv171.1 = trunc i32 %call170.1 to i8
  %arrayidx172.1 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 1
  %105 = ptrtoint ptr %arrayidx172.1 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %conv171.1, ptr %arrayidx172.1, align 1
  %call155.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 42) #9
  %conv156.2 = trunc i32 %call155.2 to i8
  %arrayidx157.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 19, i32 2
  %106 = ptrtoint ptr %arrayidx157.2 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv156.2, ptr %arrayidx157.2, align 1
  %call160.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 94) #9
  %conv161.2 = trunc i32 %call160.2 to i8
  %arrayidx162.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 2
  %107 = ptrtoint ptr %arrayidx162.2 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 %conv161.2, ptr %arrayidx162.2, align 1
  %call165.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 98) #9
  %conv166.2 = trunc i32 %call165.2 to i8
  %arrayidx167.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 2
  %108 = ptrtoint ptr %arrayidx167.2 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %conv166.2, ptr %arrayidx167.2, align 1
  %call170.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 35) #9
  %conv171.2 = trunc i32 %call170.2 to i8
  %arrayidx172.2 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 2
  %109 = ptrtoint ptr %arrayidx172.2 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %conv171.2, ptr %arrayidx172.2, align 1
  %call155.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 43) #9
  %conv156.3 = trunc i32 %call155.3 to i8
  %arrayidx157.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 19, i32 3
  %110 = ptrtoint ptr %arrayidx157.3 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv156.3, ptr %arrayidx157.3, align 1
  %call160.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 95) #9
  %conv161.3 = trunc i32 %call160.3 to i8
  %arrayidx162.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 3
  %111 = ptrtoint ptr %arrayidx162.3 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv161.3, ptr %arrayidx162.3, align 1
  %call165.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 99) #9
  %conv166.3 = trunc i32 %call165.3 to i8
  %arrayidx167.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 3
  %112 = ptrtoint ptr %arrayidx167.3 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv166.3, ptr %arrayidx167.3, align 1
  %call170.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #9
  %conv171.3 = trunc i32 %call170.3 to i8
  %arrayidx172.3 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 3
  %113 = ptrtoint ptr %arrayidx172.3 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 %conv171.3, ptr %arrayidx172.3, align 1
  %call176 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 44) #9
  %conv177 = trunc i32 %call176 to i8
  %pwm_max = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 22
  %114 = ptrtoint ptr %pwm_max to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv177, ptr %pwm_max, align 1
  %call178 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #9
  %conv179 = trunc i32 %call178 to i8
  %cfg2 = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 13
  %115 = ptrtoint ptr %cfg2 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv179, ptr %cfg2, align 1
  %116 = ptrtoint ptr %limits_last_updated to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %4, ptr %limits_last_updated, align 4
  %limits_valid181 = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 3
  %117 = ptrtoint ptr %limits_valid181 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 1, ptr %limits_valid181, align 1
  br label %out

out:                                              ; preds = %for.body152.preheader, %land.lhs.true91.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ADT7462_REG_VOLT_MAX(ptr nocapture noundef readonly %data, i32 noundef %which) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %which, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb2
    i32 3, label %sw.bb10
    i32 4, label %sw.bb18
    i32 5, label %sw.bb26
    i32 6, label %sw.bb34
    i32 7, label %sw.bb42
    i32 8, label %sw.bb50
    i32 9, label %sw.bb58
    i32 10, label %sw.bb66
    i32 11, label %sw.bb67
    i32 12, label %sw.bb79
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pin_cfg = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %1 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pin_cfg, align 2
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %sw.bb2.return_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb10:                                          ; preds = %entry
  %arrayidx12 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %sw.bb10.return_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb18:                                          ; preds = %entry
  %pin_cfg19 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %10 = ptrtoint ptr %pin_cfg19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pin_cfg19, align 2
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %sw.bb18.return_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb18.return_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb26:                                          ; preds = %entry
  %pin_cfg27 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %13 = ptrtoint ptr %pin_cfg27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pin_cfg27, align 2
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp eq i8 %15, 0
  br i1 %tobool31.not, label %sw.bb26.return_crit_edge, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26.return_crit_edge:                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb34:                                          ; preds = %entry
  %arrayidx36 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx36, align 1
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  br i1 %tobool39.not, label %sw.bb34.return_crit_edge, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb34.return_crit_edge:                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb42:                                          ; preds = %entry
  %arrayidx44 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool47.not = icmp sgt i8 %20, -1
  br i1 %tobool47.not, label %sw.bb42.return_crit_edge, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb42.return_crit_edge:                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb50:                                          ; preds = %entry
  %arrayidx52 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx52, align 2
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool55.not = icmp eq i8 %23, 0
  br i1 %tobool55.not, label %sw.bb50.return_crit_edge, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb50.return_crit_edge:                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb58:                                          ; preds = %entry
  %arrayidx60 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx60, align 2
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool63.not = icmp eq i8 %26, 0
  br i1 %tobool63.not, label %sw.bb58.return_crit_edge, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb58.return_crit_edge:                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb67:                                          ; preds = %entry
  %arrayidx69 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 3
  %27 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx69, align 1
  %.mask106 = and i8 %28, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask106)
  %cmp = icmp eq i8 %.mask106, 80
  br i1 %cmp, label %land.lhs.true, label %sw.bb67.sw.epilog_crit_edge

sw.bb67.sw.epilog_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb67
  %pin_cfg68 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %29 = ptrtoint ptr %pin_cfg68 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pin_cfg68, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool76.not = icmp sgt i8 %30, -1
  br i1 %tobool76.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb79:                                          ; preds = %entry
  %arrayidx81 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 3
  %31 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx81, align 1
  %.mask = and i8 %32, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask)
  %cmp84 = icmp eq i8 %.mask, 80
  br i1 %cmp84, label %land.lhs.true86, label %sw.bb79.sw.epilog_crit_edge

sw.bb79.sw.epilog_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true86:                                  ; preds = %sw.bb79
  %pin_cfg80 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %33 = ptrtoint ptr %pin_cfg80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pin_cfg80, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool91.not = icmp sgt i8 %34, -1
  br i1 %tobool91.not, label %land.lhs.true86.return_crit_edge, label %land.lhs.true86.sw.epilog_crit_edge

land.lhs.true86.sw.epilog_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true86.return_crit_edge:                 ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %land.lhs.true86.sw.epilog_crit_edge, %sw.bb79.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb67.sw.epilog_crit_edge, %sw.bb58.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %land.lhs.true86.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb66, %sw.bb58.return_crit_edge, %sw.bb50.return_crit_edge, %sw.bb42.return_crit_edge, %sw.bb34.return_crit_edge, %sw.bb26.return_crit_edge, %sw.bb18.return_crit_edge, %sw.bb10.return_crit_edge, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 106, %sw.bb66 ], [ 124, %sw.bb.return_crit_edge ], [ 105, %entry.return_crit_edge ], [ 127, %sw.bb2.return_crit_edge ], [ 126, %sw.bb10.return_crit_edge ], [ 75, %sw.bb18.return_crit_edge ], [ 73, %sw.bb26.return_crit_edge ], [ 104, %sw.bb34.return_crit_edge ], [ 125, %sw.bb42.return_crit_edge ], [ 108, %sw.bb50.return_crit_edge ], [ 107, %sw.bb58.return_crit_edge ], [ 80, %land.lhs.true.return_crit_edge ], [ 76, %land.lhs.true86.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ADT7462_REG_VOLT_MIN(ptr nocapture noundef readonly %data, i32 noundef %which) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %which, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %entry.return_crit_edge
    i32 2, label %sw.bb2
    i32 3, label %sw.bb10
    i32 4, label %sw.bb18
    i32 5, label %sw.bb26
    i32 6, label %sw.bb34
    i32 7, label %sw.bb42
    i32 8, label %sw.bb50
    i32 9, label %sw.bb58
    i32 10, label %sw.bb66
    i32 11, label %sw.bb67
    i32 12, label %sw.bb79
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %pin_cfg = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %1 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pin_cfg, align 2
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb2:                                           ; preds = %entry
  %arrayidx4 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %6 = and i8 %5, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not = icmp eq i8 %6, 0
  br i1 %tobool7.not, label %sw.bb2.return_crit_edge, label %sw.bb2.sw.epilog_crit_edge

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb2.return_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb10:                                          ; preds = %entry
  %arrayidx12 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx12, align 1
  %9 = and i8 %8, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %sw.bb10.return_crit_edge, label %sw.bb10.sw.epilog_crit_edge

sw.bb10.sw.epilog_crit_edge:                      ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb10.return_crit_edge:                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb18:                                          ; preds = %entry
  %pin_cfg19 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %10 = ptrtoint ptr %pin_cfg19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pin_cfg19, align 2
  %12 = and i8 %11, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %sw.bb18.return_crit_edge, label %sw.bb18.sw.epilog_crit_edge

sw.bb18.sw.epilog_crit_edge:                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb18.return_crit_edge:                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb26:                                          ; preds = %entry
  %pin_cfg27 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %13 = ptrtoint ptr %pin_cfg27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pin_cfg27, align 2
  %15 = and i8 %14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool31.not = icmp eq i8 %15, 0
  br i1 %tobool31.not, label %sw.bb26.return_crit_edge, label %sw.bb26.sw.epilog_crit_edge

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb26.return_crit_edge:                         ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb34:                                          ; preds = %entry
  %arrayidx36 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx36, align 1
  %18 = and i8 %17, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  br i1 %tobool39.not, label %sw.bb34.return_crit_edge, label %sw.bb34.sw.epilog_crit_edge

sw.bb34.sw.epilog_crit_edge:                      ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb34.return_crit_edge:                         ; preds = %sw.bb34
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb42:                                          ; preds = %entry
  %arrayidx44 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx44, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %tobool47.not = icmp sgt i8 %20, -1
  br i1 %tobool47.not, label %sw.bb42.return_crit_edge, label %sw.bb42.sw.epilog_crit_edge

sw.bb42.sw.epilog_crit_edge:                      ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb42.return_crit_edge:                         ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb50:                                          ; preds = %entry
  %arrayidx52 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %21 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx52, align 2
  %23 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool55.not = icmp eq i8 %23, 0
  br i1 %tobool55.not, label %sw.bb50.return_crit_edge, label %sw.bb50.sw.epilog_crit_edge

sw.bb50.sw.epilog_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb50.return_crit_edge:                         ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb58:                                          ; preds = %entry
  %arrayidx60 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx60, align 2
  %26 = and i8 %25, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool63.not = icmp eq i8 %26, 0
  br i1 %tobool63.not, label %sw.bb58.return_crit_edge, label %sw.bb58.sw.epilog_crit_edge

sw.bb58.sw.epilog_crit_edge:                      ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb58.return_crit_edge:                         ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb66:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb67:                                          ; preds = %entry
  %arrayidx69 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 3
  %27 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx69, align 1
  %.mask106 = and i8 %28, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask106)
  %cmp = icmp eq i8 %.mask106, 80
  br i1 %cmp, label %land.lhs.true, label %sw.bb67.sw.epilog_crit_edge

sw.bb67.sw.epilog_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true:                                    ; preds = %sw.bb67
  %pin_cfg68 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %29 = ptrtoint ptr %pin_cfg68 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pin_cfg68, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %30)
  %tobool76.not = icmp sgt i8 %30, -1
  br i1 %tobool76.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.sw.epilog_crit_edge

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb79:                                          ; preds = %entry
  %arrayidx81 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 3
  %31 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx81, align 1
  %.mask = and i8 %32, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask)
  %cmp84 = icmp eq i8 %.mask, 80
  br i1 %cmp84, label %land.lhs.true86, label %sw.bb79.sw.epilog_crit_edge

sw.bb79.sw.epilog_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true86:                                  ; preds = %sw.bb79
  %pin_cfg80 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %33 = ptrtoint ptr %pin_cfg80 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pin_cfg80, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %34)
  %tobool91.not = icmp sgt i8 %34, -1
  br i1 %tobool91.not, label %land.lhs.true86.return_crit_edge, label %land.lhs.true86.sw.epilog_crit_edge

land.lhs.true86.sw.epilog_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true86.return_crit_edge:                 ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %land.lhs.true86.sw.epilog_crit_edge, %sw.bb79.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge, %sw.bb67.sw.epilog_crit_edge, %sw.bb58.sw.epilog_crit_edge, %sw.bb50.sw.epilog_crit_edge, %sw.bb42.sw.epilog_crit_edge, %sw.bb34.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge, %sw.bb18.sw.epilog_crit_edge, %sw.bb10.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog, %land.lhs.true86.return_crit_edge, %land.lhs.true.return_crit_edge, %sw.bb66, %sw.bb58.return_crit_edge, %sw.bb50.return_crit_edge, %sw.bb42.return_crit_edge, %sw.bb34.return_crit_edge, %sw.bb26.return_crit_edge, %sw.bb18.return_crit_edge, %sw.bb10.return_crit_edge, %sw.bb2.return_crit_edge, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ 115, %sw.bb66 ], [ 109, %sw.bb.return_crit_edge ], [ 114, %entry.return_crit_edge ], [ 111, %sw.bb2.return_crit_edge ], [ 113, %sw.bb10.return_crit_edge ], [ 71, %sw.bb18.return_crit_edge ], [ 69, %sw.bb26.return_crit_edge ], [ 112, %sw.bb34.return_crit_edge ], [ 110, %sw.bb42.return_crit_edge ], [ 117, %sw.bb50.return_crit_edge ], [ 116, %sw.bb58.return_crit_edge ], [ 118, %land.lhs.true.return_crit_edge ], [ 119, %land.lhs.true86.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge11
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1.i:                                         ; preds = %entry
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pin_cfg.i, align 2
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb1.i.if.then_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i.if.then_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i:                                         ; preds = %entry
  %pin_cfg3.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %pin_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pin_cfg3.i, align 2
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not.i = icmp eq i8 %8, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.if.then_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i.if.then_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sw.bb2.i.if.then_crit_edge, %sw.bb1.i.if.then_crit_edge, %entry.if.then_crit_edge
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge11
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 8, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %11 to i32
  %12 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %12, -64000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call4, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %6, label %lor.lhs.false.cleanup_crit_edge [
    i32 0, label %lor.lhs.false.if.end_crit_edge
    i32 2, label %lor.lhs.false.if.end_crit_edge55
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

lor.lhs.false.if.end_crit_edge55:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb1.i:                                         ; preds = %lor.lhs.false
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pin_cfg.i, align 2
  %10 = and i8 %9, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.bb1.i.cleanup_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i.cleanup_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb2.i:                                         ; preds = %lor.lhs.false
  %pin_cfg3.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %pin_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pin_cfg3.i, align 2
  %13 = and i8 %12, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not.i = icmp eq i8 %13, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.cleanup_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge55
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 4
  %16 = call i32 @llvm.smax.i32(i32 %15, i32 -64000)
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 191000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13 = icmp sgt i32 %16, 0
  %cond24.in.v = select i1 %cmp13, i32 500, i32 -500
  %cond24.in = add nsw i32 %cond24.in.v, %17
  %cond24 = sdiv i32 %cond24.in, 1000
  %add25 = add nsw i32 %cond24, 64
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add25, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %conv26 = trunc i32 %20 to i8
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 8, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %arrayidx, align 1
  %24 = load i32, ptr %index, align 4
  %25 = trunc i32 %24 to i8
  %conv30 = add i8 %25, 68
  %26 = load i32, ptr %temp, align 4
  %conv31 = trunc i32 %26 to i8
  %call32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv30, i8 noundef zeroext %conv31) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.bb2.i.cleanup_crit_edge, %sw.bb1.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb1.i.cleanup_crit_edge ], [ -22, %sw.bb2.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 0, label %entry.if.end_crit_edge
    i32 2, label %entry.if.end_crit_edge20
    i32 1, label %sw.bb1.i
    i32 3, label %sw.bb2.i
  ]

entry.if.end_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb1.i:                                         ; preds = %entry
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pin_cfg.i, align 2
  %7 = and i8 %6, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %sw.bb1.i.if.then_crit_edge, label %sw.bb1.i.if.end_crit_edge

sw.bb1.i.if.end_crit_edge:                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i.if.then_crit_edge:                       ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb2.i:                                         ; preds = %entry
  %pin_cfg3.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %8 = ptrtoint ptr %pin_cfg3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pin_cfg3.i, align 2
  %10 = and i8 %9, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not.i = icmp eq i8 %10, 0
  br i1 %tobool7.not.i, label %sw.bb2.i.if.then_crit_edge, label %sw.bb2.i.if.end_crit_edge

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb2.i.if.then_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %sw.bb2.i.if.then_crit_edge, %sw.bb1.i.if.then_crit_edge, %entry.if.then_crit_edge
  %11 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %sw.bb2.i.if.end_crit_edge, %sw.bb1.i.if.end_crit_edge, %entry.if.end_crit_edge, %entry.if.end_crit_edge20
  %12 = lshr i8 %3, 6
  %arrayidx6 = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 6, i32 %1
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %14 to i32
  %15 = mul nuw nsw i32 %conv7, 1000
  %conv8 = zext i8 %12 to i32
  %mul9 = mul nuw nsw i32 %conv8, 250
  %mul = add nuw nsw i32 %mul9, -64000
  %add = add nsw i32 %mul, %15
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call10, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_label_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %1, label %entry.sw.epilog.i_crit_edge [
    i32 0, label %entry.temp_label.exit_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb3.i
  ]

entry.temp_label.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %temp_label.exit

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %entry
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pin_cfg.i, align 2
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb1.i.sw.epilog.i_crit_edge, label %sw.bb1.i.temp_label.exit_crit_edge

sw.bb1.i.temp_label.exit_crit_edge:               ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temp_label.exit

sw.bb1.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %temp_label.exit

sw.bb3.i:                                         ; preds = %entry
  %pin_cfg4.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %6 = ptrtoint ptr %pin_cfg4.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pin_cfg4.i, align 2
  %8 = and i8 %7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8.not.i = icmp eq i8 %8, 0
  br i1 %tobool8.not.i, label %sw.bb3.i.sw.epilog.i_crit_edge, label %sw.bb3.i.temp_label.exit_crit_edge

sw.bb3.i.temp_label.exit_crit_edge:               ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %temp_label.exit

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i.sw.epilog.i_crit_edge, %sw.bb1.i.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge
  br label %temp_label.exit

temp_label.exit:                                  ; preds = %sw.epilog.i, %sw.bb3.i.temp_label.exit_crit_edge, %sw.bb2.i, %sw.bb1.i.temp_label.exit_crit_edge, %entry.temp_label.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.27, %sw.epilog.i ], [ @.str.25, %sw.bb2.i ], [ @.str.23, %entry.temp_label.exit_crit_edge ], [ @.str.24, %sw.bb1.i.temp_label.exit_crit_edge ], [ @.str.26, %sw.bb3.i.temp_label.exit_crit_edge ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef nonnull %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %shr = ashr i32 %1, 8
  %and = and i32 %1, 15
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 24, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and2 = and i32 %and, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.32, i32 3)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @volt_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @voltage_multiplier(ptr noundef %call, i32 noundef %1)
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul i32 %call1, %conv
  %div = sdiv i32 %mul, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @volt_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call fastcc i32 @voltage_multiplier(ptr noundef %1, i32 noundef %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %mul = mul i32 %call2, 255
  %div = sdiv i32 %mul, 1000
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 %div)
  %mul12 = mul nsw i32 %10, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp slt i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp15 = icmp sgt i32 %call2, 0
  %cmp17 = xor i1 %cmp15, %cmp14
  %add.pn.v.v = select i1 %cmp17, i32 2, i32 -2
  %add.pn.v = sdiv i32 %call2, %add.pn.v.v
  %add.pn = add i32 %mul12, %add.pn.v
  %cond26 = sdiv i32 %add.pn, %call2
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond26, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp, align 4
  %conv27 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 17, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %arrayidx, align 1
  %17 = load i32, ptr %index, align 4
  %call30 = call fastcc i32 @ADT7462_REG_VOLT_MAX(ptr noundef %1, i32 noundef %17)
  %conv31 = trunc i32 %call30 to i8
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp, align 4
  %conv32 = trunc i32 %19 to i8
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @voltage_multiplier(ptr nocapture noundef readonly %data, i32 noundef %which) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %which to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %which, label %entry.sw.epilog121_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb17
    i32 3, label %sw.bb25
    i32 4, label %sw.bb33
    i32 5, label %sw.bb48
    i32 6, label %sw.bb63
    i32 7, label %sw.bb71
    i32 8, label %sw.bb79
    i32 9, label %sw.bb88
    i32 10, label %sw.bb97
    i32 11, label %entry.sw.bb108_crit_edge
    i32 12, label %entry.sw.bb108_crit_edge145
  ]

entry.sw.bb108_crit_edge145:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb108

entry.sw.bb108_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb108

entry.sw.epilog121_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb:                                            ; preds = %entry
  %pin_cfg = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %1 = ptrtoint ptr %pin_cfg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pin_cfg, align 2
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %sw.bb.return_crit_edge, label %sw.bb.sw.epilog121_crit_edge

sw.bb.sw.epilog121_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx3, align 1
  %6 = and i8 %5, 3
  %and5 = zext i8 %6 to i32
  %7 = zext i32 %and5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %and5, label %sw.bb1.unreachabledefault [
    i32 0, label %sw.bb6
    i32 1, label %sw.bb1.return_crit_edge
    i32 2, label %sw.bb15
    i32 3, label %sw.bb16
  ]

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb6:                                           ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %pin_cfg2 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %8 = ptrtoint ptr %pin_cfg2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pin_cfg2, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %9)
  %tobool11.not = icmp sgt i8 %9, -1
  %. = select i1 %tobool11.not, i32 6250, i32 12500
  br label %return

sw.bb15:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb16:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1.unreachabledefault:                        ; preds = %sw.bb1
  unreachable

sw.bb17:                                          ; preds = %entry
  %arrayidx19 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx19, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %sw.bb17.return_crit_edge, label %sw.bb17.sw.epilog121_crit_edge

sw.bb17.sw.epilog121_crit_edge:                   ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb17.return_crit_edge:                         ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb25:                                          ; preds = %entry
  %arrayidx27 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx27, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool30.not = icmp eq i8 %15, 0
  br i1 %tobool30.not, label %sw.bb25.return_crit_edge, label %sw.bb25.sw.epilog121_crit_edge

sw.bb25.sw.epilog121_crit_edge:                   ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb25.return_crit_edge:                         ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb33:                                          ; preds = %entry
  %pin_cfg34 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %16 = ptrtoint ptr %pin_cfg34 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pin_cfg34, align 2
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool38.not = icmp eq i8 %18, 0
  br i1 %tobool38.not, label %if.then39, label %sw.bb33.sw.epilog121_crit_edge

sw.bb33.sw.epilog121_crit_edge:                   ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

if.then39:                                        ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx41 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx41, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool44.not = icmp eq i8 %21, 0
  %.137 = select i1 %tobool44.not, i32 6500, i32 4690
  br label %return

sw.bb48:                                          ; preds = %entry
  %pin_cfg49 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %22 = ptrtoint ptr %pin_cfg49 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pin_cfg49, align 2
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool53.not = icmp eq i8 %24, 0
  br i1 %tobool53.not, label %if.then54, label %sw.bb48.sw.epilog121_crit_edge

sw.bb48.sw.epilog121_crit_edge:                   ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

if.then54:                                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx56 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx56, align 1
  %27 = and i8 %26, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool59.not = icmp eq i8 %27, 0
  %.138 = select i1 %tobool59.not, i32 13000, i32 9400
  br label %return

sw.bb63:                                          ; preds = %entry
  %arrayidx65 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx65, align 1
  %30 = and i8 %29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool68.not = icmp eq i8 %30, 0
  br i1 %tobool68.not, label %sw.bb63.return_crit_edge, label %sw.bb63.sw.epilog121_crit_edge

sw.bb63.sw.epilog121_crit_edge:                   ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb63.return_crit_edge:                         ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb71:                                          ; preds = %entry
  %arrayidx73 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool76.not = icmp sgt i8 %32, -1
  br i1 %tobool76.not, label %sw.bb71.return_crit_edge, label %sw.bb71.sw.epilog121_crit_edge

sw.bb71.sw.epilog121_crit_edge:                   ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

sw.bb71.return_crit_edge:                         ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb79:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx81 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %33 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx81, align 2
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %switch.selectcmp = icmp eq i8 %36, 1
  %switch.select = select i1 %switch.selectcmp, i32 6250, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.selectcmp139 = icmp eq i8 %36, 0
  %switch.select140 = select i1 %switch.selectcmp139, i32 15600, i32 %switch.select
  br label %return

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx90 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %37 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx90, align 2
  %39 = lshr i8 %38, 4
  %40 = and i8 %39, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %switch.selectcmp141 = icmp eq i8 %40, 1
  %switch.select142 = select i1 %switch.selectcmp141, i32 6250, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.selectcmp143 = icmp eq i8 %40, 0
  %switch.select144 = select i1 %switch.selectcmp143, i32 17200, i32 %switch.select142
  br label %return

sw.bb97:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx99 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 2
  %41 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx99, align 2
  %43 = lshr i8 %42, 6
  %44 = zext i8 %43 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.voltage_multiplier, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

sw.bb108:                                         ; preds = %entry.sw.bb108_crit_edge, %entry.sw.bb108_crit_edge145
  %arrayidx110 = getelementptr %struct.adt7462_data, ptr %data, i32 0, i32 15, i32 3
  %46 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx110, align 1
  %.mask = and i8 %47, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask)
  %cmp = icmp eq i8 %.mask, 80
  br i1 %cmp, label %land.lhs.true, label %sw.bb108.sw.epilog121_crit_edge

sw.bb108.sw.epilog121_crit_edge:                  ; preds = %sw.bb108
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

land.lhs.true:                                    ; preds = %sw.bb108
  %pin_cfg109 = getelementptr inbounds %struct.adt7462_data, ptr %data, i32 0, i32 15
  %48 = ptrtoint ptr %pin_cfg109 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pin_cfg109, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool118.not = icmp sgt i8 %49, -1
  br i1 %tobool118.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.sw.epilog121_crit_edge

land.lhs.true.sw.epilog121_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog121

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog121:                                     ; preds = %land.lhs.true.sw.epilog121_crit_edge, %sw.bb108.sw.epilog121_crit_edge, %sw.bb71.sw.epilog121_crit_edge, %sw.bb63.sw.epilog121_crit_edge, %sw.bb48.sw.epilog121_crit_edge, %sw.bb33.sw.epilog121_crit_edge, %sw.bb25.sw.epilog121_crit_edge, %sw.bb17.sw.epilog121_crit_edge, %sw.bb.sw.epilog121_crit_edge, %entry.sw.epilog121_crit_edge
  br label %return

return:                                           ; preds = %sw.epilog121, %land.lhs.true.return_crit_edge, %sw.bb97, %sw.bb88, %sw.bb79, %sw.bb71.return_crit_edge, %sw.bb63.return_crit_edge, %if.then54, %if.then39, %sw.bb25.return_crit_edge, %sw.bb17.return_crit_edge, %sw.bb16, %sw.bb15, %sw.bb6, %sw.bb1.return_crit_edge, %sw.bb.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog121 ], [ 7800, %sw.bb16 ], [ 9400, %sw.bb15 ], [ 62500, %sw.bb.return_crit_edge ], [ %., %sw.bb6 ], [ 13000, %sw.bb1.return_crit_edge ], [ 62500, %sw.bb17.return_crit_edge ], [ 26000, %sw.bb25.return_crit_edge ], [ %.137, %if.then39 ], [ %.138, %if.then54 ], [ 17200, %sw.bb63.return_crit_edge ], [ 62500, %sw.bb71.return_crit_edge ], [ %switch.select140, %sw.bb79 ], [ %switch.select144, %sw.bb88 ], [ 7800, %land.lhs.true.return_crit_edge ], [ %switch.load, %sw.bb97 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @volt_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @voltage_multiplier(ptr noundef %call, i32 noundef %1)
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul i32 %call1, %conv
  %div = sdiv i32 %mul, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @volt_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
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
  %call2 = tail call fastcc i32 @voltage_multiplier(ptr noundef %1, i32 noundef %5)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp ne i32 %call.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool4.not = icmp eq i32 %call2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %mul = mul i32 %call2, 255
  %div = sdiv i32 %mul, 1000
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 %div)
  %mul12 = mul nsw i32 %10, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp14 = icmp slt i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp15 = icmp sgt i32 %call2, 0
  %cmp17 = xor i1 %cmp15, %cmp14
  %add.pn.v.v = select i1 %cmp17, i32 2, i32 -2
  %add.pn.v = sdiv i32 %call2, %add.pn.v.v
  %add.pn = add i32 %mul12, %add.pn.v
  %cond26 = sdiv i32 %add.pn, %call2
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond26, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp, align 4
  %conv27 = trunc i32 %13 to i8
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 18, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27, ptr %arrayidx, align 1
  %17 = load i32, ptr %index, align 4
  %call30 = call fastcc i32 @ADT7462_REG_VOLT_MIN(ptr noundef %1, i32 noundef %17)
  %conv31 = trunc i32 %call30 to i8
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %temp, align 4
  %conv32 = trunc i32 %19 to i8
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call1 = tail call fastcc i32 @voltage_multiplier(ptr noundef %call, i32 noundef %1)
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul i32 %call1, %conv
  %div = sdiv i32 %mul, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_label_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %1, label %entry.sw.epilog129.i_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb10.i
    i32 3, label %sw.bb18.i
    i32 4, label %sw.bb26.i
    i32 5, label %sw.bb41.i
    i32 6, label %sw.bb56.i
    i32 7, label %sw.bb64.i
    i32 8, label %sw.bb72.i
    i32 9, label %sw.bb81.i
    i32 10, label %sw.bb90.i
    i32 11, label %sw.bb101.i
    i32 12, label %sw.bb114.i
  ]

entry.sw.epilog129.i_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb.i:                                          ; preds = %entry
  %pin_cfg.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %3 = ptrtoint ptr %pin_cfg.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %pin_cfg.i, align 2
  %5 = and i8 %4, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %sw.bb.i.voltage_label.exit_crit_edge, label %sw.bb.i.sw.epilog129.i_crit_edge

sw.bb.i.sw.epilog129.i_crit_edge:                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb.i.voltage_label.exit_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx3.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx3.i, align 1
  %8 = and i8 %7, 3
  %and5.i = zext i8 %8 to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.voltage_label_show, i32 0, i32 %and5.i
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %voltage_label.exit

sw.bb10.i:                                        ; preds = %entry
  %arrayidx12.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %10 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx12.i, align 1
  %12 = and i8 %11, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not.i = icmp eq i8 %12, 0
  br i1 %tobool15.not.i, label %sw.bb10.i.voltage_label.exit_crit_edge, label %sw.bb10.i.sw.epilog129.i_crit_edge

sw.bb10.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb10.i.voltage_label.exit_crit_edge:           ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb18.i:                                        ; preds = %entry
  %arrayidx20.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %13 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20.i, align 1
  %15 = and i8 %14, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not.i = icmp eq i8 %15, 0
  br i1 %tobool23.not.i, label %sw.bb18.i.voltage_label.exit_crit_edge, label %sw.bb18.i.sw.epilog129.i_crit_edge

sw.bb18.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb18.i.voltage_label.exit_crit_edge:           ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb26.i:                                        ; preds = %entry
  %pin_cfg27.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %16 = ptrtoint ptr %pin_cfg27.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pin_cfg27.i, align 2
  %18 = and i8 %17, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool31.not.i = icmp eq i8 %18, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %sw.bb26.i.sw.epilog129.i_crit_edge

sw.bb26.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

if.then32.i:                                      ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx34.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %19 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx34.i, align 1
  %21 = and i8 %20, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool37.not.i = icmp eq i8 %21, 0
  %.str.84..str.83.i = select i1 %tobool37.not.i, ptr @.str.84, ptr @.str.83
  br label %voltage_label.exit

sw.bb41.i:                                        ; preds = %entry
  %pin_cfg42.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %pin_cfg42.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pin_cfg42.i, align 2
  %24 = and i8 %23, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool46.not.i = icmp eq i8 %24, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %sw.bb41.i.sw.epilog129.i_crit_edge

sw.bb41.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

if.then47.i:                                      ; preds = %sw.bb41.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx49.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %25 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx49.i, align 1
  %27 = and i8 %26, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool52.not.i = icmp eq i8 %27, 0
  %.str.78..str.79.i = select i1 %tobool52.not.i, ptr @.str.78, ptr @.str.79
  br label %voltage_label.exit

sw.bb56.i:                                        ; preds = %entry
  %arrayidx58.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %arrayidx58.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx58.i, align 1
  %30 = and i8 %29, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool61.not.i = icmp eq i8 %30, 0
  br i1 %tobool61.not.i, label %sw.bb56.i.voltage_label.exit_crit_edge, label %sw.bb56.i.sw.epilog129.i_crit_edge

sw.bb56.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb56.i.voltage_label.exit_crit_edge:           ; preds = %sw.bb56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb64.i:                                        ; preds = %entry
  %arrayidx66.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 1
  %31 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx66.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %tobool69.not.i = icmp sgt i8 %32, -1
  br i1 %tobool69.not.i, label %sw.bb64.i.voltage_label.exit_crit_edge, label %sw.bb64.i.sw.epilog129.i_crit_edge

sw.bb64.i.sw.epilog129.i_crit_edge:               ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

sw.bb64.i.voltage_label.exit_crit_edge:           ; preds = %sw.bb64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb72.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx74.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 2
  %33 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx74.i, align 2
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %36)
  %switch.selectcmp.i = icmp eq i8 %36, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.88, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %switch.selectcmp147.i = icmp eq i8 %36, 0
  %switch.select148.i = select i1 %switch.selectcmp147.i, ptr @.str.87, ptr %switch.select.i
  br label %voltage_label.exit

sw.bb81.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx83.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 2
  %37 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx83.i, align 2
  %39 = lshr i8 %38, 4
  %40 = and i8 %39, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %40)
  %switch.selectcmp149.i = icmp eq i8 %40, 1
  %switch.select150.i = select i1 %switch.selectcmp149.i, ptr @.str.89, ptr @.str.27
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.selectcmp151.i = icmp eq i8 %40, 0
  %switch.select152.i = select i1 %switch.selectcmp151.i, ptr @.str.85, ptr %switch.select150.i
  br label %voltage_label.exit

sw.bb90.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx92.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 2
  %41 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx92.i, align 2
  %43 = lshr i8 %42, 6
  %44 = zext i8 %43 to i32
  %switch.gep4 = getelementptr inbounds [4 x ptr], ptr @switch.table.voltage_label_show.183, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep4 to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load5 = load ptr, ptr %switch.gep4, align 4
  br label %voltage_label.exit

sw.bb101.i:                                       ; preds = %entry
  %arrayidx103.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 3
  %46 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx103.i, align 1
  %.mask146.i = and i8 %47, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask146.i)
  %cmp.i = icmp eq i8 %.mask146.i, 80
  br i1 %cmp.i, label %land.lhs.true.i, label %sw.bb101.i.sw.epilog129.i_crit_edge

sw.bb101.i.sw.epilog129.i_crit_edge:              ; preds = %sw.bb101.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

land.lhs.true.i:                                  ; preds = %sw.bb101.i
  %pin_cfg102.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %48 = ptrtoint ptr %pin_cfg102.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pin_cfg102.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %49)
  %tobool111.not.i = icmp sgt i8 %49, -1
  br i1 %tobool111.not.i, label %land.lhs.true.i.voltage_label.exit_crit_edge, label %land.lhs.true.i.sw.epilog129.i_crit_edge

land.lhs.true.i.sw.epilog129.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

land.lhs.true.i.voltage_label.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.bb114.i:                                       ; preds = %entry
  %arrayidx116.i = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 15, i32 3
  %50 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx116.i, align 1
  %.mask.i = and i8 %51, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %.mask.i)
  %cmp119.i = icmp eq i8 %.mask.i, 80
  br i1 %cmp119.i, label %land.lhs.true121.i, label %sw.bb114.i.sw.epilog129.i_crit_edge

sw.bb114.i.sw.epilog129.i_crit_edge:              ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

land.lhs.true121.i:                               ; preds = %sw.bb114.i
  %pin_cfg115.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 15
  %52 = ptrtoint ptr %pin_cfg115.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %pin_cfg115.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %53)
  %tobool126.not.i = icmp sgt i8 %53, -1
  br i1 %tobool126.not.i, label %land.lhs.true121.i.voltage_label.exit_crit_edge, label %land.lhs.true121.i.sw.epilog129.i_crit_edge

land.lhs.true121.i.sw.epilog129.i_crit_edge:      ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog129.i

land.lhs.true121.i.voltage_label.exit_crit_edge:  ; preds = %land.lhs.true121.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %voltage_label.exit

sw.epilog129.i:                                   ; preds = %land.lhs.true121.i.sw.epilog129.i_crit_edge, %sw.bb114.i.sw.epilog129.i_crit_edge, %land.lhs.true.i.sw.epilog129.i_crit_edge, %sw.bb101.i.sw.epilog129.i_crit_edge, %sw.bb64.i.sw.epilog129.i_crit_edge, %sw.bb56.i.sw.epilog129.i_crit_edge, %sw.bb41.i.sw.epilog129.i_crit_edge, %sw.bb26.i.sw.epilog129.i_crit_edge, %sw.bb18.i.sw.epilog129.i_crit_edge, %sw.bb10.i.sw.epilog129.i_crit_edge, %sw.bb.i.sw.epilog129.i_crit_edge, %entry.sw.epilog129.i_crit_edge
  br label %voltage_label.exit

voltage_label.exit:                               ; preds = %sw.epilog129.i, %land.lhs.true121.i.voltage_label.exit_crit_edge, %land.lhs.true.i.voltage_label.exit_crit_edge, %sw.bb90.i, %sw.bb81.i, %sw.bb72.i, %sw.bb64.i.voltage_label.exit_crit_edge, %sw.bb56.i.voltage_label.exit_crit_edge, %if.then47.i, %if.then32.i, %sw.bb18.i.voltage_label.exit_crit_edge, %sw.bb10.i.voltage_label.exit_crit_edge, %sw.bb1.i, %sw.bb.i.voltage_label.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.27, %sw.epilog129.i ], [ @.str.76, %sw.bb.i.voltage_label.exit_crit_edge ], [ @.str.81, %sw.bb10.i.voltage_label.exit_crit_edge ], [ @.str.82, %sw.bb18.i.voltage_label.exit_crit_edge ], [ %.str.84..str.83.i, %if.then32.i ], [ %.str.78..str.79.i, %if.then47.i ], [ @.str.85, %sw.bb56.i.voltage_label.exit_crit_edge ], [ @.str.86, %sw.bb64.i.voltage_label.exit_crit_edge ], [ %switch.select148.i, %sw.bb72.i ], [ %switch.select152.i, %sw.bb81.i ], [ @.str.92, %land.lhs.true.i.voltage_label.exit_crit_edge ], [ @.str.93, %land.lhs.true121.i.voltage_label.exit_crit_edge ], [ %switch.load, %sw.bb1.i ], [ %switch.load5, %sw.bb90.i ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.22, ptr noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %fan_enabled.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %fan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_enabled.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %1
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 12, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool6.not = icmp eq i8 %5, 0
  br i1 %tobool6.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %6 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv1 = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %conv1, 8
  %div = udiv i32 5400000, %shl
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call11, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  %fan_enabled.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %fan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %fan_enabled.i, align 4
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %8
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  %div = sdiv i32 5400000, %6
  %shr = ashr i32 %div, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 511, i32 %div)
  %cmp = icmp sgt i32 %div, 511
  %11 = call i32 @llvm.smin.i32(i32 %shr, i32 255)
  %12 = select i1 %cmp, i32 %11, i32 1
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 4
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 12, i32 %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv, ptr %arrayidx, align 1
  %19 = load i32, ptr %index, align 4
  %20 = trunc i32 %19 to i8
  %conv16 = add i8 %20, 120
  %21 = load i32, ptr %temp, align 4
  %conv17 = trunc i32 %21 to i8
  %call18 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv16, i8 noundef zeroext %conv17) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %fan_enabled.i = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 11
  %2 = ptrtoint ptr %fan_enabled.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %fan_enabled.i, align 4
  %conv.i = zext i8 %3 to i32
  %shl.i = shl nuw i32 1, %1
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.195)
  switch i16 %5, label %if.end [
    i16 0, label %lor.lhs.false.if.then_crit_edge
    i16 -1, label %lor.lhs.false.if.then_crit_edge23
  ]

lor.lhs.false.if.then_crit_edge23:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge23, %entry.if.then_crit_edge
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i16 %5 to i32
  %div = udiv i32 5400000, %conv
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call14, %if.end ], [ 2, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_pwm_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %cfg2 = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %cfg2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cfg2, align 1
  %2 = lshr i8 %1, 5
  %.lobit = and i8 %2, 1
  %3 = zext i8 %.lobit to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @force_pwm_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #9
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool4.not = icmp eq i32 %6, 0
  %7 = trunc i32 %call3 to i8
  %conv9 = and i8 %7, -33
  %masksel = select i1 %tobool4.not, i8 0, i8 32
  %reg.0 = or i8 %masksel, %conv9
  %cfg2 = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %cfg2 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %reg.0, ptr %cfg2, align 1
  %call11 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext %reg.0) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %conv = trunc i32 %11 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 14, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %15 = load i32, ptr %index, align 4
  %16 = trunc i32 %15 to i8
  %conv11 = add i8 %16, -86
  %17 = load i32, ptr %temp, align 4
  %conv12 = trunc i32 %17 to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %conv12) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 19, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %conv = trunc i32 %11 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 19, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx, align 1
  %15 = load i32, ptr %index, align 4
  %16 = trunc i32 %15 to i8
  %conv11 = add i8 %16, 40
  %17 = load i32, ptr %temp, align 4
  %conv12 = trunc i32 %17 to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %conv12) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %pwm_max = getelementptr inbounds %struct.adt7462_data, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %pwm_max to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm_max, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %conv = trunc i32 %11 to i8
  %pwm_max = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 22
  %12 = ptrtoint ptr %pwm_max to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %pwm_max, align 1
  %call10 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 44, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 21, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 15
  %and = zext i8 %4 to i32
  %mul = mul nuw nsw i32 %and, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 15000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp11.not = icmp eq i32 %8, 0
  %9 = trunc i32 %8 to i16
  %div1754.lhs.trunc = add nuw nsw i16 %9, 500
  %div175455 = udiv i16 %div1754.lhs.trunc, 1000
  %div1754.zext = zext i16 %div175455 to i32
  %cond22 = select i1 %cmp11.not, i32 0, i32 %div1754.zext
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = and i8 %13, -16
  %and24 = zext i8 %14 to i32
  %or = or i32 %cond22, %and24
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %16 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %temp, align 4
  %conv25 = trunc i32 %17 to i8
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %arrayidx28 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 %19
  %20 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25, ptr %arrayidx28, align 1
  %21 = load i32, ptr %index, align 4
  %22 = trunc i32 %21 to i8
  %conv31 = add i8 %22, 96
  %23 = load i32, ptr %temp, align 4
  %conv32 = trunc i32 %23 to i8
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv31, i8 noundef zeroext %conv32) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmin_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %4 = mul nuw nsw i32 %conv, 1000
  %mul = add nsw i32 %4, -64000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmin_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -64000)
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 191000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp sgt i32 %7, 0
  %cond22.in.v = select i1 %cmp11, i32 500, i32 -500
  %cond22.in = add nsw i32 %cond22.in.v, %8
  %cond22 = sdiv i32 %cond22.in, 1000
  %add23 = add nsw i32 %cond22, 64
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add23, ptr %temp, align 4
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  %conv24 = trunc i32 %11 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 %13
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv24, ptr %arrayidx, align 1
  %15 = load i32, ptr %index, align 4
  %16 = trunc i32 %15 to i8
  %conv27 = add i8 %16, 92
  %17 = load i32, ptr %temp, align 4
  %conv28 = trunc i32 %17 to i8
  %call29 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv27, i8 noundef zeroext %conv28) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmax_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 21, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 4
  %5 = zext i8 %4 to i32
  %arrayidx1 = getelementptr [16 x i32], ptr @trange_values, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx1, align 4
  %arrayidx3 = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 20, i32 %1
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %9 to i32
  %10 = mul nuw nsw i32 %conv4, 1000
  %mul = add i32 %7, -64000
  %add = add i32 %mul, %10
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %add)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_tmax_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %trange = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %trange) #9
  %4 = ptrtoint ptr %trange to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %trange, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %trange) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 20, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %.neg = mul nsw i32 %conv, -1000
  %9 = ptrtoint ptr %trange to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %trange, align 4
  %mul.neg = add i32 %10, 64000
  %sub3 = add i32 %mul.neg, %.neg
  %11 = zext i32 %sub3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %sub3, label %if.end.cleanup_crit_edge [
    i32 2000, label %if.end.if.end7_crit_edge
    i32 2500, label %cleanup.fold.split.i
    i32 3300, label %cleanup.fold.split6.i
    i32 4000, label %cleanup.fold.split7.i
    i32 5000, label %cleanup.fold.split8.i
    i32 6700, label %cleanup.fold.split9.i
    i32 8000, label %cleanup.fold.split10.i
    i32 10000, label %cleanup.fold.split11.i
    i32 13300, label %cleanup.fold.split12.i
    i32 16000, label %cleanup.fold.split13.i
    i32 20000, label %cleanup.fold.split14.i
    i32 26700, label %cleanup.fold.split15.i
    i32 32000, label %cleanup.fold.split16.i
    i32 40000, label %cleanup.fold.split17.i
    i32 53300, label %cleanup.fold.split18.i
    i32 80000, label %cleanup.fold.split19.i
  ]

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.fold.split.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split6.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split7.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split8.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split9.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split10.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split11.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split12.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split13.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split14.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split15.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split16.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split17.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split18.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

cleanup.fold.split19.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.end7:                                          ; preds = %cleanup.fold.split19.i, %cleanup.fold.split18.i, %cleanup.fold.split17.i, %cleanup.fold.split16.i, %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split7.i, %cleanup.fold.split6.i, %cleanup.fold.split.i, %if.end.if.end7_crit_edge
  %retval.0.i.ph = phi i8 [ -16, %cleanup.fold.split19.i ], [ -32, %cleanup.fold.split18.i ], [ -48, %cleanup.fold.split17.i ], [ -64, %cleanup.fold.split16.i ], [ -80, %cleanup.fold.split15.i ], [ -96, %cleanup.fold.split14.i ], [ -112, %cleanup.fold.split13.i ], [ -128, %cleanup.fold.split12.i ], [ 112, %cleanup.fold.split11.i ], [ 96, %cleanup.fold.split10.i ], [ 80, %cleanup.fold.split9.i ], [ 64, %cleanup.fold.split8.i ], [ 48, %cleanup.fold.split7.i ], [ 32, %cleanup.fold.split6.i ], [ 16, %cleanup.fold.split.i ], [ 0, %if.end.if.end7_crit_edge ]
  %arrayidx9 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 %6
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %14 = and i8 %13, 15
  %lock = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %conv11 = or i8 %14, %retval.0.i.ph
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  %arrayidx14 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 21, i32 %16
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv11, ptr %arrayidx14, align 1
  %18 = load i32, ptr %index, align 4
  %19 = trunc i32 %18 to i8
  %conv16 = add i8 %19, 96
  %call18 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv16, i8 noundef zeroext %conv11) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %trange) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 23, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = zext i8 %4 to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.197)
  switch i32 %5, label %sw.default [
    i32 4, label %sw.bb
    i32 7, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = call ptr @memcpy(ptr %buf, ptr @.str.32, i32 3)
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.173, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb2, %sw.bb
  ret i32 2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.198)
  switch i32 %6, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx.i = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i, align 1
  %12 = and i8 %11, 31
  %lock.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %conv1.i = or i8 %12, -128
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %index4 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %14 = ptrtoint ptr %index4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index4, align 4
  %arrayidx.i14 = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 %15
  %16 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i14, align 1
  %lock.i15 = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i15, i32 noundef 0) #9
  %conv1.i16 = or i8 %17, -32
  %18 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv1.i16, ptr %arrayidx.i14, align 1
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb3, %sw.bb
  %.sink19 = phi i32 [ %15, %sw.bb3 ], [ %9, %sw.bb ]
  %conv1.i16.sink = phi i8 [ %conv1.i16, %sw.bb3 ], [ %conv1.i, %sw.bb ]
  %lock.i15.sink = phi ptr [ %lock.i15, %sw.bb3 ], [ %lock.i, %sw.bb ]
  %19 = trunc i32 %.sink19 to i8
  %conv4.i17 = add i8 %19, 33
  %call.i18 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv4.i17, i8 noundef zeroext %conv1.i16.sink) #9
  call void @mutex_unlock(ptr noundef %lock.i15.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7462_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.adt7462_data, ptr %call, i32 0, i32 23, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 5
  %5 = zext i8 %4 to i32
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.199)
  switch i32 %5, label %sw.default [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge13
    i32 2, label %entry.sw.bb_crit_edge14
    i32 3, label %entry.sw.bb_crit_edge15
    i32 5, label %sw.bb2
    i32 6, label %sw.bb4
  ]

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge13:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge13, %entry.sw.bb_crit_edge14, %entry.sw.bb_crit_edge15
  %shl = shl nuw nsw i32 1, %5
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %shl)
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call ptr @memcpy(ptr %buf, ptr @.str.178, i32 3)
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 825559552, ptr %buf, align 1
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call ptr @memcpy(ptr %buf, ptr @.str.8, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %sw.bb4, %sw.bb2, %sw.bb
  %retval.0 = phi i32 [ 2, %sw.default ], [ 3, %sw.bb4 ], [ 2, %sw.bb2 ], [ %call1, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_auto_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #9
  %4 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %temp, align 4, !annotation !543
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.200)
  switch i32 %6, label %if.end3.i [
    i32 15, label %if.end.if.end5_crit_edge
    i32 9, label %if.then2.i
  ]

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.end3.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4.i = icmp sgt i32 %6, 0
  %8 = call i32 @llvm.ctpop.i32(i32 %6) #9, !range !544
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp1.i.i = icmp ult i32 %8, 2
  %or.cond.i = and i1 %cmp4.i, %cmp1.i.i
  br i1 %or.cond.i, label %cond.false9.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cond.false9.i:                                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = call i32 @llvm.ctlz.i32(i32 %6, i1 true) #9, !range !544
  %sub.i.op.i.i = xor i32 %9, 31
  br label %if.end5

if.end5:                                          ; preds = %cond.false9.i, %if.then2.i, %if.end.if.end5_crit_edge
  %retval.0.i.ph = phi i32 [ %sub.i.op.i.i, %cond.false9.i ], [ 6, %if.end.if.end5_crit_edge ], [ 5, %if.then2.i ]
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i.ph, ptr %temp, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %arrayidx.i = getelementptr %struct.adt7462_data, ptr %1, i32 0, i32 23, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i, align 1
  %15 = and i8 %14, 31
  %lock.i = getelementptr inbounds %struct.adt7462_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %value.tr.i = trunc i32 %retval.0.i.ph to i8
  %16 = shl i8 %value.tr.i, 5
  %conv1.i = or i8 %15, %16
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv1.i, ptr %arrayidx.i, align 1
  %18 = trunc i32 %12 to i8
  %conv4.i = add i8 %18, 33
  %call.i10 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv4.i, i8 noundef zeroext %conv1.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end3.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #9
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 340)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 340)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !32, !33, !35, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !79, !81, !83, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !267, !269, !270, !272, !273, !275, !276, !278, !279, !281, !282, !284, !285, !287, !288, !290, !291, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !308, !309, !311, !312, !314, !315, !317, !318, !320, !321, !323, !324, !326, !327, !329, !330, !332, !333, !335, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !351, !353, !354, !356, !357, !359, !360, !362, !363, !365, !366, !368, !369, !371, !372, !374, !375, !377, !378, !380, !381, !383, !384, !386, !387, !389, !390, !392, !393, !395, !396, !398, !399, !401, !402, !404, !405, !407, !408, !410, !411, !413, !414, !416, !417, !419, !420, !422, !423, !425, !426, !428, !429, !431, !432, !434, !435, !437, !438, !440, !441, !443, !444, !446, !447, !449, !450, !452, !453, !455, !456, !458, !459, !461, !462, !464, !465, !467, !468, !470, !471, !473, !474, !476, !477, !479, !480, !482, !483, !485, !486, !488, !489, !491, !493, !494, !496, !497, !499, !500, !502, !503, !505, !507, !508, !510, !511, !513, !514, !516, !517, !519, !521, !523, !524, !526, !527, !529, !530, !532}
!llvm.module.flags = !{!534, !535, !536, !537, !538, !539, !540, !541}
!llvm.ident = !{!542}

!0 = !{ptr @__initcall__kmod_adt7462__328_1828_adt7462_driver_init6, !1, !"__initcall__kmod_adt7462__328_1828_adt7462_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adt7462.c", i32 1828, i32 1}
!2 = !{ptr @__exitcall_adt7462_driver_exit, !1, !"__exitcall_adt7462_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author329, !4, !"__UNIQUE_ID_author329", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adt7462.c", i32 1830, i32 1}
!5 = !{ptr @__UNIQUE_ID_description330, !6, !"__UNIQUE_ID_description330", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adt7462.c", i32 1831, i32 1}
!7 = !{ptr @__UNIQUE_ID_file331, !8, !"__UNIQUE_ID_file331", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adt7462.c", i32 1832, i32 1}
!9 = !{ptr @__UNIQUE_ID_license332, !8, !"__UNIQUE_ID_license332", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adt7462.c", i32 1820, i32 11}
!12 = !{ptr @adt7462_driver, !13, !"adt7462_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adt7462.c", i32 1817, i32 26}
!14 = !{ptr @adt7462_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adt7462.c", i32 1801, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adt7462.c", i32 1803, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @adt7462_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @adt7462_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @adt7462_groups, !26, !"adt7462_groups", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/adt7462.c", i32 1761, i32 1}
!27 = !{ptr @adt7462_group, !26, !"adt7462_group", i1 false, i1 false}
!28 = !{ptr @adt7462_attrs, !29, !"adt7462_attrs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adt7462.c", i32 1590, i32 26}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adt7462.c", i32 1396, i32 8}
!32 = !{ptr @sensor_dev_attr_temp1_max, !31, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adt7462.c", i32 821, i32 23}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/adt7462.c", i32 823, i32 22}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/adt7462.c", i32 1397, i32 8}
!39 = !{ptr @sensor_dev_attr_temp2_max, !38, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/adt7462.c", i32 1398, i32 8}
!42 = !{ptr @sensor_dev_attr_temp3_max, !41, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/adt7462.c", i32 1399, i32 8}
!45 = !{ptr @sensor_dev_attr_temp4_max, !44, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/adt7462.c", i32 1401, i32 8}
!48 = !{ptr @sensor_dev_attr_temp1_min, !47, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/adt7462.c", i32 1402, i32 8}
!51 = !{ptr @sensor_dev_attr_temp2_min, !50, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/adt7462.c", i32 1403, i32 8}
!54 = !{ptr @sensor_dev_attr_temp3_min, !53, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/adt7462.c", i32 1404, i32 8}
!57 = !{ptr @sensor_dev_attr_temp4_min, !56, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/adt7462.c", i32 1406, i32 8}
!60 = !{ptr @sensor_dev_attr_temp1_input, !59, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!61 = !{ptr @.str.18, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/adt7462.c", i32 1407, i32 8}
!63 = !{ptr @sensor_dev_attr_temp2_input, !62, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adt7462.c", i32 1408, i32 8}
!66 = !{ptr @sensor_dev_attr_temp3_input, !65, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!67 = !{ptr @.str.20, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/adt7462.c", i32 1409, i32 8}
!69 = !{ptr @sensor_dev_attr_temp4_input, !68, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/adt7462.c", i32 1411, i32 8}
!72 = !{ptr @sensor_dev_attr_temp1_label, !71, !"sensor_dev_attr_temp1_label", i1 false, i1 false}
!73 = !{ptr @.str.22, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/adt7462.c", i32 870, i32 22}
!75 = !{ptr @.str.23, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/adt7462.c", i32 625, i32 10}
!77 = !{ptr @.str.24, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adt7462.c", i32 628, i32 11}
!79 = !{ptr @.str.25, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adt7462.c", i32 631, i32 10}
!81 = !{ptr @.str.26, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/adt7462.c", i32 634, i32 11}
!83 = !{ptr @.str.27, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/adt7462.c", i32 637, i32 9}
!85 = !{ptr @.str.28, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/adt7462.c", i32 1412, i32 8}
!87 = !{ptr @sensor_dev_attr_temp2_label, !86, !"sensor_dev_attr_temp2_label", i1 false, i1 false}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/adt7462.c", i32 1413, i32 8}
!90 = !{ptr @sensor_dev_attr_temp3_label, !89, !"sensor_dev_attr_temp3_label", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/adt7462.c", i32 1414, i32 8}
!93 = !{ptr @sensor_dev_attr_temp4_label, !92, !"sensor_dev_attr_temp4_label", i1 false, i1 false}
!94 = !{ptr @.str.31, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/adt7462.c", i32 1416, i32 8}
!96 = !{ptr @sensor_dev_attr_temp1_alarm, !95, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!97 = !{ptr @.str.32, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/adt7462.c", i32 984, i32 23}
!99 = !{ptr @.str.33, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/adt7462.c", i32 1418, i32 8}
!101 = !{ptr @sensor_dev_attr_temp2_alarm, !100, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!102 = !{ptr @.str.34, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/adt7462.c", i32 1420, i32 8}
!104 = !{ptr @sensor_dev_attr_temp3_alarm, !103, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/adt7462.c", i32 1422, i32 8}
!107 = !{ptr @sensor_dev_attr_temp4_alarm, !106, !"sensor_dev_attr_temp4_alarm", i1 false, i1 false}
!108 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/adt7462.c", i32 1425, i32 8}
!110 = !{ptr @sensor_dev_attr_in1_max, !109, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/adt7462.c", i32 1426, i32 8}
!113 = !{ptr @sensor_dev_attr_in2_max, !112, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!114 = !{ptr @.str.38, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/adt7462.c", i32 1427, i32 8}
!116 = !{ptr @sensor_dev_attr_in3_max, !115, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/adt7462.c", i32 1428, i32 8}
!119 = !{ptr @sensor_dev_attr_in4_max, !118, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!120 = !{ptr @.str.40, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/adt7462.c", i32 1429, i32 8}
!122 = !{ptr @sensor_dev_attr_in5_max, !121, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!123 = !{ptr @.str.41, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/adt7462.c", i32 1430, i32 8}
!125 = !{ptr @sensor_dev_attr_in6_max, !124, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!126 = !{ptr @.str.42, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/adt7462.c", i32 1431, i32 8}
!128 = !{ptr @sensor_dev_attr_in7_max, !127, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!129 = !{ptr @.str.43, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/adt7462.c", i32 1432, i32 8}
!131 = !{ptr @sensor_dev_attr_in8_max, !130, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!132 = !{ptr @.str.44, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/adt7462.c", i32 1433, i32 8}
!134 = !{ptr @sensor_dev_attr_in9_max, !133, !"sensor_dev_attr_in9_max", i1 false, i1 false}
!135 = !{ptr @.str.45, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/adt7462.c", i32 1434, i32 8}
!137 = !{ptr @sensor_dev_attr_in10_max, !136, !"sensor_dev_attr_in10_max", i1 false, i1 false}
!138 = !{ptr @.str.46, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/adt7462.c", i32 1435, i32 8}
!140 = !{ptr @sensor_dev_attr_in11_max, !139, !"sensor_dev_attr_in11_max", i1 false, i1 false}
!141 = !{ptr @.str.47, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/adt7462.c", i32 1436, i32 8}
!143 = !{ptr @sensor_dev_attr_in12_max, !142, !"sensor_dev_attr_in12_max", i1 false, i1 false}
!144 = !{ptr @.str.48, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/adt7462.c", i32 1437, i32 8}
!146 = !{ptr @sensor_dev_attr_in13_max, !145, !"sensor_dev_attr_in13_max", i1 false, i1 false}
!147 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/adt7462.c", i32 1439, i32 8}
!149 = !{ptr @sensor_dev_attr_in1_min, !148, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!150 = !{ptr @.str.50, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/adt7462.c", i32 1440, i32 8}
!152 = !{ptr @sensor_dev_attr_in2_min, !151, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!153 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/adt7462.c", i32 1441, i32 8}
!155 = !{ptr @sensor_dev_attr_in3_min, !154, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!156 = !{ptr @.str.52, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/adt7462.c", i32 1442, i32 8}
!158 = !{ptr @sensor_dev_attr_in4_min, !157, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!159 = !{ptr @.str.53, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/adt7462.c", i32 1443, i32 8}
!161 = !{ptr @sensor_dev_attr_in5_min, !160, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!162 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/adt7462.c", i32 1444, i32 8}
!164 = !{ptr @sensor_dev_attr_in6_min, !163, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!165 = !{ptr @.str.55, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/adt7462.c", i32 1445, i32 8}
!167 = !{ptr @sensor_dev_attr_in7_min, !166, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/adt7462.c", i32 1446, i32 8}
!170 = !{ptr @sensor_dev_attr_in8_min, !169, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!171 = !{ptr @.str.57, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/adt7462.c", i32 1447, i32 8}
!173 = !{ptr @sensor_dev_attr_in9_min, !172, !"sensor_dev_attr_in9_min", i1 false, i1 false}
!174 = !{ptr @.str.58, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/adt7462.c", i32 1448, i32 8}
!176 = !{ptr @sensor_dev_attr_in10_min, !175, !"sensor_dev_attr_in10_min", i1 false, i1 false}
!177 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/adt7462.c", i32 1449, i32 8}
!179 = !{ptr @sensor_dev_attr_in11_min, !178, !"sensor_dev_attr_in11_min", i1 false, i1 false}
!180 = !{ptr @.str.60, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/adt7462.c", i32 1450, i32 8}
!182 = !{ptr @sensor_dev_attr_in12_min, !181, !"sensor_dev_attr_in12_min", i1 false, i1 false}
!183 = !{ptr @.str.61, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/adt7462.c", i32 1451, i32 8}
!185 = !{ptr @sensor_dev_attr_in13_min, !184, !"sensor_dev_attr_in13_min", i1 false, i1 false}
!186 = !{ptr @.str.62, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/adt7462.c", i32 1453, i32 8}
!188 = !{ptr @sensor_dev_attr_in1_input, !187, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!189 = !{ptr @.str.63, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/adt7462.c", i32 1454, i32 8}
!191 = !{ptr @sensor_dev_attr_in2_input, !190, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!192 = !{ptr @.str.64, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/adt7462.c", i32 1455, i32 8}
!194 = !{ptr @sensor_dev_attr_in3_input, !193, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!195 = !{ptr @.str.65, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/adt7462.c", i32 1456, i32 8}
!197 = !{ptr @sensor_dev_attr_in4_input, !196, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!198 = !{ptr @.str.66, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/adt7462.c", i32 1457, i32 8}
!200 = !{ptr @sensor_dev_attr_in5_input, !199, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!201 = !{ptr @.str.67, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/adt7462.c", i32 1458, i32 8}
!203 = !{ptr @sensor_dev_attr_in6_input, !202, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!204 = !{ptr @.str.68, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/adt7462.c", i32 1459, i32 8}
!206 = !{ptr @sensor_dev_attr_in7_input, !205, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!207 = !{ptr @.str.69, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/adt7462.c", i32 1460, i32 8}
!209 = !{ptr @sensor_dev_attr_in8_input, !208, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!210 = !{ptr @.str.70, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/adt7462.c", i32 1461, i32 8}
!212 = !{ptr @sensor_dev_attr_in9_input, !211, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!213 = !{ptr @.str.71, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/adt7462.c", i32 1462, i32 8}
!215 = !{ptr @sensor_dev_attr_in10_input, !214, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!216 = !{ptr @.str.72, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/adt7462.c", i32 1463, i32 8}
!218 = !{ptr @sensor_dev_attr_in11_input, !217, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!219 = !{ptr @.str.73, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/adt7462.c", i32 1464, i32 8}
!221 = !{ptr @sensor_dev_attr_in12_input, !220, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!222 = !{ptr @.str.74, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/adt7462.c", i32 1465, i32 8}
!224 = !{ptr @sensor_dev_attr_in13_input, !223, !"sensor_dev_attr_in13_input", i1 false, i1 false}
!225 = !{ptr @.str.75, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/adt7462.c", i32 1467, i32 8}
!227 = !{ptr @sensor_dev_attr_in1_label, !226, !"sensor_dev_attr_in1_label", i1 false, i1 false}
!228 = !{ptr @.str.76, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/adt7462.c", i32 425, i32 11}
!230 = !{ptr @.str.77, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/adt7462.c", i32 430, i32 11}
!232 = !{ptr @.str.78, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/adt7462.c", i32 432, i32 11}
!234 = !{ptr @.str.79, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/adt7462.c", i32 434, i32 11}
!236 = !{ptr @.str.80, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/adt7462.c", i32 436, i32 11}
!238 = !{ptr @.str.81, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/adt7462.c", i32 441, i32 11}
!240 = !{ptr @.str.82, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/adt7462.c", i32 445, i32 11}
!242 = !{ptr @.str.83, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/adt7462.c", i32 450, i32 12}
!244 = !{ptr @.str.84, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/hwmon/adt7462.c", i32 451, i32 11}
!246 = !{ptr @.str.85, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/adt7462.c", i32 463, i32 11}
!248 = !{ptr @.str.86, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/adt7462.c", i32 467, i32 11}
!250 = !{ptr @.str.87, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/hwmon/adt7462.c", i32 472, i32 11}
!252 = !{ptr @.str.88, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/adt7462.c", i32 474, i32 11}
!254 = !{ptr @.str.89, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/adt7462.c", i32 482, i32 11}
!256 = !{ptr @.str.90, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/hwmon/adt7462.c", i32 488, i32 11}
!258 = !{ptr @.str.91, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/hwmon/adt7462.c", i32 494, i32 11}
!260 = !{ptr @.str.92, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/adt7462.c", i32 501, i32 11}
!262 = !{ptr @.str.93, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/adt7462.c", i32 507, i32 11}
!264 = !{ptr @.str.94, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/adt7462.c", i32 1468, i32 8}
!266 = !{ptr @sensor_dev_attr_in2_label, !265, !"sensor_dev_attr_in2_label", i1 false, i1 false}
!267 = !{ptr @.str.95, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/adt7462.c", i32 1469, i32 8}
!269 = !{ptr @sensor_dev_attr_in3_label, !268, !"sensor_dev_attr_in3_label", i1 false, i1 false}
!270 = !{ptr @.str.96, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/adt7462.c", i32 1470, i32 8}
!272 = !{ptr @sensor_dev_attr_in4_label, !271, !"sensor_dev_attr_in4_label", i1 false, i1 false}
!273 = !{ptr @.str.97, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/adt7462.c", i32 1471, i32 8}
!275 = !{ptr @sensor_dev_attr_in5_label, !274, !"sensor_dev_attr_in5_label", i1 false, i1 false}
!276 = !{ptr @.str.98, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/hwmon/adt7462.c", i32 1472, i32 8}
!278 = !{ptr @sensor_dev_attr_in6_label, !277, !"sensor_dev_attr_in6_label", i1 false, i1 false}
!279 = !{ptr @.str.99, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/adt7462.c", i32 1473, i32 8}
!281 = !{ptr @sensor_dev_attr_in7_label, !280, !"sensor_dev_attr_in7_label", i1 false, i1 false}
!282 = !{ptr @.str.100, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/adt7462.c", i32 1474, i32 8}
!284 = !{ptr @sensor_dev_attr_in8_label, !283, !"sensor_dev_attr_in8_label", i1 false, i1 false}
!285 = !{ptr @.str.101, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/adt7462.c", i32 1475, i32 8}
!287 = !{ptr @sensor_dev_attr_in9_label, !286, !"sensor_dev_attr_in9_label", i1 false, i1 false}
!288 = !{ptr @.str.102, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/adt7462.c", i32 1476, i32 8}
!290 = !{ptr @sensor_dev_attr_in10_label, !289, !"sensor_dev_attr_in10_label", i1 false, i1 false}
!291 = !{ptr @.str.103, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/adt7462.c", i32 1477, i32 8}
!293 = !{ptr @sensor_dev_attr_in11_label, !292, !"sensor_dev_attr_in11_label", i1 false, i1 false}
!294 = !{ptr @.str.104, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/adt7462.c", i32 1478, i32 8}
!296 = !{ptr @sensor_dev_attr_in12_label, !295, !"sensor_dev_attr_in12_label", i1 false, i1 false}
!297 = !{ptr @.str.105, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/adt7462.c", i32 1479, i32 8}
!299 = !{ptr @sensor_dev_attr_in13_label, !298, !"sensor_dev_attr_in13_label", i1 false, i1 false}
!300 = !{ptr @.str.106, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/adt7462.c", i32 1481, i32 8}
!302 = !{ptr @sensor_dev_attr_in1_alarm, !301, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!303 = !{ptr @.str.107, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/hwmon/adt7462.c", i32 1483, i32 8}
!305 = !{ptr @sensor_dev_attr_in2_alarm, !304, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!306 = !{ptr @.str.108, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/adt7462.c", i32 1485, i32 8}
!308 = !{ptr @sensor_dev_attr_in3_alarm, !307, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!309 = !{ptr @.str.109, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/hwmon/adt7462.c", i32 1487, i32 8}
!311 = !{ptr @sensor_dev_attr_in4_alarm, !310, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!312 = !{ptr @.str.110, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/adt7462.c", i32 1489, i32 8}
!314 = !{ptr @sensor_dev_attr_in5_alarm, !313, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!315 = !{ptr @.str.111, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/adt7462.c", i32 1491, i32 8}
!317 = !{ptr @sensor_dev_attr_in6_alarm, !316, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!318 = !{ptr @.str.112, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/adt7462.c", i32 1493, i32 8}
!320 = !{ptr @sensor_dev_attr_in7_alarm, !319, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!321 = !{ptr @.str.113, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/hwmon/adt7462.c", i32 1495, i32 8}
!323 = !{ptr @sensor_dev_attr_in8_alarm, !322, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!324 = !{ptr @.str.114, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hwmon/adt7462.c", i32 1497, i32 8}
!326 = !{ptr @sensor_dev_attr_in9_alarm, !325, !"sensor_dev_attr_in9_alarm", i1 false, i1 false}
!327 = !{ptr @.str.115, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/hwmon/adt7462.c", i32 1499, i32 8}
!329 = !{ptr @sensor_dev_attr_in10_alarm, !328, !"sensor_dev_attr_in10_alarm", i1 false, i1 false}
!330 = !{ptr @.str.116, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/hwmon/adt7462.c", i32 1501, i32 8}
!332 = !{ptr @sensor_dev_attr_in11_alarm, !331, !"sensor_dev_attr_in11_alarm", i1 false, i1 false}
!333 = !{ptr @.str.117, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/hwmon/adt7462.c", i32 1503, i32 8}
!335 = !{ptr @sensor_dev_attr_in12_alarm, !334, !"sensor_dev_attr_in12_alarm", i1 false, i1 false}
!336 = !{ptr @.str.118, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/adt7462.c", i32 1505, i32 8}
!338 = !{ptr @sensor_dev_attr_in13_alarm, !337, !"sensor_dev_attr_in13_alarm", i1 false, i1 false}
!339 = !{ptr @.str.119, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/hwmon/adt7462.c", i32 1508, i32 8}
!341 = !{ptr @sensor_dev_attr_fan1_min, !340, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!342 = !{ptr @.str.120, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hwmon/adt7462.c", i32 1509, i32 8}
!344 = !{ptr @sensor_dev_attr_fan2_min, !343, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!345 = !{ptr @.str.121, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/hwmon/adt7462.c", i32 1510, i32 8}
!347 = !{ptr @sensor_dev_attr_fan3_min, !346, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!348 = !{ptr @.str.122, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/hwmon/adt7462.c", i32 1511, i32 8}
!350 = !{ptr @sensor_dev_attr_fan4_min, !349, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!351 = !{ptr @.str.123, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/hwmon/adt7462.c", i32 1512, i32 8}
!353 = !{ptr @sensor_dev_attr_fan5_min, !352, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!354 = !{ptr @.str.124, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/hwmon/adt7462.c", i32 1513, i32 8}
!356 = !{ptr @sensor_dev_attr_fan6_min, !355, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!357 = !{ptr @.str.125, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/hwmon/adt7462.c", i32 1514, i32 8}
!359 = !{ptr @sensor_dev_attr_fan7_min, !358, !"sensor_dev_attr_fan7_min", i1 false, i1 false}
!360 = !{ptr @.str.126, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/hwmon/adt7462.c", i32 1515, i32 8}
!362 = !{ptr @sensor_dev_attr_fan8_min, !361, !"sensor_dev_attr_fan8_min", i1 false, i1 false}
!363 = !{ptr @.str.127, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/adt7462.c", i32 1517, i32 8}
!365 = !{ptr @sensor_dev_attr_fan1_input, !364, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!366 = !{ptr @.str.128, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/adt7462.c", i32 1518, i32 8}
!368 = !{ptr @sensor_dev_attr_fan2_input, !367, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!369 = !{ptr @.str.129, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/hwmon/adt7462.c", i32 1519, i32 8}
!371 = !{ptr @sensor_dev_attr_fan3_input, !370, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!372 = !{ptr @.str.130, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/hwmon/adt7462.c", i32 1520, i32 8}
!374 = !{ptr @sensor_dev_attr_fan4_input, !373, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!375 = !{ptr @.str.131, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/adt7462.c", i32 1521, i32 8}
!377 = !{ptr @sensor_dev_attr_fan5_input, !376, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!378 = !{ptr @.str.132, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/hwmon/adt7462.c", i32 1522, i32 8}
!380 = !{ptr @sensor_dev_attr_fan6_input, !379, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!381 = !{ptr @.str.133, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/hwmon/adt7462.c", i32 1523, i32 8}
!383 = !{ptr @sensor_dev_attr_fan7_input, !382, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!384 = !{ptr @.str.134, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/hwmon/adt7462.c", i32 1524, i32 8}
!386 = !{ptr @sensor_dev_attr_fan8_input, !385, !"sensor_dev_attr_fan8_input", i1 false, i1 false}
!387 = !{ptr @.str.135, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/adt7462.c", i32 1526, i32 8}
!389 = !{ptr @sensor_dev_attr_fan1_alarm, !388, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!390 = !{ptr @.str.136, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/hwmon/adt7462.c", i32 1528, i32 8}
!392 = !{ptr @sensor_dev_attr_fan2_alarm, !391, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!393 = !{ptr @.str.137, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/hwmon/adt7462.c", i32 1530, i32 8}
!395 = !{ptr @sensor_dev_attr_fan3_alarm, !394, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!396 = !{ptr @.str.138, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/adt7462.c", i32 1532, i32 8}
!398 = !{ptr @sensor_dev_attr_fan4_alarm, !397, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!399 = !{ptr @.str.139, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/hwmon/adt7462.c", i32 1534, i32 8}
!401 = !{ptr @sensor_dev_attr_fan5_alarm, !400, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!402 = !{ptr @.str.140, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/hwmon/adt7462.c", i32 1536, i32 8}
!404 = !{ptr @sensor_dev_attr_fan6_alarm, !403, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!405 = !{ptr @.str.141, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/hwmon/adt7462.c", i32 1538, i32 8}
!407 = !{ptr @sensor_dev_attr_fan7_alarm, !406, !"sensor_dev_attr_fan7_alarm", i1 false, i1 false}
!408 = !{ptr @.str.142, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/hwmon/adt7462.c", i32 1540, i32 8}
!410 = !{ptr @sensor_dev_attr_fan8_alarm, !409, !"sensor_dev_attr_fan8_alarm", i1 false, i1 false}
!411 = !{ptr @.str.143, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../drivers/hwmon/adt7462.c", i32 1543, i32 8}
!413 = !{ptr @sensor_dev_attr_force_pwm_max, !412, !"sensor_dev_attr_force_pwm_max", i1 false, i1 false}
!414 = !{ptr @.str.144, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/hwmon/adt7462.c", i32 1545, i32 8}
!416 = !{ptr @sensor_dev_attr_pwm1, !415, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!417 = !{ptr @.str.145, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/hwmon/adt7462.c", i32 1546, i32 8}
!419 = !{ptr @sensor_dev_attr_pwm2, !418, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!420 = !{ptr @.str.146, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/adt7462.c", i32 1547, i32 8}
!422 = !{ptr @sensor_dev_attr_pwm3, !421, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!423 = !{ptr @.str.147, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/hwmon/adt7462.c", i32 1548, i32 8}
!425 = !{ptr @sensor_dev_attr_pwm4, !424, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!426 = !{ptr @.str.148, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/hwmon/adt7462.c", i32 1550, i32 8}
!428 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !427, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!429 = !{ptr @.str.149, !430, !"<string literal>", i1 false, i1 false}
!430 = !{!"../drivers/hwmon/adt7462.c", i32 1551, i32 8}
!431 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !430, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!432 = !{ptr @.str.150, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/hwmon/adt7462.c", i32 1552, i32 8}
!434 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !433, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!435 = !{ptr @.str.151, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/hwmon/adt7462.c", i32 1553, i32 8}
!437 = !{ptr @sensor_dev_attr_pwm4_auto_point1_pwm, !436, !"sensor_dev_attr_pwm4_auto_point1_pwm", i1 false, i1 false}
!438 = !{ptr @.str.152, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/hwmon/adt7462.c", i32 1555, i32 8}
!440 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !439, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!441 = !{ptr @.str.153, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../drivers/hwmon/adt7462.c", i32 1556, i32 8}
!443 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !442, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!444 = !{ptr @.str.154, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/hwmon/adt7462.c", i32 1557, i32 8}
!446 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !445, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!447 = !{ptr @.str.155, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/hwmon/adt7462.c", i32 1558, i32 8}
!449 = !{ptr @sensor_dev_attr_pwm4_auto_point2_pwm, !448, !"sensor_dev_attr_pwm4_auto_point2_pwm", i1 false, i1 false}
!450 = !{ptr @.str.156, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/hwmon/adt7462.c", i32 1560, i32 8}
!452 = !{ptr @sensor_dev_attr_temp1_auto_point1_hyst, !451, !"sensor_dev_attr_temp1_auto_point1_hyst", i1 false, i1 false}
!453 = !{ptr @.str.157, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/hwmon/adt7462.c", i32 1561, i32 8}
!455 = !{ptr @sensor_dev_attr_temp2_auto_point1_hyst, !454, !"sensor_dev_attr_temp2_auto_point1_hyst", i1 false, i1 false}
!456 = !{ptr @.str.158, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/hwmon/adt7462.c", i32 1562, i32 8}
!458 = !{ptr @sensor_dev_attr_temp3_auto_point1_hyst, !457, !"sensor_dev_attr_temp3_auto_point1_hyst", i1 false, i1 false}
!459 = !{ptr @.str.159, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/hwmon/adt7462.c", i32 1563, i32 8}
!461 = !{ptr @sensor_dev_attr_temp4_auto_point1_hyst, !460, !"sensor_dev_attr_temp4_auto_point1_hyst", i1 false, i1 false}
!462 = !{ptr @.str.160, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/hwmon/adt7462.c", i32 1565, i32 8}
!464 = !{ptr @sensor_dev_attr_temp1_auto_point2_hyst, !463, !"sensor_dev_attr_temp1_auto_point2_hyst", i1 false, i1 false}
!465 = !{ptr @.str.161, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/hwmon/adt7462.c", i32 1566, i32 8}
!467 = !{ptr @sensor_dev_attr_temp2_auto_point2_hyst, !466, !"sensor_dev_attr_temp2_auto_point2_hyst", i1 false, i1 false}
!468 = !{ptr @.str.162, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/hwmon/adt7462.c", i32 1567, i32 8}
!470 = !{ptr @sensor_dev_attr_temp3_auto_point2_hyst, !469, !"sensor_dev_attr_temp3_auto_point2_hyst", i1 false, i1 false}
!471 = !{ptr @.str.163, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/hwmon/adt7462.c", i32 1568, i32 8}
!473 = !{ptr @sensor_dev_attr_temp4_auto_point2_hyst, !472, !"sensor_dev_attr_temp4_auto_point2_hyst", i1 false, i1 false}
!474 = !{ptr @.str.164, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/hwmon/adt7462.c", i32 1570, i32 8}
!476 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp, !475, !"sensor_dev_attr_temp1_auto_point1_temp", i1 false, i1 false}
!477 = !{ptr @.str.165, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/hwmon/adt7462.c", i32 1571, i32 8}
!479 = !{ptr @sensor_dev_attr_temp2_auto_point1_temp, !478, !"sensor_dev_attr_temp2_auto_point1_temp", i1 false, i1 false}
!480 = !{ptr @.str.166, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/hwmon/adt7462.c", i32 1572, i32 8}
!482 = !{ptr @sensor_dev_attr_temp3_auto_point1_temp, !481, !"sensor_dev_attr_temp3_auto_point1_temp", i1 false, i1 false}
!483 = !{ptr @.str.167, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/hwmon/adt7462.c", i32 1573, i32 8}
!485 = !{ptr @sensor_dev_attr_temp4_auto_point1_temp, !484, !"sensor_dev_attr_temp4_auto_point1_temp", i1 false, i1 false}
!486 = !{ptr @.str.168, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/hwmon/adt7462.c", i32 1575, i32 8}
!488 = !{ptr @sensor_dev_attr_temp1_auto_point2_temp, !487, !"sensor_dev_attr_temp1_auto_point2_temp", i1 false, i1 false}
!489 = !{ptr @trange_values, !490, !"trange_values", i1 false, i1 false}
!490 = !{!"../drivers/hwmon/adt7462.c", i32 642, i32 18}
!491 = !{ptr @.str.169, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/hwmon/adt7462.c", i32 1576, i32 8}
!493 = !{ptr @sensor_dev_attr_temp2_auto_point2_temp, !492, !"sensor_dev_attr_temp2_auto_point2_temp", i1 false, i1 false}
!494 = !{ptr @.str.170, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/hwmon/adt7462.c", i32 1577, i32 8}
!496 = !{ptr @sensor_dev_attr_temp3_auto_point2_temp, !495, !"sensor_dev_attr_temp3_auto_point2_temp", i1 false, i1 false}
!497 = !{ptr @.str.171, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/hwmon/adt7462.c", i32 1578, i32 8}
!499 = !{ptr @sensor_dev_attr_temp4_auto_point2_temp, !498, !"sensor_dev_attr_temp4_auto_point2_temp", i1 false, i1 false}
!500 = !{ptr @.str.172, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/hwmon/adt7462.c", i32 1580, i32 8}
!502 = !{ptr @sensor_dev_attr_pwm1_enable, !501, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!503 = !{ptr @.str.173, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/hwmon/adt7462.c", i32 1300, i32 23}
!505 = !{ptr @.str.174, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/hwmon/adt7462.c", i32 1581, i32 8}
!507 = !{ptr @sensor_dev_attr_pwm2_enable, !506, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!508 = !{ptr @.str.175, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/hwmon/adt7462.c", i32 1582, i32 8}
!510 = !{ptr @sensor_dev_attr_pwm3_enable, !509, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!511 = !{ptr @.str.176, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/hwmon/adt7462.c", i32 1583, i32 8}
!513 = !{ptr @sensor_dev_attr_pwm4_enable, !512, !"sensor_dev_attr_pwm4_enable", i1 false, i1 false}
!514 = !{ptr @.str.177, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/hwmon/adt7462.c", i32 1585, i32 8}
!516 = !{ptr @sensor_dev_attr_pwm1_auto_channels_temp, !515, !"sensor_dev_attr_pwm1_auto_channels_temp", i1 false, i1 false}
!517 = !{ptr @.str.178, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/hwmon/adt7462.c", i32 1356, i32 23}
!519 = distinct !{null, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/hwmon/adt7462.c", i32 1358, i32 23}
!521 = !{ptr @.str.180, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/hwmon/adt7462.c", i32 1586, i32 8}
!523 = !{ptr @sensor_dev_attr_pwm2_auto_channels_temp, !522, !"sensor_dev_attr_pwm2_auto_channels_temp", i1 false, i1 false}
!524 = !{ptr @.str.181, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/hwmon/adt7462.c", i32 1587, i32 8}
!526 = !{ptr @sensor_dev_attr_pwm3_auto_channels_temp, !525, !"sensor_dev_attr_pwm3_auto_channels_temp", i1 false, i1 false}
!527 = !{ptr @.str.182, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/hwmon/adt7462.c", i32 1588, i32 8}
!529 = !{ptr @sensor_dev_attr_pwm4_auto_channels_temp, !528, !"sensor_dev_attr_pwm4_auto_channels_temp", i1 false, i1 false}
!530 = !{ptr @adt7462_id, !531, !"adt7462_id", i1 false, i1 false}
!531 = !{!"../drivers/hwmon/adt7462.c", i32 1811, i32 35}
!532 = !{ptr @normal_i2c, !533, !"normal_i2c", i1 false, i1 false}
!533 = !{!"../drivers/hwmon/adt7462.c", i32 20, i32 29}
!534 = !{i32 1, !"wchar_size", i32 2}
!535 = !{i32 1, !"min_enum_size", i32 4}
!536 = !{i32 8, !"branch-target-enforcement", i32 0}
!537 = !{i32 8, !"sign-return-address", i32 0}
!538 = !{i32 8, !"sign-return-address-all", i32 0}
!539 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!540 = !{i32 7, !"uwtable", i32 1}
!541 = !{i32 7, !"frame-pointer", i32 2}
!542 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!543 = !{!"auto-init"}
!544 = !{i32 0, i32 33}
