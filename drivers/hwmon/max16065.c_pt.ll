; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max16065.c_pt.bc'
source_filename = "../drivers/hwmon/max16065.c"
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max16065_data = type { i32, ptr, [4 x ptr], %struct.mutex, i8, i32, i32, i8, i32, [3 x [12 x i32]], [13 x i32], [13 x i32], i32, [2 x i32] }

@__initcall__kmod_max16065__292_607_max16065_driver_init6 = internal global ptr @max16065_driver_init, section ".initcall6.init", align 4
@max16065_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @max16065_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max16065_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max16065_driver_exit = internal global ptr @max16065_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author293 = internal constant [51 x i8] c"max16065.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description294 = internal constant [37 x i8] c"max16065.description=MAX16065 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [37 x i8] c"max16065.file=drivers/hwmon/max16065\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"max16065.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max16065\00", [23 x i8] zeroinitializer }, align 32
@max16065_id = internal constant { [7 x %struct.i2c_device_id], [56 x i8] } { [7 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max16065\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max16066\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max16067\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max16068\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max16070\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max16071\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@max16065_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max16065_num_adc = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 12, i32 8, i32 6, i32 6, i32 12, i32 8], [40 x i8] zeroinitializer }, align 32
@max16065_adc_range = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5560, i32 2780, i32 1390, i32 0], [16 x i8] zeroinitializer }, align 32
@max16065_basic_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max16065_basic_is_visible, ptr null, ptr @max16065_basic_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max16065_max_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max16065_secondary_is_visible, ptr null, ptr @max16065_max_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max16065_min_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max16065_secondary_is_visible, ptr null, ptr @max16065_min_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max16065_csp_adc_range = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 7000, i32 14000], [24 x i8] zeroinitializer }, align 32
@max16065_current_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max16065_current_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max16065_basic_attributes = internal global { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_lcrit, ptr @sensor_dev_attr_in0_crit, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_lcrit, ptr @sensor_dev_attr_in2_crit, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_lcrit, ptr @sensor_dev_attr_in3_crit, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_lcrit, ptr @sensor_dev_attr_in4_crit, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_lcrit, ptr @sensor_dev_attr_in5_crit, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_lcrit, ptr @sensor_dev_attr_in6_crit, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_lcrit, ptr @sensor_dev_attr_in7_crit, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_lcrit, ptr @sensor_dev_attr_in8_crit, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_lcrit, ptr @sensor_dev_attr_in9_crit, ptr @sensor_dev_attr_in9_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_lcrit, ptr @sensor_dev_attr_in10_crit, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in11_lcrit, ptr @sensor_dev_attr_in11_crit, ptr @sensor_dev_attr_in11_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 6, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 6, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 6, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 7, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 7, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 7, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 8, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 8, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 9, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 9, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 10, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 10, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_lcrit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 11, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 11, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in9_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_lcrit\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in10_crit\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_lcrit\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in11_crit\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_alarm\00", [21 x i8] zeroinitializer }, align 32
@max16065_max_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in11_max, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 6, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 7, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 8, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 9, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 10, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 11, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_max\00", [23 x i8] zeroinitializer }, align 32
@max16065_min_attributes = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in11_min, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 6, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 7, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 8, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 9, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 10, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_limit_show, ptr @max16065_limit_store }, i8 11, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in11_min\00", [23 x i8] zeroinitializer }, align 32
@max16065_current_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_alarm, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_input_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_current_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max16065_alarm_show, ptr null }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_alarm\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant [16 x i8] c"max16065_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 599, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 601, i32 11 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"max16065_id\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 586, i32 35 }
@___asan_gen_.87 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 519, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"max16065_num_adc\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 54, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"max16065_adc_range\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 99, i32 18 }
@___asan_gen_.99 = private unnamed_addr constant [21 x i8] c"max16065_basic_group\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 477, i32 37 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c"max16065_max_group\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 491, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant [19 x i8] c"max16065_min_group\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 486, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant [23 x i8] c"max16065_csp_adc_range\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 100, i32 18 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"max16065_current_group\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 482, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant [26 x i8] c"max16065_basic_attributes\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 351, i32 26 }
@___asan_gen_.117 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_lcrit\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_crit\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_lcrit\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_crit\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_lcrit\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_crit\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_lcrit\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_crit\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_lcrit\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_crit\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_lcrit\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in5_crit\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_lcrit\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in6_crit\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_lcrit\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in7_crit\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_lcrit\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in8_crit\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_lcrit\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in9_crit\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_alarm\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_lcrit\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in10_crit\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_alarm\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_lcrit\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in11_crit\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_alarm\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 259, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 203, i32 25 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 274, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 288, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 330, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 260, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 275, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 289, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 331, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 261, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 276, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 290, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 332, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 262, i32 8 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 277, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 291, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 333, i32 8 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 263, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 278, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 292, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 334, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 264, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 279, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 293, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 335, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 265, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 280, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 294, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 336, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 266, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 281, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 295, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 337, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 267, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 282, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 296, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 338, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 268, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 283, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 297, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 339, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 269, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 284, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 298, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 340, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 270, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 285, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 299, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 341, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant [24 x i8] c"max16065_max_attributes\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 438, i32 26 }
@___asan_gen_.411 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_max\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_max\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_max\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 316, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 317, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 318, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 319, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 320, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 321, i32 8 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 322, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 323, i32 8 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 324, i32 8 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 325, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 326, i32 8 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 327, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant [24 x i8] c"max16065_min_attributes\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 422, i32 26 }
@___asan_gen_.486 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.492 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.495 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.498 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.510 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.513 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_min\00", align 1
@___asan_gen_.516 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_min\00", align 1
@___asan_gen_.519 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in11_min\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 302, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 303, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 304, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 305, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 306, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 307, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 308, i32 8 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 309, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 310, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 311, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 312, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 313, i32 8 }
@___asan_gen_.558 = private unnamed_addr constant [28 x i8] c"max16065_current_attributes\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 415, i32 26 }
@___asan_gen_.561 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.564 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.567 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_alarm\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 271, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 344, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.577 = private constant [28 x i8] c"../drivers/hwmon/max16065.c\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.577, i32 345, i32 8 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_description294, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_license296, ptr @__exitcall_max16065_driver_exit, ptr @__initcall__kmod_max16065__292_607_max16065_driver_init6, ptr @max16065_driver_exit, ptr @max16065_driver, ptr @.str, ptr @max16065_id, ptr @max16065_probe.__key, ptr @.str.1, ptr @max16065_num_adc, ptr @max16065_adc_range, ptr @max16065_basic_group, ptr @max16065_max_group, ptr @max16065_min_group, ptr @max16065_csp_adc_range, ptr @max16065_current_group, ptr @max16065_basic_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_lcrit, ptr @sensor_dev_attr_in0_crit, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_lcrit, ptr @sensor_dev_attr_in2_crit, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_lcrit, ptr @sensor_dev_attr_in3_crit, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_lcrit, ptr @sensor_dev_attr_in4_crit, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_lcrit, ptr @sensor_dev_attr_in5_crit, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_lcrit, ptr @sensor_dev_attr_in6_crit, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_lcrit, ptr @sensor_dev_attr_in7_crit, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_lcrit, ptr @sensor_dev_attr_in8_crit, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_lcrit, ptr @sensor_dev_attr_in9_crit, ptr @sensor_dev_attr_in9_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_lcrit, ptr @sensor_dev_attr_in10_crit, ptr @sensor_dev_attr_in10_alarm, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in11_lcrit, ptr @sensor_dev_attr_in11_crit, ptr @sensor_dev_attr_in11_alarm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @max16065_max_attributes, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in11_max, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @max16065_min_attributes, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in11_min, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @max16065_current_attributes, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_alarm, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_id to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_num_adc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_adc_range to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_basic_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_max_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_min_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_csp_adc_range to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_current_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_basic_attributes to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_max_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_min_attributes to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max16065_current_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max16065_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max16065_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @max16065_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @i2c_match_id(ptr noundef nonnull @max16065_id, ptr noundef %client) #6
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 3670016
  call void @__sanitizer_cov_trace_const_cmp4(i32 3670016, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 3670016
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 396, i32 noundef 3520) #6
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end10, !prof !281

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %client11 = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %client11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %client11, align 4
  %update_lock = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max16065_probe.__key) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [6 x i32], ptr @max16065_num_adc, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %num_adc = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 6
  %11 = ptrtoint ptr %num_adc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_adc, align 4
  %12 = load i32, ptr %driver_data, align 4
  %13 = add i32 %12, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %13)
  %14 = icmp ult i32 %13, -2
  %have_current = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 7
  %frombool = zext i1 %14 to i8
  %15 = ptrtoint ptr %have_current to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool, ptr %have_current, align 4
  %16 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %driver_data, align 4
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %if.end10.if.end32_crit_edge, label %if.then20

