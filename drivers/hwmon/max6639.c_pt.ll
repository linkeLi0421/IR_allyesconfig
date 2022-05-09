; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max6639.c_pt.bc'
source_filename = "../drivers/hwmon/max6639.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.max6639_data = type { ptr, %struct.mutex, i8, i32, [2 x i16], [2 x i8], [2 x i8], i8, [2 x i8], [2 x i8], [2 x i8], [2 x i8], i8, i8 }
%struct.max6639_platform_data = type { i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_max6639__305_589_max6639_driver_init6 = internal global ptr @max6639_driver_init, section ".initcall6.init", align 4
@max6639_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max6639_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max6639_pm_ops, ptr null, ptr null }, ptr @max6639_id, ptr @max6639_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6639_driver_exit = internal global ptr @max6639_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [48 x i8] c"max6639.author=Roland Stigge <stigge@antcom.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description307 = internal constant [35 x i8] c"max6639.description=max6639 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file308 = internal constant [35 x i8] c"max6639.file=drivers/hwmon/max6639\00", section ".modinfo", align 1
@__UNIQUE_ID_license309 = internal constant [20 x i8] c"max6639.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6639\00", [24 x i8] zeroinitializer }, align 32
@max6639_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max6639_suspend, ptr @max6639_resume, ptr @max6639_suspend, ptr @max6639_resume, ptr @max6639_suspend, ptr @max6639_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max6639_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6639\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 46, i16 47, i16 -2], [24 x i8] zeroinitializer }, align 32
@max6639_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max6639_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @max6639_group, ptr null], [24 x i8] zeroinitializer }, align 32
@rpm_ranges = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 2000, i32 4000, i32 8000, i32 16000], [16 x i8] zeroinitializer }, align 32
@max6639_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @max6639_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@max6639_attrs = internal global { [23 x ptr], [36 x i8] } { [23 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp1_emergency, ptr @sensor_dev_attr_temp2_emergency, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_fan2_fault, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp1_emergency_alarm, ptr @sensor_dev_attr_temp2_emergency_alarm, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_crit_show, ptr @temp_crit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_emergency = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_emergency_show, ptr @temp_emergency_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_emergency = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_emergency_show, ptr @temp_emergency_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_emergency_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_emergency_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@max6639_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max6639_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/max6639.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting max6639 update\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_emergency\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_emergency\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_fault\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1_emergency_alarm\00", [42 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp2_emergency_alarm\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2000, i64 4000, i64 8000, i64 16000]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"max6639_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 577, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 580, i32 14 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"max6639_pm_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 575, i32 8 }
@___asan_gen_.39 = private unnamed_addr constant [11 x i8] c"max6639_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 568, i32 35 }
@___asan_gen_.42 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 25, i32 29 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 531, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"max6639_groups\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [11 x i8] c"rpm_ranges\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 60, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"max6639_group\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 383, i32 1 }
@___asan_gen_.60 = private unnamed_addr constant [14 x i8] c"max6639_attrs\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 358, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_emergency\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_emergency\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_fault\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_fault\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_temp1_emergency_alarm\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [38 x i8] c"sensor_dev_attr_temp2_emergency_alarm\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 334, i32 8 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 163, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 105, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 335, i32 8 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 336, i32 8 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 175, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 337, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 338, i32 8 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 339, i32 8 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 340, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 341, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 342, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 343, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 344, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 345, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 346, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 347, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 348, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 349, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 350, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 351, i32 8 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 352, i32 8 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 353, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 354, i32 8 }
@___asan_gen_.207 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.208 = private constant [27 x i8] c"../drivers/hwmon/max6639.c\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.208, i32 355, i32 8 }
@llvm.compiler.used = appending global [67 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description307, ptr @__UNIQUE_ID_file308, ptr @__UNIQUE_ID_license309, ptr @__exitcall_max6639_driver_exit, ptr @__initcall__kmod_max6639__305_589_max6639_driver_init6, ptr @max6639_driver_exit, ptr @max6639_driver, ptr @.str, ptr @max6639_pm_ops, ptr @max6639_id, ptr @normal_i2c, ptr @max6639_probe.__key, ptr @.str.1, ptr @max6639_groups, ptr @rpm_ranges, ptr @max6639_group, ptr @max6639_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp1_emergency, ptr @sensor_dev_attr_temp2_emergency, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan1_fault, ptr @sensor_dev_attr_fan2_fault, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp1_emergency_alarm, ptr @sensor_dev_attr_temp2_emergency_alarm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpm_ranges to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6639_attrs to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_emergency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_emergency to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_emergency_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_emergency_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6639_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6639_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6639_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max6639_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6639_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 124, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6639_probe.__key) #8
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %1 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i.i, align 8
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.max6639_init_client.exit_crit_edge

if.end.max6639_init_client.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end.i:                                         ; preds = %if.end
  %tobool2.not.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i, label %if.end10.thread163.i, label %land.lhs.true.i

if.end10.thread163.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %ppr11165.i = getelementptr inbounds %struct.max6639_data, ptr %call.i, i32 0, i32 12
  %3 = ptrtoint ptr %ppr11165.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %ppr11165.i, align 1
  br label %if.end18.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ppr.i = getelementptr inbounds %struct.max6639_platform_data, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %ppr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ppr.i, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %if.end10.thread.i, label %if.end10.i

if.end10.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = trunc i32 %5 to i8
  %ppr11159.i = getelementptr inbounds %struct.max6639_data, ptr %call.i, i32 0, i32 12
  %sub160.i = add nsw i8 %conv.i, -1
  %8 = ptrtoint ptr %ppr11159.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %sub160.i, ptr %ppr11159.i, align 1
  br label %if.then15.i

if.end10.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %ppr11.i = getelementptr inbounds %struct.max6639_data, ptr %call.i, i32 0, i32 12
  %9 = ptrtoint ptr %ppr11.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %ppr11.i, align 1
  br label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i, %if.end10.thread.i
  %ppr11161.i = phi ptr [ %ppr11159.i, %if.end10.thread.i ], [ %ppr11.i, %if.end10.i ]
  %rpm_range16.i = getelementptr inbounds %struct.max6639_platform_data, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %rpm_range16.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rpm_range16.i, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %11, label %for.inc.3.i.i [
    i32 2000, label %if.then15.i.if.end18.i_crit_edge
    i32 4000, label %cleanup.fold.split.i.i
    i32 8000, label %cleanup.fold.split6.i.i
    i32 16000, label %cleanup.fold.split7.i.i
  ]

if.then15.i.if.end18.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

for.inc.3.i.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

cleanup.fold.split.i.i:                           ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

cleanup.fold.split6.i.i:                          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

cleanup.fold.split7.i.i:                          ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.end18.i:                                       ; preds = %cleanup.fold.split7.i.i, %cleanup.fold.split6.i.i, %cleanup.fold.split.i.i, %for.inc.3.i.i, %if.then15.i.if.end18.i_crit_edge, %if.end10.thread163.i
  %ppr11162.i = phi ptr [ %ppr11165.i, %if.end10.thread163.i ], [ %ppr11161.i, %if.then15.i.if.end18.i_crit_edge ], [ %ppr11161.i, %for.inc.3.i.i ], [ %ppr11161.i, %cleanup.fold.split.i.i ], [ %ppr11161.i, %cleanup.fold.split6.i.i ], [ %ppr11161.i, %cleanup.fold.split7.i.i ]
  %rpm_range.0.i = phi i8 [ 1, %if.end10.thread163.i ], [ 0, %if.then15.i.if.end18.i_crit_edge ], [ 1, %for.inc.3.i.i ], [ 1, %cleanup.fold.split.i.i ], [ 2, %cleanup.fold.split6.i.i ], [ 3, %cleanup.fold.split7.i.i ]
  %rpm_range20.i = getelementptr inbounds %struct.max6639_data, ptr %call.i, i32 0, i32 13
  %13 = ptrtoint ptr %rpm_range20.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %rpm_range.0.i, ptr %rpm_range20.i, align 2
  %conv33.i = or i8 %rpm_range.0.i, -128
  %14 = ptrtoint ptr %ppr11162.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ppr11162.i, align 1
  %shl.i = shl i8 %15, 6
  %call27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 36, i8 noundef zeroext %shl.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end18.i.max6639_init_client.exit_crit_edge

if.end18.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

for.cond.i:                                       ; preds = %if.end90.i
  %16 = ptrtoint ptr %ppr11162.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ppr11162.i, align 1
  %shl.i.1 = shl i8 %17, 6
  %call27.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 37, i8 noundef zeroext %shl.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i.1)
  %tobool28.not.i.1 = icmp eq i32 %call27.i.1, 0
  br i1 %tobool28.not.i.1, label %if.end30.i.1, label %for.cond.i.max6639_init_client.exit_crit_edge

