; ModuleID = '/llk/IR_all_yes/drivers/hwmon/amc6821.c_pt.bc'
source_filename = "../drivers/hwmon/amc6821.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
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
%struct.amc6821_data = type { ptr, %struct.mutex, i8, i32, [8 x i32], [3 x i16], i8, i8, [3 x i8], [3 x i8], [3 x i8], i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_pwminv = internal constant [15 x i8] c"amc6821.pwminv\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@pwminv = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_pwminv = internal constant %struct.kernel_param { ptr @__param_str_pwminv, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @pwminv } }, section "__param", align 4
@__UNIQUE_ID_pwminvtype288 = internal constant [28 x i8] c"amc6821.parmtype=pwminv:int\00", section ".modinfo", align 1
@__param_str_init = internal constant [13 x i8] c"amc6821.init\00", align 1
@init = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.76 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype289 = internal constant [26 x i8] c"amc6821.parmtype=init:int\00", section ".modinfo", align 1
@__initcall__kmod_amc6821__338_948_amc6821_driver_init6 = internal global ptr @amc6821_driver_init, section ".initcall6.init", align 4
@amc6821_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @amc6821_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @amc6821_id, ptr @amc6821_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_amc6821_driver_exit = internal global ptr @amc6821_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file339 = internal constant [35 x i8] c"amc6821.file=drivers/hwmon/amc6821\00", section ".modinfo", align 1
@__UNIQUE_ID_license340 = internal constant [20 x i8] c"amc6821.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author341 = internal constant [57 x i8] c"amc6821.author=T. Mertelj <tomaz.mertelj@guest.arnes.si>\00", section ".modinfo", align 1
@__UNIQUE_ID_description342 = internal constant [59 x i8] c"amc6821.description=Texas Instruments amc6821 hwmon driver\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"amc6821\00", [24 x i8] zeroinitializer }, align 32
@amc6821_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"amc6821\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 24, i16 25, i16 26, i16 44, i16 45, i16 46, i16 76, i16 77, i16 78, i16 -2], [44 x i8] zeroinitializer }, align 32
@amc6821_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@amc6821_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @amc6821_group, ptr null], [24 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 827, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Error reading configuration register, aborting.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"amc6821_init_client\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/amc6821.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr = internal global ptr @amc6821_init_client._entry, section ".printk_index", align 4
@amc6821_init_client._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 836, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Configuration register write error, aborting.\0A\00", [49 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.9 = internal global ptr @amc6821_init_client._entry.7, section ".printk_index", align 4
@amc6821_init_client._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 844, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.11 = internal global ptr @amc6821_init_client._entry.10, section ".printk_index", align 4
@amc6821_init_client._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 848, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Revision %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.15 = internal global ptr @amc6821_init_client._entry.12, section ".printk_index", align 4
@amc6821_init_client._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 855, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.17 = internal global ptr @amc6821_init_client._entry.16, section ".printk_index", align 4
@amc6821_init_client._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 863, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.19 = internal global ptr @amc6821_init_client._entry.18, section ".printk_index", align 4
@amc6821_init_client._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.21 = internal global ptr @amc6821_init_client._entry.20, section ".printk_index", align 4
@amc6821_init_client._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 881, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.23 = internal global ptr @amc6821_init_client._entry.22, section ".printk_index", align 4
@amc6821_init_client._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 896, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@amc6821_init_client._entry_ptr.25 = internal global ptr @amc6821_init_client._entry.24, section ".printk_index", align 4
@amc6821_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @amc6821_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@amc6821_attrs = internal global { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp1_auto_point3_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point3_temp, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp2_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_show, ptr @fan_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan1_div_show, ptr @fan1_div_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_show, ptr @pwm1_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_enable_show, ptr @pwm1_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_temp = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_auto_channels_temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_auto_point_pwm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_auto_point_pwm_show, ptr @pwm1_auto_point_pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point3_pwm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm1_auto_point_pwm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr @temp_auto_point_temp_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr @temp_auto_point_temp_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr @temp_auto_point_temp_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr @temp_auto_point_temp_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point3_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_auto_point_temp_show, ptr @temp_auto_point_temp_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@temp_reg = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\15\14\1B\0B\19\18\1D", [24 x i8] zeroinitializer }, align 32
@fan_reg_low = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\08\10\12", [29 x i8] zeroinitializer }, align 32
@fan_reg_hi = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\09\11\13", [29 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@temp_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.4, i32 292, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Register write error, aborting.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp_store\00", [21 x i8] zeroinitializer }, align 32
@temp_store._entry_ptr = internal global ptr @temp_store._entry, section ".printk_index", align 4
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@temp_alarm_show.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.4, ptr @.str.35, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp_alarm_show\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unknown attr->index (%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@fan_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.50, ptr @.str.4, i32 628, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan_store\00", [22 x i8] zeroinitializer }, align 32
@fan_store._entry_ptr = internal global ptr @fan_store._entry, section ".printk_index", align 4
@fan_store._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.50, ptr @.str.4, i32 634, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fan_store._entry_ptr.52 = internal global ptr @fan_store._entry.51, section ".printk_index", align 4
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_max\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@fan1_div_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.56, ptr @.str.4, i32 664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fan1_div_store\00", [17 x i8] zeroinitializer }, align 32
@fan1_div_store._entry_ptr = internal global ptr @fan1_div_store._entry, section ".printk_index", align 4
@fan1_div_store._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.56, ptr @.str.4, i32 683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@fan1_div_store._entry_ptr.58 = internal global ptr @fan1_div_store._entry.57, section ".printk_index", align 4
@.str.59 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@pwm1_enable_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.61, ptr @.str.4, i32 392, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pwm1_enable_store\00", [46 x i8] zeroinitializer }, align 32
@pwm1_enable_store._entry_ptr = internal global ptr @pwm1_enable_store._entry, section ".printk_index", align 4
@pwm1_enable_store._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.61, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@pwm1_enable_store._entry_ptr.63 = internal global ptr @pwm1_enable_store._entry.62, section ".printk_index", align 4
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@pwm1_auto_point_pwm_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.67, ptr @.str.4, i32 570, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pwm1_auto_point_pwm_store\00", [38 x i8] zeroinitializer }, align 32
@pwm1_auto_point_pwm_store._entry_ptr = internal global ptr @pwm1_auto_point_pwm_store._entry, section ".printk_index", align 4
@set_slope_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.68, ptr @.str.4, i32 477, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"set_slope_register\00", [45 x i8] zeroinitializer }, align 32
@set_slope_register._entry_ptr = internal global ptr @set_slope_register._entry, section ".printk_index", align 4
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point3_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@temp_auto_point_temp_show.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.71, ptr @.str.4, ptr @.str.72, i8 0, i8 111, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"temp_auto_point_temp_show\00", [38 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unknown attr->nr (%d).\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@temp_auto_point_temp_store.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.72, i8 0, i8 127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"temp_auto_point_temp_store\00", [37 x i8] zeroinitializer }, align 32
@temp_auto_point_temp_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.74, ptr @.str.4, i32 528, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@temp_auto_point_temp_store._entry_ptr = internal global ptr @temp_auto_point_temp_store._entry, section ".printk_index", align 4
@temp_auto_point_temp_store.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.4, ptr @.str.35, i8 0, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point3_temp\00", [41 x i8] zeroinitializer }, align 32
@amc6821_detect.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.80, i8 0, i8 -61, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"amc6821_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"amc6821_detect called.\0A\00", [40 x i8] zeroinitializer }, align 32
@amc6821_detect.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.81, i8 0, i8 -60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"amc6821: I2C bus doesn't support byte mode, skipping.\0A\00", [41 x i8] zeroinitializer }, align 32
@amc6821_detect.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.82, i8 0, i8 -58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"amc6821: detection failed at 0x%02x.\0A\00", [58 x i8] zeroinitializer }, align 32
@amc6821_detect.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.4, ptr @.str.82, i8 0, i8 -55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@amc6821_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.79, ptr @.str.4, i32 811, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"amc6821: chip found at 0x%02x.\0A\00", [32 x i8] zeroinitializer }, align 32
@amc6821_detect._entry_ptr = internal global ptr @amc6821_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"pwminv\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 33, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 36, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"amc6821_driver\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 937, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 940, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant [11 x i8] c"amc6821_id\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 930, i32 35 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 26, i32 29 }
@___asan_gen_.107 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 915, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"amc6821_groups\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 826, i32 5 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 835, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 843, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 848, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 854, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 862, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 872, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 880, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 895, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant [14 x i8] c"amc6821_group\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 769, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant [14 x i8] c"amc6821_attrs\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 733, i32 26 }
@___asan_gen_.173 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_max\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_fault\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_temp\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point3_pwm\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_temp\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point2_temp\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point3_temp\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point1_temp\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point2_temp\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point3_temp\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 691, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 273, i32 22 }
@___asan_gen_.275 = private unnamed_addr constant [9 x i8] c"temp_reg\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 116, i32 17 }
@___asan_gen_.278 = private unnamed_addr constant [12 x i8] c"fan_reg_low\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 128, i32 17 }
@___asan_gen_.281 = private unnamed_addr constant [11 x i8] c"fan_reg_hi\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 133, i32 17 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 692, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 292, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 693, i32 8 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 694, i32 8 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 695, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 326, i32 3 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 696, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 697, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 698, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 699, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 700, i32 8 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 701, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 703, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 704, i32 8 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 705, i32 8 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 702, i32 8 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 706, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 707, i32 8 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 628, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 634, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 708, i32 8 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 709, i32 8 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 710, i32 8 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 663, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 682, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 712, i32 8 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 713, i32 8 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 391, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 415, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 717, i32 8 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 714, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 715, i32 8 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 570, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 477, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 716, i32 8 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 719, i32 8 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 447, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 721, i32 8 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 509, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 527, i32 5 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 723, i32 8 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 726, i32 8 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 728, i32 8 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 730, i32 8 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 780, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 783, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 792, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.458 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.459 = private constant [27 x i8] c"../drivers/hwmon/amc6821.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 811, i32 2 }
@llvm.compiler.used = appending global [155 x ptr] [ptr @__UNIQUE_ID_author341, ptr @__UNIQUE_ID_description342, ptr @__UNIQUE_ID_file339, ptr @__UNIQUE_ID_inittype289, ptr @__UNIQUE_ID_license340, ptr @__UNIQUE_ID_pwminvtype288, ptr @__exitcall_amc6821_driver_exit, ptr @__initcall__kmod_amc6821__338_948_amc6821_driver_init6, ptr @__param_init, ptr @__param_pwminv, ptr @amc6821_detect._entry, ptr @amc6821_detect._entry_ptr, ptr @amc6821_driver_exit, ptr @amc6821_init_client._entry, ptr @amc6821_init_client._entry.10, ptr @amc6821_init_client._entry.12, ptr @amc6821_init_client._entry.16, ptr @amc6821_init_client._entry.18, ptr @amc6821_init_client._entry.20, ptr @amc6821_init_client._entry.22, ptr @amc6821_init_client._entry.24, ptr @amc6821_init_client._entry.7, ptr @amc6821_init_client._entry_ptr, ptr @amc6821_init_client._entry_ptr.11, ptr @amc6821_init_client._entry_ptr.15, ptr @amc6821_init_client._entry_ptr.17, ptr @amc6821_init_client._entry_ptr.19, ptr @amc6821_init_client._entry_ptr.21, ptr @amc6821_init_client._entry_ptr.23, ptr @amc6821_init_client._entry_ptr.25, ptr @amc6821_init_client._entry_ptr.9, ptr @fan1_div_store._entry, ptr @fan1_div_store._entry.57, ptr @fan1_div_store._entry_ptr, ptr @fan1_div_store._entry_ptr.58, ptr @fan_store._entry, ptr @fan_store._entry.51, ptr @fan_store._entry_ptr, ptr @fan_store._entry_ptr.52, ptr @pwm1_auto_point_pwm_store._entry, ptr @pwm1_auto_point_pwm_store._entry_ptr, ptr @pwm1_enable_store._entry, ptr @pwm1_enable_store._entry.62, ptr @pwm1_enable_store._entry_ptr, ptr @pwm1_enable_store._entry_ptr.63, ptr @set_slope_register._entry, ptr @set_slope_register._entry_ptr, ptr @temp_auto_point_temp_store._entry, ptr @temp_auto_point_temp_store._entry_ptr, ptr @temp_store._entry, ptr @temp_store._entry_ptr, ptr @pwminv, ptr @init, ptr @amc6821_driver, ptr @.str, ptr @amc6821_id, ptr @normal_i2c, ptr @amc6821_probe.__key, ptr @.str.1, ptr @amc6821_groups, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.13, ptr @.str.14, ptr @amc6821_group, ptr @amc6821_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_auto_point3_pwm, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp1_auto_point3_temp, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp2_auto_point3_temp, ptr @.str.26, ptr @.str.27, ptr @temp_reg, ptr @fan_reg_low, ptr @fan_reg_hi, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83], section "llvm.metadata"
@0 = internal global [124 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwminv to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_init_client._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_attrs to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point3_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point3_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_reg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_reg_low to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_reg_hi to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan_store._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan1_div_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan1_div_store._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_enable_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_enable_store._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm1_auto_point_pwm_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_slope_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp_auto_point_temp_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amc6821_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @amc6821_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @amc6821_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @amc6821_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @amc6821_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amc6821_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 160, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @amc6821_probe.__key) #8
  %1 = load i32, ptr @init, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end6_crit_edge, label %if.then.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  %call.i20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %cmp.i = icmp slt i32 %call.i20, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i
  %2 = trunc i32 %call.i20 to i8
  %conv.i = or i8 %2, -128
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end9.i, label %do.end7.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end9.i:                                        ; preds = %if.end.i
  %call10.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %do.end16.i, label %do.end21.i

