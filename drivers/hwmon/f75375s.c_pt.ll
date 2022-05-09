; ModuleID = '/llk/IR_all_yes/drivers/hwmon/f75375s.c_pt.bc'
source_filename = "../drivers/hwmon/f75375s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.f75375_data = type { i16, ptr, ptr, i32, %struct.mutex, i8, i32, i32, [4 x i8], [4 x i8], [4 x i8], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i8, [2 x i8], [2 x i8], [2 x i8], [2 x i16], [2 x i8], [2 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.f75375s_platform_data = type { [2 x i8], [2 x i8] }

@__initcall__kmod_f75375s__312_905_f75375_driver_init6 = internal global ptr @f75375_driver_init, section ".initcall6.init", align 4
@f75375_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @f75375_remove, ptr @f75375_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @f75375_id, ptr @f75375_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_f75375_driver_exit = internal global ptr @f75375_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author313 = internal constant [27 x i8] c"f75375s.author=Riku Voipio\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [35 x i8] c"f75375s.file=drivers/hwmon/f75375s\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [20 x i8] c"f75375s.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description316 = internal constant [68 x i8] c"f75375s.description=F75373/F75375/F75387 hardware monitoring driver\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f75375\00", [25 x i8] zeroinitializer }, align 32
@f75375_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"f75373\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"f75375\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"f75387\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 45, i16 46, i16 -2], [26 x i8] zeroinitializer }, align 32
@f75375_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @f75375_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@f75375_attributes = internal global { [33 x ptr], [60 x i8] } { [33 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_max, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_target, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @set_temp_max_hyst }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp11, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @set_temp_max_hyst }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @set_fan_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_target, ptr @set_fan_target }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_max, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @set_fan_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_target = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_target, ptr @set_fan_target }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @set_pwm_mode }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @set_pwm }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @set_pwm_enable }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @set_pwm_mode }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @set_in_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @set_in_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_max\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_target\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/f75375s.c\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unexpected pwm_enable value %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_max\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan2_target\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@f75375_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f75373\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"f75387\00", [25 x i8] zeroinitializer }, align 32
@f75375_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.12, i32 899, ptr @.str.41, ptr @.str.42 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"found %s version: %02X\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f75375_detect\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@f75375_detect._entry_ptr = internal global ptr @f75375_detect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.43 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 16, i64 516, i64 774, i64 1040]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.52 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.54 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.55 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.56 = internal global [7 x i64] [i64 5, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.57 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 4]
@__sancov_gen_cov_switch_values.58 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"f75375_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 127, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 130, i32 11 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"f75375_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 119, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 30, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"f75375_group\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 748, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [18 x i8] c"f75375_attributes\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 712, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_max\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan1_target\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_max\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan2_target\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_mode\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_mode\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 677, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 581, i32 22 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 680, i32 8 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 678, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 682, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 685, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 683, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 687, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 688, i32 8 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 689, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 691, i32 8 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 279, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 693, i32 8 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 694, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 695, i32 8 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 697, i32 8 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 699, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 701, i32 8 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 703, i32 8 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 705, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 707, i32 8 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 709, i32 8 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 657, i32 8 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 658, i32 8 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 660, i32 8 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 662, i32 8 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 663, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 665, i32 8 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 667, i32 8 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 668, i32 8 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 670, i32 8 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 672, i32 8 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 673, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 675, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 832, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 892, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 894, i32 10 }
@___asan_gen_.290 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.303 = private constant [27 x i8] c"../drivers/hwmon/f75375s.c\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.303, i32 899, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description316, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_f75375_driver_exit, ptr @__initcall__kmod_f75375s__312_905_f75375_driver_init6, ptr @f75375_detect._entry, ptr @f75375_detect._entry_ptr, ptr @f75375_driver_exit, ptr @f75375_driver, ptr @.str, ptr @f75375_id, ptr @normal_i2c, ptr @f75375_group, ptr @f75375_attributes, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_max, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_target, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_max, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_target, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @f75375_probe.__key, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_attributes to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_target to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f75375_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @f75375_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @f75375_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @f75375_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @f75375_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f75375_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %hwmon_dev = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f75375_group) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f75375_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %7(ptr noundef %3) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 164, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @f75375_probe.__key) #8
  %call7 = tail call ptr @i2c_match_id(ptr noundef nonnull @f75375_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call7, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %kind = getelementptr inbounds %struct.f75375_data, ptr %call.i, i32 0, i32 3
  %11 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %kind, align 4
  %call9 = tail call i32 @sysfs_create_group(ptr noundef %dev, ptr noundef nonnull @f75375_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %12 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.not = icmp eq i32 %13, 0
  br i1 %cmp.not, label %if.end12.if.end27_crit_edge, label %if.then14

if.end12.if.end27_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then14:                                        ; preds = %if.end12
  %call17 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm1_mode, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.then14.exit_remove_crit_edge

if.then14.exit_remove_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove

if.end20:                                         ; preds = %if.then14
  %call23 = tail call i32 @sysfs_chmod_file(ptr noundef %dev, ptr noundef nonnull @sensor_dev_attr_pwm2_mode, i16 noundef zeroext 420) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end20.if.end27_crit_edge, label %if.end20.exit_remove_crit_edge

if.end20.exit_remove_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.end20.if.end27_crit_edge, %if.end12.if.end27_crit_edge
  %call29 = tail call ptr @hwmon_device_register(ptr noundef %dev) #8
  %hwmon_dev = getelementptr inbounds %struct.f75375_data, ptr %call.i, i32 0, i32 1
  %14 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call29, ptr %hwmon_dev, align 4
  %cmp.i62 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then32, label %if.end35

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call29 to i32
  br label %exit_remove

if.end35:                                         ; preds = %if.end27
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end70.i

if.then.i:                                        ; preds = %if.end35
  %call.i.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #8
  %call.i172.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 96) #8
  %16 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp5.i = icmp eq i32 %17, 2
  br i1 %cmp5.i, label %if.then7.i, label %if.else47.i

if.then7.i:                                       ; preds = %if.then.i
  %and.i64 = and i32 %call.i172.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64)
  %tobool9.not.i = icmp eq i32 %and.i64, 0
  br i1 %tobool9.not.i, label %if.then10.i, label %if.then7.i.if.end.i_crit_edge

if.then7.i.if.end.i_crit_edge:                    ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then10.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 17, i32 0
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then10.i, %if.then7.i.if.end.i_crit_edge
  %19 = and i32 %call.i172.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not.i = icmp eq i32 %19, 0
  %20 = and i32 %call.i172.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool20.not.i = icmp eq i32 %20, 0
  %tobool14.not.not.i = xor i1 %tobool14.not.i, true
  %brmerge.i = select i1 %tobool14.not.not.i, i1 true, i1 %tobool20.not.i
  br i1 %brmerge.i, label %if.else.i, label %if.then25.i

if.then25.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 0
  %21 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %arrayidx26.i, align 1
  br label %if.then7.1.i

if.else.i:                                        ; preds = %if.end.i
  %tobool20.not.not.i = xor i1 %tobool20.not.i, true
  %brmerge168.i = select i1 %tobool14.not.i, i1 true, i1 %tobool20.not.not.i
  br i1 %brmerge168.i, label %if.else34.i, label %if.then31.i

if.then31.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx33.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 0
  %22 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 3, ptr %arrayidx33.i, align 1
  br label %if.then7.1.i

if.else34.i:                                      ; preds = %if.else.i
  %brmerge171.i = select i1 %tobool14.not.not.i, i1 true, i1 %tobool20.not.not.i
  %arrayidx43.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 0
  br i1 %brmerge171.i, label %if.else41.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %arrayidx43.i, align 1
  br label %if.then7.1.i

if.else41.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %arrayidx43.i, align 1
  br label %if.then7.1.i