for.cond.i.max6639_init_client.exit_crit_edge:    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end30.i.1:                                     ; preds = %for.cond.i
  %call34.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 20, i8 noundef zeroext %conv33.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.1)
  %tobool35.not.i.1 = icmp eq i32 %call34.i.1, 0
  br i1 %tobool35.not.i.1, label %if.end37.i.1, label %if.end30.i.1.max6639_init_client.exit_crit_edge

if.end30.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end30.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end37.i.1:                                     ; preds = %if.end30.i.1
  br i1 %tobool2.not.i, label %if.end37.i.1.if.else49.i.1_crit_edge, label %land.lhs.true39.i.1

if.end37.i.1.if.else49.i.1_crit_edge:             ; preds = %if.end37.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i.1

land.lhs.true39.i.1:                              ; preds = %if.end37.i.1
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %2, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %cmp42.i.1 = icmp eq i8 %19, 0
  br i1 %cmp42.i.1, label %land.lhs.true39.i.1.if.end54.i.1_crit_edge, label %land.lhs.true39.i.1.if.else49.i.1_crit_edge

land.lhs.true39.i.1.if.else49.i.1_crit_edge:      ; preds = %land.lhs.true39.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i.1

land.lhs.true39.i.1.if.end54.i.1_crit_edge:       ; preds = %land.lhs.true39.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i.1