do.end16.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

do.end21.i:                                       ; preds = %if.end9.i
  %and.i = and i32 %call10.i, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %and.i) #11
  %3 = trunc i32 %call10.i to i8
  %conv24.i = and i8 %3, 127
  %call25.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 63, i8 noundef zeroext %conv24.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end32.i, label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end32.i:                                       ; preds = %do.end21.i
  %call33.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %cmp34.i = icmp slt i32 %call33.i, 0
  br i1 %cmp34.i, label %do.end39.i, label %if.end41.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end41.i:                                       ; preds = %if.end32.i
  %4 = trunc i32 %call33.i to i8
  %conv45.i = and i8 %4, -57
  %call46.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext %conv45.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end53.i, label %do.end51.i

do.end51.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end53.i:                                       ; preds = %if.end41.i
  %call54.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %cmp55.i = icmp slt i32 %call54.i, 0
  br i1 %cmp55.i, label %do.end60.i, label %if.end62.i

do.end60.i:                                       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end62.i:                                       ; preds = %if.end53.i
  %5 = load i32, ptr @pwminv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool66.not.i = icmp eq i32 %5, 0
  %and64.i = and i32 %call54.i, 114
  %config.0.v.i = select i1 %tobool66.not.i, i32 1, i32 9
  %config.0.i = or i32 %config.0.v.i, %and64.i
  %conv71.i = trunc i32 %config.0.i to i8
  %call72.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 0, i8 noundef zeroext %conv71.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end62.i.if.end6_crit_edge, label %do.end77.i

if.end62.i.if.end6_crit_edge:                     ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

do.end77.i:                                       ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end6:                                          ; preds = %if.end62.i.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call7 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @amc6821_groups) #8
  %cmp.i.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %6 = ptrtoint ptr %call7 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %6, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end77.i, %do.end60.i, %do.end51.i, %do.end39.i, %do.end30.i, %do.end16.i, %do.end7.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end6 ], [ -12, %entry.cleanup_crit_edge ], [ -5, %do.end.i ], [ -5, %do.end7.i ], [ -5, %do.end16.i ], [ -5, %do.end30.i ], [ -5, %do.end39.i ], [ -5, %do.end51.i ], [ -5, %do.end60.i ], [ -5, %do.end77.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @amc6821_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr, align 2
  %conv = zext i16 %3 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amc6821_detect.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amc6821_detect, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !256

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amc6821_detect.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.80) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end27, label %do.body8