if.else47.i:                                      ; preds = %if.then.i
  %and51.i = and i32 %call.i.i63, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.then53.i, label %if.else47.i.if.end56.i_crit_edge

if.else47.i.if.end56.i_crit_edge:                 ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.i

if.then53.i:                                      ; preds = %if.else47.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx55.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 17, i32 0
  %25 = ptrtoint ptr %arrayidx55.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx55.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then53.i, %if.else47.i.if.end56.i_crit_edge
  %shr60.i = lshr i32 %call.i172.i, 4
  %and61.i = and i32 %shr60.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and61.i)
  %switch.selectcmp.i = icmp eq i32 %and61.i, 1
  %switch.select.i = select i1 %switch.selectcmp.i, i8 2, i8 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %switch.selectcmp187.i = icmp eq i32 %and61.i, 0
  %switch.select188.i = select i1 %switch.selectcmp187.i, i8 3, i8 %switch.select.i
  %arrayidx63.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 0
  %26 = ptrtoint ptr %arrayidx63.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %switch.select188.i, ptr %arrayidx63.i, align 1
  %and51.1.i = and i32 %call.i.i63, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.1.i)
  %tobool52.not.1.i = icmp eq i32 %and51.1.i, 0
  br i1 %tobool52.not.1.i, label %if.then53.1.i, label %if.end56.i.if.end56.1.i_crit_edge

if.end56.i.if.end56.1.i_crit_edge:                ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end56.1.i

if.then53.1.i:                                    ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx55.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 17, i32 1
  %27 = ptrtoint ptr %arrayidx55.1.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %arrayidx55.1.i, align 1
  br label %if.end56.1.i

if.end56.1.i:                                     ; preds = %if.then53.1.i, %if.end56.i.if.end56.1.i_crit_edge
  %shr60.1.i = lshr i32 %call.i172.i, 6
  %and61.1.i = and i32 %shr60.1.i, 3
  %28 = zext i32 %and61.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and61.1.i, label %sw.default.1.i [
    i32 0, label %sw.bb.1.i
    i32 1, label %sw.bb64.1.i
  ]

sw.bb64.1.i:                                      ; preds = %if.end56.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  %29 = ptrtoint ptr %arrayidx66.1.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx66.1.i, align 1
  br label %cleanup

sw.bb.1.i:                                        ; preds = %if.end56.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx63.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %arrayidx63.1.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 3, ptr %arrayidx63.1.i, align 1
  br label %cleanup

sw.default.1.i:                                   ; preds = %if.end56.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx68.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  %31 = ptrtoint ptr %arrayidx68.1.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %arrayidx68.1.i, align 1
  br label %cleanup

if.then7.1.i:                                     ; preds = %if.else41.i, %if.then38.i, %if.then31.i, %if.then25.i
  %and.1.i = and i32 %call.i172.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool9.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool9.not.1.i, label %if.then10.1.i, label %if.then7.1.i.if.end.1.i_crit_edge

if.then7.1.i.if.end.1.i_crit_edge:                ; preds = %if.then7.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.1.i

if.then10.1.i:                                    ; preds = %if.then7.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 17, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %arrayidx.1.i, align 1
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then10.1.i, %if.then7.1.i.if.end.1.i_crit_edge
  %33 = and i32 %call.i172.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool14.not.1.i = icmp eq i32 %33, 0
  %34 = and i32 %call.i172.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool20.not.1.i = icmp eq i32 %34, 0
  %tobool14.not.not.1.i = xor i1 %tobool14.not.1.i, true
  %brmerge.1.i = select i1 %tobool14.not.not.1.i, i1 true, i1 %tobool20.not.1.i
  br i1 %brmerge.1.i, label %if.else.1.i, label %if.then25.1.i

if.then25.1.i:                                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx26.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 4, ptr %arrayidx26.1.i, align 1
  br label %cleanup

if.else.1.i:                                      ; preds = %if.end.1.i
  %tobool20.not.not.1.i = xor i1 %tobool20.not.1.i, true
  %brmerge168.1.i = select i1 %tobool14.not.1.i, i1 true, i1 %tobool20.not.not.1.i
  br i1 %brmerge168.1.i, label %if.else34.1.i, label %if.then31.1.i

if.then31.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx33.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %arrayidx33.1.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 3, ptr %arrayidx33.1.i, align 1
  br label %cleanup

if.else34.1.i:                                    ; preds = %if.else.1.i
  %brmerge171.1.i = select i1 %tobool14.not.not.1.i, i1 true, i1 %tobool20.not.not.1.i
  %arrayidx43.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 18, i32 1
  br i1 %brmerge171.1.i, label %if.else41.1.i, label %if.then38.1.i

if.then38.1.i:                                    ; preds = %if.else34.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 2, ptr %arrayidx43.1.i, align 1
  br label %cleanup

if.else41.1.i:                                    ; preds = %if.else34.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %arrayidx43.1.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %arrayidx43.1.i, align 1
  br label %cleanup

if.end70.i:                                       ; preds = %if.end35
  %pwm_enable71.i = getelementptr %struct.f75375s_platform_data, ptr %1, i32 0, i32 1
  %39 = ptrtoint ptr %pwm_enable71.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pwm_enable71.i, align 1
  %conv73.i = zext i8 %40 to i32
  %call74.i = tail call fastcc i32 @set_pwm_enable_direct(ptr noundef %client, i32 noundef 0, i32 noundef %conv73.i) #8
  %arrayidx76.i = getelementptr %struct.f75375s_platform_data, ptr %1, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx76.i, align 1
  %conv77.i = zext i8 %42 to i32
  %call78.i = tail call fastcc i32 @set_pwm_enable_direct(ptr noundef %client, i32 noundef 1, i32 noundef %conv77.i) #8
  %43 = ptrtoint ptr %pwm_enable71.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pwm_enable71.i, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %44, label %do.end.i.i [
    i8 0, label %if.end70.i.lor.lhs.false.i_crit_edge
    i8 1, label %if.end70.i.lor.lhs.false.i_crit_edge65
    i8 3, label %if.end70.i.lor.lhs.false.i_crit_edge66
    i8 2, label %if.end70.i.for.inc114.i_crit_edge
    i8 4, label %if.end70.i.for.inc114.i_crit_edge67
  ]

if.end70.i.for.inc114.i_crit_edge67:              ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.i

if.end70.i.for.inc114.i_crit_edge:                ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.i

if.end70.i.lor.lhs.false.i_crit_edge66:           ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.end70.i.lor.lhs.false.i_crit_edge65:           ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

if.end70.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.i

do.end.i.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = zext i8 %44 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i.i) #8
  %46 = ptrtoint ptr %pwm_enable71.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %.pr.i = load i8, ptr %pwm_enable71.i, align 1
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %do.end.i.i, %if.end70.i.lor.lhs.false.i_crit_edge, %if.end70.i.lor.lhs.false.i_crit_edge65, %if.end70.i.lor.lhs.false.i_crit_edge66
  %47 = phi i8 [ %.pr.i, %do.end.i.i ], [ %44, %if.end70.i.lor.lhs.false.i_crit_edge ], [ %44, %if.end70.i.lor.lhs.false.i_crit_edge65 ], [ %44, %if.end70.i.lor.lhs.false.i_crit_edge66 ]
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %47, label %do.end.i175.i [
    i8 0, label %lor.lhs.false.i.if.end91.i_crit_edge
    i8 1, label %lor.lhs.false.i.if.end91.i_crit_edge68
    i8 4, label %lor.lhs.false.i.if.end91.i_crit_edge69
    i8 2, label %lor.lhs.false.i.for.inc114.i_crit_edge
    i8 3, label %lor.lhs.false.i.for.inc114.i_crit_edge70
  ]

lor.lhs.false.i.for.inc114.i_crit_edge70:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.i

lor.lhs.false.i.for.inc114.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.i

lor.lhs.false.i.if.end91.i_crit_edge69:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