if.end10.if.end32_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then20:                                        ; preds = %if.end10
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 115) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp slt i32 %call21, 0
  br i1 %cmp, label %if.then20.cleanup_crit_edge, label %if.end29, !prof !281

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end29:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %call21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  %phi.sel = select i1 %tobool30.not, ptr @max16065_min_group, ptr @max16065_max_group
  br label %if.end32

if.end32:                                         ; preds = %if.end29, %if.end10.if.end32_crit_edge
  %secondary_is_max.0.off0 = phi ptr [ %phi.sel, %if.end29 ], [ @max16065_min_group, %if.end10.if.end32_crit_edge ]
  %20 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_adc, align 4
  %sub227 = add i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub227)
  %cmp34229 = icmp sgt i32 %sub227, 3
  br i1 %cmp34229, label %if.end32.for.body_crit_edge, label %if.end32.for.cond64.preheader_crit_edge

if.end32.for.cond64.preheader_crit_edge:          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond64.preheader

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  br label %for.body

for.cond64.preheader:                             ; preds = %for.inc61.for.cond64.preheader_crit_edge, %if.end32.for.cond64.preheader_crit_edge
  %22 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pr = load i32, ptr %num_adc, align 4
  br i1 %19, label %for.cond64.preheader.for.cond73.preheader.1_crit_edge, label %for.cond73.preheader

for.cond64.preheader.for.cond73.preheader.1_crit_edge: ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond73.preheader.1

for.body:                                         ; preds = %for.inc61.for.body_crit_edge, %if.end32.for.body_crit_edge
  %i.0230 = phi i32 [ %inc62, %for.inc61.for.body_crit_edge ], [ 0, %if.end32.for.body_crit_edge ]
  %23 = trunc i32 %i.0230 to i8
  %conv = add i8 %23, 67
  %call36 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %for.body.cleanup_crit_edge, label %for.cond47.preheader, !prof !281

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond47.preheader:                             ; preds = %for.body
  %mul = shl i32 %i.0230, 2
  %24 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %25)
  %cmp52 = icmp slt i32 %mul, %25
  br i1 %cmp52, label %for.body54, label %for.cond47.preheader.for.inc61_crit_edge

for.cond47.preheader.for.inc61_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.body54:                                       ; preds = %for.cond47.preheader
  %and56 = and i32 %call36, 3
  %arrayidx57 = getelementptr [4 x i32], ptr @max16065_adc_range, i32 0, i32 %and56
  %26 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx57, align 4
  %arrayidx60 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %mul
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx60, align 4
  %add50.1 = or i32 %mul, 1
  %29 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.1, i32 %30)
  %cmp52.1 = icmp slt i32 %add50.1, %30
  br i1 %cmp52.1, label %for.body54.1, label %for.body54.for.inc61_crit_edge

for.body54.for.inc61_crit_edge:                   ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.body54.1:                                     ; preds = %for.body54
  %31 = lshr i32 %call36, 2
  %and56.1 = and i32 %31, 3
  %arrayidx57.1 = getelementptr [4 x i32], ptr @max16065_adc_range, i32 0, i32 %and56.1
  %32 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx57.1, align 4
  %arrayidx60.1 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %add50.1
  %34 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx60.1, align 4
  %add50.2 = or i32 %mul, 2
  %35 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.2, i32 %36)
  %cmp52.2 = icmp slt i32 %add50.2, %36
  br i1 %cmp52.2, label %for.body54.2, label %for.body54.1.for.inc61_crit_edge