do.body8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amc6821_detect.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amc6821_detect, %cleanup)) #8
          to label %if.then22 [label %cleanup], !srcloc !256

if.then22:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amc6821_detect.__UNIQUE_ID_ddebug335, ptr noundef %dev23, ptr noundef nonnull @.str.81) #8
  br label %cleanup

if.end27:                                         ; preds = %do.end
  %call28 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #8
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call28)
  %cmp.not = icmp eq i32 %call28, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %call29)
  %cmp31.not = icmp eq i32 %call29, 73
  %or.cond = select i1 %cmp.not, i1 %cmp31.not, i1 false
  br i1 %or.cond, label %if.end53, label %do.body34

do.body34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amc6821_detect.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amc6821_detect, %cleanup)) #8
          to label %if.then48 [label %cleanup], !srcloc !256

if.then48:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #10
  %dev49 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amc6821_detect.__UNIQUE_ID_ddebug336, ptr noundef %dev49, ptr noundef nonnull @.str.82, i32 noundef %conv) #8
  br label %cleanup

if.end53:                                         ; preds = %if.end27
  %call54 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -67) #8
  %call55 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -66) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %call54)
  %cmp56.not = icmp eq i32 %call54, 33
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %call55)
  %cmp59.not = icmp eq i32 %call55, 73
  %or.cond104 = select i1 %cmp56.not, i1 %cmp59.not, i1 false
  br i1 %or.cond104, label %do.end84, label %do.body62

do.body62:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @amc6821_detect.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@amc6821_detect, %cleanup)) #8
          to label %if.then76 [label %cleanup], !srcloc !256

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  %dev77 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @amc6821_detect.__UNIQUE_ID_ddebug337, ptr noundef %dev77, ptr noundef nonnull @.str.82, i32 noundef %conv) #8
  br label %cleanup

do.end84:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %dev85 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev85, ptr noundef nonnull @.str.83, i32 noundef %conv) #11
  %call86 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end84, %if.then76, %do.body62, %if.then48, %do.body34, %if.then22, %do.body8
  %retval.0 = phi i32 [ 0, %do.end84 ], [ -19, %if.then22 ], [ -19, %if.then48 ], [ -19, %if.then76 ], [ -19, %do.body8 ], [ -19, %do.body34 ], [ -19, %do.body62 ]
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
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %3, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @amc6821_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 3
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
  %valid = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !257
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
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 10) #8
  %sext = shl i32 %call3, 24
  %conv4 = ashr exact i32 %sext, 24
  %arrayidx5 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 0
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv4, ptr %arrayidx5, align 4
  %call3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 21) #8
  %sext.1 = shl i32 %call3.1, 24
  %conv4.1 = ashr exact i32 %sext.1, 24
  %arrayidx5.1 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %arrayidx5.1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %conv4.1, ptr %arrayidx5.1, align 4
  %call3.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #8
  %sext.2 = shl i32 %call3.2, 24
  %conv4.2 = ashr exact i32 %sext.2, 24
  %arrayidx5.2 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 2
  %11 = ptrtoint ptr %arrayidx5.2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv4.2, ptr %arrayidx5.2, align 4
  %call3.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 27) #8
  %sext.3 = shl i32 %call3.3, 24
  %conv4.3 = ashr exact i32 %sext.3, 24
  %arrayidx5.3 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %arrayidx5.3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv4.3, ptr %arrayidx5.3, align 4
  %call3.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 11) #8
  %sext.4 = shl i32 %call3.4, 24
  %conv4.4 = ashr exact i32 %sext.4, 24
  %arrayidx5.4 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %arrayidx5.4 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv4.4, ptr %arrayidx5.4, align 4
  %call3.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #8
  %sext.5 = shl i32 %call3.5, 24
  %conv4.5 = ashr exact i32 %sext.5, 24
  %arrayidx5.5 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 5
  %14 = ptrtoint ptr %arrayidx5.5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv4.5, ptr %arrayidx5.5, align 4
  %call3.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 24) #8
  %sext.6 = shl i32 %call3.6, 24
  %conv4.6 = ashr exact i32 %sext.6, 24
  %arrayidx5.6 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 6
  %15 = ptrtoint ptr %arrayidx5.6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv4.6, ptr %arrayidx5.6, align 4
  %call3.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 29) #8
  %sext.7 = shl i32 %call3.7, 24
  %conv4.7 = ashr exact i32 %sext.7, 24
  %arrayidx5.7 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %arrayidx5.7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv4.7, ptr %arrayidx5.7, align 4
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #8
  %conv7 = trunc i32 %call6 to i8
  %stat1 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %stat1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv7, ptr %stat1, align 1
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #8
  %conv9 = trunc i32 %call8 to i8
  %stat2 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 14
  %18 = ptrtoint ptr %stat2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv9, ptr %stat2, align 4
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #8
  %conv11 = trunc i32 %call10 to i8
  %pwm1 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 7
  %19 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %pwm1, align 1
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #8
  %conv18 = trunc i32 %call17 to i16
  %arrayidx19 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 5, i32 0
  %20 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv18, ptr %arrayidx19, align 2
  %call21 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #8
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx19, align 2
  %call21.tr = trunc i32 %call21 to i16
  %23 = shl i16 %call21.tr, 8
  %conv26 = add i16 %23, %22
  store i16 %conv26, ptr %arrayidx19, align 2
  %call17.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #8
  %conv18.1 = trunc i32 %call17.1 to i16
  %arrayidx19.1 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 5, i32 1
  %24 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv18.1, ptr %arrayidx19.1, align 2
  %call21.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #8
  %25 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx19.1, align 2
  %call21.tr.1 = trunc i32 %call21.1 to i16
  %27 = shl i16 %call21.tr.1, 8
  %conv26.1 = add i16 %27, %26
  store i16 %conv26.1, ptr %arrayidx19.1, align 2
  %call17.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #8
  %conv18.2 = trunc i32 %call17.2 to i16
  %arrayidx19.2 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 5, i32 2
  %28 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv18.2, ptr %arrayidx19.2, align 2
  %call21.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #8
  %29 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx19.2, align 2
  %call21.tr.2 = trunc i32 %call21.2 to i16
  %31 = shl i16 %call21.tr.2, 8
  %conv26.2 = add i16 %31, %30
  store i16 %conv26.2, ptr %arrayidx19.2, align 2
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #8
  %fan1_div = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 6
  %and = and i32 %call30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool34.not = icmp eq i32 %and, 0
  %conv35 = select i1 %tobool34.not, i8 2, i8 4
  %32 = ptrtoint ptr %fan1_div to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv35, ptr %fan1_div, align 2
  %pwm1_auto_point_pwm = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 10
  %33 = ptrtoint ptr %pwm1_auto_point_pwm to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %pwm1_auto_point_pwm, align 2
  %arrayidx39 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 10, i32 2
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 -1, ptr %arrayidx39, align 2
  %call40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #8
  %conv41 = trunc i32 %call40 to i8
  %arrayidx43 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv41, ptr %arrayidx43, align 1
  %call44 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 28) #8
  %conv45 = trunc i32 %call44 to i8
  %temp1_auto_point_temp = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 8
  %36 = ptrtoint ptr %temp1_auto_point_temp to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv45, ptr %temp1_auto_point_temp, align 4
  %temp2_auto_point_temp = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 9
  %37 = ptrtoint ptr %temp2_auto_point_temp to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv45, ptr %temp2_auto_point_temp, align 1
  %call50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #8
  %38 = trunc i32 %call50 to i8
  %39 = lshr i8 %38, 1
  %conv54 = and i8 %39, 124
  %arrayidx56 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv54, ptr %arrayidx56, align 1
  %conv59 = and i32 %call50, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv59)
  %cmp64.not = icmp ugt i32 %conv59, 5
  br i1 %cmp64.not, label %if.then.if.end_crit_edge, label %if.then66

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then66:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %shr61 = lshr exact i32 32, %conv59
  %41 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx39, align 2
  %conv72 = zext i8 %42 to i16
  %43 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx43, align 1
  %conv75 = zext i8 %44 to i16
  %sub76 = sub nsw i16 %conv72, %conv75
  %div.rhs.trunc = trunc i32 %shr61 to i16
  %div216 = sdiv i16 %sub76, %div.rhs.trunc
  %45 = trunc i16 %div216 to i8
  %conv79 = add i8 %conv54, %45
  br label %if.end