lor.lhs.false.i.if.end91.i_crit_edge68:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

lor.lhs.false.i.if.end91.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.i

do.end.i175.i:                                    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i174.i = zext i8 %47 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i174.i) #8
  br label %if.end91.i

if.end91.i:                                       ; preds = %do.end.i175.i, %lor.lhs.false.i.if.end91.i_crit_edge, %lor.lhs.false.i.if.end91.i_crit_edge68, %lor.lhs.false.i.if.end91.i_crit_edge69
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 1
  %arrayidx113.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 16, i32 0
  %51 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %50, ptr %arrayidx113.i, align 1
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %driver_data.i.i, align 4
  %kind.i.i = getelementptr inbounds %struct.f75375_data, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %kind.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %kind.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %cmp.i.i = icmp eq i32 %55, 2
  %arrayidx.i.i = getelementptr %struct.f75375_data, ptr %53, i32 0, i32 16, i32 0
  %56 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx.i.i, align 1
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end91.i.for.inc114.sink.split.i_crit_edge

if.end91.i.for.inc114.sink.split.i_crit_edge:     ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.sink.split.i

if.then.i.i:                                      ; preds = %if.end91.i
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 116, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.for.inc114.sink.split.i_crit_edge, label %if.then.i.i.for.inc114.i_crit_edge

if.then.i.i.for.inc114.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.i

if.then.i.i.for.inc114.sink.split.i_crit_edge:    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc114.sink.split.i

for.inc114.sink.split.i:                          ; preds = %if.then.i.i.for.inc114.sink.split.i_crit_edge, %if.end91.i.for.inc114.sink.split.i_crit_edge
  %.sink186.i = phi i8 [ 117, %if.then.i.i.for.inc114.sink.split.i_crit_edge ], [ 118, %if.end91.i.for.inc114.sink.split.i_crit_edge ]
  %call.i15.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %.sink186.i, i8 noundef zeroext %57) #8
  br label %for.inc114.i

for.inc114.i:                                     ; preds = %for.inc114.sink.split.i, %if.then.i.i.for.inc114.i_crit_edge, %lor.lhs.false.i.for.inc114.i_crit_edge, %lor.lhs.false.i.for.inc114.i_crit_edge70, %if.end70.i.for.inc114.i_crit_edge, %if.end70.i.for.inc114.i_crit_edge67
  %58 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx76.i, align 1
  %60 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %59, label %do.end.i.1.i [
    i8 0, label %for.inc114.i.lor.lhs.false.1.i_crit_edge
    i8 1, label %for.inc114.i.lor.lhs.false.1.i_crit_edge71
    i8 3, label %for.inc114.i.lor.lhs.false.1.i_crit_edge72
    i8 2, label %for.inc114.i.cleanup_crit_edge
    i8 4, label %for.inc114.i.cleanup_crit_edge73
  ]

for.inc114.i.cleanup_crit_edge73:                 ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc114.i.cleanup_crit_edge:                   ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc114.i.lor.lhs.false.1.i_crit_edge72:       ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.1.i

for.inc114.i.lor.lhs.false.1.i_crit_edge71:       ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.1.i

for.inc114.i.lor.lhs.false.1.i_crit_edge:         ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false.1.i

do.end.i.1.i:                                     ; preds = %for.inc114.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.1.i = zext i8 %59 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i.1.i) #8
  %61 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %.pr.1.i = load i8, ptr %arrayidx76.i, align 1
  br label %lor.lhs.false.1.i

lor.lhs.false.1.i:                                ; preds = %do.end.i.1.i, %for.inc114.i.lor.lhs.false.1.i_crit_edge, %for.inc114.i.lor.lhs.false.1.i_crit_edge71, %for.inc114.i.lor.lhs.false.1.i_crit_edge72
  %62 = phi i8 [ %.pr.1.i, %do.end.i.1.i ], [ %59, %for.inc114.i.lor.lhs.false.1.i_crit_edge ], [ %59, %for.inc114.i.lor.lhs.false.1.i_crit_edge71 ], [ %59, %for.inc114.i.lor.lhs.false.1.i_crit_edge72 ]
  %63 = zext i8 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %62, label %do.end.i175.1.i [
    i8 0, label %lor.lhs.false.1.i.if.end91.1.i_crit_edge
    i8 1, label %lor.lhs.false.1.i.if.end91.1.i_crit_edge74
    i8 4, label %lor.lhs.false.1.i.if.end91.1.i_crit_edge75
    i8 2, label %lor.lhs.false.1.i.cleanup_crit_edge
    i8 3, label %lor.lhs.false.1.i.cleanup_crit_edge76
  ]

lor.lhs.false.1.i.cleanup_crit_edge76:            ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.1.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.1.i.if.end91.1.i_crit_edge75:       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.1.i

lor.lhs.false.1.i.if.end91.1.i_crit_edge74:       ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.1.i

lor.lhs.false.1.i.if.end91.1.i_crit_edge:         ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91.1.i

do.end.i175.1.i:                                  ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i174.1.i = zext i8 %62 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i174.1.i) #8
  br label %if.end91.1.i

if.end91.1.i:                                     ; preds = %do.end.i175.1.i, %lor.lhs.false.1.i.if.end91.1.i_crit_edge, %lor.lhs.false.1.i.if.end91.1.i_crit_edge74, %lor.lhs.false.1.i.if.end91.1.i_crit_edge75
  %arrayidx92.1.i = getelementptr [2 x i8], ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %arrayidx92.1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %arrayidx92.1.i, align 1
  %arrayidx113.1.i = getelementptr %struct.f75375_data, ptr %call.i, i32 0, i32 16, i32 1
  %66 = ptrtoint ptr %arrayidx113.1.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx113.1.i, align 1
  %67 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %driver_data.i.i, align 4
  %kind.i.1.i = getelementptr inbounds %struct.f75375_data, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %kind.i.1.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %kind.i.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp.i.1.i = icmp eq i32 %70, 2
  %arrayidx.i.1.i = getelementptr %struct.f75375_data, ptr %68, i32 0, i32 16, i32 1
  %71 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.1.i, align 1
  br i1 %cmp.i.1.i, label %if.then.i.1.i, label %if.else.i.1.i

if.else.i.1.i:                                    ; preds = %if.end91.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i15.i.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -122, i8 noundef zeroext %72) #8
  br label %cleanup

if.then.i.1.i:                                    ; preds = %if.end91.1.i
  %call.i.i.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -124, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1.i)
  %tobool.not.i.i.1.i = icmp eq i32 %call.i.i.1.i, 0
  br i1 %tobool.not.i.i.1.i, label %if.end.i.i.1.i, label %if.then.i.1.i.cleanup_crit_edge

if.then.i.1.i.cleanup_crit_edge:                  ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.1.i:                                   ; preds = %if.then.i.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %call6.i.i.1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -123, i8 noundef zeroext %72) #8
  br label %cleanup

