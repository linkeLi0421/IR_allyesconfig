; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adc128d818.c_pt.bc'
source_filename = "../drivers/hwmon/adc128d818.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.adc128_data = type { ptr, ptr, i32, %struct.mutex, i8, i8, i32, [3 x [8 x i16]], [3 x i16], i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adc128d818__296_533_adc128_driver_init6 = internal global ptr @adc128_driver_init, section ".initcall6.init", align 4
@adc128_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @adc128_remove, ptr @adc128_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adc128_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adc128_id, ptr @adc128_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adc128_driver_exit = internal global ptr @adc128_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [32 x i8] c"adc128d818.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [45 x i8] c"adc128d818.description=Driver for ADC128D818\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [41 x i8] c"adc128d818.file=drivers/hwmon/adc128d818\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [23 x i8] c"adc128d818.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc128d818\00", [21 x i8] zeroinitializer }, align 32
@adc128_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,adc128d818\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@adc128_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adc128d818\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [7 x i16], [18 x i8] } { [7 x i16] [i16 29, i16 30, i16 31, i16 45, i16 46, i16 47, i16 -2], [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,mode\00", [24 x i8] zeroinitializer }, align 32
@adc128_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 463, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid operation mode %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"adc128_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/hwmon/adc128d818.c\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc128_probe._entry_ptr = internal global ptr @adc128_probe._entry, section ".printk_index", align 4
@adc128_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adc128_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @adc128_group, ptr null], [24 x i8] zeroinitializer }, align 32
@adc128_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @adc128_is_visible, ptr null, ptr @adc128_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adc128_attrs = internal global { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_max_hyst, ptr null], [44 x i8] zeroinitializer }, align 32
@num_inputs = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\07\08\04\06", [28 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr null }, i8 0, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 2, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_in_show, ptr @adc128_in_store }, i8 1, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_temp_show, ptr @adc128_temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adc128_temp_show, ptr @adc128_temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.47 = private unnamed_addr constant [14 x i8] c"adc128_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 520, i32 26 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 523, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"adc128_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 514, i32 49 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"adc128_id\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 508, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 29, i32 29 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 443, i32 47 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 460, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 462, i32 4 }
@___asan_gen_.86 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 476, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant [14 x i8] c"adc128_groups\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 357, i32 1 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"adc128_group\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 353, i32 37 }
@___asan_gen_.98 = private unnamed_addr constant [13 x i8] c"adc128_attrs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 313, i32 26 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"num_inputs\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 57, i32 17 }
@___asan_gen_.104 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 303, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 245, i32 22 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 267, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 159, i32 22 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 269, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 268, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 304, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 271, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 273, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 272, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 305, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 275, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 277, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 276, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 306, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 279, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 281, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 280, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 307, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 283, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 285, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 284, i32 8 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 308, i32 8 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 287, i32 8 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 289, i32 8 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 288, i32 8 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 309, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 291, i32 8 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 293, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 292, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 310, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 295, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 297, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 296, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 299, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 300, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 311, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.324 = private constant [30 x i8] c"../drivers/hwmon/adc128d818.c\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.324, i32 301, i32 8 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_adc128_driver_exit, ptr @__initcall__kmod_adc128d818__296_533_adc128_driver_init6, ptr @adc128_driver_exit, ptr @adc128_probe._entry, ptr @adc128_probe._entry_ptr, ptr @adc128_driver, ptr @.str, ptr @adc128_of_match, ptr @adc128_id, ptr @normal_i2c, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @adc128_probe.__key, ptr @.str.8, ptr @adc128_groups, ptr @adc128_group, ptr @adc128_attrs, ptr @num_inputs, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_max_hyst, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc128_attrs to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_inputs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adc128_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adc128_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adc128_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regulator = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regulator, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 168, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_regulator_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end23_crit_edge, label %if.then4

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then4:                                         ; preds = %if.end
  %regulator5 = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regulator5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %regulator5, align 4
  %call6 = tail call i32 @regulator_enable(ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.then4.cleanup_crit_edge, label %if.end8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then4
  %call9 = tail call i32 @regulator_get_voltage(ptr noundef %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.error_crit_edge, label %if.end12

if.end8.error_crit_edge:                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp13.not = icmp eq i32 %call9, 0
  %add = add nuw i32 %call9, 500
  %div18 = sdiv i32 %add, 1000
  %cond = select i1 %cmp13.not, i32 0, i32 %div18
  br label %if.end23

if.end23:                                         ; preds = %if.end12, %if.end.if.end23_crit_edge
  %.sink = phi i32 [ %cond, %if.end12 ], [ 2560, %if.end.if.end23_crit_edge ]
  %vref22 = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %vref22 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink, ptr %vref22, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %mode = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 4
  %call.i.i = tail call i32 @of_property_read_variable_u8_array(ptr noundef %3, ptr noundef nonnull @.str.2, ptr noundef %mode, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp25 = icmp sgt i32 %call.i.i, -1
  br i1 %cmp25, label %if.then27, label %if.else36

if.then27:                                        ; preds = %if.end23
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %cmp30 = icmp ugt i8 %5, 3
  br i1 %cmp30, label %do.end, label %if.then27.if.end44_crit_edge

if.then27.if.end44_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

do.end:                                           ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %conv29 = zext i8 %5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef %conv29) #12
  br label %error

if.else36:                                        ; preds = %if.end23
  %call37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.else36.error_crit_edge, label %if.end41

if.else36.error_crit_edge:                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end41:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #11
  %6 = trunc i32 %call37 to i8
  %7 = lshr i8 %6, 1
  %conv42 = and i8 %7, 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv42, ptr %mode, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.end41, %if.then27.if.end44_crit_edge
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @adc128_probe.__key) #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  %call.i109 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext -128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i109)
  %tobool.not.i = icmp eq i32 %call.i109, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end44.adc128_init_client.exit_crit_edge

if.end44.adc128_init_client.exit_crit_edge:       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %adc128_init_client.exit

if.end.i:                                         ; preds = %if.end44
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %mode, align 4
  %shl.i = shl i8 %14, 1
  %regulator.i = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 1
  %15 = ptrtoint ptr %regulator.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regulator.i, align 4
  %tobool9.not.i = icmp ne ptr %16, null
  %17 = zext i1 %tobool9.not.i to i8
  %regval.1.i = or i8 %shl.i, %17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %regval.1.i)
  %cmp16.not.i = icmp eq i8 %regval.1.i, 0
  br i1 %cmp16.not.i, label %if.end.i.if.end23.i_crit_edge, label %if.then18.i