for.body54.1.for.inc61_crit_edge:                 ; preds = %for.body54.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.body54.2:                                     ; preds = %for.body54.1
  %37 = lshr i32 %call36, 4
  %and56.2 = and i32 %37, 3
  %arrayidx57.2 = getelementptr [4 x i32], ptr @max16065_adc_range, i32 0, i32 %and56.2
  %38 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx57.2, align 4
  %arrayidx60.2 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %add50.2
  %40 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx60.2, align 4
  %add50.3 = or i32 %mul, 3
  %41 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add50.3, i32 %42)
  %cmp52.3 = icmp slt i32 %add50.3, %42
  br i1 %cmp52.3, label %for.body54.3, label %for.body54.2.for.inc61_crit_edge

for.body54.2.for.inc61_crit_edge:                 ; preds = %for.body54.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc61

for.body54.3:                                     ; preds = %for.body54.2
  call void @__sanitizer_cov_trace_pc() #8
  %43 = lshr i32 %call36, 6
  %and56.3 = and i32 %43, 3
  %arrayidx57.3 = getelementptr [4 x i32], ptr @max16065_adc_range, i32 0, i32 %and56.3
  %44 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx57.3, align 4
  %arrayidx60.3 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %add50.3
  %46 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx60.3, align 4
  br label %for.inc61

for.inc61:                                        ; preds = %for.body54.3, %for.body54.2.for.inc61_crit_edge, %for.body54.1.for.inc61_crit_edge, %for.body54.for.inc61_crit_edge, %for.cond47.preheader.for.inc61_crit_edge
  %inc62 = add nuw nsw i32 %i.0230, 1
  %47 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_adc, align 4
  %sub = add i32 %48, 3
  %div = sdiv i32 %sub, 4
  %cmp34 = icmp slt i32 %inc62, %div
  br i1 %cmp34, label %for.inc61.for.body_crit_edge, label %for.inc61.for.cond64.preheader_crit_edge

for.inc61.for.cond64.preheader_crit_edge:         ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond64.preheader

for.inc61.for.body_crit_edge:                     ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond73.preheader:                             ; preds = %for.cond64.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp75231 = icmp sgt i32 %.pr, 0
  br i1 %cmp75231, label %for.cond73.preheader.for.body77_crit_edge, label %for.inc101.2.thread

for.cond73.preheader.for.body77_crit_edge:        ; preds = %for.cond73.preheader
  br label %for.body77

for.inc101.2.thread:                              ; preds = %for.cond73.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %groups104246 = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %groups104246 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @max16065_basic_group, ptr %groups104246, align 4
  br label %if.then108

for.body77:                                       ; preds = %if.end92.for.body77_crit_edge, %for.cond73.preheader.for.body77_crit_edge
  %j.1232 = phi i32 [ %inc99, %if.end92.for.body77_crit_edge ], [ 0, %for.cond73.preheader.for.body77_crit_edge ]
  %50 = trunc i32 %j.1232 to i8
  %51 = mul i8 %50, 3
  %conv81 = add i8 %51, 72
  %call82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv81) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %cmp83 = icmp slt i32 %call82, 0
  br i1 %cmp83, label %for.body77.cleanup_crit_edge, label %if.end92, !prof !281

for.body77.cleanup_crit_edge:                     ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92:                                         ; preds = %for.body77
  %arrayidx94 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %j.1232
  %52 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx94, align 4
  %mul.i = mul i32 %53, %call82
  %div.i = sdiv i32 %mul.i, 256
  %arrayidx97 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 9, i32 0, i32 %j.1232
  %54 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %div.i, ptr %arrayidx97, align 4
  %inc99 = add nuw nsw i32 %j.1232, 1
  %55 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_adc, align 4
  %cmp75 = icmp slt i32 %inc99, %56
  br i1 %cmp75, label %if.end92.for.body77_crit_edge, label %if.end92.for.cond73.preheader.1_crit_edge

if.end92.for.cond73.preheader.1_crit_edge:        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond73.preheader.1

if.end92.for.body77_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77

for.cond73.preheader.1:                           ; preds = %if.end92.for.cond73.preheader.1_crit_edge, %for.cond64.preheader.for.cond73.preheader.1_crit_edge
  %57 = phi i32 [ %.pr, %for.cond64.preheader.for.cond73.preheader.1_crit_edge ], [ %56, %if.end92.for.cond73.preheader.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp75231.1 = icmp sgt i32 %57, 0
  br i1 %cmp75231.1, label %for.cond73.preheader.1.for.body77.1_crit_edge, label %for.cond73.preheader.2thread-pre-split

for.cond73.preheader.1.for.body77.1_crit_edge:    ; preds = %for.cond73.preheader.1
  br label %for.body77.1

for.body77.1:                                     ; preds = %if.end92.1.for.body77.1_crit_edge, %for.cond73.preheader.1.for.body77.1_crit_edge
  %j.1232.1 = phi i32 [ %inc99.1, %if.end92.1.for.body77.1_crit_edge ], [ 0, %for.cond73.preheader.1.for.body77.1_crit_edge ]
  %58 = trunc i32 %j.1232.1 to i8
  %59 = mul i8 %58, 3
  %conv81.1 = add i8 %59, 73
  %call82.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv81.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.1)
  %cmp83.1 = icmp slt i32 %call82.1, 0
  br i1 %cmp83.1, label %for.body77.1.cleanup_crit_edge, label %if.end92.1, !prof !281

for.body77.1.cleanup_crit_edge:                   ; preds = %for.body77.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92.1:                                       ; preds = %for.body77.1
  %arrayidx94.1 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %j.1232.1
  %60 = ptrtoint ptr %arrayidx94.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx94.1, align 4
  %mul.i.1 = mul i32 %61, %call82.1
  %div.i.1 = sdiv i32 %mul.i.1, 256
  %arrayidx97.1 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 9, i32 1, i32 %j.1232.1
  %62 = ptrtoint ptr %arrayidx97.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div.i.1, ptr %arrayidx97.1, align 4
  %inc99.1 = add nuw nsw i32 %j.1232.1, 1
  %63 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %num_adc, align 4
  %cmp75.1 = icmp slt i32 %inc99.1, %64
  br i1 %cmp75.1, label %if.end92.1.for.body77.1_crit_edge, label %if.end92.1.for.cond73.preheader.2_crit_edge