exit_remove:                                      ; preds = %if.then32, %if.end20.exit_remove_crit_edge, %if.then14.exit_remove_crit_edge
  %err.0 = phi i32 [ %call17, %if.then14.exit_remove_crit_edge ], [ %call23, %if.end20.exit_remove_crit_edge ], [ %15, %if.then32 ]
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @f75375_group) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_remove, %if.end.i.i.1.i, %if.then.i.1.i.cleanup_crit_edge, %if.else.i.1.i, %lor.lhs.false.1.i.cleanup_crit_edge, %lor.lhs.false.1.i.cleanup_crit_edge76, %for.inc114.i.cleanup_crit_edge, %for.inc114.i.cleanup_crit_edge73, %if.else41.1.i, %if.then38.1.i, %if.then31.1.i, %if.then25.1.i, %sw.default.1.i, %sw.bb.1.i, %sw.bb64.1.i, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_remove ], [ -5, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ 0, %sw.bb64.1.i ], [ 0, %sw.bb.1.i ], [ 0, %sw.default.1.i ], [ 0, %if.then25.1.i ], [ 0, %if.then31.1.i ], [ 0, %if.then38.1.i ], [ 0, %if.else41.1.i ], [ 0, %for.inc114.i.cleanup_crit_edge ], [ 0, %for.inc114.i.cleanup_crit_edge73 ], [ 0, %lor.lhs.false.1.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.1.i.cleanup_crit_edge76 ], [ 0, %if.else.i.1.i ], [ 0, %if.then.i.1.i.cleanup_crit_edge ], [ 0, %if.end.i.i.1.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @f75375_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 93) #8
  %shl.i = shl i32 %call.i, 8
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 94) #8
  %or.i = or i32 %shl.i, %call2.i
  %conv3.i = trunc i32 %or.i to i16
  %call.i35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 90) #8
  %call2.i37 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 91) #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6452, i16 %conv3.i)
  %cmp.not = icmp eq i16 %conv3.i, 6452
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %shl.i36 = shl i32 %call.i35, 8
  %or.i38 = or i32 %shl.i36, %call2.i37
  %conv3.i39 = trunc i32 %or.i38 to i16
  %2 = zext i16 %conv3.i39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %conv3.i39, label %if.end.cleanup_crit_edge [
    i16 774, label %if.end.if.end20_crit_edge
    i16 516, label %if.then11
    i16 1040, label %if.then16
  ]

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then16, %if.then11, %if.end.if.end20_crit_edge
  %name.0 = phi ptr [ @.str.37, %if.then11 ], [ @.str.38, %if.then16 ], [ @.str, %if.end.if.end20_crit_edge ]
  %call.i40 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 92) #8
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %conv23 = and i32 %call.i40, 255
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef nonnull %name.0, i32 noundef %conv23) #11
  %call24 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp11(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 19, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 32
  %div = sext i16 %4 to i32
  %mul = mul nsw i32 %div, 125
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @f75375_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_limits = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %last_limits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_limits, align 4
  %add = add i32 %3, 6000
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 40) #8
  %conv4 = trunc i32 %call.i to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 20, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv4, ptr %arrayidx, align 1
  %call.i175 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 41) #8
  %conv9 = trunc i32 %call.i175 to i8
  %arrayidx10 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 21, i32 0
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %arrayidx10, align 1
  %call.i176 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 112) #8
  %shl.i = shl i32 %call.i176, 8
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 113) #8
  %or.i = or i32 %shl.i, %call2.i
  %conv3.i = trunc i32 %or.i to i16
  %arrayidx15 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 13, i32 0
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv3.i, ptr %arrayidx15, align 2
  %call.i177 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 44) #8
  %shl.i178 = shl i32 %call.i177, 8
  %call2.i180 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 45) #8
  %or.i181 = or i32 %shl.i178, %call2.i180
  %conv3.i182 = trunc i32 %or.i181 to i16
  %arrayidx20 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 12, i32 0
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3.i182, ptr %arrayidx20, align 2
  %call.i183 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 116) #8
  %shl.i184 = shl i32 %call.i183, 8
  %call2.i186 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 117) #8
  %or.i187 = or i32 %shl.i184, %call2.i186
  %conv3.i188 = trunc i32 %or.i187 to i16
  %arrayidx25 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 14, i32 0
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv3.i188, ptr %arrayidx25, align 2
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 42) #8
  %conv4.1 = trunc i32 %call.i.1 to i8
  %arrayidx.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 20, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv4.1, ptr %arrayidx.1, align 1
  %call.i175.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 43) #8
  %conv9.1 = trunc i32 %call.i175.1 to i8
  %arrayidx10.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 21, i32 1
  %13 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv9.1, ptr %arrayidx10.1, align 1
  %call.i176.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -128) #8
  %shl.i.1 = shl i32 %call.i176.1, 8
  %call2.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -127) #8
  %or.i.1 = or i32 %shl.i.1, %call2.i.1
  %conv3.i.1 = trunc i32 %or.i.1 to i16
  %arrayidx15.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 13, i32 1
  %14 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv3.i.1, ptr %arrayidx15.1, align 2
  %call.i177.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 46) #8
  %shl.i178.1 = shl i32 %call.i177.1, 8
  %call2.i180.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 47) #8
  %or.i181.1 = or i32 %shl.i178.1, %call2.i180.1
  %conv3.i182.1 = trunc i32 %or.i181.1 to i16
  %arrayidx20.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 12, i32 1
  %15 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv3.i182.1, ptr %arrayidx20.1, align 2
  %call.i183.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -124) #8
  %shl.i184.1 = shl i32 %call.i183.1, 8
  %call2.i186.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -123) #8
  %or.i187.1 = or i32 %shl.i184.1, %call2.i186.1
  %conv3.i188.1 = trunc i32 %or.i187.1 to i16
  %arrayidx25.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 14, i32 1
  %16 = ptrtoint ptr %arrayidx25.1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv3.i188.1, ptr %arrayidx25.1, align 2
  %call.i189 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 32) #8
  %conv34 = trunc i32 %call.i189 to i8
  %arrayidx35 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 9, i32 0
  %17 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv34, ptr %arrayidx35, align 1
  %call.i190 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 33) #8
  %conv40 = trunc i32 %call.i190 to i8
  %arrayidx41 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 10, i32 0
  %18 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv40, ptr %arrayidx41, align 1
  %call.i189.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 34) #8
  %conv34.1 = trunc i32 %call.i189.1 to i8
  %arrayidx35.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv34.1, ptr %arrayidx35.1, align 1
  %call.i190.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 35) #8
  %conv40.1 = trunc i32 %call.i190.1 to i8
  %arrayidx41.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx41.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv40.1, ptr %arrayidx41.1, align 1
  %call.i189.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 36) #8
  %conv34.2 = trunc i32 %call.i189.2 to i8
  %arrayidx35.2 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 9, i32 2
  %21 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv34.2, ptr %arrayidx35.2, align 1
  %call.i190.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 37) #8
  %conv40.2 = trunc i32 %call.i190.2 to i8
  %arrayidx41.2 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %arrayidx41.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv40.2, ptr %arrayidx41.2, align 1
  %call.i189.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 38) #8
  %conv34.3 = trunc i32 %call.i189.3 to i8
  %arrayidx35.3 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv34.3, ptr %arrayidx35.3, align 1
  %call.i190.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 39) #8
  %conv40.3 = trunc i32 %call.i190.3 to i8
  %arrayidx41.3 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 10, i32 3
  %24 = ptrtoint ptr %arrayidx41.3 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv40.3, ptr %arrayidx41.3, align 1
  %call.i191 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 96) #8
  %conv46 = trunc i32 %call.i191 to i8
  %fan_timer = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 15
  %25 = ptrtoint ptr %fan_timer to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv46, ptr %fan_timer, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %last_limits to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_limits, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %last_updated = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 6
  %28 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %last_updated, align 4
  %add48 = add i32 %29, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %sub49 = sub i32 %add48, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub49)
  %cmp50 = icmp slt i32 %sub49, 0
  br i1 %cmp50, label %if.end.if.then55_crit_edge, label %lor.lhs.false52

if.end.if.then55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

lor.lhs.false52:                                  ; preds = %if.end
  %valid53 = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %valid53 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %valid53, align 4, !range !146
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool54.not = icmp eq i8 %32, 0
  br i1 %tobool54.not, label %lor.lhs.false52.if.then55_crit_edge, label %lor.lhs.false52.if.end104_crit_edge

lor.lhs.false52.if.end104_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

lor.lhs.false52.if.then55_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then55