if.end:                                           ; preds = %if.then66, %if.then.if.end_crit_edge
  %conv79.sink = phi i8 [ %conv79, %if.then66 ], [ -1, %if.then.if.end_crit_edge ]
  %46 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 8, i32 2
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv79.sink, ptr %46, align 2
  %call84 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 37) #8
  %48 = trunc i32 %call84 to i8
  %49 = lshr i8 %48, 1
  %conv89 = and i8 %49, 124
  %arrayidx91 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv89, ptr %arrayidx91, align 1
  %conv94 = and i32 %call84, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %conv94)
  %cmp99.not = icmp ugt i32 %conv94, 5
  br i1 %cmp99.not, label %if.end.if.end121_crit_edge, label %if.then101

if.end.if.end121_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end121

if.then101:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shr96 = lshr exact i32 32, %conv94
  %51 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx39, align 2
  %conv107 = zext i8 %52 to i16
  %53 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx43, align 1
  %conv110 = zext i8 %54 to i16
  %sub111 = sub nsw i16 %conv107, %conv110
  %div113.rhs.trunc = trunc i32 %shr96 to i16
  %div113215 = sdiv i16 %sub111, %div113.rhs.trunc
  %55 = trunc i16 %div113215 to i8
  %conv115 = add i8 %conv89, %55
  br label %if.end121

if.end121:                                        ; preds = %if.then101, %if.end.if.end121_crit_edge
  %conv115.sink = phi i8 [ %conv115, %if.then101 ], [ -1, %if.end.if.end121_crit_edge ]
  %56 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 9, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv115.sink, ptr %56, align 1
  %call122 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #8
  %58 = lshr i32 %call122, 5
  %conv127 = and i32 %58, 3
  %switch.shiftamt = shl nuw nsw i32 %conv127, 3
  %switch.downshift = lshr i32 50462720, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %switch.shiftamt220 = shl nuw nsw i32 %conv127, 3
  %switch.downshift221 = lshr i32 50462721, %switch.shiftamt220
  %switch.masked222 = trunc i32 %switch.downshift221 to i8
  %pwm1_auto_channels_temp136 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %pwm1_auto_channels_temp136 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %switch.masked, ptr %pwm1_auto_channels_temp136, align 2
  %pwm1_enable137 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 11
  %60 = ptrtoint ptr %pwm1_enable137 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %switch.masked222, ptr %pwm1_enable137, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %61 = load volatile i32, ptr @jiffies, align 128
  %62 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %last_updated, align 4
  %valid139 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 2
  %63 = ptrtoint ptr %valid139 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %valid139, align 4
  br label %if.end140

if.end140:                                        ; preds = %if.end121, %lor.lhs.false.if.end140_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %8)
  %cmp = icmp sgt i32 %8, -128000
  %div = sdiv i32 %8, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %10 = select i1 %cmp, i32 %9, i32 -128
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 4, i32 %5
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  %arrayidx10 = getelementptr [8 x i8], ptr @temp_reg, i32 0, i32 %5
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx10, align 1
  %conv = trunc i32 %13 to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end.if.end17_crit_edge, label %do.end

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev16 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.29) #11
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count.addr.0 = phi i32 [ -5, %do.end ], [ %count, %if.end.if.end17_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end17 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 3, label %sw.bb7
    i32 5, label %sw.bb11
    i32 6, label %sw.bb16
    i32 7, label %sw.bb21
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat1 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %3 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stat1, align 1
  %5 = and i8 %4, -128
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat13 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %stat13 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %stat13, align 1
  %8 = and i8 %7, 64
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat2 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 14
  %9 = ptrtoint ptr %stat2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %stat2, align 4
  %11 = and i8 %10, 16
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat112 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %12 = ptrtoint ptr %stat112 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stat112, align 1
  %14 = and i8 %13, 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat117 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %15 = ptrtoint ptr %stat117 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %stat117, align 1
  %17 = and i8 %16, 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %stat222 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 14
  %18 = ptrtoint ptr %stat222 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %stat222, align 4
  %20 = and i8 %19, 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_alarm_show.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@temp_alarm_show, %cleanup)) #8
          to label %if.then [label %cleanup], !srcloc !256

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temp_alarm_show.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb16, %sw.bb11, %sw.bb7, %sw.bb2, %sw.bb
  %flag.0 = phi i8 [ %20, %sw.bb21 ], [ %17, %sw.bb16 ], [ %14, %sw.bb11 ], [ %11, %sw.bb7 ], [ %8, %sw.bb2 ], [ %5, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %flag.0)
  %tobool31.not = icmp eq i8 %flag.0, 0
  br i1 %tobool31.not, label %if.else, label %if.then32

if.then32:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %21, i32 2)
  store i16 12544, ptr %buf, align 1
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %22, i32 2)
  store i16 12288, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then32, %if.then, %do.body
  %retval.0 = phi i32 [ 1, %if.then32 ], [ 1, %if.else ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp2_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %stat1 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat1, align 1
  %2 = and i8 %1, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i16 12288, i16 12544
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %., ptr %buf, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp = icmp eq i16 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %4, i32 2)
  store i16 12288, ptr %buf, align 1
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i16 %3 to i32
  %div = udiv i32 6000000, %conv
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %div)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !258
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp slt i32 %8, 1
  br i1 %cmp, label %if.end.cond.end_crit_edge, label %cond.false

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div61 = udiv i32 6000000, %8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %div61, %cond.false ], [ 65535, %if.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 1)
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 65535)
  %conv = trunc i32 %13 to i16
  %arrayidx = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 5, i32 %6
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv, ptr %arrayidx, align 2
  %arrayidx15 = getelementptr [3 x i8], ptr @fan_reg_low, i32 0, i32 %6
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx15, align 1
  %conv19 = trunc i32 %13 to i8
  %call20 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %16, i8 noundef zeroext %conv19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %cond.end.EXIT.sink.split_crit_edge

cond.end.EXIT.sink.split_crit_edge:               ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

if.end24:                                         ; preds = %cond.end
  %arrayidx25 = getelementptr [3 x i8], ptr @fan_reg_hi, i32 0, i32 %6
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25, align 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx, align 2
  %21 = lshr i16 %20, 8
  %conv29 = trunc i16 %21 to i8
  %call30 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %18, i8 noundef zeroext %conv29) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end24.EXIT_crit_edge, label %if.end24.EXIT.sink.split_crit_edge

if.end24.EXIT.sink.split_crit_edge:               ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

if.end24.EXIT_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

EXIT.sink.split:                                  ; preds = %if.end24.EXIT.sink.split_crit_edge, %cond.end.EXIT.sink.split_crit_edge
  %dev36 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev36, ptr noundef nonnull @.str.29) #11
  br label %EXIT

EXIT:                                             ; preds = %EXIT.sink.split, %if.end24.EXIT_crit_edge
  %count.addr.0 = phi i32 [ %count, %if.end24.EXIT_crit_edge ], [ -5, %EXIT.sink.split ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %stat1 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 13
  %0 = ptrtoint ptr %stat1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %stat1, align 1
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  %. = select i1 %tobool.not, i16 12288, i16 12544
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %3, i32 2)
  store i16 %., ptr %buf, align 1
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %fan1_div = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %fan1_div to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fan1_div, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan1_div_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.EXIT.sink.split_crit_edge, label %if.end6

if.end.EXIT.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %6, label %if.end6.EXIT_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %sw.bb7
  ]

if.end6.EXIT_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %call3, -65
  br label %sw.epilog