if.else49.i.1:                                    ; preds = %land.lhs.true39.i.1.if.else49.i.1_crit_edge, %if.end37.i.1.if.else49.i.1_crit_edge
  br label %if.end54.i.1

if.end54.i.1:                                     ; preds = %if.else49.i.1, %land.lhs.true39.i.1.if.end54.i.1_crit_edge
  %.sink.i.1 = phi i8 [ 2, %if.else49.i.1 ], [ 0, %land.lhs.true39.i.1.if.end54.i.1_crit_edge ]
  %call53.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 21, i8 noundef zeroext %.sink.i.1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i.1)
  %tobool55.not.i.1 = icmp eq i32 %call53.i.1, 0
  br i1 %tobool55.not.i.1, label %if.end57.i.1, label %if.end54.i.1.max6639_init_client.exit_crit_edge

if.end54.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end54.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end57.i.1:                                     ; preds = %if.end54.i.1
  %call61.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 23, i8 noundef zeroext 67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i.1)
  %tobool62.not.i.1 = icmp eq i32 %call61.i.1, 0
  br i1 %tobool62.not.i.1, label %if.end64.i.1, label %if.end57.i.1.max6639_init_client.exit_crit_edge

if.end57.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end57.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end64.i.1:                                     ; preds = %if.end57.i.1
  %arrayidx.i.1 = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 9, i32 1
  %20 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 80, ptr %arrayidx.i.1, align 1
  %arrayidx65.i.1 = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %arrayidx65.i.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 90, ptr %arrayidx65.i.1, align 1
  %arrayidx66.i.1 = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 11, i32 1
  %22 = ptrtoint ptr %arrayidx66.i.1 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 100, ptr %arrayidx66.i.1, align 1
  %call71.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 13, i8 noundef zeroext 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i.1)
  %tobool72.not.i.1 = icmp eq i32 %call71.i.1, 0
  br i1 %tobool72.not.i.1, label %if.end74.i.1, label %if.end64.i.1.max6639_init_client.exit_crit_edge

if.end64.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end64.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end74.i.1:                                     ; preds = %if.end64.i.1
  %23 = ptrtoint ptr %arrayidx65.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx65.i.1, align 1
  %call79.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 9, i8 noundef zeroext %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i.1)
  %tobool80.not.i.1 = icmp eq i32 %call79.i.1, 0
  br i1 %tobool80.not.i.1, label %if.end82.i.1, label %if.end74.i.1.max6639_init_client.exit_crit_edge