if.end.i.if.end23.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then18.i:                                      ; preds = %if.end.i
  %call19.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 11, i8 noundef zeroext %regval.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.then18.i.if.end23.i_crit_edge, label %if.then18.i.adc128_init_client.exit_crit_edge

if.then18.i.adc128_init_client.exit_crit_edge:    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adc128_init_client.exit

if.then18.i.if.end23.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then18.i.if.end23.i_crit_edge, %if.end.i.if.end23.i_crit_edge
  %call24.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 0, i8 noundef zeroext 1) #9
  br label %adc128_init_client.exit

adc128_init_client.exit:                          ; preds = %if.end23.i, %if.then18.i.adc128_init_client.exit_crit_edge, %if.end44.adc128_init_client.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i109, %if.end44.adc128_init_client.exit_crit_edge ], [ %call19.i, %if.then18.i.adc128_init_client.exit_crit_edge ], [ %call24.i, %if.end23.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp50 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp50, label %adc128_init_client.exit.error_crit_edge, label %if.end53

adc128_init_client.exit.error_crit_edge:          ; preds = %adc128_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end53:                                         ; preds = %adc128_init_client.exit
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call54 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adc128_groups) #9
  %cmp.i110 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i110, label %if.then56, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %call54 to i32
  br label %error

error:                                            ; preds = %if.then56, %adc128_init_client.exit.error_crit_edge, %if.else36.error_crit_edge, %do.end, %if.end8.error_crit_edge
  %err.0 = phi i32 [ -22, %do.end ], [ %retval.0.i, %adc128_init_client.exit.error_crit_edge ], [ %18, %if.then56 ], [ %call37, %if.else36.error_crit_edge ], [ %call9, %if.end8.error_crit_edge ]
  %regulator59 = getelementptr inbounds %struct.adc128_data, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %regulator59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regulator59, align 4
  %tobool60.not = icmp eq ptr %20, null
  br i1 %tobool60.not, label %error.cleanup_crit_edge, label %if.then61