if.then55:                                        ; preds = %lor.lhs.false52.if.then55_crit_edge, %if.end.if.then55_crit_edge
  %kind = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 3
  %call.i192 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 118) #8
  %conv64 = trunc i32 %call.i192 to i8
  %arrayidx65 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 16, i32 0
  %33 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv64, ptr %arrayidx65, align 1
  %call.i193 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 20) #8
  %call68.tr = trunc i32 %call.i193 to i16
  %conv69 = shl i16 %call68.tr, 8
  %arrayidx70 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 19, i32 0
  %34 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv69, ptr %arrayidx70, align 2
  %35 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp71 = icmp eq i32 %36, 2
  br i1 %cmp71, label %if.then73, label %if.then55.if.end81_crit_edge

if.then55.if.end81_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81

if.then73:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #10
  %call.i194 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 26) #8
  %37 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx70, align 2
  %39 = trunc i32 %call.i194 to i16
  %conv80 = or i16 %38, %39
  store i16 %conv80, ptr %arrayidx70, align 2
  br label %if.end81

if.end81:                                         ; preds = %if.then73, %if.then55.if.end81_crit_edge
  %call.i195 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 22) #8
  %shl.i196 = shl i32 %call.i195, 8
  %call2.i198 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 23) #8
  %or.i199 = or i32 %shl.i196, %call2.i198
  %conv3.i200 = trunc i32 %or.i199 to i16
  %arrayidx86 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 11, i32 0
  %40 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv3.i200, ptr %arrayidx86, align 2
  %call.i192.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -122) #8
  %conv64.1 = trunc i32 %call.i192.1 to i8
  %arrayidx65.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 16, i32 1
  %41 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv64.1, ptr %arrayidx65.1, align 1
  %call.i193.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 21) #8
  %call68.tr.1 = trunc i32 %call.i193.1 to i16
  %conv69.1 = shl i16 %call68.tr.1, 8
  %arrayidx70.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 19, i32 1
  %42 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv69.1, ptr %arrayidx70.1, align 2
  %43 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp71.1 = icmp eq i32 %44, 2
  br i1 %cmp71.1, label %if.then73.1, label %if.end81.if.end81.1_crit_edge

if.end81.if.end81.1_crit_edge:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end81.1

if.then73.1:                                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  %call.i194.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 27) #8
  %45 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx70.1, align 2
  %47 = trunc i32 %call.i194.1 to i16
  %conv80.1 = or i16 %46, %47
  store i16 %conv80.1, ptr %arrayidx70.1, align 2
  br label %if.end81.1

if.end81.1:                                       ; preds = %if.then73.1, %if.end81.if.end81.1_crit_edge
  %call.i195.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 24) #8
  %shl.i196.1 = shl i32 %call.i195.1, 8
  %call2.i198.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 25) #8
  %or.i199.1 = or i32 %shl.i196.1, %call2.i198.1
  %conv3.i200.1 = trunc i32 %or.i199.1 to i16
  %arrayidx86.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 11, i32 1
  %48 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv3.i200.1, ptr %arrayidx86.1, align 2
  %call.i201 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 16) #8
  %conv97 = trunc i32 %call.i201 to i8
  %arrayidx98 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 8, i32 0
  %49 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv97, ptr %arrayidx98, align 1
  %call.i201.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 17) #8
  %conv97.1 = trunc i32 %call.i201.1 to i8
  %arrayidx98.1 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 8, i32 1
  %50 = ptrtoint ptr %arrayidx98.1 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv97.1, ptr %arrayidx98.1, align 1
  %call.i201.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 18) #8
  %conv97.2 = trunc i32 %call.i201.2 to i8
  %arrayidx98.2 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 8, i32 2
  %51 = ptrtoint ptr %arrayidx98.2 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv97.2, ptr %arrayidx98.2, align 1
  %call.i201.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 19) #8
  %conv97.3 = trunc i32 %call.i201.3 to i8
  %arrayidx98.3 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 8, i32 3
  %52 = ptrtoint ptr %arrayidx98.3 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv97.3, ptr %arrayidx98.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %53 = load volatile i32, ptr @jiffies, align 128
  %54 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %last_updated, align 4
  %valid103 = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 5
  %55 = ptrtoint ptr %valid103 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %valid103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.end81.1, %lor.lhs.false52.if.end104_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 20, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = udiv i32 %6, 1000
  %7 = call i32 @llvm.umin.i32(i32 %div, i32 127)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 20, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv13 = add i8 %12, 40
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max_hyst(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 21, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_max_hyst(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div = udiv i32 %6, 1000
  %7 = call i32 @llvm.umin.i32(i32 %div, i32 127)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 21, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv13 = add i8 %12, 41
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %3, label %if.end.i [
    i16 0, label %entry.rpm_from_reg.exit_crit_edge
    i16 -1, label %entry.rpm_from_reg.exit_crit_edge3
  ]

entry.rpm_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

entry.rpm_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  %phi.cast = and i32 %div.i, 65535
  br label %rpm_from_reg.exit

rpm_from_reg.exit:                                ; preds = %if.end.i, %entry.rpm_from_reg.exit_crit_edge, %entry.rpm_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %entry.rpm_from_reg.exit_crit_edge ], [ 0, %entry.rpm_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %3, label %if.end.i [
    i16 0, label %entry.rpm_from_reg.exit_crit_edge
    i16 -1, label %entry.rpm_from_reg.exit_crit_edge3
  ]

entry.rpm_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

entry.rpm_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  %phi.cast = and i32 %div.i, 65535
  br label %rpm_from_reg.exit

rpm_from_reg.exit:                                ; preds = %if.end.i, %entry.rpm_from_reg.exit_crit_edge, %entry.rpm_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %entry.rpm_from_reg.exit_crit_edge ], [ 0, %entry.rpm_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %3, label %if.end.i [
    i16 0, label %entry.rpm_from_reg.exit_crit_edge
    i16 -1, label %entry.rpm_from_reg.exit_crit_edge3
  ]

entry.rpm_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

entry.rpm_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  %phi.cast = and i32 %div.i, 65535
  br label %rpm_from_reg.exit

rpm_from_reg.exit:                                ; preds = %if.end.i, %entry.rpm_from_reg.exit_crit_edge, %entry.rpm_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %entry.rpm_from_reg.exit_crit_edge ], [ 0, %entry.rpm_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65169, i32 %7)
  %8 = icmp ult i32 %7, -65169
  br i1 %8, label %if.end.rpm_to_reg.exit_crit_edge, label %if.end.i

if.end.rpm_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %div4.i = udiv i32 1500000, %6
  %conv.i = trunc i32 %div4.i to i16
  br label %rpm_to_reg.exit

rpm_to_reg.exit:                                  ; preds = %if.end.i, %if.end.rpm_to_reg.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %if.end.i ], [ -1, %if.end.rpm_to_reg.exit_crit_edge ]
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 12, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %retval.0.i, ptr %arrayidx, align 2
  %.tr = trunc i32 %1 to i8
  %10 = shl i8 %.tr, 1
  %conv = add i8 %10, 44
  %11 = lshr i16 %retval.0.i, 8
  %conv1.i = trunc i16 %11 to i8
  %call.i20 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv, i8 noundef zeroext %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i, label %if.end.i21, label %rpm_to_reg.exit.f75375_write16.exit_crit_edge

rpm_to_reg.exit.f75375_write16.exit_crit_edge:    ; preds = %rpm_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %f75375_write16.exit

if.end.i21:                                       ; preds = %rpm_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i8 %10, 45
  %conv5.i = trunc i16 %retval.0.i to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %add.i, i8 noundef zeroext %conv5.i) #8
  br label %f75375_write16.exit