sw.bb7:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %call3, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %.sink = phi i8 [ 4, %sw.bb7 ], [ 2, %sw.bb ]
  %config.0 = phi i32 [ %or, %sw.bb7 ], [ %and, %sw.bb ]
  %fan1_div8 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %fan1_div8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %.sink, ptr %fan1_div8, align 2
  %conv = trunc i32 %config.0 to i8
  %call9 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 4, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %sw.epilog.EXIT_crit_edge, label %sw.epilog.EXIT.sink.split_crit_edge

sw.epilog.EXIT.sink.split_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

sw.epilog.EXIT_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

EXIT.sink.split:                                  ; preds = %sw.epilog.EXIT.sink.split_crit_edge, %if.end.EXIT.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.2, %if.end.EXIT.sink.split_crit_edge ], [ @.str.8, %sw.epilog.EXIT.sink.split_crit_edge ]
  %count.addr.0.ph = phi i32 [ %call3, %if.end.EXIT.sink.split_crit_edge ], [ -5, %sw.epilog.EXIT.sink.split_crit_edge ]
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev15, ptr noundef nonnull %.str.8.sink) #11
  br label %EXIT

EXIT:                                             ; preds = %EXIT.sink.split, %sw.epilog.EXIT_crit_edge, %if.end6.EXIT_crit_edge
  %count.addr.0 = phi i32 [ %count, %sw.epilog.EXIT_crit_edge ], [ -22, %if.end6.EXIT_crit_edge ], [ %count.addr.0.ph, %EXIT.sink.split ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %pwm1 = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %pwm1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm1, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 255)
  %conv = trunc i32 %8 to i8
  %pwm1 = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %pwm1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %pwm1, align 1
  %call10 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 34, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %pwm1_enable = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %pwm1_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm1_enable, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.unlock.sink.split_crit_edge, label %if.end6

if.end.unlock.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.sink.split

if.end6:                                          ; preds = %if.end
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %6, label %if.end6.unlock_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb8
    i32 3, label %sw.bb10
  ]

if.end6.unlock_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and7 = and i32 %call3, -97
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %and9 = and i32 %call3, -97
  %or = or i32 %and9, 64
  br label %sw.epilog

sw.bb10:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %call3, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb
  %config.0 = phi i32 [ %or12, %sw.bb10 ], [ %or, %sw.bb8 ], [ %and7, %sw.bb ]
  %conv = trunc i32 %config.0 to i8
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.epilog.unlock_crit_edge, label %sw.epilog.unlock.sink.split_crit_edge

sw.epilog.unlock.sink.split_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock.sink.split

sw.epilog.unlock_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

unlock.sink.split:                                ; preds = %sw.epilog.unlock.sink.split_crit_edge, %if.end.unlock.sink.split_crit_edge
  %.str.8.sink = phi ptr [ @.str.2, %if.end.unlock.sink.split_crit_edge ], [ @.str.8, %sw.epilog.unlock.sink.split_crit_edge ]
  %count.addr.0.ph = phi i32 [ %call3, %if.end.unlock.sink.split_crit_edge ], [ -5, %sw.epilog.unlock.sink.split_crit_edge ]
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev19, ptr noundef nonnull %.str.8.sink) #11
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %sw.epilog.unlock_crit_edge, %if.end6.unlock_crit_edge
  %count.addr.0 = phi i32 [ %count, %sw.epilog.unlock_crit_edge ], [ -22, %if.end6.unlock_crit_edge ], [ %count.addr.0.ph, %unlock.sink.split ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %unlock ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_auto_channels_temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %pwm1_auto_channels_temp = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 12
  %0 = ptrtoint ptr %pwm1_auto_channels_temp to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm1_auto_channels_temp, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_auto_point_pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm1_auto_point_pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 254)
  %conv = trunc i32 %8 to i8
  %arrayidx = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %call11 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 33, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %if.end.EXIT.sink.split_crit_edge

if.end.EXIT.sink.split_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

if.end15:                                         ; preds = %if.end
  %arrayidx17 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 10, i32 2
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %sub = sub i8 %11, %13
  %arrayidx.i = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %15 to i32
  %arrayidx1.i = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %17 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %conv6.i = zext i8 %sub to i32
  %mul.i = shl nsw i32 %sub.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv6.i)
  %cmp7.not.i = icmp slt i32 %mul.i, %conv6.i
  br i1 %cmp7.not.i, label %for.inc.i, label %if.end15.for.end.i_crit_edge

if.end15.for.end.i_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end15
  %mul.1.i = shl nsw i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %conv6.i)
  %cmp7.not.1.i = icmp slt i32 %mul.1.i, %conv6.i
  br i1 %cmp7.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = shl nsw i32 %sub.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %conv6.i)
  %cmp7.not.2.i = icmp slt i32 %mul.2.i, %conv6.i
  br i1 %cmp7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.3.i = shl nsw i32 %sub.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %conv6.i)
  %cmp7.not.3.i = icmp sge i32 %mul.3.i, %conv6.i
  %spec.select.i = zext i1 %cmp7.not.3.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.2.i, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end15.for.end.i_crit_edge
  %tmp.0.lcssa.i = phi i8 [ 4, %if.end15.for.end.i_crit_edge ], [ 3, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %18 = shl i8 %17, 1
  %19 = and i8 %18, -8
  %or23.i = or i8 %tmp.0.lcssa.i, %19
  %call.i56 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 36, i8 noundef zeroext %or23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i, label %if.end26, label %for.end.i.EXIT.sink.split_crit_edge

for.end.i.EXIT.sink.split_crit_edge:              ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

if.end26:                                         ; preds = %for.end.i
  %arrayidx.i57 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 9, i32 2
  %20 = ptrtoint ptr %arrayidx.i57 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i57, align 1
  %conv.i58 = zext i8 %21 to i32
  %arrayidx1.i59 = getelementptr %struct.amc6821_data, ptr %1, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx1.i59 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx1.i59, align 1
  %conv2.i60 = zext i8 %23 to i32
  %sub.i61 = sub nsw i32 %conv.i58, %conv2.i60
  %mul.i63 = shl nsw i32 %sub.i61, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i63, i32 %conv6.i)
  %cmp7.not.i64 = icmp slt i32 %mul.i63, %conv6.i
  br i1 %cmp7.not.i64, label %for.inc.i67, label %if.end26.for.end.i79_crit_edge

if.end26.for.end.i79_crit_edge:                   ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i79

for.inc.i67:                                      ; preds = %if.end26
  %mul.1.i65 = shl nsw i32 %sub.i61, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i65, i32 %conv6.i)
  %cmp7.not.1.i66 = icmp slt i32 %mul.1.i65, %conv6.i
  br i1 %cmp7.not.1.i66, label %for.inc.1.i70, label %for.inc.i67.for.end.i79_crit_edge

for.inc.i67.for.end.i79_crit_edge:                ; preds = %for.inc.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i79

for.inc.1.i70:                                    ; preds = %for.inc.i67
  %mul.2.i68 = shl nsw i32 %sub.i61, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i68, i32 %conv6.i)
  %cmp7.not.2.i69 = icmp slt i32 %mul.2.i68, %conv6.i
  br i1 %cmp7.not.2.i69, label %for.inc.2.i74, label %for.inc.1.i70.for.end.i79_crit_edge

for.inc.1.i70.for.end.i79_crit_edge:              ; preds = %for.inc.1.i70
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i79

for.inc.2.i74:                                    ; preds = %for.inc.1.i70
  call void @__sanitizer_cov_trace_pc() #10
  %mul.3.i71 = shl nsw i32 %sub.i61, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i71, i32 %conv6.i)
  %cmp7.not.3.i72 = icmp sge i32 %mul.3.i71, %conv6.i
  %spec.select.i73 = zext i1 %cmp7.not.3.i72 to i8
  br label %for.end.i79