if.end92.1.for.cond73.preheader.2_crit_edge:      ; preds = %if.end92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond73.preheader.2

if.end92.1.for.body77.1_crit_edge:                ; preds = %if.end92.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.1

for.cond73.preheader.2thread-pre-split:           ; preds = %for.cond73.preheader.1
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr244 = load i32, ptr %num_adc, align 4
  br label %for.cond73.preheader.2

for.cond73.preheader.2:                           ; preds = %for.cond73.preheader.2thread-pre-split, %if.end92.1.for.cond73.preheader.2_crit_edge
  %66 = phi i32 [ %.pr244, %for.cond73.preheader.2thread-pre-split ], [ %64, %if.end92.1.for.cond73.preheader.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp75231.2 = icmp sgt i32 %66, 0
  br i1 %cmp75231.2, label %for.cond73.preheader.2.for.body77.2_crit_edge, label %for.cond73.preheader.2.for.inc101.2_crit_edge

for.cond73.preheader.2.for.inc101.2_crit_edge:    ; preds = %for.cond73.preheader.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.2

for.cond73.preheader.2.for.body77.2_crit_edge:    ; preds = %for.cond73.preheader.2
  br label %for.body77.2

for.body77.2:                                     ; preds = %if.end92.2.for.body77.2_crit_edge, %for.cond73.preheader.2.for.body77.2_crit_edge
  %j.1232.2 = phi i32 [ %inc99.2, %if.end92.2.for.body77.2_crit_edge ], [ 0, %for.cond73.preheader.2.for.body77.2_crit_edge ]
  %67 = trunc i32 %j.1232.2 to i8
  %68 = mul i8 %67, 3
  %conv81.2 = add i8 %68, 74
  %call82.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv81.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.2)
  %cmp83.2 = icmp slt i32 %call82.2, 0
  br i1 %cmp83.2, label %for.body77.2.cleanup_crit_edge, label %if.end92.2, !prof !281

for.body77.2.cleanup_crit_edge:                   ; preds = %for.body77.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end92.2:                                       ; preds = %for.body77.2
  %arrayidx94.2 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 %j.1232.2
  %69 = ptrtoint ptr %arrayidx94.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx94.2, align 4
  %mul.i.2 = mul i32 %70, %call82.2
  %div.i.2 = sdiv i32 %mul.i.2, 256
  %arrayidx97.2 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 9, i32 2, i32 %j.1232.2
  %71 = ptrtoint ptr %arrayidx97.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %div.i.2, ptr %arrayidx97.2, align 4
  %inc99.2 = add nuw nsw i32 %j.1232.2, 1
  %72 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %num_adc, align 4
  %cmp75.2 = icmp slt i32 %inc99.2, %73
  br i1 %cmp75.2, label %if.end92.2.for.body77.2_crit_edge, label %if.end92.2.for.inc101.2_crit_edge

if.end92.2.for.inc101.2_crit_edge:                ; preds = %if.end92.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101.2

if.end92.2.for.body77.2_crit_edge:                ; preds = %if.end92.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body77.2

for.inc101.2:                                     ; preds = %if.end92.2.for.inc101.2_crit_edge, %for.cond73.preheader.2.for.inc101.2_crit_edge
  %groups104 = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 2
  %74 = ptrtoint ptr %groups104 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @max16065_basic_group, ptr %groups104, align 4
  br i1 %19, label %for.inc101.2.if.end114_crit_edge, label %for.inc101.2.if.then108_crit_edge

for.inc101.2.if.then108_crit_edge:                ; preds = %for.inc101.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then108

for.inc101.2.if.end114_crit_edge:                 ; preds = %for.inc101.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then108:                                       ; preds = %for.inc101.2.if.then108_crit_edge, %for.inc101.2.thread
  %groups104247 = phi ptr [ %groups104246, %for.inc101.2.thread ], [ %groups104, %for.inc101.2.if.then108_crit_edge ]
  %arrayidx113 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %secondary_is_max.0.off0, ptr %arrayidx113, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then108, %for.inc101.2.if.end114_crit_edge
  %groups104248 = phi ptr [ %groups104247, %if.then108 ], [ %groups104, %for.inc101.2.if.end114_crit_edge ]
  %groups.0 = phi i32 [ 2, %if.then108 ], [ 1, %for.inc101.2.if.end114_crit_edge ]
  %76 = ptrtoint ptr %have_current to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %have_current, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool116.not = icmp eq i8 %77, 0
  br i1 %tobool116.not, label %if.end114.if.end144_crit_edge, label %if.then117

if.end114.if.end144_crit_edge:                    ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then117:                                       ; preds = %if.end114
  %call118 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then117.cleanup_crit_edge, label %if.end128, !prof !281

if.then117.cleanup_crit_edge:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end128:                                        ; preds = %if.then117
  %and129 = and i32 %call118, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.else, label %if.then131

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %78 = lshr i32 %call118, 2
  %and133 = and i32 %78, 3
  %shl = shl nuw nsw i32 6, %and133
  %curr_gain = getelementptr inbounds %struct.max16065_data, ptr %call.i, i32 0, i32 8
  %79 = ptrtoint ptr %curr_gain to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %shl, ptr %curr_gain, align 4
  %shr134224 = lshr i32 %call118, 1
  %and135 = and i32 %shr134224, 1
  %arrayidx136 = getelementptr [2 x i32], ptr @max16065_csp_adc_range, i32 0, i32 %and135
  %80 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx136, align 4
  %arrayidx138 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 10, i32 12
  %82 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx138, align 4
  %arrayidx141 = getelementptr %struct.max16065_data, ptr %call.i, i32 0, i32 2, i32 %groups.0
  %83 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @max16065_current_group, ptr %arrayidx141, align 4
  br label %if.end144