f75375_write16.exit:                              ; preds = %if.end.i21, %rpm_to_reg.exit.f75375_write16.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %f75375_write16.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %f75375_write16.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_target(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = zext i16 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %3, label %if.end.i [
    i16 0, label %entry.rpm_from_reg.exit_crit_edge
    i16 -1, label %entry.rpm_from_reg.exit_crit_edge3
  ]

entry.rpm_from_reg.exit_crit_edge3:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

entry.rpm_from_reg.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_from_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i16 %3 to i32
  %div.i = udiv i32 1500000, %conv.i
  %phi.cast = and i32 %div.i, 65535
  br label %rpm_from_reg.exit

rpm_from_reg.exit:                                ; preds = %if.end.i, %entry.rpm_from_reg.exit_crit_edge, %entry.rpm_from_reg.exit_crit_edge3
  %retval.0.i = phi i32 [ %phi.cast, %if.end.i ], [ 0, %entry.rpm_from_reg.exit_crit_edge ], [ 0, %entry.rpm_from_reg.exit_crit_edge3 ]
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_fan_target(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 18, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %6, label %do.end.i [
    i8 0, label %if.end.if.end7_crit_edge
    i8 1, label %if.end.if.end7_crit_edge45
    i8 3, label %if.end.if.end7_crit_edge46
    i8 2, label %if.end.cleanup_crit_edge
    i8 4, label %if.end.cleanup_crit_edge47
  ]

if.end.cleanup_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.if.end7_crit_edge46:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.if.end7_crit_edge45:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end.i, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge45, %if.end.if.end7_crit_edge46
  %kind = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 3
  %8 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp8 = icmp eq i32 %9, 2
  br i1 %cmp8, label %land.lhs.true, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %11, label %do.end.i37 [
    i8 0, label %land.lhs.true.cleanup_crit_edge
    i8 1, label %land.lhs.true.cleanup_crit_edge48
    i8 4, label %land.lhs.true.cleanup_crit_edge49
    i8 2, label %land.lhs.true.if.end13_crit_edge
    i8 3, label %land.lhs.true.if.end13_crit_edge50
  ]

land.lhs.true.if.end13_crit_edge50:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true.cleanup_crit_edge49:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.cleanup_crit_edge48:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end.i37:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i36 = zext i8 %11 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i36) #8
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge50, %if.end7.if.end13_crit_edge
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  %15 = add i32 %14, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65169, i32 %15)
  %16 = icmp ult i32 %15, -65169
  br i1 %16, label %if.end13.rpm_to_reg.exit_crit_edge, label %if.end.i

if.end13.rpm_to_reg.exit_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpm_to_reg.exit

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %div4.i = udiv i32 1500000, %14
  %conv.i39 = trunc i32 %div4.i to i16
  br label %rpm_to_reg.exit

rpm_to_reg.exit:                                  ; preds = %if.end.i, %if.end13.rpm_to_reg.exit_crit_edge
  %retval.0.i40 = phi i16 [ %conv.i39, %if.end.i ], [ -1, %if.end13.rpm_to_reg.exit_crit_edge ]
  %arrayidx15 = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 14, i32 %1
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %retval.0.i40, ptr %arrayidx15, align 2
  %.tr = trunc i32 %1 to i8
  %18 = shl i8 %.tr, 4
  %conv = add i8 %18, 116
  %19 = lshr i16 %retval.0.i40, 8
  %conv1.i = trunc i16 %19 to i8
  %call.i41 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv, i8 noundef zeroext %conv1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i, label %if.end.i42, label %rpm_to_reg.exit.f75375_write16.exit_crit_edge

rpm_to_reg.exit.f75375_write16.exit_crit_edge:    ; preds = %rpm_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %f75375_write16.exit

if.end.i42:                                       ; preds = %rpm_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i8 %18, 117
  %conv5.i = trunc i16 %retval.0.i40 to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %add.i, i8 noundef zeroext %conv5.i) #8
  br label %f75375_write16.exit

f75375_write16.exit:                              ; preds = %if.end.i42, %rpm_to_reg.exit.f75375_write16.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %f75375_write16.exit, %do.end.i37, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge48, %land.lhs.true.cleanup_crit_edge49, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %f75375_write16.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge47 ], [ -22, %do.end.i37 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge48 ], [ -22, %land.lhs.true.cleanup_crit_edge49 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 18, i32 %1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %6, label %do.end.i [
    i8 0, label %if.end.lor.lhs.false_crit_edge
    i8 1, label %if.end.lor.lhs.false_crit_edge45
    i8 3, label %if.end.lor.lhs.false_crit_edge46
    i8 2, label %if.end.cleanup_crit_edge
    i8 4, label %if.end.cleanup_crit_edge47
  ]

if.end.cleanup_crit_edge47:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.lor.lhs.false_crit_edge46:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge45:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 279, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %.pr = load i8, ptr %arrayidx, align 1
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %do.end.i, %if.end.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge45, %if.end.lor.lhs.false_crit_edge46
  %9 = phi i8 [ %.pr, %do.end.i ], [ %6, %if.end.lor.lhs.false_crit_edge ], [ %6, %if.end.lor.lhs.false_crit_edge45 ], [ %6, %if.end.lor.lhs.false_crit_edge46 ]
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %9, label %do.end.i40 [
    i8 0, label %lor.lhs.false.if.end10_crit_edge
    i8 1, label %lor.lhs.false.if.end10_crit_edge48
    i8 4, label %lor.lhs.false.if.end10_crit_edge49
    i8 2, label %lor.lhs.false.cleanup_crit_edge
    i8 3, label %lor.lhs.false.cleanup_crit_edge50
  ]

lor.lhs.false.cleanup_crit_edge50:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end10_crit_edge49:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.if.end10_crit_edge48:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

do.end.i40:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i39 = zext i8 %9 to i32
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i39) #8
  br label %if.end10

if.end10:                                         ; preds = %do.end.i40, %lor.lhs.false.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge48, %lor.lhs.false.if.end10_crit_edge49
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 255)
  %conv = trunc i32 %13 to i8
  %arrayidx19 = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 16, i32 %1
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %arrayidx19, align 1
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i, align 4
  %kind.i = getelementptr inbounds %struct.f75375_data, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp.i = icmp eq i32 %18, 2
  %nr.tr14.i = trunc i32 %1 to i8
  %19 = shl i8 %nr.tr14.i, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end10
  %conv.i42 = add i8 %19, 116
  %arrayidx.i = getelementptr %struct.f75375_data, ptr %16, i32 0, i32 16, i32 %1
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv.i42, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.f75375_write_pwm.exit_crit_edge

if.then.i.f75375_write_pwm.exit_crit_edge:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %f75375_write_pwm.exit

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i8 %19, 117
  %call6.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %add.i.i, i8 noundef zeroext %21) #8
  br label %f75375_write_pwm.exit

if.else.i:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = add i8 %19, 118
  %arrayidx6.i = getelementptr %struct.f75375_data, ptr %16, i32 0, i32 16, i32 %1
  %22 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx6.i, align 1
  %call.i15.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv4.i, i8 noundef zeroext %23) #8
  br label %f75375_write_pwm.exit

f75375_write_pwm.exit:                            ; preds = %if.else.i, %if.end.i.i, %if.then.i.f75375_write_pwm.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %f75375_write_pwm.exit, %lor.lhs.false.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge50, %if.end.cleanup_crit_edge, %if.end.cleanup_crit_edge47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %f75375_write_pwm.exit ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge47 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 18, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_enable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %call5 = call fastcc i32 @set_pwm_enable_direct(ptr noundef %add.ptr3, i32 noundef %1, i32 noundef %6)
  call void @mutex_unlock(ptr noundef %update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  %count.call5 = select i1 %tobool.not, i32 %count, i32 %call5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.call5, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_pwm_enable_direct(ptr noundef %client, i32 noundef %nr, i32 noundef %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %val)
  %2 = icmp ugt i32 %val, 4
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 96) #8
  %kind = getelementptr inbounds %struct.f75375_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 18, i32 %nr
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %6)
  %7 = icmp ult i8 %6, 5
  br i1 %7, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %6 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %conv.i) #8
  br label %duty_mode_enabled.exit