for.end.i79:                                      ; preds = %for.inc.2.i74, %for.inc.1.i70.for.end.i79_crit_edge, %for.inc.i67.for.end.i79_crit_edge, %if.end26.for.end.i79_crit_edge
  %tmp.0.lcssa.i75 = phi i8 [ 4, %if.end26.for.end.i79_crit_edge ], [ 3, %for.inc.i67.for.end.i79_crit_edge ], [ 2, %for.inc.1.i70.for.end.i79_crit_edge ], [ %spec.select.i73, %for.inc.2.i74 ]
  %24 = shl i8 %23, 1
  %25 = and i8 %24, -8
  %or23.i76 = or i8 %tmp.0.lcssa.i75, %25
  %call.i77 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 37, i8 noundef zeroext %or23.i76) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool.not.i78 = icmp eq i32 %call.i77, 0
  br i1 %tobool.not.i78, label %for.end.i79.EXIT_crit_edge, label %for.end.i79.EXIT.sink.split_crit_edge

for.end.i79.EXIT.sink.split_crit_edge:            ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT.sink.split

for.end.i79.EXIT_crit_edge:                       ; preds = %for.end.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

EXIT.sink.split:                                  ; preds = %for.end.i79.EXIT.sink.split_crit_edge, %for.end.i.EXIT.sink.split_crit_edge, %if.end.EXIT.sink.split_crit_edge
  %dev.i80 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i80, ptr noundef nonnull @.str.29) #11
  br label %EXIT

EXIT:                                             ; preds = %EXIT.sink.split, %for.end.i79.EXIT_crit_edge
  %count.addr.0 = phi i32 [ %count, %for.end.i79.EXIT_crit_edge ], [ -5, %EXIT.sink.split ]
  %valid = getelementptr inbounds %struct.amc6821_data, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point_temp_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %index, align 4
  %conv = zext i8 %1 to i32
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %2 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nr4, align 1
  %conv5 = zext i8 %3 to i32
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %3, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 8, i32 %conv
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %conv6 = zext i8 %6 to i32
  %mul = mul nuw nsw i32 %conv6, 1000
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul)
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx9 = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 9, i32 %conv
  %7 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %8 to i32
  %mul11 = mul nuw nsw i32 %conv10, 1000
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.27, i32 noundef %mul11)
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_auto_point_temp_show.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@temp_auto_point_temp_show, %cleanup)) #8
          to label %if.then [label %cleanup], !srcloc !256

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temp_auto_point_temp_show.__UNIQUE_ID_ddebug299, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body, %sw.bb8, %sw.bb
  %retval.0 = phi i32 [ %call12, %sw.bb8 ], [ %call7, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_auto_point_temp_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @amc6821_update_device(ptr noundef %dev)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %nr5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %4 = ptrtoint ptr %nr5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr5, align 1
  %conv6 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !258
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %5, label %do.body [
    i8 1, label %sw.bb
    i8 2, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %temp1_auto_point_temp = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 8
  br label %sw.epilog

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %temp2_auto_point_temp = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 9
  br label %sw.epilog

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_auto_point_temp_store.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@temp_auto_point_temp_store, %cleanup)) #8
          to label %if.then16 [label %cleanup], !srcloc !256

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temp_auto_point_temp_store.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.72, i32 noundef %conv6) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb
  %reg.0 = phi i8 [ 37, %sw.bb8 ], [ 36, %sw.bb ]
  %ptemp.0 = phi ptr [ %temp2_auto_point_temp, %sw.bb8 ], [ %temp1_auto_point_temp, %sw.bb ]
  %update_lock = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %valid = getelementptr inbounds %struct.amc6821_data, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %valid, align 4
  %9 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %3, label %do.body171 [
    i8 0, label %sw.bb18
    i8 1, label %sw.bb95
    i8 2, label %sw.bb149
  ]

sw.bb18:                                          ; preds = %sw.epilog
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %11)
  %cmp = icmp sgt i32 %11, 999
  %div = sdiv i32 %11, 1000
  %cond = select i1 %cmp, i32 %div, i32 0
  %arrayidx = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv22 = zext i8 %13 to i32
  %14 = call i32 @llvm.smin.i32(i32 %cond, i32 %conv22)
  %conv34 = and i32 %14, 255
  %arrayidx46 = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 9, i32 1
  %15 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx46, align 1
  %conv49 = zext i8 %16 to i32
  %17 = call i32 @llvm.umin.i32(i32 %conv34, i32 %conv49)
  %18 = call i32 @llvm.umin.i32(i32 %17, i32 63)
  %conv84 = trunc i32 %18 to i8
  %19 = ptrtoint ptr %ptemp.0 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv84, ptr %ptemp.0, align 1
  %call87 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 28, i8 noundef zeroext %conv84) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %sw.bb18.EXIT_crit_edge, label %do.end92

sw.bb18.EXIT_crit_edge:                           ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

do.end92:                                         ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #10
  %dev93 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev93, ptr noundef nonnull @.str.29) #11
  br label %EXIT

sw.bb95:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %div96 = sdiv i32 %21, 1000
  %22 = ptrtoint ptr %ptemp.0 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ptemp.0, align 1
  %24 = and i8 %23, 124
  %narrow = add nuw i8 %24, 4
  %add = zext i8 %narrow to i32
  %25 = call i32 @llvm.smax.i32(i32 %div96, i32 %add)
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 124)
  %arrayidx114 = getelementptr i8, ptr %ptemp.0, i32 1
  %27 = trunc i32 %26 to i8
  %conv118 = and i8 %27, 124
  %28 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv118, ptr %arrayidx114, align 1
  %arrayidx119 = getelementptr i8, ptr %ptemp.0, i32 2
  %29 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx119, align 1
  %31 = or i8 %conv118, 1
  %32 = call i8 @llvm.umax.i8(i8 %30, i8 %31)
  %33 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %arrayidx119, align 1
  br label %sw.epilog189

sw.bb149:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %div150 = sdiv i32 %35, 1000
  %arrayidx151 = getelementptr i8, ptr %ptemp.0, i32 1
  %36 = ptrtoint ptr %arrayidx151 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx151, align 1
  %conv152 = zext i8 %37 to i32
  %add153 = add nuw nsw i32 %conv152, 1
  %38 = call i32 @llvm.smax.i32(i32 %div150, i32 %add153)
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 255)
  %conv168 = trunc i32 %39 to i8
  %arrayidx169 = getelementptr i8, ptr %ptemp.0, i32 2
  %40 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv168, ptr %arrayidx169, align 1
  br label %sw.epilog189

do.body171:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @temp_auto_point_temp_store.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@temp_auto_point_temp_store, %EXIT)) #8
          to label %if.then185 [label %EXIT], !srcloc !256

if.then185:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @temp_auto_point_temp_store.__UNIQUE_ID_ddebug325, ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv) #8
  br label %EXIT

sw.epilog189:                                     ; preds = %sw.bb149, %sw.bb95
  %arrayidx190 = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 10, i32 2
  %41 = ptrtoint ptr %arrayidx190 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx190, align 2
  %arrayidx193 = getelementptr %struct.amc6821_data, ptr %call, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx193, align 1
  %sub = sub i8 %42, %44
  %arrayidx.i = getelementptr i8, ptr %ptemp.0, i32 2
  %45 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %46 to i32
  %arrayidx1.i = getelementptr i8, ptr %ptemp.0, i32 1
  %47 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %48 to i32
  %sub.i = sub nsw i32 %conv.i, %conv2.i
  %conv6.i = zext i8 %sub to i32
  %mul.i = shl nsw i32 %sub.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %conv6.i)
  %cmp7.not.i = icmp slt i32 %mul.i, %conv6.i
  br i1 %cmp7.not.i, label %for.inc.i, label %sw.epilog189.for.end.i_crit_edge

sw.epilog189.for.end.i_crit_edge:                 ; preds = %sw.epilog189
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i:                                        ; preds = %sw.epilog189
  %mul.1.i = shl nsw i32 %sub.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.1.i, i32 %conv6.i)
  %cmp7.not.1.i = icmp slt i32 %mul.1.i, %conv6.i
  br i1 %cmp7.not.1.i, label %for.inc.1.i, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %mul.2.i = shl nsw i32 %sub.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.2.i, i32 %conv6.i)
  %cmp7.not.2.i = icmp slt i32 %mul.2.i, %conv6.i
  br i1 %cmp7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.end.i_crit_edge