if.else:                                          ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %have_current to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %have_current, align 4
  br label %if.end144

if.end144:                                        ; preds = %if.else, %if.then131, %if.end114.if.end144_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call147 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups104248) #6
  %cmp.i.i = icmp ugt ptr %call147, inttoptr (i32 -4096 to ptr)
  %85 = ptrtoint ptr %call147 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %85, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end144, %if.then117.cleanup_crit_edge, %for.body77.2.cleanup_crit_edge, %for.body77.1.cleanup_crit_edge, %for.body77.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end144 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call21, %if.then20.cleanup_crit_edge ], [ %call118, %if.then117.cleanup_crit_edge ], [ %call82.2, %for.body77.2.cleanup_crit_edge ], [ %call82.1, %for.body77.1.cleanup_crit_edge ], [ %call82, %for.body77.cleanup_crit_edge ], [ %call36, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max16065_basic_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %n) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %div = sdiv i32 %n, 4
  %num_adc = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %3)
  %cmp.not = icmp slt i32 %div, %3
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 10, i32 %div
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %7, %if.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max16065_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max16065_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !281

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx4 = getelementptr %struct.max16065_data, ptr %call, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %mul.i = mul i32 %5, %3
  %div.i = sdiv i32 %mul.i, 1024
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %div.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max16065_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %update_lock = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %last_updated = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end24_crit_edge

lor.lhs.false.if.end24_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %num_adc = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp254 = icmp sgt i32 %10, 0
  br i1 %cmp254, label %if.then.for.body_crit_edge, label %if.then.for.end_crit_edge

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %i.055 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then.for.body_crit_edge ]
  %i.0.tr = trunc i32 %i.055 to i8
  %conv.i = shl i8 %i.0.tr, 1
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #6
  %12 = lshr i16 %11, 6
  %13 = zext i16 %12 to i32
  %retval.0.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %13, !prof !281
  %arrayidx = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 11, i32 %i.055
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.055, 1
  %15 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_adc, align 4
  %cmp2 = icmp slt i32 %inc, %16
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  %have_current = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %have_current to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %have_current, align 4, !range !282
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4.not = icmp eq i8 %18, 0
  br i1 %tobool4.not, label %for.end.if.end_crit_edge, label %if.then5

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then5:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i50 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext 25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %cmp.i.i51 = icmp slt i32 %call.i.i50, 0
  %conv.i.i52 = trunc i32 %call.i.i50 to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i52) #6
  %20 = lshr i16 %19, 6
  %21 = zext i16 %20 to i32
  %retval.0.i53 = select i1 %cmp.i.i51, i32 %call.i.i50, i32 %21, !prof !281
  %arrayidx8 = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 11, i32 12
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i53, ptr %arrayidx8, align 4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #6
  %curr_sense = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 12
  %23 = ptrtoint ptr %curr_sense to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call9, ptr %curr_sense, align 4
  br label %if.end

if.end:                                           ; preds = %if.then5, %for.end.if.end_crit_edge
  %24 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_adc, align 4
  %sub1356 = add i32 %25, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub1356)
  %cmp1458 = icmp sgt i32 %sub1356, 7
  br i1 %cmp1458, label %if.end.for.body15_crit_edge, label %if.end.for.end21_crit_edge

if.end.for.end21_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

if.end.for.body15_crit_edge:                      ; preds = %if.end
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %if.end.for.body15_crit_edge
  %i.159 = phi i32 [ %inc20, %for.body15.for.body15_crit_edge ], [ 0, %if.end.for.body15_crit_edge ]
  %26 = trunc i32 %i.159 to i8
  %conv = add i8 %26, 27
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %conv) #6
  %arrayidx18 = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 13, i32 %i.159
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call17, ptr %arrayidx18, align 4
  %inc20 = add nuw nsw i32 %i.159, 1
  %28 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_adc, align 4
  %sub13 = add i32 %29, 7
  %div = sdiv i32 %sub13, 8
  %cmp14 = icmp slt i32 %inc20, %div
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.for.end21_crit_edge

for.body15.for.end21_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end21

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body15

for.end21:                                        ; preds = %for.body15.for.end21_crit_edge, %if.end.for.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %31 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %last_updated, align 4
  %valid23 = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %valid23 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %valid23, align 4
  br label %if.end24

if.end24:                                         ; preds = %for.end21, %lor.lhs.false.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 2
  %2 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %3 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %idxprom1 = zext i8 %5 to i32
  %arrayidx2 = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 9, i32 %idxprom, i32 %idxprom1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %7) #6
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !283
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !281

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 10, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %mul.i = shl i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i)
  %cmp.i = icmp slt i32 %mul.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp1.i = icmp sgt i32 %8, 0
  %cmp3.i = xor i1 %cmp.i, %cmp1.i
  %add.pn.v.v.i = select i1 %cmp3.i, i32 2, i32 -2
  %add.pn.v.i = sdiv i32 %8, %add.pn.v.v.i
  %add.pn.i = add i32 %add.pn.v.i, %mul.i
  %cond.i = sdiv i32 %add.pn.i, %8
  %9 = call i32 @llvm.smax.i32(i32 %cond.i, i32 0) #6
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 255) #6
  %update_lock = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %index, align 4
  %idxprom6 = zext i8 %12 to i32
  %arrayidx7 = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 10, i32 %idxprom6
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7, align 4
  %mul.i39 = mul i32 %14, %10
  %div.i = sdiv i32 %mul.i39, 256
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 2
  %15 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr, align 1
  %idxprom10 = zext i8 %16 to i32
  %arrayidx14 = getelementptr %struct.max16065_data, ptr %1, i32 0, i32 9, i32 %idxprom10, i32 %idxprom6
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div.i, ptr %arrayidx14, align 4
  %client = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %20 = load i8, ptr %nr, align 1
  %add = add i8 %20, 72
  %21 = load i8, ptr %index, align 4
  %mul = mul i8 %21, 3
  %add18 = add i8 %add, %mul
  %conv20 = trunc i32 %10 to i8
  %call21 = call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext %add18, i8 noundef zeroext %conv20) #6
  call void @mutex_unlock(ptr noundef %update_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max16065_update_device(ptr noundef %dev)
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 2
  %0 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.max16065_data, ptr %call, i32 0, i32 13, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp slt i32 %3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %conv = zext i8 %5 to i32
  %shl = shl nuw i32 1, %conv
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then1, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %client = getelementptr inbounds %struct.max16065_data, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %add = add i8 %1, 27
  %conv5 = trunc i32 %and to i8
  %call6 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %add, i8 noundef zeroext %conv5) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then1, %if.end.if.end7_crit_edge
  %lnot.ext = zext i1 %tobool to i32
  %call10 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %lnot.ext) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ %3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max16065_secondary_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %a, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %num_adc = getelementptr inbounds %struct.max16065_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %num_adc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_adc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %index)
  %cmp.not = icmp sgt i32 %3, %index
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %mode = getelementptr inbounds %struct.attribute, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max16065_current_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max16065_update_device(ptr noundef %dev)
  %curr_sense = getelementptr inbounds %struct.max16065_data, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %curr_sense to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr_sense, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !281

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %curr_gain = getelementptr inbounds %struct.max16065_data, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %curr_gain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %curr_gain, align 4
  %mul.i = mul i32 %1, 1400000
  %mul1.i = mul i32 %3, 255
  %div.i = sdiv i32 %mul.i, %mul1.i
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %div.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !32, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243, !245, !246, !248, !249, !251, !252, !254, !255, !257, !259, !261, !263, !264, !266, !267, !269, !270}
!llvm.module.flags = !{!272, !273, !274, !275, !276, !277, !278, !279}
!llvm.ident = !{!280}