switch.lookup:                                    ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i8 %6 to i5
  %switch.downshift = lshr i5 -13, %switch.cast
  %8 = and i5 %switch.downshift, 1
  %9 = sext i5 %8 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %switch.masked = icmp ne i5 %8, 0
  br label %duty_mode_enabled.exit

duty_mode_enabled.exit:                           ; preds = %switch.lookup, %do.end.i
  %retval.0.i = phi i1 [ true, %do.end.i ], [ %switch.masked, %switch.lookup ]
  %conv8 = trunc i32 %val to i8
  %10 = zext i8 %conv8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %conv8, label %do.end.i143 [
    i8 0, label %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge
    i8 1, label %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge148
    i8 4, label %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge149
    i8 2, label %duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge
    i8 3, label %duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge150
  ]

duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge150: ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %duty_mode_enabled.exit145

duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge: ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %duty_mode_enabled.exit145

duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge149: ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %duty_mode_enabled.exit145.thr_comm

duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge148: ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %duty_mode_enabled.exit145.thr_comm

duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge: ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %duty_mode_enabled.exit145.thr_comm

do.end.i143:                                      ; preds = %duty_mode_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 263, i32 noundef 9, ptr noundef nonnull @.str.13, i32 noundef %val) #8
  br label %duty_mode_enabled.exit145.thr_comm

duty_mode_enabled.exit145.thr_comm:               ; preds = %do.end.i143, %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge, %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge148, %duty_mode_enabled.exit.duty_mode_enabled.exit145.thr_comm_crit_edge149
  br i1 %retval.0.i, label %duty_mode_enabled.exit145.thr_comm.if.end14_crit_edge, label %duty_mode_enabled.exit145.thr_comm.cleanup_crit_edge

duty_mode_enabled.exit145.thr_comm.cleanup_crit_edge: ; preds = %duty_mode_enabled.exit145.thr_comm
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

duty_mode_enabled.exit145.thr_comm.if.end14_crit_edge: ; preds = %duty_mode_enabled.exit145.thr_comm
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

duty_mode_enabled.exit145:                        ; preds = %duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge, %duty_mode_enabled.exit.duty_mode_enabled.exit145_crit_edge150
  br i1 %retval.0.i, label %duty_mode_enabled.exit145.cleanup_crit_edge, label %duty_mode_enabled.exit145.if.end14_crit_edge

duty_mode_enabled.exit145.if.end14_crit_edge:     ; preds = %duty_mode_enabled.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

duty_mode_enabled.exit145.cleanup_crit_edge:      ; preds = %duty_mode_enabled.exit145
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %duty_mode_enabled.exit145.if.end14_crit_edge, %duty_mode_enabled.exit145.thr_comm.if.end14_crit_edge
  %mul = shl i32 %nr, 2
  %add = or i32 %mul, 2
  %shl = shl nuw i32 1, %add
  %shl18 = shl nuw i32 1, %mul
  %11 = or i32 %shl, %shl18
  %12 = xor i32 %11, -1
  %and21 = and i32 %call.i, %12
  %13 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.57)
  switch i32 %val, label %if.end14.if.end91_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 4, label %sw.bb52
    i32 3, label %sw.bb46
  ]

if.end14.if.end91_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

sw.bb:                                            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or31 = or i32 %11, %call.i
  %arrayidx33 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 16, i32 %nr
  %14 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %arrayidx33, align 1
  br label %if.end91

sw.bb34:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or44 = or i32 %11, %call.i
  br label %if.end91

sw.bb46:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or50 = or i32 %and21, %shl18
  br label %if.end91

sw.bb52:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %or57 = or i32 %and21, %shl
  br label %if.end91

if.else:                                          ; preds = %if.end
  %mul59 = shl i32 %nr, 1
  %add60 = add i32 %mul59, 4
  %shl61 = shl i32 3, %add60
  %neg62 = xor i32 %shl61, -1
  %and64 = and i32 %call.i, %neg62
  %15 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %val, label %if.else.if.end91_crit_edge [
    i32 0, label %sw.bb66
    i32 1, label %sw.bb75
    i32 2, label %sw.bb82
    i32 4, label %if.else.cleanup_crit_edge
  ]

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.if.end91_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

sw.bb66:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or71 = or i32 %call.i, %shl61
  %arrayidx74 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 16, i32 %nr
  %16 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx74, align 1
  br label %if.end91

sw.bb75:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %or80 = or i32 %call.i, %shl61
  br label %if.end91

sw.bb82:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %shl85 = shl nuw i32 1, %add60
  %or87 = or i32 %and64, %shl85
  br label %if.end91

if.end91:                                         ; preds = %sw.bb82, %sw.bb75, %sw.bb66, %if.else.if.end91_crit_edge, %sw.bb52, %sw.bb46, %sw.bb34, %sw.bb, %if.end14.if.end91_crit_edge
  %fanmode.0.in = phi i32 [ %and21, %if.end14.if.end91_crit_edge ], [ %or50, %sw.bb46 ], [ %or57, %sw.bb52 ], [ %or44, %sw.bb34 ], [ %or31, %sw.bb ], [ %and64, %if.else.if.end91_crit_edge ], [ %or87, %sw.bb82 ], [ %or80, %sw.bb75 ], [ %or71, %sw.bb66 ]
  %fanmode.0 = trunc i32 %fanmode.0.in to i8
  %call.i146 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 96, i8 noundef zeroext %fanmode.0) #8
  %conv92 = trunc i32 %val to i8
  %arrayidx94 = getelementptr %struct.f75375_data, ptr %1, i32 0, i32 18, i32 %nr
  %17 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv92, ptr %arrayidx94, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp95 = icmp eq i32 %val, 0
  br i1 %cmp95, label %if.then97, label %if.end91.cleanup_crit_edge

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then97:                                        ; preds = %if.end91
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %kind.i = getelementptr inbounds %struct.f75375_data, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %kind.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %kind.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.i = icmp eq i32 %21, 2
  %nr.tr14.i = trunc i32 %nr to i8
  %22 = shl i8 %nr.tr14.i, 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then97
  %conv.i147 = add i8 %22, 116
  %arrayidx.i = getelementptr %struct.f75375_data, ptr %19, i32 0, i32 16, i32 %nr
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i, align 1
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i147, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i.i = add i8 %22, 117
  %call6.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %add.i.i, i8 noundef zeroext %24) #8
  br label %cleanup