error.cleanup_crit_edge:                          ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then61:                                        ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = tail call i32 @regulator_disable(ptr noundef nonnull %20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %error.cleanup_crit_edge, %if.end53.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.then4.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ], [ %err.0, %if.then61 ], [ %err.0, %error.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call2)
  %cmp3.not = icmp eq i32 %call2, 9
  %or.cond = select i1 %cmp.not, i1 %cmp3.not, i1 false
  br i1 %or.cond, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #9
  %and = and i32 %call6, 244
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #9
  %and11 = and i32 %call10, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 9) #9
  %and16 = and i32 %call15, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 10) #9
  %and21 = and i32 %call20, 254
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 11) #9
  %and26 = and i32 %call25, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end24
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 12) #9
  %and31 = and i32 %call30, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end29.cleanup_crit_edge

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %call35 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.end29.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end34 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end5.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ -19, %if.end24.cleanup_crit_edge ], [ -19, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @adc128_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %index)
  %cmp = icmp slt i32 %index, 32
  %mode = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [4 x i8], ptr @num_inputs, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = shl nuw nsw i32 %conv, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %index)
  %cmp2.not = icmp sgt i32 %mul, %index
  br i1 %cmp2.not, label %if.then.if.end11_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp7 = icmp eq i8 %3, 1
  br i1 %cmp7, label %if.else.cleanup_crit_edge, label %if.else.if.end11_crit_edge

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.else.if.end11_crit_edge, %if.then.if.end11_crit_edge
  %mode12 = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %mode12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end11 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adc128_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %2
  %alarms3 = getelementptr inbounds %struct.adc128_data, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %alarms3 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %alarms3, align 2
  %conv = zext i8 %4 to i32
  %5 = trunc i32 %shl to i8
  %6 = xor i8 %5, -1
  %conv5 = and i8 %4, %6
  store i8 %conv5, ptr %alarms3, align 2
  %7 = lshr i32 %conv, %2
  %8 = and i32 %7, 1
  %call9 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call9, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adc128_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.for.body.lr.ph_crit_edge, label %lor.lhs.false

entry.for.body.lr.ph_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 1, !range !164
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.for.body.lr.ph_crit_edge, label %lor.lhs.false.done_crit_edge

lor.lhs.false.done_crit_edge:                     ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

lor.lhs.false.for.body.lr.ph_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %lor.lhs.false.for.body.lr.ph_crit_edge, %entry.for.body.lr.ph_crit_edge
  %mode = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 4
  %in = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %if.end31.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end31.for.body_crit_edge ]
  %9 = trunc i32 %i.0136 to i8
  %conv5 = add i8 %9, 32
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %for.body.abort_crit_edge, label %if.end

for.body.abort_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end:                                           ; preds = %for.body
  %conv.i = trunc i32 %call.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #9
  %11 = lshr i16 %10, 4
  %arrayidx12 = getelementptr [8 x i16], ptr %in, i32 0, i32 %i.0136
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %arrayidx12, align 2
  %13 = shl i8 %9, 1
  %conv14 = add i8 %13, 43
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end.abort_crit_edge, label %if.end19

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end19:                                         ; preds = %if.end
  %call15.tr = trunc i32 %call15 to i16
  %conv20 = shl i16 %call15.tr, 4
  %arrayidx23 = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 7, i32 1, i32 %i.0136
  %14 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv20, ptr %arrayidx23, align 2
  %conv26 = add i8 %13, 42
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end19.abort_crit_edge, label %if.end31

if.end19.abort_crit_edge:                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end31:                                         ; preds = %if.end19
  %call27.tr = trunc i32 %call27 to i16
  %conv33 = shl i16 %call27.tr, 4
  %arrayidx36 = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 7, i32 2, i32 %i.0136
  %15 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv33, ptr %arrayidx36, align 2
  %inc = add nuw nsw i32 %i.0136, 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mode, align 4
  %idxprom = zext i8 %17 to i32
  %arrayidx = getelementptr [4 x i8], ptr @num_inputs, i32 0, i32 %idxprom
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %19 to i32
  %cmp2 = icmp ult i32 %inc, %conv
  br i1 %cmp2, label %if.end31.for.body_crit_edge, label %for.end

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %17)
  %phi.cmp = icmp eq i8 %17, 1
  br i1 %phi.cmp, label %for.end.if.end68_crit_edge, label %if.then41