if.end74.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end74.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end82.i.1:                                     ; preds = %if.end74.i.1
  %25 = ptrtoint ptr %arrayidx66.i.1 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx66.i.1, align 1
  %call87.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 11, i8 noundef zeroext %26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i.1)
  %tobool88.not.i.1 = icmp eq i32 %call87.i.1, 0
  br i1 %tobool88.not.i.1, label %if.end90.i.1, label %if.end82.i.1.max6639_init_client.exit_crit_edge

if.end82.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end82.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end90.i.1:                                     ; preds = %if.end82.i.1
  %arrayidx91.i.1 = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %arrayidx91.i.1 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 120, ptr %arrayidx91.i.1, align 1
  %call96.i.1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 39, i8 noundef zeroext 120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i.1)
  %tobool97.not.i.1 = icmp eq i32 %call96.i.1, 0
  br i1 %tobool97.not.i.1, label %for.cond.i.1, label %if.end90.i.1.max6639_init_client.exit_crit_edge

if.end90.i.1.max6639_init_client.exit_crit_edge:  ; preds = %if.end90.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

for.cond.i.1:                                     ; preds = %if.end90.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %call100.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 4, i8 noundef zeroext 56) #8
  br label %max6639_init_client.exit

if.end30.i:                                       ; preds = %if.end18.i
  %call34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 16, i8 noundef zeroext %conv33.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end37.i, label %if.end30.i.max6639_init_client.exit_crit_edge

if.end30.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end37.i:                                       ; preds = %if.end30.i
  br i1 %tobool2.not.i, label %if.end37.i.if.else49.i_crit_edge, label %land.lhs.true39.i

if.end37.i.if.else49.i_crit_edge:                 ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i

land.lhs.true39.i:                                ; preds = %if.end37.i
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %2, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp42.i = icmp eq i8 %29, 0
  br i1 %cmp42.i, label %land.lhs.true39.i.if.end54.i_crit_edge, label %land.lhs.true39.i.if.else49.i_crit_edge

land.lhs.true39.i.if.else49.i_crit_edge:          ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else49.i

land.lhs.true39.i.if.end54.i_crit_edge:           ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.else49.i:                                      ; preds = %land.lhs.true39.i.if.else49.i_crit_edge, %if.end37.i.if.else49.i_crit_edge
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.else49.i, %land.lhs.true39.i.if.end54.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.else49.i ], [ 0, %land.lhs.true39.i.if.end54.i_crit_edge ]
  %call53.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 17, i8 noundef zeroext %.sink.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.i)
  %tobool55.not.i = icmp eq i32 %call53.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end54.i.max6639_init_client.exit_crit_edge

if.end54.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end57.i:                                       ; preds = %if.end54.i
  %call61.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 19, i8 noundef zeroext 67) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end57.i.max6639_init_client.exit_crit_edge

if.end57.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end64.i:                                       ; preds = %if.end57.i
  %arrayidx.i = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 9, i32 0
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 80, ptr %arrayidx.i, align 1
  %arrayidx65.i = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 10, i32 0
  %31 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 90, ptr %arrayidx65.i, align 1
  %arrayidx66.i = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 11, i32 0
  %32 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 100, ptr %arrayidx66.i, align 1
  %call71.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 12, i8 noundef zeroext 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %if.end74.i, label %if.end64.i.max6639_init_client.exit_crit_edge

if.end64.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end74.i:                                       ; preds = %if.end64.i
  %33 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx65.i, align 1
  %call79.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 8, i8 noundef zeroext %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end82.i, label %if.end74.i.max6639_init_client.exit_crit_edge

if.end74.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end82.i:                                       ; preds = %if.end74.i
  %35 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx66.i, align 1
  %call87.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 10, i8 noundef zeroext %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87.i)
  %tobool88.not.i = icmp eq i32 %call87.i, 0
  br i1 %tobool88.not.i, label %if.end90.i, label %if.end82.i.max6639_init_client.exit_crit_edge

if.end82.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

if.end90.i:                                       ; preds = %if.end82.i
  %arrayidx91.i = getelementptr %struct.max6639_data, ptr %call.i, i32 0, i32 8, i32 0
  %37 = ptrtoint ptr %arrayidx91.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 120, ptr %arrayidx91.i, align 1
  %call96.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 38, i8 noundef zeroext 120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call96.i)
  %tobool97.not.i = icmp eq i32 %call96.i, 0
  br i1 %tobool97.not.i, label %for.cond.i, label %if.end90.i.max6639_init_client.exit_crit_edge