for.inc.1.i.for.end.i_crit_edge:                  ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.3.i = shl nsw i32 %sub.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.3.i, i32 %conv6.i)
  %cmp7.not.3.i = icmp sge i32 %mul.3.i, %conv6.i
  %spec.select.i = zext i1 %cmp7.not.3.i to i8
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.2.i, %for.inc.1.i.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %sw.epilog189.for.end.i_crit_edge
  %tmp.0.lcssa.i = phi i8 [ 4, %sw.epilog189.for.end.i_crit_edge ], [ 3, %for.inc.i.for.end.i_crit_edge ], [ 2, %for.inc.1.i.for.end.i_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %49 = shl i8 %48, 1
  %50 = and i8 %49, -8
  %or23.i = or i8 %tmp.0.lcssa.i, %50
  %call.i269 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %reg.0, i8 noundef zeroext %or23.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %tobool.not.i = icmp eq i32 %call.i269, 0
  br i1 %tobool.not.i, label %for.end.i.EXIT_crit_edge, label %set_slope_register.exit

for.end.i.EXIT_crit_edge:                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %EXIT

set_slope_register.exit:                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29) #11
  br label %EXIT

EXIT:                                             ; preds = %set_slope_register.exit, %for.end.i.EXIT_crit_edge, %if.then185, %do.body171, %do.end92, %sw.bb18.EXIT_crit_edge
  %count.addr.0 = phi i32 [ -5, %do.end92 ], [ %count, %sw.bb18.EXIT_crit_edge ], [ -22, %if.then185 ], [ -5, %set_slope_register.exit ], [ %count, %for.end.i.EXIT_crit_edge ], [ -22, %do.body171 ]
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %EXIT, %if.then16, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %EXIT ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.then16 ], [ -22, %do.body ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 124)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !11, !12, !14, !16, !18, !19, !20, !22, !24, !26, !28, !29, !31, !32, !33, !34, !35, !36, !37, !39, !40, !41, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !71, !72, !74, !76, !78, !80, !82, !83, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !103, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !231, !232, !233, !235, !236, !238, !239, !241, !243, !244, !245}
!llvm.module.flags = !{!247, !248, !249, !250, !251, !252, !253, !254}
!llvm.ident = !{!255}