for.end.if.end68_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then41:                                        ; preds = %for.end
  %call.i126 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i126)
  %cmp.i127 = icmp slt i32 %call.i126, 0
  br i1 %cmp.i127, label %if.then41.abort_crit_edge, label %if.end46

if.then41.abort_crit_edge:                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end46:                                         ; preds = %if.then41
  %conv.i128 = trunc i32 %call.i126 to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv.i128) #9
  %21 = lshr i16 %20, 7
  %temp = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 8
  %22 = ptrtoint ptr %temp to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %temp, align 4
  %call50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end46.abort_crit_edge, label %if.end54

if.end46.abort_crit_edge:                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end54:                                         ; preds = %if.end46
  %call50.tr = trunc i32 %call50 to i16
  %conv56 = shl i16 %call50.tr, 1
  %arrayidx58 = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 8, i32 1
  %23 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv56, ptr %arrayidx58, align 2
  %call59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.end54.abort_crit_edge, label %if.end63

if.end54.abort_crit_edge:                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end63:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  %call59.tr = trunc i32 %call59 to i16
  %conv65 = shl i16 %call59.tr, 1
  %arrayidx67 = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 8, i32 2
  %24 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv65, ptr %arrayidx67, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end63, %for.end.if.end68_crit_edge
  %call69 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end68.abort_crit_edge, label %if.end73

if.end68.abort_crit_edge:                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %abort

if.end73:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 9
  %25 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %alarms, align 2
  %27 = trunc i32 %call69 to i8
  %conv75 = or i8 %26, %27
  store i8 %conv75, ptr %alarms, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %29 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %last_updated, align 4
  br label %done.sink.split

abort:                                            ; preds = %if.end68.abort_crit_edge, %if.end54.abort_crit_edge, %if.end46.abort_crit_edge, %if.then41.abort_crit_edge, %if.end19.abort_crit_edge, %if.end.abort_crit_edge, %for.body.abort_crit_edge
  %rv.0 = phi i32 [ %call.i126, %if.then41.abort_crit_edge ], [ %call50, %if.end46.abort_crit_edge ], [ %call59, %if.end54.abort_crit_edge ], [ %call69, %if.end68.abort_crit_edge ], [ %call27, %if.end19.abort_crit_edge ], [ %call15, %if.end.abort_crit_edge ], [ %call.i, %for.body.abort_crit_edge ]
  %30 = inttoptr i32 %rv.0 to ptr
  br label %done.sink.split

done.sink.split:                                  ; preds = %abort, %if.end73
  %.sink = phi i8 [ 1, %if.end73 ], [ 0, %abort ]
  %ret.0.ph = phi ptr [ %1, %if.end73 ], [ %30, %abort ]
  %valid77 = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %valid77 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink, ptr %valid77, align 1
  br label %done