if.end90.i.max6639_init_client.exit_crit_edge:    ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max6639_init_client.exit

max6639_init_client.exit:                         ; preds = %if.end90.i.max6639_init_client.exit_crit_edge, %if.end82.i.max6639_init_client.exit_crit_edge, %if.end74.i.max6639_init_client.exit_crit_edge, %if.end64.i.max6639_init_client.exit_crit_edge, %if.end57.i.max6639_init_client.exit_crit_edge, %if.end54.i.max6639_init_client.exit_crit_edge, %if.end30.i.max6639_init_client.exit_crit_edge, %for.cond.i.1, %if.end90.i.1.max6639_init_client.exit_crit_edge, %if.end82.i.1.max6639_init_client.exit_crit_edge, %if.end74.i.1.max6639_init_client.exit_crit_edge, %if.end64.i.1.max6639_init_client.exit_crit_edge, %if.end57.i.1.max6639_init_client.exit_crit_edge, %if.end54.i.1.max6639_init_client.exit_crit_edge, %if.end30.i.1.max6639_init_client.exit_crit_edge, %for.cond.i.max6639_init_client.exit_crit_edge, %if.end18.i.max6639_init_client.exit_crit_edge, %if.end.max6639_init_client.exit_crit_edge
  %err.1.i = phi i32 [ %call1.i, %if.end.max6639_init_client.exit_crit_edge ], [ %call100.i, %for.cond.i.1 ], [ %call96.i, %if.end90.i.max6639_init_client.exit_crit_edge ], [ %call87.i, %if.end82.i.max6639_init_client.exit_crit_edge ], [ %call79.i, %if.end74.i.max6639_init_client.exit_crit_edge ], [ %call71.i, %if.end64.i.max6639_init_client.exit_crit_edge ], [ %call61.i, %if.end57.i.max6639_init_client.exit_crit_edge ], [ %call53.i, %if.end54.i.max6639_init_client.exit_crit_edge ], [ %call34.i, %if.end30.i.max6639_init_client.exit_crit_edge ], [ %call27.i, %if.end18.i.max6639_init_client.exit_crit_edge ], [ %call27.i.1, %for.cond.i.max6639_init_client.exit_crit_edge ], [ %call34.i.1, %if.end30.i.1.max6639_init_client.exit_crit_edge ], [ %call53.i.1, %if.end54.i.1.max6639_init_client.exit_crit_edge ], [ %call61.i.1, %if.end57.i.1.max6639_init_client.exit_crit_edge ], [ %call71.i.1, %if.end64.i.1.max6639_init_client.exit_crit_edge ], [ %call79.i.1, %if.end74.i.1.max6639_init_client.exit_crit_edge ], [ %call87.i.1, %if.end82.i.1.max6639_init_client.exit_crit_edge ], [ %call96.i.1, %if.end90.i.1.max6639_init_client.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1.i)
  %cmp = icmp slt i32 %err.1.i, 0
  br i1 %cmp, label %max6639_init_client.exit.cleanup_crit_edge, label %if.end5

max6639_init_client.exit.cleanup_crit_edge:       ; preds = %max6639_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %max6639_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call6 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6639_groups) #8
  %cmp.i.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  %38 = ptrtoint ptr %call6 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %38, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %max6639_init_client.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ %err.1.i, %max6639_init_client.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6639_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #8
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 88
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %call3)
  %cmp4.not = icmp eq i32 %call3, 77
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6639_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %call, i32 0, i32 4, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %4 to i32
  %mul = mul nuw nsw i32 %conv, 125
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max6639_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 200
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
  %valid = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max6639_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max6639_update_device, %do.end)) #8
          to label %if.then7 [label %do.end], !srcloc !115

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max6639_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev8, ptr noundef nonnull @.str.6) #8
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end13

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = inttoptr i32 %call9 to ptr
  br label %abort

if.end13:                                         ; preds = %do.end
  %conv = trunc i32 %call9 to i8
  %status = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %status, align 4
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end13.if.then21_crit_edge, label %if.end23