!0 = !{ptr @__param_pwminv, !1, !"__param_pwminv", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/amc6821.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_pwminvtype288, !1, !"__UNIQUE_ID_pwminvtype288", i1 false, i1 false}
!3 = !{ptr @__param_init, !4, !"__param_init", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/amc6821.c", i32 37, i32 1}
!5 = !{ptr @__UNIQUE_ID_inittype289, !4, !"__UNIQUE_ID_inittype289", i1 false, i1 false}
!6 = !{ptr @__initcall__kmod_amc6821__338_948_amc6821_driver_init6, !7, !"__initcall__kmod_amc6821__338_948_amc6821_driver_init6", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/amc6821.c", i32 948, i32 1}
!8 = !{ptr @__exitcall_amc6821_driver_exit, !7, !"__exitcall_amc6821_driver_exit", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_file339, !10, !"__UNIQUE_ID_file339", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/amc6821.c", i32 950, i32 1}
!11 = !{ptr @__UNIQUE_ID_license340, !10, !"__UNIQUE_ID_license340", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_author341, !13, !"__UNIQUE_ID_author341", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/amc6821.c", i32 951, i32 1}
!14 = !{ptr @__UNIQUE_ID_description342, !15, !"__UNIQUE_ID_description342", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/amc6821.c", i32 952, i32 1}
!16 = !{ptr @pwminv, !17, !"pwminv", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/amc6821.c", i32 33, i32 12}
!18 = !{ptr @__param_str_pwminv, !1, !"__param_str_pwminv", i1 false, i1 false}
!19 = !{ptr @__param_str_init, !4, !"__param_str_init", i1 false, i1 false}
!20 = !{ptr @init, !21, !"init", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/amc6821.c", i32 36, i32 12}
!22 = !{ptr @.str, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/amc6821.c", i32 940, i32 11}
!24 = !{ptr @amc6821_driver, !25, !"amc6821_driver", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/amc6821.c", i32 937, i32 26}
!26 = !{ptr @amc6821_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/amc6821.c", i32 915, i32 2}
!28 = !{ptr @.str.1, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.2, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/amc6821.c", i32 826, i32 5}
!31 = !{ptr @.str.3, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @amc6821_init_client._entry, !30, !"_entry", i1 false, i1 false}
!36 = !{ptr @amc6821_init_client._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/amc6821.c", i32 835, i32 4}
!39 = !{ptr @amc6821_init_client._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @amc6821_init_client._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @amc6821_init_client._entry.10, !42, !"_entry", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/amc6821.c", i32 843, i32 4}
!43 = !{ptr @amc6821_init_client._entry_ptr.11, !42, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/amc6821.c", i32 848, i32 3}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @amc6821_init_client._entry.12, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @amc6821_init_client._entry_ptr.15, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @amc6821_init_client._entry.16, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/amc6821.c", i32 854, i32 4}
!51 = !{ptr @amc6821_init_client._entry_ptr.17, !50, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @amc6821_init_client._entry.18, !53, !"_entry", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/amc6821.c", i32 862, i32 4}
!54 = !{ptr @amc6821_init_client._entry_ptr.19, !53, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @amc6821_init_client._entry.20, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/amc6821.c", i32 872, i32 4}
!57 = !{ptr @amc6821_init_client._entry_ptr.21, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @amc6821_init_client._entry.22, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/amc6821.c", i32 880, i32 4}
!60 = !{ptr @amc6821_init_client._entry_ptr.23, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @amc6821_init_client._entry.24, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/amc6821.c", i32 895, i32 4}
!63 = !{ptr @amc6821_init_client._entry_ptr.25, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @amc6821_groups, !65, !"amc6821_groups", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/amc6821.c", i32 769, i32 1}
!66 = !{ptr @amc6821_group, !65, !"amc6821_group", i1 false, i1 false}
!67 = !{ptr @amc6821_attrs, !68, !"amc6821_attrs", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/amc6821.c", i32 733, i32 26}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/amc6821.c", i32 691, i32 8}
!71 = !{ptr @sensor_dev_attr_temp1_input, !70, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/amc6821.c", i32 273, i32 22}
!74 = !{ptr @temp_reg, !75, !"temp_reg", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/amc6821.c", i32 116, i32 17}
!76 = !{ptr @fan_reg_low, !77, !"fan_reg_low", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/amc6821.c", i32 128, i32 17}
!78 = !{ptr @fan_reg_hi, !79, !"fan_reg_hi", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/amc6821.c", i32 133, i32 17}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/amc6821.c", i32 692, i32 8}
!82 = !{ptr @sensor_dev_attr_temp1_min, !81, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!83 = !{ptr @.str.29, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/amc6821.c", i32 292, i32 3}
!85 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @temp_store._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @temp_store._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/amc6821.c", i32 693, i32 8}
!90 = !{ptr @sensor_dev_attr_temp1_max, !89, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!91 = !{ptr @.str.32, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/amc6821.c", i32 694, i32 8}
!93 = !{ptr @sensor_dev_attr_temp1_crit, !92, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/amc6821.c", i32 695, i32 8}
!96 = !{ptr @sensor_dev_attr_temp1_min_alarm, !95, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/amc6821.c", i32 326, i32 3}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @temp_alarm_show.__UNIQUE_ID_ddebug294, !98, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!101 = distinct !{null, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/amc6821.c", i32 330, i32 23}
!103 = distinct !{null, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/amc6821.c", i32 332, i32 23}
!105 = !{ptr @.str.38, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/amc6821.c", i32 696, i32 8}
!107 = !{ptr @sensor_dev_attr_temp1_max_alarm, !106, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!108 = !{ptr @.str.39, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/amc6821.c", i32 697, i32 8}
!110 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !109, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!111 = !{ptr @.str.40, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/amc6821.c", i32 698, i32 8}
!113 = !{ptr @sensor_dev_attr_temp2_input, !112, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/amc6821.c", i32 699, i32 8}
!116 = !{ptr @sensor_dev_attr_temp2_min, !115, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/amc6821.c", i32 700, i32 8}
!119 = !{ptr @sensor_dev_attr_temp2_max, !118, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/amc6821.c", i32 701, i32 8}
!122 = !{ptr @sensor_dev_attr_temp2_crit, !121, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!123 = !{ptr @.str.44, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/amc6821.c", i32 703, i32 8}
!125 = !{ptr @sensor_dev_attr_temp2_min_alarm, !124, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!126 = !{ptr @.str.45, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/amc6821.c", i32 704, i32 8}
!128 = !{ptr @sensor_dev_attr_temp2_max_alarm, !127, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/amc6821.c", i32 705, i32 8}
!131 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !130, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!132 = !{ptr @.str.47, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/amc6821.c", i32 702, i32 8}
!134 = !{ptr @sensor_dev_attr_temp2_fault, !133, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!135 = !{ptr @.str.48, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/amc6821.c", i32 706, i32 8}
!137 = !{ptr @sensor_dev_attr_fan1_input, !136, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!138 = !{ptr @.str.49, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/amc6821.c", i32 707, i32 8}
!140 = !{ptr @sensor_dev_attr_fan1_min, !139, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!141 = !{ptr @.str.50, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/amc6821.c", i32 628, i32 3}
!143 = !{ptr @fan_store._entry, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @fan_store._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @fan_store._entry.51, !146, !"_entry", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/amc6821.c", i32 634, i32 3}
!147 = !{ptr @fan_store._entry_ptr.52, !146, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.53, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/amc6821.c", i32 708, i32 8}
!150 = !{ptr @sensor_dev_attr_fan1_max, !149, !"sensor_dev_attr_fan1_max", i1 false, i1 false}
!151 = !{ptr @.str.54, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/amc6821.c", i32 709, i32 8}
!153 = !{ptr @sensor_dev_attr_fan1_fault, !152, !"sensor_dev_attr_fan1_fault", i1 false, i1 false}
!154 = !{ptr @.str.55, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/amc6821.c", i32 710, i32 8}
!156 = !{ptr @sensor_dev_attr_fan1_div, !155, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!157 = !{ptr @.str.56, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/amc6821.c", i32 663, i32 3}
!159 = !{ptr @fan1_div_store._entry, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @fan1_div_store._entry_ptr, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @fan1_div_store._entry.57, !162, !"_entry", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/amc6821.c", i32 682, i32 3}
!163 = !{ptr @fan1_div_store._entry_ptr.58, !162, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.59, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/amc6821.c", i32 712, i32 8}
!166 = !{ptr @sensor_dev_attr_pwm1, !165, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!167 = !{ptr @.str.60, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/amc6821.c", i32 713, i32 8}
!169 = !{ptr @sensor_dev_attr_pwm1_enable, !168, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!170 = !{ptr @.str.61, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/amc6821.c", i32 391, i32 4}
!172 = !{ptr @pwm1_enable_store._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @pwm1_enable_store._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @pwm1_enable_store._entry.62, !175, !"_entry", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/amc6821.c", i32 415, i32 4}
!176 = !{ptr @pwm1_enable_store._entry_ptr.63, !175, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/amc6821.c", i32 717, i32 8}
!179 = !{ptr @sensor_dev_attr_pwm1_auto_channels_temp, !178, !"sensor_dev_attr_pwm1_auto_channels_temp", i1 false, i1 false}
!180 = !{ptr @.str.65, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/amc6821.c", i32 714, i32 8}
!182 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !181, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/amc6821.c", i32 715, i32 8}
!185 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !184, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!186 = !{ptr @.str.67, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/amc6821.c", i32 570, i32 3}
!188 = !{ptr @pwm1_auto_point_pwm_store._entry, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @pwm1_auto_point_pwm_store._entry_ptr, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.68, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/amc6821.c", i32 477, i32 3}
!192 = !{ptr @set_slope_register._entry, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @set_slope_register._entry_ptr, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.69, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/amc6821.c", i32 716, i32 8}
!196 = !{ptr @sensor_dev_attr_pwm1_auto_point3_pwm, !195, !"sensor_dev_attr_pwm1_auto_point3_pwm", i1 false, i1 false}
!197 = !{ptr @.str.70, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/amc6821.c", i32 719, i32 8}
!199 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp, !198, !"sensor_dev_attr_temp1_auto_point1_temp", i1 false, i1 false}
!200 = !{ptr @.str.71, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/amc6821.c", i32 447, i32 3}
!202 = !{ptr @.str.72, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @temp_auto_point_temp_show.__UNIQUE_ID_ddebug299, !201, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!204 = !{ptr @.str.73, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/amc6821.c", i32 721, i32 8}
!206 = !{ptr @sensor_dev_attr_temp1_auto_point2_temp, !205, !"sensor_dev_attr_temp1_auto_point2_temp", i1 false, i1 false}
!207 = !{ptr @.str.74, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/amc6821.c", i32 509, i32 3}
!209 = !{ptr @temp_auto_point_temp_store.__UNIQUE_ID_ddebug300, !208, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!210 = !{ptr @temp_auto_point_temp_store._entry, !211, !"_entry", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/amc6821.c", i32 527, i32 5}
!212 = !{ptr @temp_auto_point_temp_store._entry_ptr, !211, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @temp_auto_point_temp_store.__UNIQUE_ID_ddebug325, !214, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/amc6821.c", i32 541, i32 3}
!215 = !{ptr @.str.75, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/amc6821.c", i32 723, i32 8}
!217 = !{ptr @sensor_dev_attr_temp1_auto_point3_temp, !216, !"sensor_dev_attr_temp1_auto_point3_temp", i1 false, i1 false}
!218 = !{ptr @.str.76, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/amc6821.c", i32 726, i32 8}
!220 = !{ptr @sensor_dev_attr_temp2_auto_point1_temp, !219, !"sensor_dev_attr_temp2_auto_point1_temp", i1 false, i1 false}
!221 = !{ptr @.str.77, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/amc6821.c", i32 728, i32 8}
!223 = !{ptr @sensor_dev_attr_temp2_auto_point2_temp, !222, !"sensor_dev_attr_temp2_auto_point2_temp", i1 false, i1 false}
!224 = !{ptr @.str.78, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/amc6821.c", i32 730, i32 8}
!226 = !{ptr @sensor_dev_attr_temp2_auto_point3_temp, !225, !"sensor_dev_attr_temp2_auto_point3_temp", i1 false, i1 false}
!227 = !{ptr @amc6821_id, !228, !"amc6821_id", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/amc6821.c", i32 930, i32 35}
!229 = !{ptr @.str.79, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hwmon/amc6821.c", i32 780, i32 2}
!231 = !{ptr @.str.80, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @amc6821_detect.__UNIQUE_ID_ddebug334, !230, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!233 = !{ptr @.str.81, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/amc6821.c", i32 783, i32 3}
!235 = !{ptr @amc6821_detect.__UNIQUE_ID_ddebug335, !234, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!236 = !{ptr @.str.82, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/amc6821.c", i32 792, i32 3}
!238 = !{ptr @amc6821_detect.__UNIQUE_ID_ddebug336, !237, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!239 = !{ptr @amc6821_detect.__UNIQUE_ID_ddebug337, !240, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/amc6821.c", i32 805, i32 3}
!241 = !{ptr @.str.83, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/amc6821.c", i32 811, i32 2}
!243 = !{ptr @amc6821_detect._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @amc6821_detect._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @normal_i2c, !246, !"normal_i2c", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/amc6821.c", i32 26, i32 29}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"min_enum_size", i32 4}
!249 = !{i32 8, !"branch-target-enforcement", i32 0}
!250 = !{i32 8, !"sign-return-address", i32 0}
!251 = !{i32 8, !"sign-return-address-all", i32 0}
!252 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!253 = !{i32 7, !"uwtable", i32 1}
!254 = !{i32 7, !"frame-pointer", i32 2}
!255 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!256 = !{i64 2148715809, i64 2148715814, i64 2148715827, i64 2148715871, i64 2148715905, i64 2148715926}
!257 = !{i8 0, i8 2}
!258 = !{!"auto-init"}