!0 = !{ptr @__initcall__kmod_max16065__292_607_max16065_driver_init6, !1, !"__initcall__kmod_max16065__292_607_max16065_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max16065.c", i32 607, i32 1}
!2 = !{ptr @__exitcall_max16065_driver_exit, !1, !"__exitcall_max16065_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author293, !4, !"__UNIQUE_ID_author293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max16065.c", i32 609, i32 1}
!5 = !{ptr @__UNIQUE_ID_description294, !6, !"__UNIQUE_ID_description294", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max16065.c", i32 610, i32 1}
!7 = !{ptr @__UNIQUE_ID_file295, !8, !"__UNIQUE_ID_file295", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max16065.c", i32 611, i32 1}
!9 = !{ptr @__UNIQUE_ID_license296, !8, !"__UNIQUE_ID_license296", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max16065.c", i32 601, i32 11}
!12 = !{ptr @max16065_driver, !13, !"max16065_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max16065.c", i32 599, i32 26}
!14 = !{ptr @max16065_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max16065.c", i32 519, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max16065_num_adc, !18, !"max16065_num_adc", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max16065.c", i32 54, i32 18}
!19 = distinct !{null, !20, !"max16065_have_current", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max16065.c", i32 72, i32 19}
!21 = distinct !{null, !22, !"max16065_have_secondary", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max16065.c", i32 63, i32 19}
!23 = !{ptr @max16065_adc_range, !24, !"max16065_adc_range", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/max16065.c", i32 99, i32 18}
!25 = !{ptr @max16065_basic_group, !26, !"max16065_basic_group", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max16065.c", i32 477, i32 37}
!27 = !{ptr @max16065_basic_attributes, !28, !"max16065_basic_attributes", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/max16065.c", i32 351, i32 26}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/max16065.c", i32 259, i32 8}
!31 = !{ptr @sensor_dev_attr_in0_input, !30, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/max16065.c", i32 203, i32 25}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/max16065.c", i32 274, i32 8}
!36 = !{ptr @sensor_dev_attr_in0_lcrit, !35, !"sensor_dev_attr_in0_lcrit", i1 false, i1 false}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/max16065.c", i32 288, i32 8}
!39 = !{ptr @sensor_dev_attr_in0_crit, !38, !"sensor_dev_attr_in0_crit", i1 false, i1 false}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/max16065.c", i32 330, i32 8}
!42 = !{ptr @sensor_dev_attr_in0_alarm, !41, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!43 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/max16065.c", i32 260, i32 8}
!45 = !{ptr @sensor_dev_attr_in1_input, !44, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!46 = !{ptr @.str.8, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/max16065.c", i32 275, i32 8}
!48 = !{ptr @sensor_dev_attr_in1_lcrit, !47, !"sensor_dev_attr_in1_lcrit", i1 false, i1 false}
!49 = !{ptr @.str.9, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/max16065.c", i32 289, i32 8}
!51 = !{ptr @sensor_dev_attr_in1_crit, !50, !"sensor_dev_attr_in1_crit", i1 false, i1 false}
!52 = !{ptr @.str.10, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/max16065.c", i32 331, i32 8}
!54 = !{ptr @sensor_dev_attr_in1_alarm, !53, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!55 = !{ptr @.str.11, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/max16065.c", i32 261, i32 8}
!57 = !{ptr @sensor_dev_attr_in2_input, !56, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!58 = !{ptr @.str.12, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/max16065.c", i32 276, i32 8}
!60 = !{ptr @sensor_dev_attr_in2_lcrit, !59, !"sensor_dev_attr_in2_lcrit", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/max16065.c", i32 290, i32 8}
!63 = !{ptr @sensor_dev_attr_in2_crit, !62, !"sensor_dev_attr_in2_crit", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/max16065.c", i32 332, i32 8}
!66 = !{ptr @sensor_dev_attr_in2_alarm, !65, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/max16065.c", i32 262, i32 8}
!69 = !{ptr @sensor_dev_attr_in3_input, !68, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/max16065.c", i32 277, i32 8}
!72 = !{ptr @sensor_dev_attr_in3_lcrit, !71, !"sensor_dev_attr_in3_lcrit", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/max16065.c", i32 291, i32 8}
!75 = !{ptr @sensor_dev_attr_in3_crit, !74, !"sensor_dev_attr_in3_crit", i1 false, i1 false}
!76 = !{ptr @.str.18, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/max16065.c", i32 333, i32 8}
!78 = !{ptr @sensor_dev_attr_in3_alarm, !77, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!79 = !{ptr @.str.19, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/max16065.c", i32 263, i32 8}
!81 = !{ptr @sensor_dev_attr_in4_input, !80, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/max16065.c", i32 278, i32 8}
!84 = !{ptr @sensor_dev_attr_in4_lcrit, !83, !"sensor_dev_attr_in4_lcrit", i1 false, i1 false}
!85 = !{ptr @.str.21, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/max16065.c", i32 292, i32 8}
!87 = !{ptr @sensor_dev_attr_in4_crit, !86, !"sensor_dev_attr_in4_crit", i1 false, i1 false}
!88 = !{ptr @.str.22, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/max16065.c", i32 334, i32 8}
!90 = !{ptr @sensor_dev_attr_in4_alarm, !89, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/max16065.c", i32 264, i32 8}
!93 = !{ptr @sensor_dev_attr_in5_input, !92, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/max16065.c", i32 279, i32 8}
!96 = !{ptr @sensor_dev_attr_in5_lcrit, !95, !"sensor_dev_attr_in5_lcrit", i1 false, i1 false}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/max16065.c", i32 293, i32 8}
!99 = !{ptr @sensor_dev_attr_in5_crit, !98, !"sensor_dev_attr_in5_crit", i1 false, i1 false}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/max16065.c", i32 335, i32 8}
!102 = !{ptr @sensor_dev_attr_in5_alarm, !101, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/max16065.c", i32 265, i32 8}
!105 = !{ptr @sensor_dev_attr_in6_input, !104, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/max16065.c", i32 280, i32 8}
!108 = !{ptr @sensor_dev_attr_in6_lcrit, !107, !"sensor_dev_attr_in6_lcrit", i1 false, i1 false}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/max16065.c", i32 294, i32 8}
!111 = !{ptr @sensor_dev_attr_in6_crit, !110, !"sensor_dev_attr_in6_crit", i1 false, i1 false}
!112 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/max16065.c", i32 336, i32 8}
!114 = !{ptr @sensor_dev_attr_in6_alarm, !113, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/max16065.c", i32 266, i32 8}
!117 = !{ptr @sensor_dev_attr_in7_input, !116, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!118 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/max16065.c", i32 281, i32 8}
!120 = !{ptr @sensor_dev_attr_in7_lcrit, !119, !"sensor_dev_attr_in7_lcrit", i1 false, i1 false}
!121 = !{ptr @.str.33, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/max16065.c", i32 295, i32 8}
!123 = !{ptr @sensor_dev_attr_in7_crit, !122, !"sensor_dev_attr_in7_crit", i1 false, i1 false}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/max16065.c", i32 337, i32 8}
!126 = !{ptr @sensor_dev_attr_in7_alarm, !125, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/max16065.c", i32 267, i32 8}
!129 = !{ptr @sensor_dev_attr_in8_input, !128, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!130 = !{ptr @.str.36, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/max16065.c", i32 282, i32 8}
!132 = !{ptr @sensor_dev_attr_in8_lcrit, !131, !"sensor_dev_attr_in8_lcrit", i1 false, i1 false}
!133 = !{ptr @.str.37, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/max16065.c", i32 296, i32 8}
!135 = !{ptr @sensor_dev_attr_in8_crit, !134, !"sensor_dev_attr_in8_crit", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/max16065.c", i32 338, i32 8}
!138 = !{ptr @sensor_dev_attr_in8_alarm, !137, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/max16065.c", i32 268, i32 8}
!141 = !{ptr @sensor_dev_attr_in9_input, !140, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!142 = !{ptr @.str.40, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/max16065.c", i32 283, i32 8}
!144 = !{ptr @sensor_dev_attr_in9_lcrit, !143, !"sensor_dev_attr_in9_lcrit", i1 false, i1 false}
!145 = !{ptr @.str.41, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/max16065.c", i32 297, i32 8}
!147 = !{ptr @sensor_dev_attr_in9_crit, !146, !"sensor_dev_attr_in9_crit", i1 false, i1 false}
!148 = !{ptr @.str.42, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/max16065.c", i32 339, i32 8}
!150 = !{ptr @sensor_dev_attr_in9_alarm, !149, !"sensor_dev_attr_in9_alarm", i1 false, i1 false}
!151 = !{ptr @.str.43, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/max16065.c", i32 269, i32 8}
!153 = !{ptr @sensor_dev_attr_in10_input, !152, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!154 = !{ptr @.str.44, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/max16065.c", i32 284, i32 8}
!156 = !{ptr @sensor_dev_attr_in10_lcrit, !155, !"sensor_dev_attr_in10_lcrit", i1 false, i1 false}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/max16065.c", i32 298, i32 8}
!159 = !{ptr @sensor_dev_attr_in10_crit, !158, !"sensor_dev_attr_in10_crit", i1 false, i1 false}
!160 = !{ptr @.str.46, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/max16065.c", i32 340, i32 8}
!162 = !{ptr @sensor_dev_attr_in10_alarm, !161, !"sensor_dev_attr_in10_alarm", i1 false, i1 false}
!163 = !{ptr @.str.47, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/max16065.c", i32 270, i32 8}
!165 = !{ptr @sensor_dev_attr_in11_input, !164, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!166 = !{ptr @.str.48, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/max16065.c", i32 285, i32 8}
!168 = !{ptr @sensor_dev_attr_in11_lcrit, !167, !"sensor_dev_attr_in11_lcrit", i1 false, i1 false}
!169 = !{ptr @.str.49, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/max16065.c", i32 299, i32 8}
!171 = !{ptr @sensor_dev_attr_in11_crit, !170, !"sensor_dev_attr_in11_crit", i1 false, i1 false}
!172 = !{ptr @.str.50, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/max16065.c", i32 341, i32 8}
!174 = !{ptr @sensor_dev_attr_in11_alarm, !173, !"sensor_dev_attr_in11_alarm", i1 false, i1 false}
!175 = !{ptr @max16065_max_group, !176, !"max16065_max_group", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/max16065.c", i32 491, i32 37}
!177 = !{ptr @max16065_max_attributes, !178, !"max16065_max_attributes", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/max16065.c", i32 438, i32 26}
!179 = !{ptr @.str.51, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/max16065.c", i32 316, i32 8}
!181 = !{ptr @sensor_dev_attr_in0_max, !180, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!182 = !{ptr @.str.52, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/max16065.c", i32 317, i32 8}
!184 = !{ptr @sensor_dev_attr_in1_max, !183, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!185 = !{ptr @.str.53, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/max16065.c", i32 318, i32 8}
!187 = !{ptr @sensor_dev_attr_in2_max, !186, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!188 = !{ptr @.str.54, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/max16065.c", i32 319, i32 8}
!190 = !{ptr @sensor_dev_attr_in3_max, !189, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!191 = !{ptr @.str.55, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/max16065.c", i32 320, i32 8}
!193 = !{ptr @sensor_dev_attr_in4_max, !192, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!194 = !{ptr @.str.56, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/max16065.c", i32 321, i32 8}
!196 = !{ptr @sensor_dev_attr_in5_max, !195, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!197 = !{ptr @.str.57, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/max16065.c", i32 322, i32 8}
!199 = !{ptr @sensor_dev_attr_in6_max, !198, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!200 = !{ptr @.str.58, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/max16065.c", i32 323, i32 8}
!202 = !{ptr @sensor_dev_attr_in7_max, !201, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!203 = !{ptr @.str.59, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/max16065.c", i32 324, i32 8}
!205 = !{ptr @sensor_dev_attr_in8_max, !204, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!206 = !{ptr @.str.60, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/max16065.c", i32 325, i32 8}
!208 = !{ptr @sensor_dev_attr_in9_max, !207, !"sensor_dev_attr_in9_max", i1 false, i1 false}
!209 = !{ptr @.str.61, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/max16065.c", i32 326, i32 8}
!211 = !{ptr @sensor_dev_attr_in10_max, !210, !"sensor_dev_attr_in10_max", i1 false, i1 false}
!212 = !{ptr @.str.62, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/max16065.c", i32 327, i32 8}
!214 = !{ptr @sensor_dev_attr_in11_max, !213, !"sensor_dev_attr_in11_max", i1 false, i1 false}
!215 = !{ptr @max16065_min_group, !216, !"max16065_min_group", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/max16065.c", i32 486, i32 37}
!217 = !{ptr @max16065_min_attributes, !218, !"max16065_min_attributes", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/max16065.c", i32 422, i32 26}
!219 = !{ptr @.str.63, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/max16065.c", i32 302, i32 8}
!221 = !{ptr @sensor_dev_attr_in0_min, !220, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!222 = !{ptr @.str.64, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/max16065.c", i32 303, i32 8}
!224 = !{ptr @sensor_dev_attr_in1_min, !223, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!225 = !{ptr @.str.65, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/max16065.c", i32 304, i32 8}
!227 = !{ptr @sensor_dev_attr_in2_min, !226, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!228 = !{ptr @.str.66, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/max16065.c", i32 305, i32 8}
!230 = !{ptr @sensor_dev_attr_in3_min, !229, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!231 = !{ptr @.str.67, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/max16065.c", i32 306, i32 8}
!233 = !{ptr @sensor_dev_attr_in4_min, !232, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!234 = !{ptr @.str.68, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/max16065.c", i32 307, i32 8}
!236 = !{ptr @sensor_dev_attr_in5_min, !235, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!237 = !{ptr @.str.69, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/max16065.c", i32 308, i32 8}
!239 = !{ptr @sensor_dev_attr_in6_min, !238, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!240 = !{ptr @.str.70, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/max16065.c", i32 309, i32 8}
!242 = !{ptr @sensor_dev_attr_in7_min, !241, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!243 = !{ptr @.str.71, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/max16065.c", i32 310, i32 8}
!245 = !{ptr @sensor_dev_attr_in8_min, !244, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!246 = !{ptr @.str.72, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/hwmon/max16065.c", i32 311, i32 8}
!248 = !{ptr @sensor_dev_attr_in9_min, !247, !"sensor_dev_attr_in9_min", i1 false, i1 false}
!249 = !{ptr @.str.73, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/max16065.c", i32 312, i32 8}
!251 = !{ptr @sensor_dev_attr_in10_min, !250, !"sensor_dev_attr_in10_min", i1 false, i1 false}
!252 = !{ptr @.str.74, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/max16065.c", i32 313, i32 8}
!254 = !{ptr @sensor_dev_attr_in11_min, !253, !"sensor_dev_attr_in11_min", i1 false, i1 false}
!255 = !{ptr @max16065_csp_adc_range, !256, !"max16065_csp_adc_range", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/max16065.c", i32 100, i32 18}
!257 = !{ptr @max16065_current_group, !258, !"max16065_current_group", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/max16065.c", i32 482, i32 37}
!259 = !{ptr @max16065_current_attributes, !260, !"max16065_current_attributes", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/max16065.c", i32 415, i32 26}
!261 = !{ptr @.str.75, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/max16065.c", i32 271, i32 8}
!263 = !{ptr @sensor_dev_attr_in12_input, !262, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!264 = !{ptr @.str.76, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/hwmon/max16065.c", i32 344, i32 8}
!266 = !{ptr @sensor_dev_attr_curr1_input, !265, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!267 = !{ptr @.str.77, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/max16065.c", i32 345, i32 8}
!269 = !{ptr @sensor_dev_attr_curr1_alarm, !268, !"sensor_dev_attr_curr1_alarm", i1 false, i1 false}
!270 = !{ptr @max16065_id, !271, !"max16065_id", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/max16065.c", i32 586, i32 35}
!272 = !{i32 1, !"wchar_size", i32 2}
!273 = !{i32 1, !"min_enum_size", i32 4}
!274 = !{i32 8, !"branch-target-enforcement", i32 0}
!275 = !{i32 8, !"sign-return-address", i32 0}
!276 = !{i32 8, !"sign-return-address-all", i32 0}
!277 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!278 = !{i32 7, !"uwtable", i32 1}
!279 = !{i32 7, !"frame-pointer", i32 2}
!280 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!281 = !{!"branch_weights", i32 1, i32 2000}
!282 = !{i8 0, i8 2}
!283 = !{!"auto-init"}