if.end13.if.then21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.then21:                                        ; preds = %if.end45.if.then21_crit_edge, %if.end13.if.then21_crit_edge
  %call18.lcssa = phi i32 [ %call18, %if.end13.if.then21_crit_edge ], [ %call18.1, %if.end45.if.then21_crit_edge ]
  %11 = inttoptr i32 %call18.lcssa to ptr
  br label %abort

if.end23:                                         ; preds = %if.end13
  %conv24 = trunc i32 %call18 to i8
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv24, ptr %arrayidx, align 1
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.end23.if.then30_crit_edge, label %if.end32

if.end23.if.then30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %if.end23.1.if.then30_crit_edge, %if.end23.if.then30_crit_edge
  %call27.lcssa = phi i32 [ %call27, %if.end23.if.then30_crit_edge ], [ %call27.1, %if.end23.1.if.then30_crit_edge ]
  %13 = inttoptr i32 %call27.lcssa to ptr
  br label %abort

if.end32:                                         ; preds = %if.end23
  %14 = lshr i32 %call27, 5
  %conv33 = trunc i32 %14 to i16
  %arrayidx34 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 4, i32 0
  %15 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv33, ptr %arrayidx34, align 2
  %arrayidx36 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 5, i32 0
  %16 = trunc i32 %call27 to i8
  %17 = and i8 %16, 1
  %18 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx36, align 1
  %call40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end32.if.then43_crit_edge, label %if.end45

if.end32.if.then43_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %if.end32.1.if.then43_crit_edge, %if.end32.if.then43_crit_edge
  %call40.lcssa = phi i32 [ %call40, %if.end32.if.then43_crit_edge ], [ %call40.1, %if.end32.1.if.then43_crit_edge ]
  %19 = inttoptr i32 %call40.lcssa to ptr
  br label %abort

if.end45:                                         ; preds = %if.end32
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx34, align 2
  %call40.tr = trunc i32 %call40 to i16
  %22 = shl i16 %call40.tr, 3
  %conv49 = or i16 %21, %22
  store i16 %conv49, ptr %arrayidx34, align 2
  %call18.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.1)
  %cmp19.1 = icmp slt i32 %call18.1, 0
  br i1 %cmp19.1, label %if.end45.if.then21_crit_edge, label %if.end23.1

if.end45.if.then21_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then21

if.end23.1:                                       ; preds = %if.end45
  %conv24.1 = trunc i32 %call18.1 to i8
  %arrayidx.1 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv24.1, ptr %arrayidx.1, align 1
  %call27.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.1)
  %cmp28.1 = icmp slt i32 %call27.1, 0
  br i1 %cmp28.1, label %if.end23.1.if.then30_crit_edge, label %if.end32.1

if.end23.1.if.then30_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.end32.1:                                       ; preds = %if.end23.1
  %24 = lshr i32 %call27.1, 5
  %conv33.1 = trunc i32 %24 to i16
  %arrayidx34.1 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv33.1, ptr %arrayidx34.1, align 2
  %arrayidx36.1 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 5, i32 1
  %26 = trunc i32 %call27.1 to i8
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx36.1, align 1
  %call40.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.1)
  %cmp41.1 = icmp slt i32 %call40.1, 0
  br i1 %cmp41.1, label %if.end32.1.if.then43_crit_edge, label %if.end45.1

if.end32.1.if.then43_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end45.1:                                       ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx34.1, align 2
  %call40.tr.1 = trunc i32 %call40.1 to i16
  %31 = shl i16 %call40.tr.1, 3
  %conv49.1 = or i16 %30, %31
  store i16 %conv49.1, ptr %arrayidx34.1, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %32 = load volatile i32, ptr @jiffies, align 128
  %33 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %last_updated, align 4
  %valid51 = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %valid51 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 1, ptr %valid51, align 4
  br label %abort