if.else.i:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #10
  %conv4.i = add i8 %22, 118
  %arrayidx6.i = getelementptr %struct.f75375_data, ptr %19, i32 0, i32 16, i32 %nr
  %25 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx6.i, align 1
  %call.i15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv4.i, i8 noundef zeroext %26) #8
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.end.i.i, %if.then.i.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.else.cleanup_crit_edge, %duty_mode_enabled.exit145.cleanup_crit_edge, %duty_mode_enabled.exit145.thr_comm.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -95, %duty_mode_enabled.exit145.cleanup_crit_edge ], [ -22, %if.else.cleanup_crit_edge ], [ 0, %if.end91.cleanup_crit_edge ], [ -95, %duty_mode_enabled.exit145.thr_comm.cleanup_crit_edge ], [ 0, %if.then.i.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_mode(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 17, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_pwm_mode(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %kind = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp9 = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp10 = icmp eq i32 %6, 0
  %or.cond = select i1 %cmp9, i1 %cmp10, i1 false
  br i1 %or.cond, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp14 = icmp eq i32 %8, 2
  %mul = shl i32 %1, 2
  %add = or i32 %mul, 1
  %conv17 = add i32 %1, 4
  %reg.0 = select i1 %cmp14, i8 96, i8 1
  %ctrl.0 = select i1 %cmp14, i32 %add, i32 %conv17
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call.i54 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %reg.0) #8
  %conv21 = and i32 %ctrl.0, 255
  %shl = shl nuw i32 1, %conv21
  %neg = xor i32 %shl, -1
  %and = and i32 %call.i54, %neg
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp24 = icmp eq i32 %10, 0
  %or = or i32 %call.i54, %shl
  %conf.0.in = select i1 %cmp24, i32 %or, i32 %and
  %conf.0 = trunc i32 %conf.0.in to i8
  %call.i55 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conf.0) #8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %conv32 = trunc i32 %12 to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 17, i32 %1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv32, ptr %arrayidx, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end12 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div32 = lshr i32 %6, 3
  %7 = call i32 @llvm.umin.i32(i32 %div32, i32 255)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 9, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv13 = add i8 %12, 32
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @f75375_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.f75375_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !147
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div32 = lshr i32 %6, 3
  %7 = call i32 @llvm.umin.i32(i32 %div32, i32 255)
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.f75375_data, ptr %3, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.f75375_data, ptr %3, i32 0, i32 10, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv13 = add i8 %12, 33
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %conv13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_chmod_file(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !126, !128, !130, !131, !132, !133, !134, !135}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__initcall__kmod_f75375s__312_905_f75375_driver_init6, !1, !"__initcall__kmod_f75375s__312_905_f75375_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/f75375s.c", i32 905, i32 1}
!2 = !{ptr @__exitcall_f75375_driver_exit, !1, !"__exitcall_f75375_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author313, !4, !"__UNIQUE_ID_author313", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/f75375s.c", i32 907, i32 1}
!5 = !{ptr @__UNIQUE_ID_file314, !6, !"__UNIQUE_ID_file314", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/f75375s.c", i32 908, i32 1}
!7 = !{ptr @__UNIQUE_ID_license315, !6, !"__UNIQUE_ID_license315", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description316, !9, !"__UNIQUE_ID_description316", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/f75375s.c", i32 909, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/f75375s.c", i32 130, i32 11}
!12 = !{ptr @f75375_driver, !13, !"f75375_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/f75375s.c", i32 127, i32 26}
!14 = !{ptr @f75375_group, !15, !"f75375_group", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/f75375s.c", i32 748, i32 37}
!16 = !{ptr @f75375_attributes, !17, !"f75375_attributes", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/f75375s.c", i32 712, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/f75375s.c", i32 677, i32 8}
!20 = !{ptr @sensor_dev_attr_temp1_input, !19, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/f75375s.c", i32 581, i32 22}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/f75375s.c", i32 680, i32 8}
!25 = !{ptr @sensor_dev_attr_temp1_max, !24, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/f75375s.c", i32 678, i32 8}
!28 = !{ptr @sensor_dev_attr_temp1_max_hyst, !27, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/f75375s.c", i32 682, i32 8}
!31 = !{ptr @sensor_dev_attr_temp2_input, !30, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!32 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/f75375s.c", i32 685, i32 8}
!34 = !{ptr @sensor_dev_attr_temp2_max, !33, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/f75375s.c", i32 683, i32 8}
!37 = !{ptr @sensor_dev_attr_temp2_max_hyst, !36, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/f75375s.c", i32 687, i32 8}
!40 = !{ptr @sensor_dev_attr_fan1_input, !39, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/f75375s.c", i32 688, i32 8}
!43 = !{ptr @sensor_dev_attr_fan1_max, !42, !"sensor_dev_attr_fan1_max", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/f75375s.c", i32 689, i32 8}
!46 = !{ptr @sensor_dev_attr_fan1_min, !45, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/f75375s.c", i32 691, i32 8}
!49 = !{ptr @sensor_dev_attr_fan1_target, !48, !"sensor_dev_attr_fan1_target", i1 false, i1 false}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/f75375s.c", i32 279, i32 3}
!52 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/f75375s.c", i32 693, i32 8}
!55 = !{ptr @sensor_dev_attr_fan2_input, !54, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!56 = !{ptr @.str.15, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/f75375s.c", i32 694, i32 8}
!58 = !{ptr @sensor_dev_attr_fan2_max, !57, !"sensor_dev_attr_fan2_max", i1 false, i1 false}
!59 = !{ptr @.str.16, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/f75375s.c", i32 695, i32 8}
!61 = !{ptr @sensor_dev_attr_fan2_min, !60, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/f75375s.c", i32 697, i32 8}
!64 = !{ptr @sensor_dev_attr_fan2_target, !63, !"sensor_dev_attr_fan2_target", i1 false, i1 false}
!65 = !{ptr @.str.18, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/f75375s.c", i32 699, i32 8}
!67 = !{ptr @sensor_dev_attr_pwm1, !66, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!68 = !{ptr @.str.19, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/f75375s.c", i32 701, i32 8}
!70 = !{ptr @sensor_dev_attr_pwm1_enable, !69, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!71 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/f75375s.c", i32 703, i32 8}
!73 = !{ptr @sensor_dev_attr_pwm1_mode, !72, !"sensor_dev_attr_pwm1_mode", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/f75375s.c", i32 705, i32 8}
!76 = !{ptr @sensor_dev_attr_pwm2, !75, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!77 = !{ptr @.str.22, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/f75375s.c", i32 707, i32 8}
!79 = !{ptr @sensor_dev_attr_pwm2_enable, !78, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/f75375s.c", i32 709, i32 8}
!82 = !{ptr @sensor_dev_attr_pwm2_mode, !81, !"sensor_dev_attr_pwm2_mode", i1 false, i1 false}
!83 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/f75375s.c", i32 657, i32 8}
!85 = !{ptr @sensor_dev_attr_in0_input, !84, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!86 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/f75375s.c", i32 658, i32 8}
!88 = !{ptr @sensor_dev_attr_in0_max, !87, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/f75375s.c", i32 660, i32 8}
!91 = !{ptr @sensor_dev_attr_in0_min, !90, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!92 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/f75375s.c", i32 662, i32 8}
!94 = !{ptr @sensor_dev_attr_in1_input, !93, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/f75375s.c", i32 663, i32 8}
!97 = !{ptr @sensor_dev_attr_in1_max, !96, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/f75375s.c", i32 665, i32 8}
!100 = !{ptr @sensor_dev_attr_in1_min, !99, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!101 = !{ptr @.str.30, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/f75375s.c", i32 667, i32 8}
!103 = !{ptr @sensor_dev_attr_in2_input, !102, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/f75375s.c", i32 668, i32 8}
!106 = !{ptr @sensor_dev_attr_in2_max, !105, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!107 = !{ptr @.str.32, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/f75375s.c", i32 670, i32 8}
!109 = !{ptr @sensor_dev_attr_in2_min, !108, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/f75375s.c", i32 672, i32 8}
!112 = !{ptr @sensor_dev_attr_in3_input, !111, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!113 = !{ptr @.str.34, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/f75375s.c", i32 673, i32 8}
!115 = !{ptr @sensor_dev_attr_in3_max, !114, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/f75375s.c", i32 675, i32 8}
!118 = !{ptr @sensor_dev_attr_in3_min, !117, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!119 = !{ptr @f75375_probe.__key, !120, !"__key", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/f75375s.c", i32 832, i32 2}
!121 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @f75375_id, !123, !"f75375_id", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/f75375s.c", i32 119, i32 35}
!124 = !{ptr @.str.37, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/f75375s.c", i32 892, i32 10}
!126 = !{ptr @.str.38, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/f75375s.c", i32 894, i32 10}
!128 = !{ptr @.str.39, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/f75375s.c", i32 899, i32 2}
!130 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.41, !129, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.42, !129, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @f75375_detect._entry, !129, !"_entry", i1 false, i1 false}
!134 = !{ptr @f75375_detect._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @normal_i2c, !136, !"normal_i2c", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/f75375s.c", i32 30, i32 29}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{i8 0, i8 2}
!147 = !{!"auto-init"}