done:                                             ; preds = %done.sink.split, %lor.lhs.false.done_crit_edge
  %ret.0 = phi ptr [ %1, %lor.lhs.false.done_crit_edge ], [ %ret.0.ph, %done.sink.split ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_in_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adc128_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx9 = getelementptr %struct.adc128_data, ptr %call, i32 0, i32 7, i32 %conv, i32 %conv6
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx9, align 2
  %conv10 = zext i16 %6 to i32
  %vref = getelementptr inbounds %struct.adc128_data, ptr %call, i32 0, i32 2
  %7 = ptrtoint ptr %vref to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vref, align 4
  %mul = mul i32 %8, %conv10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp sgt i32 %mul, 0
  %cond.in.v = select i1 %cmp, i32 2047, i32 -2047
  %cond.in = add i32 %cond.in.v, %mul
  %cond = sdiv i32 %cond.in, 4095
  %call20 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call20, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_in_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index1, align 4
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr5, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !165
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = zext i8 %5 to i32
  %conv = zext i8 %3 to i32
  %update_lock = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp sgt i32 %8, 0
  %cond.in.v = select i1 %cmp10, i32 5, i32 -5
  %cond.in = add i32 %cond.in.v, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %cond.in)
  %cmp20 = icmp sgt i32 %cond.in, 9
  %cond = sdiv i32 %cond.in, 10
  %9 = call i32 @llvm.smin.i32(i32 %cond, i32 255)
  %10 = select i1 %cmp20, i32 %9, i32 0
  %conv33 = trunc i32 %10 to i8
  %cond32.tr = trunc i32 %10 to i16
  %11 = shl i16 %cond32.tr, 4
  %conv35 = and i16 %11, 4080
  %arrayidx36 = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 7, i32 %conv, i32 %conv6
  %12 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv35, ptr %arrayidx36, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %cmp37 = icmp eq i8 %3, 1
  %mul = shl i8 %5, 1
  %cond45.v = select i1 %cmp37, i8 43, i8 42
  %cond45 = add i8 %mul, %cond45.v
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call47 = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext %cond45, i8 noundef zeroext %conv33) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adc128_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index1, align 4
  %arrayidx = getelementptr %struct.adc128_data, ptr %call, i32 0, i32 8, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv11 = zext i16 %4 to i32
  %shl.i = shl i32 %conv11, 23
  %shr.i = ashr exact i32 %shl.i, 23
  %mul = mul nsw i32 %shr.i, 500
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc128_temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !165
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.adc128_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp4 = icmp sgt i32 %6, 0
  %cond.in.v = select i1 %cmp4, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %cond.in)
  %cmp13 = icmp sgt i32 %cond.in, -128000
  %cond = sdiv i32 %cond.in, 1000
  %7 = call i32 @llvm.smin.i32(i32 %cond, i32 127)
  %8 = select i1 %cmp13, i32 %7, i32 -128
  %conv26 = trunc i32 %8 to i8
  %sext = shl i32 %8, 24
  %shl = ashr exact i32 %sext, 23
  %conv28 = trunc i32 %shl to i16
  %arrayidx = getelementptr %struct.adc128_data, ptr %1, i32 0, i32 8, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv28, ptr %arrayidx, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp29 = icmp eq i32 %3, 1
  %conv32 = select i1 %cmp29, i8 56, i8 57
  %call33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext %conv32, i8 noundef zeroext %conv26) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !31, !33, !35, !37, !39, !40, !42, !44, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_adc128d818__296_533_adc128_driver_init6, !1, !"__initcall__kmod_adc128d818__296_533_adc128_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adc128d818.c", i32 533, i32 1}