abort:                                            ; preds = %if.end45.1, %if.then43, %if.then30, %if.then21, %if.then11, %lor.lhs.false.abort_crit_edge
  %ret.1 = phi ptr [ %1, %lor.lhs.false.abort_crit_edge ], [ %9, %if.then11 ], [ %11, %if.then21 ], [ %13, %if.then30 ], [ %19, %if.then43 ], [ %1, %if.end45.1 ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %ret.1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6639_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %call, i32 0, i32 5, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1, !range !114
  %5 = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %5)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 9, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !116
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = udiv i32 %6, 1000
  %7 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %conv = trunc i32 %7 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 9, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %11 = load i32, ptr %index, align 4
  %12 = trunc i32 %11 to i8
  %conv11 = add i8 %12, 12
  %arrayidx14 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 9, i32 %11
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %14) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 10, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !116
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = udiv i32 %6, 1000
  %7 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %conv = trunc i32 %7 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 10, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %11 = load i32, ptr %index, align 4
  %12 = trunc i32 %11 to i8
  %conv11 = add i8 %12, 8
  %arrayidx14 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 10, i32 %11
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %14) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_emergency_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 11, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_emergency_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !116
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = udiv i32 %6, 1000
  %7 = call i32 @llvm.umin.i32(i32 %div, i32 255)
  %conv = trunc i32 %7 to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 11, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %11 = load i32, ptr %index, align 4
  %12 = trunc i32 %11 to i8
  %conv11 = add i8 %12, 10
  %arrayidx14 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 11, i32 %11
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %14) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i16
  %mul = mul nuw i16 %conv, 255
  %div2 = udiv i16 %mul, 120
  %div.zext = zext i16 %div2 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %div.zext)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !116
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.max6639_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %mul = mul i32 %10, 120
  %div = udiv i32 %mul, 255
  %conv = trunc i32 %div to i8
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 8, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx, align 1
  %14 = load i32, ptr %index, align 4
  %15 = trunc i32 %14 to i8
  %conv11 = add i8 %15, 38
  %arrayidx14 = getelementptr %struct.max6639_data, ptr %1, i32 0, i32 8, i32 %14
  %16 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx14, align 1
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv11, i8 noundef zeroext %17) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6639_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.max6639_data, ptr %call, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.29)
  switch i8 %4, label %cond.false [
    i8 0, label %if.end.cond.end_crit_edge
    i8 -1, label %if.end.cond.end_crit_edge24
  ]

if.end.cond.end_crit_edge24:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %4 to i32
  %rpm_range = getelementptr inbounds %struct.max6639_data, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %rpm_range to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rpm_range, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx10 = getelementptr [4 x i32], ptr @rpm_ranges, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  %mul = mul i32 %9, 30
  %div = sdiv i32 %mul, %conv
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge, %if.end.cond.end_crit_edge24
  %cond = phi i32 [ %div, %cond.false ], [ 0, %if.end.cond.end_crit_edge ], [ 0, %if.end.cond.end_crit_edge24 ]
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %cond)
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call15, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @max6639_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %status = getelementptr inbounds %struct.max6639_data, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 4
  %conv = zext i8 %2 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = lshr i32 %conv, %4
  %6 = and i32 %5, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %6)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6639_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = trunc i32 %call to i8
  %conv = or i8 %0, -128
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4, i8 noundef zeroext %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6639_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = trunc i32 %call to i8
  %conv = and i8 %0, 127
  %call1 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 4, i8 noundef zeroext %conv) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !40, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !103}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_max6639__305_589_max6639_driver_init6, !1, !"__initcall__kmod_max6639__305_589_max6639_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max6639.c", i32 589, i32 1}
!2 = !{ptr @__exitcall_max6639_driver_exit, !1, !"__exitcall_max6639_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max6639.c", i32 591, i32 1}
!5 = !{ptr @__UNIQUE_ID_description307, !6, !"__UNIQUE_ID_description307", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max6639.c", i32 592, i32 1}
!7 = !{ptr @__UNIQUE_ID_file308, !8, !"__UNIQUE_ID_file308", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max6639.c", i32 593, i32 1}
!9 = !{ptr @__UNIQUE_ID_license309, !8, !"__UNIQUE_ID_license309", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max6639.c", i32 580, i32 14}
!12 = !{ptr @max6639_driver, !13, !"max6639_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max6639.c", i32 577, i32 26}
!14 = !{ptr @max6639_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max6639.c", i32 531, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @rpm_ranges, !18, !"rpm_ranges", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max6639.c", i32 60, i32 18}
!19 = !{ptr @max6639_groups, !20, !"max6639_groups", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max6639.c", i32 383, i32 1}
!21 = !{ptr @max6639_group, !20, !"max6639_group", i1 false, i1 false}
!22 = !{ptr @max6639_attrs, !23, !"max6639_attrs", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/max6639.c", i32 358, i32 26}
!24 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/max6639.c", i32 334, i32 8}
!26 = !{ptr @sensor_dev_attr_temp1_input, !25, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!27 = !{ptr @.str.3, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/max6639.c", i32 163, i32 22}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/max6639.c", i32 105, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @max6639_update_device.__UNIQUE_ID_ddebug288, !30, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!34 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/max6639.c", i32 335, i32 8}
!36 = !{ptr @sensor_dev_attr_temp2_input, !35, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/max6639.c", i32 336, i32 8}
!39 = !{ptr @sensor_dev_attr_temp1_fault, !38, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/max6639.c", i32 175, i32 22}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/max6639.c", i32 337, i32 8}
!44 = !{ptr @sensor_dev_attr_temp2_fault, !43, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/max6639.c", i32 338, i32 8}
!47 = !{ptr @sensor_dev_attr_temp1_max, !46, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!48 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/max6639.c", i32 339, i32 8}
!50 = !{ptr @sensor_dev_attr_temp2_max, !49, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!51 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/max6639.c", i32 340, i32 8}
!53 = !{ptr @sensor_dev_attr_temp1_crit, !52, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/max6639.c", i32 341, i32 8}
!56 = !{ptr @sensor_dev_attr_temp2_crit, !55, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/max6639.c", i32 342, i32 8}
!59 = !{ptr @sensor_dev_attr_temp1_emergency, !58, !"sensor_dev_attr_temp1_emergency", i1 false, i1 false}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/max6639.c", i32 343, i32 8}
!62 = !{ptr @sensor_dev_attr_temp2_emergency, !61, !"sensor_dev_attr_temp2_emergency", i1 false, i1 false}
!63 = !{ptr @.str.17, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/max6639.c", i32 344, i32 8}
!65 = !{ptr @sensor_dev_attr_pwm1, !64, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/max6639.c", i32 345, i32 8}
!68 = !{ptr @sensor_dev_attr_pwm2, !67, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!69 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/max6639.c", i32 346, i32 8}
!71 = !{ptr @sensor_dev_attr_fan1_input, !70, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/max6639.c", i32 347, i32 8}
!74 = !{ptr @sensor_dev_attr_fan2_input, !73, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!75 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/max6639.c", i32 348, i32 8}
!77 = !{ptr @sensor_dev_attr_fan1_fault, !76, !"sensor_dev_attr_fan1_fault", i1 false, i1 false}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/max6639.c", i32 349, i32 8}
!80 = !{ptr @sensor_dev_attr_fan2_fault, !79, !"sensor_dev_attr_fan2_fault", i1 false, i1 false}
!81 = !{ptr @.str.23, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/max6639.c", i32 350, i32 8}
!83 = !{ptr @sensor_dev_attr_temp1_max_alarm, !82, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/max6639.c", i32 351, i32 8}
!86 = !{ptr @sensor_dev_attr_temp2_max_alarm, !85, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/max6639.c", i32 352, i32 8}
!89 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !88, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/max6639.c", i32 353, i32 8}
!92 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !91, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/max6639.c", i32 354, i32 8}
!95 = !{ptr @sensor_dev_attr_temp1_emergency_alarm, !94, !"sensor_dev_attr_temp1_emergency_alarm", i1 false, i1 false}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/max6639.c", i32 355, i32 8}
!98 = !{ptr @sensor_dev_attr_temp2_emergency_alarm, !97, !"sensor_dev_attr_temp2_emergency_alarm", i1 false, i1 false}
!99 = !{ptr @max6639_pm_ops, !100, !"max6639_pm_ops", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/max6639.c", i32 575, i32 8}
!101 = !{ptr @max6639_id, !102, !"max6639_id", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/max6639.c", i32 568, i32 35}
!103 = !{ptr @normal_i2c, !104, !"normal_i2c", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/max6639.c", i32 25, i32 29}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i8 0, i8 2}
!115 = !{i64 2148968649, i64 2148968654, i64 2148968667, i64 2148968711, i64 2148968745, i64 2148968766}
!116 = !{!"auto-init"}