!2 = !{ptr @__exitcall_adc128_driver_exit, !1, !"__exitcall_adc128_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adc128d818.c", i32 535, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adc128d818.c", i32 536, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adc128d818.c", i32 537, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adc128d818.c", i32 523, i32 11}
!12 = !{ptr @adc128_driver, !13, !"adc128_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adc128d818.c", i32 520, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adc128d818.c", i32 443, i32 47}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/adc128d818.c", i32 460, i32 40}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/adc128d818.c", i32 462, i32 4}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adc128_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @adc128_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @adc128_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/adc128d818.c", i32 476, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @adc128_groups, !30, !"adc128_groups", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/adc128d818.c", i32 357, i32 1}
!31 = !{ptr @adc128_group, !32, !"adc128_group", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/adc128d818.c", i32 353, i32 37}
!33 = !{ptr @num_inputs, !34, !"num_inputs", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adc128d818.c", i32 57, i32 17}
!35 = !{ptr @adc128_attrs, !36, !"adc128_attrs", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/adc128d818.c", i32 313, i32 26}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/adc128d818.c", i32 303, i32 8}
!39 = !{ptr @sensor_dev_attr_in0_alarm, !38, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/adc128d818.c", i32 245, i32 22}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/adc128d818.c", i32 267, i32 8}
!44 = !{ptr @sensor_dev_attr_in0_input, !43, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/adc128d818.c", i32 159, i32 22}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/adc128d818.c", i32 269, i32 8}
!49 = !{ptr @sensor_dev_attr_in0_max, !48, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/adc128d818.c", i32 268, i32 8}
!52 = !{ptr @sensor_dev_attr_in0_min, !51, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/adc128d818.c", i32 304, i32 8}
!55 = !{ptr @sensor_dev_attr_in1_alarm, !54, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/adc128d818.c", i32 271, i32 8}
!58 = !{ptr @sensor_dev_attr_in1_input, !57, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/adc128d818.c", i32 273, i32 8}
!61 = !{ptr @sensor_dev_attr_in1_max, !60, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/adc128d818.c", i32 272, i32 8}
!64 = !{ptr @sensor_dev_attr_in1_min, !63, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/adc128d818.c", i32 305, i32 8}
!67 = !{ptr @sensor_dev_attr_in2_alarm, !66, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/adc128d818.c", i32 275, i32 8}
!70 = !{ptr @sensor_dev_attr_in2_input, !69, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/adc128d818.c", i32 277, i32 8}
!73 = !{ptr @sensor_dev_attr_in2_max, !72, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/adc128d818.c", i32 276, i32 8}
!76 = !{ptr @sensor_dev_attr_in2_min, !75, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adc128d818.c", i32 306, i32 8}
!79 = !{ptr @sensor_dev_attr_in3_alarm, !78, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/adc128d818.c", i32 279, i32 8}
!82 = !{ptr @sensor_dev_attr_in3_input, !81, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/adc128d818.c", i32 281, i32 8}
!85 = !{ptr @sensor_dev_attr_in3_max, !84, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/adc128d818.c", i32 280, i32 8}
!88 = !{ptr @sensor_dev_attr_in3_min, !87, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/adc128d818.c", i32 307, i32 8}
!91 = !{ptr @sensor_dev_attr_in4_alarm, !90, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/adc128d818.c", i32 283, i32 8}
!94 = !{ptr @sensor_dev_attr_in4_input, !93, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/adc128d818.c", i32 285, i32 8}
!97 = !{ptr @sensor_dev_attr_in4_max, !96, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/adc128d818.c", i32 284, i32 8}
!100 = !{ptr @sensor_dev_attr_in4_min, !99, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/adc128d818.c", i32 308, i32 8}
!103 = !{ptr @sensor_dev_attr_in5_alarm, !102, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/adc128d818.c", i32 287, i32 8}
!106 = !{ptr @sensor_dev_attr_in5_input, !105, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/adc128d818.c", i32 289, i32 8}
!109 = !{ptr @sensor_dev_attr_in5_max, !108, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/adc128d818.c", i32 288, i32 8}
!112 = !{ptr @sensor_dev_attr_in5_min, !111, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/adc128d818.c", i32 309, i32 8}
!115 = !{ptr @sensor_dev_attr_in6_alarm, !114, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/adc128d818.c", i32 291, i32 8}
!118 = !{ptr @sensor_dev_attr_in6_input, !117, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!119 = !{ptr @.str.37, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/adc128d818.c", i32 293, i32 8}
!121 = !{ptr @sensor_dev_attr_in6_max, !120, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/adc128d818.c", i32 292, i32 8}
!124 = !{ptr @sensor_dev_attr_in6_min, !123, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/adc128d818.c", i32 310, i32 8}
!127 = !{ptr @sensor_dev_attr_in7_alarm, !126, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/adc128d818.c", i32 295, i32 8}
!130 = !{ptr @sensor_dev_attr_in7_input, !129, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!131 = !{ptr @.str.41, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/adc128d818.c", i32 297, i32 8}
!133 = !{ptr @sensor_dev_attr_in7_max, !132, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!134 = !{ptr @.str.42, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/adc128d818.c", i32 296, i32 8}
!136 = !{ptr @sensor_dev_attr_in7_min, !135, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!137 = !{ptr @.str.43, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/adc128d818.c", i32 299, i32 8}
!139 = !{ptr @sensor_dev_attr_temp1_input, !138, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!140 = !{ptr @.str.44, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/adc128d818.c", i32 300, i32 8}
!142 = !{ptr @sensor_dev_attr_temp1_max, !141, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!143 = !{ptr @.str.45, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/adc128d818.c", i32 311, i32 8}
!145 = !{ptr @sensor_dev_attr_temp1_max_alarm, !144, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/adc128d818.c", i32 301, i32 8}
!148 = !{ptr @sensor_dev_attr_temp1_max_hyst, !147, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!149 = !{ptr @adc128_of_match, !150, !"adc128_of_match", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/adc128d818.c", i32 514, i32 49}
!151 = !{ptr @adc128_id, !152, !"adc128_id", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/adc128d818.c", i32 508, i32 35}
!153 = !{ptr @normal_i2c, !154, !"normal_i2c", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/adc128d818.c", i32 29, i32 29}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{i8 0, i8 2}
!165 = !{!"auto-init"}
