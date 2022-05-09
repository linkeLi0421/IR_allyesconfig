; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83792d.c_pt.bc'
source_filename = "../drivers/hwmon/w83792d.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
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
%struct.w83792d_data = type { ptr, %struct.mutex, i8, i32, [9 x i8], [9 x i8], [9 x i8], i16, [7 x i8], [7 x i8], [3 x i8], [2 x [6 x i8]], [7 x i8], [7 x i8], [3 x i8], i32, i8, [3 x i8], [3 x i8], [3 x [4 x i8]], [3 x [4 x i8]] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_subclients = internal constant [25 x i8] c"w83792d.force_subclients\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_force_subclients = internal constant %struct.kparam_array { i32 4, i32 2, ptr null, ptr @param_ops_short, ptr @force_subclients }, align 4
@__param_force_subclients = internal constant %struct.kernel_param { ptr @__param_str_force_subclients, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_force_subclients } }, section "__param", align 4
@__UNIQUE_ID_force_subclientstype288 = internal constant [49 x i8] c"w83792d.parmtype=force_subclients:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_force_subclients289 = internal constant [109 x i8] c"w83792d.parm=force_subclients:List of subclient addresses: {bus, clientaddr, subclientaddr1, subclientaddr2}\00", section ".modinfo", align 1
@__param_str_init = internal constant [13 x i8] c"w83792d.init\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@init = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype290 = internal constant [27 x i8] c"w83792d.parmtype=init:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_init291 = internal constant [58 x i8] c"w83792d.parm=init:Set to one to force chip initialization\00", section ".modinfo", align 1
@__initcall__kmod_w83792d__358_1642_w83792d_driver_init6 = internal global ptr @w83792d_driver_init, section ".initcall6.init", align 4
@w83792d_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @w83792d_remove, ptr @w83792d_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83792d_id, ptr @w83792d_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_w83792d_driver_exit = internal global ptr @w83792d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author359 = internal constant [37 x i8] c"w83792d.author=Shane Huang (Winbond)\00", section ".modinfo", align 1
@__UNIQUE_ID_description360 = internal constant [52 x i8] c"w83792d.description=W83792AD/D driver for linux-2.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file361 = internal constant [35 x i8] c"w83792d.file=drivers/hwmon/w83792d\00", section ".modinfo", align 1
@__UNIQUE_ID_license362 = internal constant [20 x i8] c"w83792d.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@force_subclients = internal global { [4 x i16], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83792d\00", [24 x i8] zeroinitializer }, align 32
@w83792d_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83792d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 44, i16 45, i16 46, i16 47, i16 -2], [22 x i8] zeroinitializer }, align 32
@w83792d_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83792d_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83792d_group_fan = internal constant { [4 x %struct.attribute_group], [48 x i8] } { [4 x %struct.attribute_group] [%struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83792d_attributes_fan, ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @w83792d_attributes_fan, i64 28), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @w83792d_attributes_fan, i64 56), ptr null }, %struct.attribute_group { ptr null, ptr null, ptr null, ptr getelementptr (i8, ptr @w83792d_attributes_fan, i64 84), ptr null }], [48 x i8] zeroinitializer }, align 32
@w83792d_attributes = internal global { [99 x ptr], [116 x i8] } { [99 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_pwm3_enable, ptr @dev_attr_alarms, ptr @dev_attr_intrusion0_alarm, ptr @sensor_dev_attr_tolerance1, ptr @sensor_dev_attr_thermal_cruise1, ptr @sensor_dev_attr_tolerance2, ptr @sensor_dev_attr_thermal_cruise2, ptr @sensor_dev_attr_tolerance3, ptr @sensor_dev_attr_thermal_cruise3, ptr @sensor_dev_attr_sf2_point1_fan1, ptr @sensor_dev_attr_sf2_point2_fan1, ptr @sensor_dev_attr_sf2_point3_fan1, ptr @sensor_dev_attr_sf2_point4_fan1, ptr @sensor_dev_attr_sf2_point1_fan2, ptr @sensor_dev_attr_sf2_point2_fan2, ptr @sensor_dev_attr_sf2_point3_fan2, ptr @sensor_dev_attr_sf2_point4_fan2, ptr @sensor_dev_attr_sf2_point1_fan3, ptr @sensor_dev_attr_sf2_point2_fan3, ptr @sensor_dev_attr_sf2_point3_fan3, ptr @sensor_dev_attr_sf2_point4_fan3, ptr @sensor_dev_attr_sf2_level1_fan1, ptr @sensor_dev_attr_sf2_level2_fan1, ptr @sensor_dev_attr_sf2_level3_fan1, ptr @sensor_dev_attr_sf2_level1_fan2, ptr @sensor_dev_attr_sf2_level2_fan2, ptr @sensor_dev_attr_sf2_level3_fan2, ptr @sensor_dev_attr_sf2_level1_fan3, ptr @sensor_dev_attr_sf2_level2_fan3, ptr @sensor_dev_attr_sf2_level3_fan3, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr null], [116 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 19 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 20 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr @store_temp1 }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr @store_temp1 }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr null }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_intrusion0_alarm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @intrusion0_alarm_show, ptr @intrusion0_alarm_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_tolerance1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_thermal_cruise1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_thermal_cruise, ptr @store_thermal_cruise }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_tolerance2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_thermal_cruise2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_thermal_cruise, ptr @store_thermal_cruise }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_tolerance3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_thermal_cruise3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_thermal_cruise, ptr @store_thermal_cruise }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point1_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point2_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point3_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point4_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point1_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point2_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point3_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point4_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point1_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point2_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point3_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 3, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_point4_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_point, ptr @store_sf2_point }, i8 3, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level1_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level2_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level3_fan1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level1_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level2_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level3_fan2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level1_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level2_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_sf2_level3_fan3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sf2_level, ptr @store_sf2_level }, i8 3, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@w83792d_update_device.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"w83792d_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/w83792d.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting device update\0A\00", [40 x i8] zeroinitializer }, align 32
@W83792D_REG_IN = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" !\22#$%&\B0\B1", [23 x i8] zeroinitializer }, align 32
@W83792D_REG_IN_MAX = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"+-/1357\B4\B6", [23 x i8] zeroinitializer }, align 32
@W83792D_REG_IN_MIN = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c",.02468\B5\B7", [23 x i8] zeroinitializer }, align 32
@W83792D_REG_FAN = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"()*\B8\B9\BA\BE", [25 x i8] zeroinitializer }, align 32
@W83792D_REG_FAN_MIN = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c";<=\BB\BC\BD\BF", [25 x i8] zeroinitializer }, align 32
@W83792D_REG_PWM = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\81\83\94\A3\A4\A5\A6", [25 x i8] zeroinitializer }, align 32
@W83792D_REG_TEMP1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"'9:", [29 x i8] zeroinitializer }, align 32
@W83792D_REG_TEMP_ADD = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\C0\C1\C5\C6\C3\C4", [6 x i8] c"\C8\C9\CD\CE\CB\CC"], [20 x i8] zeroinitializer }, align 32
@W83792D_REG_FAN_DIV = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"G[\\\9E", [28 x i8] zeroinitializer }, align 32
@W83792D_REG_THERMAL = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\85\86\96", [29 x i8] zeroinitializer }, align 32
@W83792D_REG_TOLERANCE = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\87\87\97", [29 x i8] zeroinitializer }, align 32
@W83792D_REG_POINTS = internal constant { [3 x [4 x i8]], [20 x i8] } { [3 x [4 x i8]] [[4 x i8] c"\85\E3\E4\E5", [4 x i8] c"\86\E6\E7\E8", [4 x i8] c"\96\E9\EA\EB"], [20 x i8] zeroinitializer }, align 32
@W83792D_REG_LEVELS = internal constant { [3 x [4 x i8]], [20 x i8] } { [3 x [4 x i8]] [[4 x i8] c"\88\88\E0\E0", [4 x i8] c"\89\89\E1\E1", [4 x i8] c"\98\98\E2\E2"], [20 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.7, i8 1, i8 -110, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w83792d_print_debug\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"==========The following is the debug message...========\0A\00", [39 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.8, i8 1, i8 -110, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"9 set of Voltages: =====>\0A\00", [37 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.9, i8 1, i8 -110, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vin[%d] is: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.10, i8 1, i8 -109, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vin[%d] max is: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.11, i8 1, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vin[%d] min is: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.12, i8 1, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Low Bit1 is: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.13, i8 1, i8 -108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Low Bit2 is: 0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.14, i8 1, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"7 set of Fan Counts and Duty Cycles: =====>\0A\00", [51 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.15, i8 1, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fan[%d] is: 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.16, i8 1, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fan[%d] min is: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.17, i8 1, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pwm[%d]     is: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.18, i8 1, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"3 set of Temperatures: =====>\0A\00", [33 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.19, i8 1, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"temp1[%d] is: 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.20, i8 1, i8 -105, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"temp_add[%d][%d] is: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug355 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.21, i8 1, i8 -104, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fan_div[%d] is: 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug356 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.22, i8 1, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"==========End of the debug message...================\0A\00", [41 x i8] zeroinitializer }, align 32
@w83792d_print_debug.__UNIQUE_ID_ddebug357 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.4, ptr @.str.23, i8 1, i8 -103, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"intrusion0_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance1\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise1\00", [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance2\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise2\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tolerance3\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"thermal_cruise3\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point1_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point2_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point3_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point4_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point1_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point2_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point3_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point4_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point1_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point2_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point3_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_point4_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level1_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level2_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level3_fan1\00", [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level1_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level2_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level3_fan2\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level1_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level2_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sf2_level3_fan3\00", [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@w83792d_attributes_fan = internal global { [4 x [7 x ptr]], [48 x i8] } { [4 x [7 x ptr]] [[7 x ptr] [ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_div, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm4_mode, ptr null], [7 x ptr] [ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_div, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_mode, ptr null], [7 x ptr] [ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_div, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_mode, ptr null], [7 x ptr] [ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_div, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_pwm7, ptr @sensor_dev_attr_pwm7_mode, ptr null]], [48 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 21 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 22 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm5_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm6_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.140, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.141, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.142, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.143, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.144, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm7 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.145, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm7_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.146, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_div\00", [23 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm4_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_div\00", [23 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm5_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_min\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan6_div\00", [23 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm6\00", [27 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm6_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_min\00", [23 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan7_div\00", [23 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm7\00", [27 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm7_mode\00", [22 x i8] zeroinitializer }, align 32
@w83792d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.147 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83792d_detect_subclients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.149, ptr @.str.4, i32 935, ptr @.str.150, ptr @.str.151 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"w83792d_detect_subclients\00", [38 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@w83792d_detect_subclients._entry_ptr = internal global ptr @w83792d_detect_subclients._entry, section ".printk_index", align 4
@w83792d_detect_subclients._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.149, ptr @.str.4, i32 948, ptr @.str.150, ptr @.str.151 }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"duplicate addresses 0x%x, use force_subclient\0A\00", [49 x i8] zeroinitializer }, align 32
@w83792d_detect_subclients._entry_ptr.154 = internal global ptr @w83792d_detect_subclients._entry.152, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.157 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 47, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"w83792d_driver\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 304, i32 26 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"force_subclients\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 42, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 307, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"w83792d_id\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 298, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 37, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant [14 x i8] c"w83792d_group\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1304, i32 37 }
@___asan_gen_.178 = private unnamed_addr constant [18 x i8] c"w83792d_group_fan\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1195, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"w83792d_attributes\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1202, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_mode\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_mode\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_mode\00", align 1
@___asan_gen_.352 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.355 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.358 = private unnamed_addr constant [26 x i8] c"dev_attr_intrusion0_alarm\00", align 1
@___asan_gen_.361 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_tolerance1\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_thermal_cruise1\00", align 1
@___asan_gen_.367 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_tolerance2\00", align 1
@___asan_gen_.370 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_thermal_cruise2\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_tolerance3\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_thermal_cruise3\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point1_fan1\00", align 1
@___asan_gen_.382 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point2_fan1\00", align 1
@___asan_gen_.385 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point3_fan1\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point4_fan1\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point1_fan2\00", align 1
@___asan_gen_.394 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point2_fan2\00", align 1
@___asan_gen_.397 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point3_fan2\00", align 1
@___asan_gen_.400 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point4_fan2\00", align 1
@___asan_gen_.403 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point1_fan3\00", align 1
@___asan_gen_.406 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point2_fan3\00", align 1
@___asan_gen_.409 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point3_fan3\00", align 1
@___asan_gen_.412 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_point4_fan3\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level1_fan1\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level2_fan1\00", align 1
@___asan_gen_.421 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level3_fan1\00", align 1
@___asan_gen_.424 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level1_fan2\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level2_fan2\00", align 1
@___asan_gen_.430 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level3_fan2\00", align 1
@___asan_gen_.433 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level1_fan3\00", align 1
@___asan_gen_.436 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level2_fan3\00", align 1
@___asan_gen_.439 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_sf2_level3_fan3\00", align 1
@___asan_gen_.442 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.445 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.448 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.451 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.454 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.457 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.460 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.463 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.466 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.469 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.472 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.475 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 961, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 345, i32 22 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1492, i32 3 }
@___asan_gen_.493 = private unnamed_addr constant [15 x i8] c"W83792D_REG_IN\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 52, i32 17 }
@___asan_gen_.496 = private unnamed_addr constant [19 x i8] c"W83792D_REG_IN_MAX\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 65, i32 17 }
@___asan_gen_.499 = private unnamed_addr constant [19 x i8] c"W83792D_REG_IN_MIN\00", align 1
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 76, i32 17 }
@___asan_gen_.502 = private unnamed_addr constant [16 x i8] c"W83792D_REG_FAN\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 87, i32 17 }
@___asan_gen_.505 = private unnamed_addr constant [20 x i8] c"W83792D_REG_FAN_MIN\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 96, i32 17 }
@___asan_gen_.508 = private unnamed_addr constant [16 x i8] c"W83792D_REG_PWM\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 112, i32 17 }
@___asan_gen_.511 = private unnamed_addr constant [18 x i8] c"W83792D_REG_TEMP1\00", align 1
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 125, i32 17 }
@___asan_gen_.514 = private unnamed_addr constant [21 x i8] c"W83792D_REG_TEMP_ADD\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 131, i32 17 }
@___asan_gen_.517 = private unnamed_addr constant [20 x i8] c"W83792D_REG_FAN_DIV\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 106, i32 17 }
@___asan_gen_.520 = private unnamed_addr constant [20 x i8] c"W83792D_REG_THERMAL\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 146, i32 17 }
@___asan_gen_.523 = private unnamed_addr constant [22 x i8] c"W83792D_REG_TOLERANCE\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 152, i32 17 }
@___asan_gen_.526 = private unnamed_addr constant [19 x i8] c"W83792D_REG_POINTS\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 158, i32 17 }
@___asan_gen_.529 = private unnamed_addr constant [19 x i8] c"W83792D_REG_LEVELS\00", align 1
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 173, i32 17 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1608, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1609, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1611, i32 3 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1612, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1613, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1615, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1616, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1617, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1619, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1620, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1621, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1623, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1625, i32 3 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1629, i32 4 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1635, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1637, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1638, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 988, i32 8 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 970, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 962, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 990, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 972, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 963, i32 8 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 992, i32 8 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 974, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 964, i32 8 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 994, i32 8 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 976, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 965, i32 8 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 996, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 978, i32 8 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 966, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 998, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 980, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 967, i32 8 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1000, i32 8 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 982, i32 8 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 968, i32 8 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1002, i32 8 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 984, i32 8 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 969, i32 8 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1004, i32 8 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 986, i32 8 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1022, i32 8 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 576, i32 22 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1023, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1030, i32 8 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1031, i32 8 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1032, i32 8 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1033, i32 8 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1034, i32 8 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1036, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1037, i32 8 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1006, i32 8 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1009, i32 8 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1015, i32 8 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1007, i32 8 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1011, i32 8 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1017, i32 8 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1008, i32 8 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1013, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1019, i32 8 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1024, i32 8 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1025, i32 8 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1026, i32 8 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1042, i32 8 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1055, i32 8 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1049, i32 8 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1043, i32 8 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1057, i32 8 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1051, i32 8 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1044, i32 8 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1059, i32 8 }
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1053, i32 8 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1021, i32 8 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1041, i32 8 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1069, i32 8 }
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1075, i32 8 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1071, i32 8 }
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1077, i32 8 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1073, i32 8 }
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1079, i32 8 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1081, i32 8 }
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1083, i32 8 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1085, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1087, i32 8 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1089, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1091, i32 8 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1093, i32 8 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1095, i32 8 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1097, i32 8 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1099, i32 8 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1101, i32 8 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1103, i32 8 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1105, i32 8 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1107, i32 8 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1109, i32 8 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1111, i32 8 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1113, i32 8 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1115, i32 8 }
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1117, i32 8 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1119, i32 8 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1121, i32 8 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1123, i32 8 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1130, i32 8 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1144, i32 8 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 435, i32 22 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1027, i32 8 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1124, i32 8 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1132, i32 8 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1146, i32 8 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1028, i32 8 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1125, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1134, i32 8 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1148, i32 8 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1029, i32 8 }
@___asan_gen_.883 = private unnamed_addr constant [23 x i8] c"w83792d_attributes_fan\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1159, i32 26 }
@___asan_gen_.886 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.889 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.892 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_div\00", align 1
@___asan_gen_.895 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.898 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.901 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm4_mode\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.907 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_min\00", align 1
@___asan_gen_.910 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan5_div\00", align 1
@___asan_gen_.913 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.916 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm5\00", align 1
@___asan_gen_.919 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm5_mode\00", align 1
@___asan_gen_.922 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.925 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_min\00", align 1
@___asan_gen_.928 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan6_div\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.934 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm6\00", align 1
@___asan_gen_.937 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm6_mode\00", align 1
@___asan_gen_.940 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.943 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_min\00", align 1
@___asan_gen_.946 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan7_div\00", align 1
@___asan_gen_.949 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_alarm\00", align 1
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm7\00", align 1
@___asan_gen_.955 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm7_mode\00", align 1
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1126, i32 8 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1136, i32 8 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1150, i32 8 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1038, i32 8 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1045, i32 8 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1061, i32 8 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1127, i32 8 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1138, i32 8 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1152, i32 8 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1039, i32 8 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1046, i32 8 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1063, i32 8 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1128, i32 8 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1140, i32 8 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1154, i32 8 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1040, i32 8 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1047, i32 8 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1065, i32 8 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1129, i32 8 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1142, i32 8 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1156, i32 8 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1035, i32 8 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1048, i32 8 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1067, i32 8 }
@___asan_gen_.1030 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 1366, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 933, i32 5 }
@___asan_gen_.1051 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1054 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1055 = private constant [27 x i8] c"../drivers/hwmon/w83792d.c\00", align 1
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1055, i32 947, i32 3 }
@llvm.compiler.used = appending global [315 x ptr] [ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description360, ptr @__UNIQUE_ID_file361, ptr @__UNIQUE_ID_force_subclients289, ptr @__UNIQUE_ID_force_subclientstype288, ptr @__UNIQUE_ID_init291, ptr @__UNIQUE_ID_inittype290, ptr @__UNIQUE_ID_license362, ptr @__exitcall_w83792d_driver_exit, ptr @__initcall__kmod_w83792d__358_1642_w83792d_driver_init6, ptr @__param_force_subclients, ptr @__param_init, ptr @w83792d_detect_subclients._entry, ptr @w83792d_detect_subclients._entry.152, ptr @w83792d_detect_subclients._entry_ptr, ptr @w83792d_detect_subclients._entry_ptr.154, ptr @w83792d_driver_exit, ptr @init, ptr @w83792d_driver, ptr @force_subclients, ptr @.str, ptr @w83792d_id, ptr @normal_i2c, ptr @w83792d_group, ptr @w83792d_group_fan, ptr @w83792d_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_mode, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_mode, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_mode, ptr @sensor_dev_attr_pwm3_enable, ptr @dev_attr_alarms, ptr @dev_attr_intrusion0_alarm, ptr @sensor_dev_attr_tolerance1, ptr @sensor_dev_attr_thermal_cruise1, ptr @sensor_dev_attr_tolerance2, ptr @sensor_dev_attr_thermal_cruise2, ptr @sensor_dev_attr_tolerance3, ptr @sensor_dev_attr_thermal_cruise3, ptr @sensor_dev_attr_sf2_point1_fan1, ptr @sensor_dev_attr_sf2_point2_fan1, ptr @sensor_dev_attr_sf2_point3_fan1, ptr @sensor_dev_attr_sf2_point4_fan1, ptr @sensor_dev_attr_sf2_point1_fan2, ptr @sensor_dev_attr_sf2_point2_fan2, ptr @sensor_dev_attr_sf2_point3_fan2, ptr @sensor_dev_attr_sf2_point4_fan2, ptr @sensor_dev_attr_sf2_point1_fan3, ptr @sensor_dev_attr_sf2_point2_fan3, ptr @sensor_dev_attr_sf2_point3_fan3, ptr @sensor_dev_attr_sf2_point4_fan3, ptr @sensor_dev_attr_sf2_level1_fan1, ptr @sensor_dev_attr_sf2_level2_fan1, ptr @sensor_dev_attr_sf2_level3_fan1, ptr @sensor_dev_attr_sf2_level1_fan2, ptr @sensor_dev_attr_sf2_level2_fan2, ptr @sensor_dev_attr_sf2_level3_fan2, ptr @sensor_dev_attr_sf2_level1_fan3, ptr @sensor_dev_attr_sf2_level2_fan3, ptr @sensor_dev_attr_sf2_level3_fan3, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @W83792D_REG_IN, ptr @W83792D_REG_IN_MAX, ptr @W83792D_REG_IN_MIN, ptr @W83792D_REG_FAN, ptr @W83792D_REG_FAN_MIN, ptr @W83792D_REG_PWM, ptr @W83792D_REG_TEMP1, ptr @W83792D_REG_TEMP_ADD, ptr @W83792D_REG_FAN_DIV, ptr @W83792D_REG_THERMAL, ptr @W83792D_REG_TOLERANCE, ptr @W83792D_REG_POINTS, ptr @W83792D_REG_LEVELS, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @w83792d_attributes_fan, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_div, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_pwm4, ptr @sensor_dev_attr_pwm4_mode, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan5_min, ptr @sensor_dev_attr_fan5_div, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_pwm5, ptr @sensor_dev_attr_pwm5_mode, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan6_min, ptr @sensor_dev_attr_fan6_div, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_pwm6, ptr @sensor_dev_attr_pwm6_mode, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan7_min, ptr @sensor_dev_attr_fan7_div, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_pwm7, ptr @sensor_dev_attr_pwm7_mode, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @w83792d_probe.__key, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153], section "llvm.metadata"
@0 = internal global [300 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_subclients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_group_fan to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_attributes to i32), i32 396, i32 512, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_intrusion0_alarm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_tolerance1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_thermal_cruise1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_tolerance2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_thermal_cruise2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_tolerance3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_thermal_cruise3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point1_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point2_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point3_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point4_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point1_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point2_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point3_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point4_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point1_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point2_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point3_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_point4_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level1_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level2_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level3_fan1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level1_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level2_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level3_fan2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level1_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level2_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_sf2_level3_fan3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_IN to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_IN_MAX to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_IN_MIN to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_FAN to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_FAN_MIN to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_PWM to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_TEMP1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_TEMP_ADD to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_FAN_DIV to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_THERMAL to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_TOLERANCE to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_POINTS to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83792D_REG_LEVELS to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_attributes_fan to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm5_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm6_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm7_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_detect_subclients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83792d_detect_subclients._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83792d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83792d_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w83792d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @w83792d_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83792d_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w83792d_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w83792d_group_fan) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 3)) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83792d_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 216, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.147, ptr noundef nonnull @w83792d_probe.__key) #8
  %adapter1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %1 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %adapter1.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %3 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr.i.i, align 4
  %5 = load i16, ptr @force_subclients, align 2
  %conv2.i = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv2.i)
  %cmp.i = icmp eq i32 %4, %conv2.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end24.i_crit_edge

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr.i, align 2
  %8 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %7)
  %cmp5.i = icmp eq i16 %8, %7
  br i1 %cmp5.i, label %for.body.preheader.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24.i

for.body.preheader.i:                             ; preds = %land.lhs.true.i
  %9 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 2), align 2
  %10 = add i16 %9, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %10)
  %11 = icmp ult i16 %10, -8
  br i1 %11, label %for.body.preheader.i.do.end.i_crit_edge, label %for.cond.i

for.body.preheader.i.do.end.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %12 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 3), align 2
  %13 = add i16 %12, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %13)
  %14 = icmp ult i16 %13, -8
  br i1 %14, label %for.cond.i.do.end.i_crit_edge, label %for.cond.1.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = and i16 %9, 7
  %16 = shl nuw nsw i16 %12, 4
  %17 = and i16 %16, 112
  %or91.i = or i16 %17, %15
  %conv22.i = trunc i16 %or91.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 74, i8 noundef zeroext %conv22.i) #8
  br label %if.end24.i

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %for.body.preheader.i.do.end.i_crit_edge
  %.lcssa.i = phi i16 [ %9, %for.body.preheader.i.do.end.i_crit_edge ], [ %12, %for.cond.i.do.end.i_crit_edge ]
  %conv18.i = zext i16 %.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.148, i32 noundef %conv18.i) #11
  br label %cleanup

if.end24.i:                                       ; preds = %for.cond.1.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %call.i92.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 74) #8
  %and28.i = and i32 %call.i92.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool.not.i, label %land.lhs.true29.i, label %if.end24.i.if.end43.i_crit_edge

if.end24.i.if.end43.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

land.lhs.true29.i:                                ; preds = %if.end24.i
  %and31.i = and i32 %call.i92.i, 7
  %18 = lshr i32 %call.i92.i, 4
  %and33.i = and i32 %18, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.i, i32 %and33.i)
  %cmp34.i = icmp eq i32 %and31.i, %and33.i
  br i1 %cmp34.i, label %do.end39.i, label %land.lhs.true29.i.if.end43.i_crit_edge

land.lhs.true29.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43.i

do.end39.i:                                       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = or i32 %and31.i, 72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.153, i32 noundef %add.i) #11
  br label %cleanup

if.end43.i:                                       ; preds = %land.lhs.true29.i.if.end43.i_crit_edge, %if.end24.i.if.end43.i_crit_edge
  %and45.i = and i32 %call.i92.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.if.end54.i_crit_edge

if.end43.i.if.end54.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = trunc i32 %call.i92.i to i16
  %20 = and i16 %19, 7
  %conv52.i = or i16 %20, 72
  %call53.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %2, i16 noundef zeroext %conv52.i) #8
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then47.i, %if.end43.i.if.end54.i_crit_edge
  %and56.i = and i32 %call.i92.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end54.i.if.end5_crit_edge

if.end54.i.if.end5_crit_edge:                     ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then58.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = trunc i32 %call.i92.i to i16
  %22 = lshr i16 %21, 4
  %23 = and i16 %22, 7
  %conv64.i = or i16 %23, 72
  %call65.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %2, i16 noundef zeroext %conv64.i) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then58.i, %if.end54.i.if.end5_crit_edge
  %24 = load i8, ptr @init, align 1, !range !521
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i107 = icmp eq i8 %24, 0
  br i1 %tobool.not.i107, label %if.end5.w83792d_init_client.exit_crit_edge, label %if.then.i

if.end5.w83792d_init_client.exit_crit_edge:       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %w83792d_init_client.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i108 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext -128) #8
  br label %w83792d_init_client.exit

w83792d_init_client.exit:                         ; preds = %if.then.i, %if.end5.w83792d_init_client.exit_crit_edge
  %call.i29.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 23) #8
  %25 = trunc i32 %call.i29.i to i8
  %conv3.i = and i8 %25, -65
  %call.i30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 23, i8 noundef zeroext %conv3.i) #8
  %call.i31.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -62) #8
  %call.i32.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -54) #8
  %26 = trunc i32 %call.i31.i to i8
  %conv11.i = and i8 %26, -26
  %call.i33.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -62, i8 noundef zeroext %conv11.i) #8
  %27 = trunc i32 %call.i32.i to i8
  %conv15.i = and i8 %27, -26
  %call.i34.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -54, i8 noundef zeroext %conv15.i) #8
  %call.i35.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  %28 = trunc i32 %call.i35.i to i8
  %29 = and i8 %28, -10
  %conv19.i = or i8 %29, 1
  %call.i36.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv19.i) #8
  %call.i109 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 59) #8
  %conv = trunc i32 %call.i109 to i8
  %arrayidx7 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 0
  %30 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %arrayidx7, align 1
  %call.i109.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 60) #8
  %conv.1 = trunc i32 %call.i109.1 to i8
  %arrayidx7.1 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv.1, ptr %arrayidx7.1, align 1
  %call.i109.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #8
  %conv.2 = trunc i32 %call.i109.2 to i8
  %arrayidx7.2 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv.2, ptr %arrayidx7.2, align 1
  %call.i109.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -69) #8
  %conv.3 = trunc i32 %call.i109.3 to i8
  %arrayidx7.3 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.3, ptr %arrayidx7.3, align 1
  %call.i109.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -68) #8
  %conv.4 = trunc i32 %call.i109.4 to i8
  %arrayidx7.4 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 4
  %34 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv.4, ptr %arrayidx7.4, align 1
  %call.i109.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -67) #8
  %conv.5 = trunc i32 %call.i109.5 to i8
  %arrayidx7.5 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 5
  %35 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv.5, ptr %arrayidx7.5, align 1
  %call.i109.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -65) #8
  %conv.6 = trunc i32 %call.i109.6 to i8
  %arrayidx7.6 = getelementptr %struct.w83792d_data, ptr %call.i, i32 0, i32 9, i32 6
  %36 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv.6, ptr %arrayidx7.6, align 1
  %call8 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83792d_group) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %w83792d_init_client.exit.cleanup_crit_edge

w83792d_init_client.exit.cleanup_crit_edge:       ; preds = %w83792d_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end11:                                         ; preds = %w83792d_init_client.exit
  %call.i110 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 26) #8
  %and = and i32 %call.i110, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %if.then14, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  %call16 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83792d_group_fan) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.then14.if.end20_crit_edge, label %if.then14.exit_remove_files_crit_edge

if.then14.exit_remove_files_crit_edge:            ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %and21 = and i32 %call.i110, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then23, label %if.end20.if.end29_crit_edge

if.end20.if.end29_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then23:                                        ; preds = %if.end20
  %call25 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 1)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.then23.if.end29_crit_edge, label %if.then23.exit_remove_files_crit_edge

if.then23.exit_remove_files_crit_edge:            ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then23.if.end29_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.end29:                                         ; preds = %if.then23.if.end29_crit_edge, %if.end20.if.end29_crit_edge
  %call.i111 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 75) #8
  %and31 = and i32 %call.i111, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end39_crit_edge, label %if.then33

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then33:                                        ; preds = %if.end29
  %call35 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 2)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then33.if.end39_crit_edge, label %if.then33.exit_remove_files_crit_edge

if.then33.exit_remove_files_crit_edge:            ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then33.if.end39_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.end39:                                         ; preds = %if.then33.if.end39_crit_edge, %if.end29.if.end39_crit_edge
  %and40 = and i32 %call.i111, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end48_crit_edge, label %if.then42

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.then42:                                        ; preds = %if.end39
  %call44 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 3)) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then42.if.end48_crit_edge, label %if.then42.exit_remove_files_crit_edge

if.then42.exit_remove_files_crit_edge:            ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_remove_files

if.then42.if.end48_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end48

if.end48:                                         ; preds = %if.then42.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %call49 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #8
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call49, ptr %call.i, align 4
  %cmp.i112 = icmp ugt ptr %call49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i112, label %if.then52, label %if.end48.cleanup_crit_edge

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %call49 to i32
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then52, %if.then42.exit_remove_files_crit_edge, %if.then33.exit_remove_files_crit_edge, %if.then23.exit_remove_files_crit_edge, %if.then14.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %call35, %if.then33.exit_remove_files_crit_edge ], [ %call44, %if.then42.exit_remove_files_crit_edge ], [ %38, %if.then52 ], [ %call25, %if.then23.exit_remove_files_crit_edge ], [ %call16, %if.then14.exit_remove_files_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83792d_group) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83792d_group_fan) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 1)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 2)) #8
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef getelementptr inbounds ([4 x %struct.attribute_group], ptr @w83792d_group_fan, i32 0, i32 3)) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %if.end48.cleanup_crit_edge, %w83792d_init_client.exit.cleanup_crit_edge, %do.end39.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %w83792d_init_client.exit.cleanup_crit_edge ], [ 0, %if.end48.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end39.i ], [ %err.0, %exit_remove_files ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83792d_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  %and = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #8
  %call.i60 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #8
  %and8 = and i32 %call.i59, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then10:                                        ; preds = %if.end5
  %and11 = and i32 %call.i59, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %tobool12.not.not = xor i1 %tobool12.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %call.i60)
  %cmp.not = icmp eq i32 %call.i60, 163
  %or.cond = select i1 %tobool12.not.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i60)
  %cmp16.not = icmp eq i32 %call.i60, 92
  %or.cond56 = select i1 %tobool12.not, i1 true, i1 %cmp16.not
  %or.cond58 = select i1 %or.cond, i1 %or.cond56, i1 false
  br i1 %or.cond58, label %if.then10.if.end19_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.end19:                                         ; preds = %if.then10.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %call.i61 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 72) #8
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i61, i32 %conv)
  %cmp21.not = icmp eq i32 %call.i61, %conv
  br i1 %cmp21.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call.i62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #8
  %8 = trunc i32 %call.i62 to i8
  %9 = and i8 %8, 120
  %conv27 = or i8 %9, -128
  %call.i63 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 78, i8 noundef zeroext %conv27) #8
  %call.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 88) #8
  %call.i65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 122, i32 %call.i64)
  %cmp31.not = icmp eq i32 %call.i64, 122
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i65)
  %cmp34.not = icmp eq i32 %call.i65, 92
  %or.cond57 = select i1 %cmp31.not, i1 %cmp34.not, i1 false
  br i1 %or.cond57, label %if.end37, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then10.cleanup_crit_edge ], [ -19, %if.end19.cleanup_crit_edge ], [ -19, %if.end24.cleanup_crit_edge ]
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
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %low_bits.i = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 7
  %4 = ptrtoint ptr %low_bits.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %low_bits.i, align 4
  %conv1.i = zext i16 %5 to i32
  %mul.i = shl i32 %1, 1
  %shr.i = lshr i32 %conv1.i, %mul.i
  %6 = shl nuw nsw i32 %conv.i, 3
  %and.i = shl nuw nsw i32 %shr.i, 1
  %7 = and i32 %and.i, 6
  %mul = or i32 %7, %6
  br label %cond.end10

cond.false:                                       ; preds = %entry
  %8 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %switch = icmp eq i32 %8, 6
  %arrayidx.i20 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 4, i32 %1
  %9 = ptrtoint ptr %arrayidx.i20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i20, align 1
  %conv.i21 = zext i8 %10 to i32
  br i1 %switch, label %cond.true4, label %cond.false7

cond.true4:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i22 = shl nuw nsw i32 %conv.i21, 2
  %low_bits.i23 = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %low_bits.i23 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %low_bits.i23, align 4
  %conv1.i24 = zext i16 %12 to i32
  %mul.i25 = shl nuw nsw i32 %1, 1
  %shr.i26 = lshr i32 %conv1.i24, %mul.i25
  %and.i27 = and i32 %shr.i26, 3
  %or.i28 = or i32 %and.i27, %shl.i22
  %mul6 = mul nuw nsw i32 %or.i28, 6
  br label %cond.end10

cond.false7:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %low_bits.i32 = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 7
  %13 = ptrtoint ptr %low_bits.i32 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %low_bits.i32, align 4
  %conv1.i33 = zext i16 %14 to i32
  %mul.i34 = shl nuw i32 %1, 1
  %shr.i35 = lshr i32 %conv1.i33, %mul.i34
  %15 = shl nuw nsw i32 %conv.i21, 4
  %and.i36 = shl nuw nsw i32 %shr.i35, 2
  %16 = and i32 %and.i36, 12
  %mul9 = or i32 %16, %15
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false7, %cond.true4, %cond.true
  %cond11 = phi i32 [ %mul, %cond.true ], [ %mul6, %cond.true4 ], [ %mul9, %cond.false7 ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %cond11)
  ret i32 %call12
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83792d_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %last_updated = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %last_updated, align 4
  %sub.neg = sub i32 300, %2
  %sub1 = add i32 %sub.neg, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1)
  %cmp = icmp slt i32 %sub1, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %sub3 = sub i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub3)
  %cmp4 = icmp slt i32 %sub3, 0
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %valid = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %valid, align 4, !range !521
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %lor.lhs.false5.do.body_crit_edge, label %lor.lhs.false5.if.end251_crit_edge

lor.lhs.false5.if.end251_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end251

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_update_device.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_update_device, %for.body)) #8
          to label %if.then12 [label %for.body], !srcloc !522

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_update_device.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then12, %do.body
  %i.0396 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then12 ]
  %arrayidx = getelementptr [9 x i8], ptr @W83792D_REG_IN, i32 0, i32 %i.0396
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %9) #8
  %conv = trunc i32 %call.i to i8
  %arrayidx15 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 4, i32 %i.0396
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx15, align 1
  %arrayidx16 = getelementptr [9 x i8], ptr @W83792D_REG_IN_MAX, i32 0, i32 %i.0396
  %11 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16, align 1
  %call.i374 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %12) #8
  %conv18 = trunc i32 %call.i374 to i8
  %arrayidx19 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 5, i32 %i.0396
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv18, ptr %arrayidx19, align 1
  %arrayidx20 = getelementptr [9 x i8], ptr @W83792D_REG_IN_MIN, i32 0, i32 %i.0396
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx20, align 1
  %call.i375 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %15) #8
  %conv22 = trunc i32 %call.i375 to i8
  %arrayidx23 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 6, i32 %i.0396
  %16 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv22, ptr %arrayidx23, align 1
  %inc = add nuw nsw i32 %i.0396, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i376 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 62) #8
  %call.i377 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 63) #8
  %shl = shl i32 %call.i377, 8
  %add = add i32 %shl, %call.i376
  %conv26 = trunc i32 %add to i16
  %low_bits = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %low_bits to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv26, ptr %low_bits, align 4
  br label %for.body30

for.body30:                                       ; preds = %for.body30.for.body30_crit_edge, %for.end
  %i.1397 = phi i32 [ 0, %for.end ], [ %inc44, %for.body30.for.body30_crit_edge ]
  %arrayidx31 = getelementptr [7 x i8], ptr @W83792D_REG_FAN, i32 0, i32 %i.1397
  %18 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx31, align 1
  %call.i378 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %19) #8
  %conv33 = trunc i32 %call.i378 to i8
  %arrayidx34 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 8, i32 %i.1397
  %20 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv33, ptr %arrayidx34, align 1
  %arrayidx35 = getelementptr [7 x i8], ptr @W83792D_REG_FAN_MIN, i32 0, i32 %i.1397
  %21 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx35, align 1
  %call.i379 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %22) #8
  %conv37 = trunc i32 %call.i379 to i8
  %arrayidx38 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 9, i32 %i.1397
  %23 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv37, ptr %arrayidx38, align 1
  %arrayidx39 = getelementptr [7 x i8], ptr @W83792D_REG_PWM, i32 0, i32 %i.1397
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx39, align 1
  %call.i380 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %25) #8
  %conv41 = trunc i32 %call.i380 to i8
  %arrayidx42 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 13, i32 %i.1397
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv41, ptr %arrayidx42, align 1
  %inc44 = add nuw nsw i32 %i.1397, 1
  %exitcond406.not = icmp eq i32 %inc44, 7
  br i1 %exitcond406.not, label %for.end45, label %for.body30.for.body30_crit_edge

for.body30.for.body30_crit_edge:                  ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30

for.end45:                                        ; preds = %for.body30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i381 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -124) #8
  %27 = trunc i32 %call.i381 to i8
  %conv49 = and i8 %27, 3
  %pwmenable = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 14
  %28 = ptrtoint ptr %pwmenable to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv49, ptr %pwmenable, align 1
  %29 = lshr i8 %27, 2
  %conv53 = and i8 %29, 3
  %arrayidx55 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 14, i32 1
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv53, ptr %arrayidx55, align 1
  %31 = lshr i8 %27, 4
  %conv59 = and i8 %31, 3
  %arrayidx61 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 14, i32 2
  %32 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv59, ptr %arrayidx61, align 1
  %call.i382 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 39) #8
  %conv68 = trunc i32 %call.i382 to i8
  %arrayidx69 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 10, i32 0
  %33 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv68, ptr %arrayidx69, align 1
  %call.i382.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 57) #8
  %conv68.1 = trunc i32 %call.i382.1 to i8
  %arrayidx69.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx69.1 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv68.1, ptr %arrayidx69.1, align 1
  %call.i382.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 58) #8
  %conv68.2 = trunc i32 %call.i382.2 to i8
  %arrayidx69.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %arrayidx69.2 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv68.2, ptr %arrayidx69.2, align 1
  %call.i383 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -64) #8
  %conv84 = trunc i32 %call.i383 to i8
  %arrayidx86 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 0
  %36 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv84, ptr %arrayidx86, align 1
  %call.i383.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -63) #8
  %conv84.1 = trunc i32 %call.i383.1 to i8
  %arrayidx86.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx86.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv84.1, ptr %arrayidx86.1, align 1
  %call.i383.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -59) #8
  %conv84.2 = trunc i32 %call.i383.2 to i8
  %arrayidx86.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 2
  %38 = ptrtoint ptr %arrayidx86.2 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv84.2, ptr %arrayidx86.2, align 1
  %call.i383.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -58) #8
  %conv84.3 = trunc i32 %call.i383.3 to i8
  %arrayidx86.3 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 3
  %39 = ptrtoint ptr %arrayidx86.3 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv84.3, ptr %arrayidx86.3, align 1
  %call.i383.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -61) #8
  %conv84.4 = trunc i32 %call.i383.4 to i8
  %arrayidx86.4 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 4
  %40 = ptrtoint ptr %arrayidx86.4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv84.4, ptr %arrayidx86.4, align 1
  %call.i383.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -60) #8
  %conv84.5 = trunc i32 %call.i383.5 to i8
  %arrayidx86.5 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 0, i32 5
  %41 = ptrtoint ptr %arrayidx86.5 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv84.5, ptr %arrayidx86.5, align 1
  %call.i383.1411 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -56) #8
  %conv84.1412 = trunc i32 %call.i383.1411 to i8
  %arrayidx86.1413 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 0
  %42 = ptrtoint ptr %arrayidx86.1413 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv84.1412, ptr %arrayidx86.1413, align 1
  %call.i383.1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -55) #8
  %conv84.1.1 = trunc i32 %call.i383.1.1 to i8
  %arrayidx86.1.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 1
  %43 = ptrtoint ptr %arrayidx86.1.1 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv84.1.1, ptr %arrayidx86.1.1, align 1
  %call.i383.2.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -51) #8
  %conv84.2.1 = trunc i32 %call.i383.2.1 to i8
  %arrayidx86.2.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 2
  %44 = ptrtoint ptr %arrayidx86.2.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv84.2.1, ptr %arrayidx86.2.1, align 1
  %call.i383.3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -50) #8
  %conv84.3.1 = trunc i32 %call.i383.3.1 to i8
  %arrayidx86.3.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 3
  %45 = ptrtoint ptr %arrayidx86.3.1 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv84.3.1, ptr %arrayidx86.3.1, align 1
  %call.i383.4.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -53) #8
  %conv84.4.1 = trunc i32 %call.i383.4.1 to i8
  %arrayidx86.4.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 4
  %46 = ptrtoint ptr %arrayidx86.4.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv84.4.1, ptr %arrayidx86.4.1, align 1
  %call.i383.5.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -52) #8
  %conv84.5.1 = trunc i32 %call.i383.5.1 to i8
  %arrayidx86.5.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 11, i32 1, i32 5
  %47 = ptrtoint ptr %arrayidx86.5.1 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv84.5.1, ptr %arrayidx86.5.1, align 1
  %call.i384 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 71) #8
  %conv99 = trunc i32 %call.i384 to i8
  %call.i384.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 91) #8
  %conv99.1 = trunc i32 %call.i384.1 to i8
  %call.i384.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 92) #8
  %conv99.2 = trunc i32 %call.i384.2 to i8
  %call.i384.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -98) #8
  %conv99.3 = trunc i32 %call.i384.3 to i8
  %48 = and i8 %conv99, 7
  %fan_div = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 12
  %49 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %fan_div, align 1
  %50 = lshr i8 %conv99, 4
  %51 = and i8 %50, 7
  %arrayidx115 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 1
  %52 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx115, align 1
  %53 = and i8 %conv99.1, 7
  %arrayidx121 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %arrayidx121, align 1
  %55 = lshr i8 %conv99.1, 4
  %56 = and i8 %55, 7
  %arrayidx128 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 3
  %57 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %arrayidx128, align 1
  %58 = and i8 %conv99.2, 7
  %arrayidx134 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 4
  %59 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %arrayidx134, align 1
  %60 = lshr i8 %conv99.2, 4
  %61 = and i8 %60, 7
  %arrayidx141 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 5
  %62 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %arrayidx141, align 1
  %63 = and i8 %conv99.3, 7
  %arrayidx147 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 12, i32 6
  %64 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx147, align 1
  %call.i385 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -87) #8
  %call.i386 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -86) #8
  %shl150 = shl i32 %call.i386, 8
  %add151 = add i32 %shl150, %call.i385
  %call.i387 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -85) #8
  %shl153 = shl i32 %call.i387, 16
  %add154 = add i32 %add151, %shl153
  %alarms = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 15
  %65 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add154, ptr %alarms, align 4
  %call.i388 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 66) #8
  %66 = trunc i32 %call.i388 to i8
  %67 = lshr i8 %66, 5
  %conv158 = and i8 %67, 1
  %chassis = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 16
  %68 = ptrtoint ptr %chassis to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv158, ptr %chassis, align 4
  %call.i389 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -123) #8
  %69 = trunc i32 %call.i389 to i8
  %conv166 = and i8 %69, 127
  %arrayidx167 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 17, i32 0
  %70 = ptrtoint ptr %arrayidx167 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv166, ptr %arrayidx167, align 1
  %call.i389.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -122) #8
  %71 = trunc i32 %call.i389.1 to i8
  %conv166.1 = and i8 %71, 127
  %arrayidx167.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 17, i32 1
  %72 = ptrtoint ptr %arrayidx167.1 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv166.1, ptr %arrayidx167.1, align 1
  %call.i389.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -106) #8
  %73 = trunc i32 %call.i389.2 to i8
  %conv166.2 = and i8 %73, 127
  %arrayidx167.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 17, i32 2
  %74 = ptrtoint ptr %arrayidx167.2 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv166.2, ptr %arrayidx167.2, align 1
  %call.i390 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -121) #8
  %75 = trunc i32 %call.i390 to i8
  %conv175 = and i8 %75, 15
  %tolerance = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 18
  %76 = ptrtoint ptr %tolerance to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %conv175, ptr %tolerance, align 4
  %77 = lshr i8 %75, 4
  %arrayidx182 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 18, i32 1
  %78 = ptrtoint ptr %arrayidx182 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx182, align 1
  %call.i391 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -105) #8
  %79 = trunc i32 %call.i391 to i8
  %conv185 = and i8 %79, 15
  %arrayidx187 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 18, i32 2
  %80 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv185, ptr %arrayidx187, align 2
  %call.i392 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -123) #8
  %81 = trunc i32 %call.i392 to i8
  %conv200 = and i8 %81, 127
  %arrayidx202 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 0, i32 0
  %82 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv200, ptr %arrayidx202, align 1
  %call.i392.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -29) #8
  %83 = trunc i32 %call.i392.1 to i8
  %conv200.1 = and i8 %83, 127
  %arrayidx202.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 0, i32 1
  %84 = ptrtoint ptr %arrayidx202.1 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv200.1, ptr %arrayidx202.1, align 1
  %call.i392.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -28) #8
  %85 = trunc i32 %call.i392.2 to i8
  %conv200.2 = and i8 %85, 127
  %arrayidx202.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 0, i32 2
  %86 = ptrtoint ptr %arrayidx202.2 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv200.2, ptr %arrayidx202.2, align 1
  %call.i392.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -27) #8
  %87 = trunc i32 %call.i392.3 to i8
  %conv200.3 = and i8 %87, 127
  %arrayidx202.3 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx202.3 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv200.3, ptr %arrayidx202.3, align 1
  %call.i392.1419 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -122) #8
  %89 = trunc i32 %call.i392.1419 to i8
  %conv200.1420 = and i8 %89, 127
  %arrayidx202.1421 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 1, i32 0
  %90 = ptrtoint ptr %arrayidx202.1421 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 %conv200.1420, ptr %arrayidx202.1421, align 1
  %call.i392.1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -26) #8
  %91 = trunc i32 %call.i392.1.1 to i8
  %conv200.1.1 = and i8 %91, 127
  %arrayidx202.1.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 1, i32 1
  %92 = ptrtoint ptr %arrayidx202.1.1 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv200.1.1, ptr %arrayidx202.1.1, align 1
  %call.i392.2.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -25) #8
  %93 = trunc i32 %call.i392.2.1 to i8
  %conv200.2.1 = and i8 %93, 127
  %arrayidx202.2.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 1, i32 2
  %94 = ptrtoint ptr %arrayidx202.2.1 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv200.2.1, ptr %arrayidx202.2.1, align 1
  %call.i392.3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -24) #8
  %95 = trunc i32 %call.i392.3.1 to i8
  %conv200.3.1 = and i8 %95, 127
  %arrayidx202.3.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 1, i32 3
  %96 = ptrtoint ptr %arrayidx202.3.1 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %conv200.3.1, ptr %arrayidx202.3.1, align 1
  %call.i392.2423 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -106) #8
  %97 = trunc i32 %call.i392.2423 to i8
  %conv200.2424 = and i8 %97, 127
  %arrayidx202.2425 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 2, i32 0
  %98 = ptrtoint ptr %arrayidx202.2425 to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 %conv200.2424, ptr %arrayidx202.2425, align 1
  %call.i392.1.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -23) #8
  %99 = trunc i32 %call.i392.1.2 to i8
  %conv200.1.2 = and i8 %99, 127
  %arrayidx202.1.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 2, i32 1
  %100 = ptrtoint ptr %arrayidx202.1.2 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv200.1.2, ptr %arrayidx202.1.2, align 1
  %call.i392.2.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -22) #8
  %101 = trunc i32 %call.i392.2.2 to i8
  %conv200.2.2 = and i8 %101, 127
  %arrayidx202.2.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 2, i32 2
  %102 = ptrtoint ptr %arrayidx202.2.2 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %conv200.2.2, ptr %arrayidx202.2.2, align 1
  %call.i392.3.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -21) #8
  %103 = trunc i32 %call.i392.3.2 to i8
  %conv200.3.2 = and i8 %103, 127
  %arrayidx202.3.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 19, i32 2, i32 3
  %104 = ptrtoint ptr %arrayidx202.3.2 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %conv200.3.2, ptr %arrayidx202.3.2, align 1
  %call.i393 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -120) #8
  %105 = trunc i32 %call.i393 to i8
  %conv219 = and i8 %105, 15
  %arrayidx220 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 0
  %106 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 %conv219, ptr %arrayidx220, align 1
  %107 = lshr i8 %105, 4
  %arrayidx228 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 0, i32 1
  %108 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 %107, ptr %arrayidx228, align 1
  %call.i394 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -32) #8
  %109 = trunc i32 %call.i394 to i8
  %110 = lshr i8 %109, 4
  %arrayidx239 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 0, i32 2
  %111 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %110, ptr %arrayidx239, align 1
  %conv242 = and i8 %109, 15
  %arrayidx245 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 0, i32 3
  %112 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv242, ptr %arrayidx245, align 1
  %call.i393.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -119) #8
  %113 = trunc i32 %call.i393.1 to i8
  %conv219.1 = and i8 %113, 15
  %arrayidx220.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 1
  %114 = ptrtoint ptr %arrayidx220.1 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 %conv219.1, ptr %arrayidx220.1, align 1
  %115 = lshr i8 %113, 4
  %arrayidx228.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 1, i32 1
  %116 = ptrtoint ptr %arrayidx228.1 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %arrayidx228.1, align 1
  %call.i394.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -31) #8
  %117 = trunc i32 %call.i394.1 to i8
  %118 = lshr i8 %117, 4
  %arrayidx239.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 1, i32 2
  %119 = ptrtoint ptr %arrayidx239.1 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 %118, ptr %arrayidx239.1, align 1
  %conv242.1 = and i8 %117, 15
  %arrayidx245.1 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 1, i32 3
  %120 = ptrtoint ptr %arrayidx245.1 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv242.1, ptr %arrayidx245.1, align 1
  %call.i393.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -104) #8
  %121 = trunc i32 %call.i393.2 to i8
  %conv219.2 = and i8 %121, 15
  %arrayidx220.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 2
  %122 = ptrtoint ptr %arrayidx220.2 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %conv219.2, ptr %arrayidx220.2, align 1
  %123 = lshr i8 %121, 4
  %arrayidx228.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 2, i32 1
  %124 = ptrtoint ptr %arrayidx228.2 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 %123, ptr %arrayidx228.2, align 1
  %call.i394.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -30) #8
  %125 = trunc i32 %call.i394.2 to i8
  %126 = lshr i8 %125, 4
  %arrayidx239.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 2, i32 2
  %127 = ptrtoint ptr %arrayidx239.2 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 %126, ptr %arrayidx239.2, align 1
  %conv242.2 = and i8 %125, 15
  %arrayidx245.2 = getelementptr %struct.w83792d_data, ptr %1, i32 0, i32 20, i32 2, i32 3
  %128 = ptrtoint ptr %arrayidx245.2 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 %conv242.2, ptr %arrayidx245.2, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %129 = load volatile i32, ptr @jiffies, align 128
  %130 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %last_updated, align 4
  %valid250 = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 2
  %131 = ptrtoint ptr %valid250 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 1, ptr %valid250, align 4
  br label %if.end251

if.end251:                                        ; preds = %for.end45, %lor.lhs.false5.if.end251_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  tail call fastcc void @w83792d_print_debug(ptr noundef %1, ptr noundef %dev)
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83792d_print_debug(ptr nocapture noundef readonly %data, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body4)) #8
          to label %if.then [label %do.body4], !srcloc !522

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.7) #8
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body22)) #8
          to label %if.then18 [label %do.body22], !srcloc !522

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %do.body22

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %if.then18, %do.body4
  %i.0468 = phi i32 [ %inc, %for.inc.do.body22_crit_edge ], [ 0, %do.body4 ], [ 0, %if.then18 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body40)) #8
          to label %if.then36 [label %do.body40], !srcloc !522

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 4, i32 %i.0468
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %i.0468, i32 noundef %conv) #8
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body60)) #8
          to label %if.then54 [label %do.body60], !srcloc !522

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx55 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 5, i32 %i.0468
  %2 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %i.0468, i32 noundef %conv56) #8
  br label %do.body60

do.body60:                                        ; preds = %if.then54, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %for.inc)) #8
          to label %if.then74 [label %for.inc], !srcloc !522

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx75 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 6, i32 %i.0468
  %4 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %i.0468, i32 noundef %conv76) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %do.body60
  %inc = add nuw nsw i32 %i.0468, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %do.body80, label %for.inc.do.body22_crit_edge

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body22

do.body80:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body99)) #8
          to label %if.then94 [label %do.body99], !srcloc !522

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #10
  %low_bits = getelementptr inbounds %struct.w83792d_data, ptr %data, i32 0, i32 7
  %6 = ptrtoint ptr %low_bits to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %low_bits, align 4
  %8 = and i16 %7, 255
  %and = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %and) #8
  br label %do.body99

do.body99:                                        ; preds = %if.then94, %do.body80
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body119)) #8
          to label %if.then113 [label %do.body119], !srcloc !522

if.then113:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #10
  %low_bits114 = getelementptr inbounds %struct.w83792d_data, ptr %data, i32 0, i32 7
  %9 = ptrtoint ptr %low_bits114 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %low_bits114, align 4
  %11 = lshr i16 %10, 8
  %12 = zext i16 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %12) #8
  br label %do.body119

do.body119:                                       ; preds = %if.then113, %do.body99
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body141)) #8
          to label %if.then133 [label %do.body141], !srcloc !522

if.then133:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %do.body141

do.body141:                                       ; preds = %for.inc201.do.body141_crit_edge, %if.then133, %do.body119
  %i.1472 = phi i32 [ %inc202, %for.inc201.do.body141_crit_edge ], [ 0, %do.body119 ], [ 0, %if.then133 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body161)) #8
          to label %if.then155 [label %do.body161], !srcloc !522

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx156 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 8, i32 %i.1472
  %13 = ptrtoint ptr %arrayidx156 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx156, align 1
  %conv157 = zext i8 %14 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %i.1472, i32 noundef %conv157) #8
  br label %do.body161

do.body161:                                       ; preds = %if.then155, %do.body141
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body181)) #8
          to label %if.then175 [label %do.body181], !srcloc !522

if.then175:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx176 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 9, i32 %i.1472
  %15 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx176, align 1
  %conv177 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %i.1472, i32 noundef %conv177) #8
  br label %do.body181

do.body181:                                       ; preds = %if.then175, %do.body161
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %for.inc201)) #8
          to label %if.then195 [label %for.inc201], !srcloc !522

if.then195:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx196 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 13, i32 %i.1472
  %17 = ptrtoint ptr %arrayidx196 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx196, align 1
  %conv197 = zext i8 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %i.1472, i32 noundef %conv197) #8
  br label %for.inc201

for.inc201:                                       ; preds = %if.then195, %do.body181
  %inc202 = add nuw nsw i32 %i.1472, 1
  %exitcond483.not = icmp eq i32 %inc202, 7
  br i1 %exitcond483.not, label %do.body204, label %for.inc201.do.body141_crit_edge

for.inc201.do.body141_crit_edge:                  ; preds = %for.inc201
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body141

do.body204:                                       ; preds = %for.inc201
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body226)) #8
          to label %if.then218 [label %do.body226], !srcloc !522

if.then218:                                       ; preds = %do.body204
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug352, ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %do.body226

do.body226:                                       ; preds = %for.inc246.do.body226_crit_edge, %if.then218, %do.body204
  %i.2476 = phi i32 [ %inc247, %for.inc246.do.body226_crit_edge ], [ 0, %do.body204 ], [ 0, %if.then218 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %for.inc246)) #8
          to label %if.then240 [label %for.inc246], !srcloc !522

if.then240:                                       ; preds = %do.body226
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx241 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 10, i32 %i.2476
  %19 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx241, align 1
  %conv242 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug353, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %i.2476, i32 noundef %conv242) #8
  br label %for.inc246

for.inc246:                                       ; preds = %if.then240, %do.body226
  %inc247 = add nuw nsw i32 %i.2476, 1
  %exitcond484.not = icmp eq i32 %inc247, 3
  br i1 %exitcond484.not, label %for.inc246.for.cond253.preheader_crit_edge, label %for.inc246.do.body226_crit_edge

for.inc246.do.body226_crit_edge:                  ; preds = %for.inc246
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body226

for.inc246.for.cond253.preheader_crit_edge:       ; preds = %for.inc246
  br label %for.cond253.preheader

for.cond253.preheader:                            ; preds = %for.inc281.for.cond253.preheader_crit_edge, %for.inc246.for.cond253.preheader_crit_edge
  %i.3480 = phi i32 [ %inc282, %for.inc281.for.cond253.preheader_crit_edge ], [ 0, %for.inc246.for.cond253.preheader_crit_edge ]
  br label %do.body257

do.body257:                                       ; preds = %for.inc278.do.body257_crit_edge, %for.cond253.preheader
  %j.0478 = phi i32 [ 0, %for.cond253.preheader ], [ %inc279, %for.inc278.do.body257_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %for.inc278)) #8
          to label %if.then271 [label %for.inc278], !srcloc !522

if.then271:                                       ; preds = %do.body257
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx273 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 11, i32 %i.3480, i32 %j.0478
  %21 = ptrtoint ptr %arrayidx273 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx273, align 1
  %conv274 = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug354, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %i.3480, i32 noundef %j.0478, i32 noundef %conv274) #8
  br label %for.inc278

for.inc278:                                       ; preds = %if.then271, %do.body257
  %inc279 = add nuw nsw i32 %j.0478, 1
  %exitcond485.not = icmp eq i32 %inc279, 6
  br i1 %exitcond485.not, label %for.inc281, label %for.inc278.do.body257_crit_edge

for.inc278.do.body257_crit_edge:                  ; preds = %for.inc278
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body257

for.inc281:                                       ; preds = %for.inc278
  %inc282 = add nuw nsw i32 %i.3480, 1
  %exitcond486.not = icmp eq i32 %inc282, 2
  br i1 %exitcond486.not, label %for.inc281.do.body288_crit_edge, label %for.inc281.for.cond253.preheader_crit_edge

for.inc281.for.cond253.preheader_crit_edge:       ; preds = %for.inc281
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond253.preheader

for.inc281.do.body288_crit_edge:                  ; preds = %for.inc281
  br label %do.body288

do.body288:                                       ; preds = %for.inc308.do.body288_crit_edge, %for.inc281.do.body288_crit_edge
  %i.4481 = phi i32 [ %inc309, %for.inc308.do.body288_crit_edge ], [ 0, %for.inc281.do.body288_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug355, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %for.inc308)) #8
          to label %if.then302 [label %for.inc308], !srcloc !522

if.then302:                                       ; preds = %do.body288
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx303 = getelementptr %struct.w83792d_data, ptr %data, i32 0, i32 12, i32 %i.4481
  %23 = ptrtoint ptr %arrayidx303 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx303, align 1
  %conv304 = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug355, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %i.4481, i32 noundef %conv304) #8
  br label %for.inc308

for.inc308:                                       ; preds = %if.then302, %do.body288
  %inc309 = add nuw nsw i32 %i.4481, 1
  %exitcond487.not = icmp eq i32 %inc309, 7
  br i1 %exitcond487.not, label %do.body311, label %for.inc308.do.body288_crit_edge

for.inc308.do.body288_crit_edge:                  ; preds = %for.inc308
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body288

do.body311:                                       ; preds = %for.inc308
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug356, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.body329)) #8
          to label %if.then325 [label %do.body329], !srcloc !522

if.then325:                                       ; preds = %do.body311
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug356, ptr noundef %dev, ptr noundef nonnull @.str.22) #8
  br label %do.body329

do.body329:                                       ; preds = %if.then325, %do.body311
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83792d_print_debug.__UNIQUE_ID_ddebug357, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83792d_print_debug, %do.end346)) #8
          to label %if.then343 [label %do.end346], !srcloc !522

if.then343:                                       ; preds = %do.body329
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83792d_print_debug.__UNIQUE_ID_ddebug357, ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %do.end346

do.end346:                                        ; preds = %if.then343, %do.body329
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  br label %cond.end15

cond.false:                                       ; preds = %entry
  %4 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %switch = icmp eq i32 %4, 6
  %arrayidx7 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 5, i32 %1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  br i1 %switch, label %cond.true5, label %cond.false10

cond.true5:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul9 = mul nuw nsw i32 %conv8, 6
  br label %cond.end15

cond.false10:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul14 = shl nuw nsw i32 %conv8, 2
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false10, %cond.true5, %cond.true
  %cond16 = phi i32 [ %mul, %cond.true ], [ %mul9, %cond.true5 ], [ %mul14, %cond.false10 ]
  %mul17 = shl nuw nsw i32 %cond16, 2
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul17)
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div52 = lshr i32 %6, 1
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  %7 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %switch = icmp eq i32 %7, 6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  br i1 %switch, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div8 = udiv i32 %9, 6
  br label %cond.end11

cond.false9:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div1050 = lshr i32 %9, 2
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.true7, %cond.true
  %cond12 = phi i32 [ %div52, %cond.true ], [ %div8, %cond.true7 ], [ %div1050, %cond.false9 ]
  %div1351 = lshr i32 %cond12, 2
  %10 = call i32 @llvm.umin.i32(i32 %div1351, i32 255)
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 5, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx26 = getelementptr [9 x i8], ptr @W83792D_REG_IN_MAX, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 1
  br label %cond.end15

cond.false:                                       ; preds = %entry
  %4 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %4)
  %switch = icmp eq i32 %4, 6
  %arrayidx7 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 6, i32 %1
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %6 to i32
  br i1 %switch, label %cond.true5, label %cond.false10

cond.true5:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul9 = mul nuw nsw i32 %conv8, 6
  br label %cond.end15

cond.false10:                                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %mul14 = shl nuw nsw i32 %conv8, 2
  br label %cond.end15

cond.end15:                                       ; preds = %cond.false10, %cond.true5, %cond.true
  %cond16 = phi i32 [ %mul, %cond.true ], [ %mul9, %cond.true5 ], [ %mul14, %cond.false10 ]
  %mul17 = shl nuw nsw i32 %cond16, 2
  %call18 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul17)
  ret i32 %call18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  br i1 %cmp, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %div52 = lshr i32 %6, 1
  br label %cond.end11

cond.false:                                       ; preds = %if.end
  %7 = and i32 %1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %switch = icmp eq i32 %7, 6
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  br i1 %switch, label %cond.true7, label %cond.false9

cond.true7:                                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div8 = udiv i32 %9, 6
  br label %cond.end11

cond.false9:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #10
  %div1050 = lshr i32 %9, 2
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false9, %cond.true7, %cond.true
  %cond12 = phi i32 [ %div52, %cond.true ], [ %div8, %cond.true7 ], [ %div1050, %cond.false9 ]
  %div1351 = lshr i32 %cond12, 2
  %10 = call i32 @llvm.umin.i32(i32 %div1351, i32 255)
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 6, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx26 = getelementptr [9 x i8], ptr @W83792D_REG_IN_MIN, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx26, align 1
  %call.i53 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end11 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 15
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp1(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sub = or i32 %conv, -256
  %cond = select i1 %tobool.not, i32 %conv, i32 %sub
  %mul = mul nsw i32 %cond, 1000
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %mul)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp1(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp slt i32 %6, 0
  %add = add i32 %6, 256000
  %cond = select i1 %cmp, i32 %add, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond)
  %cmp6 = icmp sgt i32 %cond, 999
  %div = sdiv i32 %cond, 1000
  %7 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %8 = trunc i32 %7 to i8
  %conv = select i1 %cmp6, i8 %8, i8 0
  %arrayidx = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 10, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx17 = getelementptr [3 x i8], ptr @W83792D_REG_TEMP1, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx17, align 1
  %call.i38 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp23(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 11, i32 %conv, i32 %conv3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i32
  %and = and i32 %conv5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %sub = or i32 %conv5, -256
  %cond = select i1 %tobool.not, i32 %conv5, i32 %sub
  %mul = mul nsw i32 %cond, 1000
  %add = add nuw nsw i32 %conv3, 1
  %arrayidx16 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 11, i32 %conv, i32 %add
  %6 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx16, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %7)
  %tobool19.not = icmp sgt i8 %7, -1
  %cond20 = select i1 %tobool19.not, i32 0, i32 500
  %add21 = add nsw i32 %mul, %cond20
  %call22 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %add21)
  ret i32 %call22
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp23(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %dev, i32 -32
  %conv3 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp slt i32 %8, 0
  %add = add i32 %8, 256000
  %cond = select i1 %cmp, i32 %add, i32 %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond)
  %cmp10 = icmp sgt i32 %cond, 999
  %div = sdiv i32 %cond, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %10 = trunc i32 %9 to i8
  %conv23 = select i1 %cmp10, i8 %10, i8 0
  %arrayidx24 = getelementptr %struct.w83792d_data, ptr %5, i32 0, i32 11, i32 %conv, i32 %conv3
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23, ptr %arrayidx24, align 1
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %rem = srem i32 %13, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool25.not = icmp eq i32 %rem, 0
  %conv27 = select i1 %tobool25.not, i8 0, i8 -128
  %add30 = add nuw nsw i32 %conv3, 1
  %arrayidx31 = getelementptr %struct.w83792d_data, ptr %5, i32 0, i32 11, i32 %conv, i32 %add30
  %14 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv27, ptr %arrayidx31, align 1
  %arrayidx33 = getelementptr [2 x [6 x i8]], ptr @W83792D_REG_TEMP_ADD, i32 0, i32 %conv, i32 %conv3
  %15 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx33, align 1
  %call.i76 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %16, i8 noundef zeroext %conv23) #8
  %arrayidx40 = getelementptr [2 x [6 x i8]], ptr @W83792D_REG_TEMP_ADD, i32 0, i32 %conv, i32 %add30
  %17 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx40, align 1
  %19 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx31, align 1
  %call.i77 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %18, i8 noundef zeroext %20) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = shl i8 %3, 4
  %shl = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %shr = lshr i32 %7, 4
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [7 x i8], ptr @W83792D_REG_PWM, i32 0, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %call.i37 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %10) #8
  %and = and i32 %call.i37, 240
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or = or i32 %12, %and
  store i32 %or, ptr %val, align 4
  %conv = trunc i32 %or to i8
  %arrayidx13 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 13, i32 %1
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx13, align 1
  %call.i38 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %10, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
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
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = lshr i8 %3, 7
  %5 = zext i8 %4 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_mode(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [7 x i8], ptr @W83792D_REG_PWM, i32 0, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call.i43 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %8) #8
  %conv = trunc i32 %call.i43 to i8
  %arrayidx8 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 13, i32 %1
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool9.not = icmp eq i32 %10, 0
  %conv18 = and i8 %conv, 127
  %masksel = select i1 %tobool9.not, i8 0, i8 -128
  %storemerge = or i8 %masksel, %conv18
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %storemerge, ptr %arrayidx8, align 1
  %call.i44 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %8, i8 noundef zeroext %storemerge) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end6 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwmenable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %sub = add i32 %1, -1
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 14, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %3)
  %switch.selectcmp = icmp eq i8 %3, 1
  %switch.select = select i1 %switch.selectcmp, i32 3, i32 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %switch.selectcmp4 = icmp eq i8 %3, 2
  %switch.select5 = select i1 %switch.selectcmp4, i32 2, i32 %switch.select
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %switch.select5)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwmenable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %sub = add i32 %1, -1
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %11 = icmp ult i32 %switch.tableidx, 3
  br i1 %11, label %switch.lookup, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %switch.cast = trunc i32 %switch.tableidx to i24
  %switch.shiftamt = shl i24 %switch.cast, 3
  %switch.downshift = lshr i24 66048, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  %arrayidx13 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 14, i32 %sub
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %switch.masked, ptr %arrayidx13, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end7.sw.epilog_crit_edge
  %pwmenable14 = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 14
  %13 = ptrtoint ptr %pwmenable14 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pwmenable14, align 1
  %arrayidx17 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx17, align 1
  %shl = shl i8 %16, 2
  %arrayidx20 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 14, i32 2
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx20, align 1
  %shl22 = shl i8 %18, 4
  %call.i57 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext -124) #8
  %19 = trunc i32 %call.i57 to i8
  %20 = and i8 %19, -64
  %21 = or i8 %shl, %14
  %22 = or i8 %21, %shl22
  %conv32 = or i8 %22, %20
  %call.i58 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext -124, i8 noundef zeroext %conv32) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 15
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intrusion0_alarm_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %chassis = getelementptr inbounds %struct.w83792d_data, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %chassis to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chassis, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intrusion0_alarm_store(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.not = icmp eq i32 %4, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %call.i14 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 68) #8
  %5 = trunc i32 %call.i14 to i8
  %conv4 = or i8 %5, -128
  %call.i15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 68, i8 noundef zeroext %conv4) #8
  %valid = getelementptr inbounds %struct.w83792d_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %valid, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 18, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tolerance(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %sub = add i32 %1, -1
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [3 x i8], ptr @W83792D_REG_TOLERANCE, i32 0, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %call.i57 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp = icmp eq i32 %sub, 1
  %cond = select i1 %cmp, i32 15, i32 240
  %and = and i32 %call.i57, %cond
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 15)
  %10 = trunc i32 %9 to i8
  %arrayidx21 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 18, i32 %sub
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx21, align 1
  %12 = shl nuw i8 %10, 4
  %tol_tmp.0 = select i1 %cmp, i8 %12, i8 %10
  %13 = trunc i32 %and to i8
  %conv31 = or i8 %tol_tmp.0, %13
  %call.i58 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %6, i8 noundef zeroext %conv31) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_thermal_cruise(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 17, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_thermal_cruise(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %sub = add i32 %1, -1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %conv6 = and i32 %6, 127
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr [3 x i8], ptr @W83792D_REG_THERMAL, i32 0, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call.i60 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %8) #8
  %conv9 = and i32 %call.i60, 128
  %conv28 = trunc i32 %conv6 to i8
  %arrayidx29 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 17, i32 %sub
  %9 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv28, ptr %arrayidx29, align 1
  %or = or i32 %conv9, %conv6
  %conv35 = trunc i32 %or to i8
  %call.i61 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %8, i8 noundef zeroext %conv35) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf2_point(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %sub = add nsw i32 %conv3, -1
  %sub4 = add nsw i32 %conv, -1
  %arrayidx5 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 19, i32 %sub, i32 %sub4
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx5, align 1
  %conv6 = zext i8 %5 to i32
  %call7 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv6)
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf2_point(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr7 = getelementptr i8, ptr %dev, i32 -32
  %conv3 = zext i8 %3 to i32
  %sub4 = add nsw i32 %conv3, -1
  %conv = zext i8 %1 to i32
  %sub = add nsw i32 %conv, -1
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 127)
  %conv18 = trunc i32 %9 to i8
  %arrayidx19 = getelementptr %struct.w83792d_data, ptr %5, i32 0, i32 19, i32 %sub4, i32 %sub
  %10 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv18, ptr %arrayidx19, align 1
  %arrayidx21 = getelementptr [3 x [4 x i8]], ptr @W83792D_REG_POINTS, i32 0, i32 %sub4, i32 %sub
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx21, align 1
  %call.i58 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr7, i8 noundef zeroext %12) #8
  %13 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19, align 1
  %15 = trunc i32 %call.i58 to i8
  %16 = and i8 %15, -128
  %conv31 = or i8 %16, %14
  %call.i59 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr7, i8 noundef zeroext %12, i8 noundef zeroext %conv31) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sf2_level(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %sub = add nsw i32 %conv3, -1
  %arrayidx4 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 20, i32 %sub, i32 %conv
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx4, align 1
  %conv5 = zext i8 %5 to i16
  %mul = mul nuw nsw i16 %conv5, 100
  %div8 = udiv i16 %mul, 15
  %div.zext = zext i16 %div8 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %div.zext)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sf2_level(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr6 = getelementptr i8, ptr %dev, i32 -32
  %conv3 = zext i8 %3 to i32
  %sub = add nsw i32 %conv3, -1
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %mul = mul i32 %8, 15
  %div = udiv i32 %mul, 100
  %9 = call i32 @llvm.umin.i32(i32 %div, i32 15)
  %conv17 = trunc i32 %9 to i8
  %arrayidx18 = getelementptr %struct.w83792d_data, ptr %5, i32 0, i32 20, i32 %sub, i32 %conv
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv17, ptr %arrayidx18, align 1
  %arrayidx20 = getelementptr [3 x [4 x i8]], ptr @W83792D_REG_LEVELS, i32 0, i32 %sub, i32 %conv
  %11 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx20, align 1
  %call.i75 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %12) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %1)
  %cmp22 = icmp eq i8 %1, 3
  %cond24 = select i1 %cmp22, i32 240, i32 15
  %and = and i32 %call.i75, %cond24
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx18, align 1
  %shl = shl i8 %14, 4
  %level_tmp.0 = select i1 %cmp22, i8 %14, i8 %shl
  %15 = trunc i32 %and to i8
  %conv42 = or i8 %level_tmp.0, %15
  %call.i76 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr6, i8 noundef zeroext %12, i8 noundef zeroext %conv42) #8
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
  %sub = add i32 %1, -1
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 8, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %cond.end14.fold.split
  ]

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 12, i32 %sub
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %cond15)
  ret i32 %call16
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
  %sub = add i32 %1, -1
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 9, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.155)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %cond.end14.fold.split
  ]

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 12, i32 %sub
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.51, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %1, -1
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 12, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 1) #8
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 1000000) #8
  %mul.i = shl i32 %10, %conv
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #8
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 254) #8
  %conv.i = trunc i32 %12 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx6 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 9, i32 %sub
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr [7 x i8], ptr @W83792D_REG_FAN_MIN, i32 0, i32 %sub
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %call.i26 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %15, i8 noundef zeroext %retval.0.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_div(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83792d_update_device(ptr noundef %dev)
  %sub = add i32 %1, -1
  %arrayidx = getelementptr %struct.w83792d_data, ptr %call, i32 0, i32 12, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.113, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_div(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %sub = add i32 %1, -1
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !523
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83792d_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %arrayidx = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 9, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.156)
  switch i8 %6, label %cond.false12 [
    i8 0, label %if.end.cond.end18_crit_edge
    i8 -1, label %cond.end18.fold.split
  ]

if.end.cond.end18_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv = zext i8 %6 to i32
  %arrayidx16 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 12, i32 %sub
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %mul = shl i32 %conv, %conv17
  %div = sdiv i32 1350000, %mul
  br label %cond.end18

cond.end18.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end18

cond.end18:                                       ; preds = %cond.end18.fold.split, %cond.false12, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ -1, %if.end.cond.end18_crit_edge ], [ %div, %cond.false12 ], [ 0, %cond.end18.fold.split ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 1) #8
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp818.i = icmp ult i32 %13, 2
  br i1 %cmp818.i, label %cond.end18.DIV_TO_REG.exit_crit_edge, label %if.end.i

cond.end18.DIV_TO_REG.exit_crit_edge:             ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i:                                         ; preds = %cond.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp8.i = icmp ult i32 %13, 4
  br i1 %cmp8.i, label %if.end.i.DIV_TO_REG.exit_crit_edge, label %if.end.i.1

if.end.i.DIV_TO_REG.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp8.i.1 = icmp ult i32 %13, 8
  br i1 %cmp8.i.1, label %if.end.i.1.DIV_TO_REG.exit_crit_edge, label %if.end.i.2

if.end.i.1.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp8.i.2 = icmp ult i32 %13, 16
  br i1 %cmp8.i.2, label %if.end.i.2.DIV_TO_REG.exit_crit_edge, label %if.end.i.3

if.end.i.2.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp8.i.3 = icmp ult i32 %13, 32
  br i1 %cmp8.i.3, label %if.end.i.3.DIV_TO_REG.exit_crit_edge, label %if.end.i.4

if.end.i.3.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp8.i.4 = icmp ult i32 %13, 64
  br i1 %cmp8.i.4, label %if.end.i.4.DIV_TO_REG.exit_crit_edge, label %if.end.i.5

if.end.i.4.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %DIV_TO_REG.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp8.i.5 = icmp ult i32 %12, 128
  %spec.select = select i1 %cmp8.i.5, i8 6, i8 7
  br label %DIV_TO_REG.exit

DIV_TO_REG.exit:                                  ; preds = %if.end.i.5, %if.end.i.4.DIV_TO_REG.exit_crit_edge, %if.end.i.3.DIV_TO_REG.exit_crit_edge, %if.end.i.2.DIV_TO_REG.exit_crit_edge, %if.end.i.1.DIV_TO_REG.exit_crit_edge, %if.end.i.DIV_TO_REG.exit_crit_edge, %cond.end18.DIV_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %cond.end18.DIV_TO_REG.exit_crit_edge ], [ 1, %if.end.i.DIV_TO_REG.exit_crit_edge ], [ 2, %if.end.i.1.DIV_TO_REG.exit_crit_edge ], [ 3, %if.end.i.2.DIV_TO_REG.exit_crit_edge ], [ 4, %if.end.i.3.DIV_TO_REG.exit_crit_edge ], [ 5, %if.end.i.4.DIV_TO_REG.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %arrayidx22 = getelementptr %struct.w83792d_data, ptr %3, i32 0, i32 12, i32 %sub
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %i.0.lcssa.i, ptr %arrayidx22, align 1
  %shr = ashr i32 %sub, 1
  %arrayidx23 = getelementptr [4 x i8], ptr @W83792D_REG_FAN_DIV, i32 0, i32 %shr
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 1
  %call.i103 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %16) #8
  %and = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  %cond27 = select i1 %tobool26.not, i32 248, i32 143
  %and29 = and i32 %call.i103, %cond27
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22, align 1
  %shl37 = shl i8 %18, 4
  %and38 = and i8 %shl37, 112
  %19 = and i8 %18, 7
  %cond45 = select i1 %tobool26.not, i8 %19, i8 %and38
  %20 = trunc i32 %and29 to i8
  %conv51 = or i8 %cond45, %20
  %call.i104 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %16, i8 noundef zeroext %conv51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond19)
  %cmp.i = icmp eq i32 %cond19, 0
  br i1 %cmp.i, label %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge, label %if.end.i105

DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge:        ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %FAN_TO_REG.exit

if.end.i105:                                      ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %conv55 = zext i8 %22 to i32
  %23 = call i32 @llvm.smax.i32(i32 %cond19, i32 1) #8
  %24 = call i32 @llvm.umin.i32(i32 %23, i32 1000000) #8
  %mul.i = shl i32 %24, %conv55
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %25 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #8
  %26 = call i32 @llvm.umin.i32(i32 %25, i32 254) #8
  %conv.i = trunc i32 %26 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i105, %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i105 ], [ -1, %DIV_TO_REG.exit.FAN_TO_REG.exit_crit_edge ]
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %arrayidx60 = getelementptr [7 x i8], ptr @W83792D_REG_FAN_MIN, i32 0, i32 %sub
  %28 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx60, align 1
  %call.i106 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %29, i8 noundef zeroext %retval.0.i) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 300)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 300)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !20, !22, !23, !24, !26, !27, !29, !31, !33, !35, !37, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !296, !298, !299, !301, !302, !304, !305, !307, !308, !310, !311, !313, !314, !316, !317, !319, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !335, !337, !338, !340, !341, !343, !344, !346, !347, !349, !350, !352, !353, !355, !356, !358, !359, !361, !362, !364, !365, !367, !368, !370, !371, !373, !374, !376, !377, !379, !380, !382, !383, !385, !386, !388, !389, !391, !393, !394, !396, !397, !399, !400, !402, !403, !405, !406, !408, !409, !411, !412, !414, !415, !417, !418, !420, !422, !424, !425, !427, !428, !430, !431, !433, !434, !436, !437, !439, !440, !442, !443, !445, !446, !448, !449, !451, !452, !454, !455, !457, !458, !460, !461, !463, !464, !466, !467, !469, !470, !472, !473, !475, !476, !478, !479, !481, !482, !484, !485, !487, !488, !490, !491, !493, !494, !496, !497, !499, !500, !501, !502, !503, !504, !506, !507, !508, !510}
!llvm.module.flags = !{!512, !513, !514, !515, !516, !517, !518, !519}
!llvm.ident = !{!520}

!0 = !{ptr @__param_force_subclients, !1, !"__param_force_subclients", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83792d.c", i32 43, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_subclientstype288, !1, !"__UNIQUE_ID_force_subclientstype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_subclients289, !4, !"__UNIQUE_ID_force_subclients289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83792d.c", i32 44, i32 1}
!5 = !{ptr @__param_init, !6, !"__param_init", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83792d.c", i32 48, i32 1}
!7 = !{ptr @__UNIQUE_ID_inittype290, !6, !"__UNIQUE_ID_inittype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_init291, !9, !"__UNIQUE_ID_init291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83792d.c", i32 49, i32 1}
!10 = !{ptr @__initcall__kmod_w83792d__358_1642_w83792d_driver_init6, !11, !"__initcall__kmod_w83792d__358_1642_w83792d_driver_init6", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83792d.c", i32 1642, i32 1}
!12 = !{ptr @__exitcall_w83792d_driver_exit, !11, !"__exitcall_w83792d_driver_exit", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_author359, !14, !"__UNIQUE_ID_author359", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/w83792d.c", i32 1644, i32 1}
!15 = !{ptr @__UNIQUE_ID_description360, !16, !"__UNIQUE_ID_description360", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83792d.c", i32 1645, i32 1}
!17 = !{ptr @__UNIQUE_ID_file361, !18, !"__UNIQUE_ID_file361", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/w83792d.c", i32 1646, i32 1}
!19 = !{ptr @__UNIQUE_ID_license362, !18, !"__UNIQUE_ID_license362", i1 false, i1 false}
!20 = !{ptr @init, !21, !"init", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/w83792d.c", i32 47, i32 13}
!22 = !{ptr @__param_str_force_subclients, !1, !"__param_str_force_subclients", i1 false, i1 false}
!23 = !{ptr @__param_arr_force_subclients, !1, !"__param_arr_force_subclients", i1 false, i1 false}
!24 = !{ptr @force_subclients, !25, !"force_subclients", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/w83792d.c", i32 42, i32 23}
!26 = !{ptr @__param_str_init, !6, !"__param_str_init", i1 false, i1 false}
!27 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/w83792d.c", i32 307, i32 11}
!29 = !{ptr @w83792d_driver, !30, !"w83792d_driver", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/w83792d.c", i32 304, i32 26}
!31 = !{ptr @w83792d_group, !32, !"w83792d_group", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/w83792d.c", i32 1304, i32 37}
!33 = !{ptr @w83792d_attributes, !34, !"w83792d_attributes", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/w83792d.c", i32 1202, i32 26}
!35 = !{ptr @.str.1, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/w83792d.c", i32 961, i32 8}
!37 = !{ptr @sensor_dev_attr_in0_input, !36, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!38 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/w83792d.c", i32 345, i32 22}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/w83792d.c", i32 1492, i32 3}
!42 = !{ptr @.str.4, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.5, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @w83792d_update_device.__UNIQUE_ID_ddebug340, !41, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!45 = !{ptr @W83792D_REG_IN, !46, !"W83792D_REG_IN", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83792d.c", i32 52, i32 17}
!47 = !{ptr @W83792D_REG_IN_MAX, !48, !"W83792D_REG_IN_MAX", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83792d.c", i32 65, i32 17}
!49 = !{ptr @W83792D_REG_IN_MIN, !50, !"W83792D_REG_IN_MIN", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83792d.c", i32 76, i32 17}
!51 = !{ptr @W83792D_REG_FAN, !52, !"W83792D_REG_FAN", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/w83792d.c", i32 87, i32 17}
!53 = !{ptr @W83792D_REG_FAN_MIN, !54, !"W83792D_REG_FAN_MIN", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/w83792d.c", i32 96, i32 17}
!55 = !{ptr @W83792D_REG_PWM, !56, !"W83792D_REG_PWM", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/w83792d.c", i32 112, i32 17}
!57 = !{ptr @W83792D_REG_TEMP1, !58, !"W83792D_REG_TEMP1", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/w83792d.c", i32 125, i32 17}
!59 = !{ptr @W83792D_REG_TEMP_ADD, !60, !"W83792D_REG_TEMP_ADD", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/w83792d.c", i32 131, i32 17}
!61 = !{ptr @W83792D_REG_FAN_DIV, !62, !"W83792D_REG_FAN_DIV", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/w83792d.c", i32 106, i32 17}
!63 = !{ptr @W83792D_REG_THERMAL, !64, !"W83792D_REG_THERMAL", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/w83792d.c", i32 146, i32 17}
!65 = !{ptr @W83792D_REG_TOLERANCE, !66, !"W83792D_REG_TOLERANCE", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83792d.c", i32 152, i32 17}
!67 = !{ptr @W83792D_REG_POINTS, !68, !"W83792D_REG_POINTS", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/w83792d.c", i32 158, i32 17}
!69 = !{ptr @W83792D_REG_LEVELS, !70, !"W83792D_REG_LEVELS", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/w83792d.c", i32 173, i32 17}
!71 = !{ptr @.str.6, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/w83792d.c", i32 1608, i32 2}
!73 = !{ptr @.str.7, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug341, !72, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!75 = !{ptr @.str.8, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/w83792d.c", i32 1609, i32 2}
!77 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug342, !76, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!78 = !{ptr @.str.9, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/w83792d.c", i32 1611, i32 3}
!80 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug343, !79, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!81 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/w83792d.c", i32 1612, i32 3}
!83 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug344, !82, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!84 = !{ptr @.str.11, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/w83792d.c", i32 1613, i32 3}
!86 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug345, !85, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!87 = !{ptr @.str.12, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/w83792d.c", i32 1615, i32 2}
!89 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug346, !88, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!90 = !{ptr @.str.13, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/w83792d.c", i32 1616, i32 2}
!92 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug347, !91, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!93 = !{ptr @.str.14, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/w83792d.c", i32 1617, i32 2}
!95 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug348, !94, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!96 = !{ptr @.str.15, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/w83792d.c", i32 1619, i32 3}
!98 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug349, !97, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!99 = !{ptr @.str.16, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/w83792d.c", i32 1620, i32 3}
!101 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug350, !100, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!102 = !{ptr @.str.17, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/w83792d.c", i32 1621, i32 3}
!104 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug351, !103, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!105 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/w83792d.c", i32 1623, i32 2}
!107 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug352, !106, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!108 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/w83792d.c", i32 1625, i32 3}
!110 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug353, !109, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/w83792d.c", i32 1629, i32 4}
!113 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug354, !112, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!114 = !{ptr @.str.21, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/w83792d.c", i32 1635, i32 3}
!116 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug355, !115, !"__UNIQUE_ID_ddebug355", i1 false, i1 false}
!117 = !{ptr @.str.22, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/w83792d.c", i32 1637, i32 2}
!119 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug356, !118, !"__UNIQUE_ID_ddebug356", i1 false, i1 false}
!120 = !{ptr @.str.23, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/w83792d.c", i32 1638, i32 2}
!122 = !{ptr @w83792d_print_debug.__UNIQUE_ID_ddebug357, !121, !"__UNIQUE_ID_ddebug357", i1 false, i1 false}
!123 = !{ptr @.str.24, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/w83792d.c", i32 988, i32 8}
!125 = !{ptr @sensor_dev_attr_in0_max, !124, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!126 = !{ptr @.str.25, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/w83792d.c", i32 970, i32 8}
!128 = !{ptr @sensor_dev_attr_in0_min, !127, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!129 = !{ptr @.str.26, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/w83792d.c", i32 962, i32 8}
!131 = !{ptr @sensor_dev_attr_in1_input, !130, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!132 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/w83792d.c", i32 990, i32 8}
!134 = !{ptr @sensor_dev_attr_in1_max, !133, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!135 = !{ptr @.str.28, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/w83792d.c", i32 972, i32 8}
!137 = !{ptr @sensor_dev_attr_in1_min, !136, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!138 = !{ptr @.str.29, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/w83792d.c", i32 963, i32 8}
!140 = !{ptr @sensor_dev_attr_in2_input, !139, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!141 = !{ptr @.str.30, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/w83792d.c", i32 992, i32 8}
!143 = !{ptr @sensor_dev_attr_in2_max, !142, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!144 = !{ptr @.str.31, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/w83792d.c", i32 974, i32 8}
!146 = !{ptr @sensor_dev_attr_in2_min, !145, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!147 = !{ptr @.str.32, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/w83792d.c", i32 964, i32 8}
!149 = !{ptr @sensor_dev_attr_in3_input, !148, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!150 = !{ptr @.str.33, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/w83792d.c", i32 994, i32 8}
!152 = !{ptr @sensor_dev_attr_in3_max, !151, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!153 = !{ptr @.str.34, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/w83792d.c", i32 976, i32 8}
!155 = !{ptr @sensor_dev_attr_in3_min, !154, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!156 = !{ptr @.str.35, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/w83792d.c", i32 965, i32 8}
!158 = !{ptr @sensor_dev_attr_in4_input, !157, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!159 = !{ptr @.str.36, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/w83792d.c", i32 996, i32 8}
!161 = !{ptr @sensor_dev_attr_in4_max, !160, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!162 = !{ptr @.str.37, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/w83792d.c", i32 978, i32 8}
!164 = !{ptr @sensor_dev_attr_in4_min, !163, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!165 = !{ptr @.str.38, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/w83792d.c", i32 966, i32 8}
!167 = !{ptr @sensor_dev_attr_in5_input, !166, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!168 = !{ptr @.str.39, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/w83792d.c", i32 998, i32 8}
!170 = !{ptr @sensor_dev_attr_in5_max, !169, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!171 = !{ptr @.str.40, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/w83792d.c", i32 980, i32 8}
!173 = !{ptr @sensor_dev_attr_in5_min, !172, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!174 = !{ptr @.str.41, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/w83792d.c", i32 967, i32 8}
!176 = !{ptr @sensor_dev_attr_in6_input, !175, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!177 = !{ptr @.str.42, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/w83792d.c", i32 1000, i32 8}
!179 = !{ptr @sensor_dev_attr_in6_max, !178, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!180 = !{ptr @.str.43, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/w83792d.c", i32 982, i32 8}
!182 = !{ptr @sensor_dev_attr_in6_min, !181, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!183 = !{ptr @.str.44, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/w83792d.c", i32 968, i32 8}
!185 = !{ptr @sensor_dev_attr_in7_input, !184, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!186 = !{ptr @.str.45, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/w83792d.c", i32 1002, i32 8}
!188 = !{ptr @sensor_dev_attr_in7_max, !187, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!189 = !{ptr @.str.46, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/w83792d.c", i32 984, i32 8}
!191 = !{ptr @sensor_dev_attr_in7_min, !190, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!192 = !{ptr @.str.47, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/w83792d.c", i32 969, i32 8}
!194 = !{ptr @sensor_dev_attr_in8_input, !193, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!195 = !{ptr @.str.48, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/w83792d.c", i32 1004, i32 8}
!197 = !{ptr @sensor_dev_attr_in8_max, !196, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!198 = !{ptr @.str.49, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/w83792d.c", i32 986, i32 8}
!200 = !{ptr @sensor_dev_attr_in8_min, !199, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!201 = !{ptr @.str.50, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/w83792d.c", i32 1022, i32 8}
!203 = !{ptr @sensor_dev_attr_in0_alarm, !202, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!204 = !{ptr @.str.51, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/w83792d.c", i32 576, i32 22}
!206 = !{ptr @.str.52, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/w83792d.c", i32 1023, i32 8}
!208 = !{ptr @sensor_dev_attr_in1_alarm, !207, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!209 = !{ptr @.str.53, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/w83792d.c", i32 1030, i32 8}
!211 = !{ptr @sensor_dev_attr_in2_alarm, !210, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!212 = !{ptr @.str.54, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/w83792d.c", i32 1031, i32 8}
!214 = !{ptr @sensor_dev_attr_in3_alarm, !213, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!215 = !{ptr @.str.55, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/w83792d.c", i32 1032, i32 8}
!217 = !{ptr @sensor_dev_attr_in4_alarm, !216, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!218 = !{ptr @.str.56, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/w83792d.c", i32 1033, i32 8}
!220 = !{ptr @sensor_dev_attr_in5_alarm, !219, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!221 = !{ptr @.str.57, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/w83792d.c", i32 1034, i32 8}
!223 = !{ptr @sensor_dev_attr_in6_alarm, !222, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!224 = !{ptr @.str.58, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/w83792d.c", i32 1036, i32 8}
!226 = !{ptr @sensor_dev_attr_in7_alarm, !225, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!227 = !{ptr @.str.59, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/w83792d.c", i32 1037, i32 8}
!229 = !{ptr @sensor_dev_attr_in8_alarm, !228, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!230 = !{ptr @.str.60, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/w83792d.c", i32 1006, i32 8}
!232 = !{ptr @sensor_dev_attr_temp1_input, !231, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!233 = !{ptr @.str.61, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/w83792d.c", i32 1009, i32 8}
!235 = !{ptr @sensor_dev_attr_temp1_max, !234, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!236 = !{ptr @.str.62, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/w83792d.c", i32 1015, i32 8}
!238 = !{ptr @sensor_dev_attr_temp1_max_hyst, !237, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!239 = !{ptr @.str.63, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/w83792d.c", i32 1007, i32 8}
!241 = !{ptr @sensor_dev_attr_temp2_input, !240, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!242 = !{ptr @.str.64, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/w83792d.c", i32 1011, i32 8}
!244 = !{ptr @sensor_dev_attr_temp2_max, !243, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!245 = !{ptr @.str.65, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/w83792d.c", i32 1017, i32 8}
!247 = !{ptr @sensor_dev_attr_temp2_max_hyst, !246, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!248 = !{ptr @.str.66, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/w83792d.c", i32 1008, i32 8}
!250 = !{ptr @sensor_dev_attr_temp3_input, !249, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!251 = !{ptr @.str.67, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/w83792d.c", i32 1013, i32 8}
!253 = !{ptr @sensor_dev_attr_temp3_max, !252, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!254 = !{ptr @.str.68, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/w83792d.c", i32 1019, i32 8}
!256 = !{ptr @sensor_dev_attr_temp3_max_hyst, !255, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!257 = !{ptr @.str.69, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/w83792d.c", i32 1024, i32 8}
!259 = !{ptr @sensor_dev_attr_temp1_alarm, !258, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!260 = !{ptr @.str.70, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/w83792d.c", i32 1025, i32 8}
!262 = !{ptr @sensor_dev_attr_temp2_alarm, !261, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!263 = !{ptr @.str.71, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/w83792d.c", i32 1026, i32 8}
!265 = !{ptr @sensor_dev_attr_temp3_alarm, !264, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!266 = !{ptr @.str.72, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/w83792d.c", i32 1042, i32 8}
!268 = !{ptr @sensor_dev_attr_pwm1, !267, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!269 = !{ptr @.str.73, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/w83792d.c", i32 1055, i32 8}
!271 = !{ptr @sensor_dev_attr_pwm1_mode, !270, !"sensor_dev_attr_pwm1_mode", i1 false, i1 false}
!272 = !{ptr @.str.74, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/w83792d.c", i32 1049, i32 8}
!274 = !{ptr @sensor_dev_attr_pwm1_enable, !273, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!275 = !{ptr @.str.75, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/w83792d.c", i32 1043, i32 8}
!277 = !{ptr @sensor_dev_attr_pwm2, !276, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!278 = !{ptr @.str.76, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/w83792d.c", i32 1057, i32 8}
!280 = !{ptr @sensor_dev_attr_pwm2_mode, !279, !"sensor_dev_attr_pwm2_mode", i1 false, i1 false}
!281 = !{ptr @.str.77, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/w83792d.c", i32 1051, i32 8}
!283 = !{ptr @sensor_dev_attr_pwm2_enable, !282, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!284 = !{ptr @.str.78, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/w83792d.c", i32 1044, i32 8}
!286 = !{ptr @sensor_dev_attr_pwm3, !285, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!287 = !{ptr @.str.79, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/w83792d.c", i32 1059, i32 8}
!289 = !{ptr @sensor_dev_attr_pwm3_mode, !288, !"sensor_dev_attr_pwm3_mode", i1 false, i1 false}
!290 = !{ptr @.str.80, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/w83792d.c", i32 1053, i32 8}
!292 = !{ptr @sensor_dev_attr_pwm3_enable, !291, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!293 = !{ptr @.str.81, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/w83792d.c", i32 1021, i32 8}
!295 = !{ptr @dev_attr_alarms, !294, !"dev_attr_alarms", i1 false, i1 false}
!296 = !{ptr @.str.82, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/w83792d.c", i32 1041, i32 8}
!298 = !{ptr @dev_attr_intrusion0_alarm, !297, !"dev_attr_intrusion0_alarm", i1 false, i1 false}
!299 = !{ptr @.str.83, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/w83792d.c", i32 1069, i32 8}
!301 = !{ptr @sensor_dev_attr_tolerance1, !300, !"sensor_dev_attr_tolerance1", i1 false, i1 false}
!302 = !{ptr @.str.84, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/w83792d.c", i32 1075, i32 8}
!304 = !{ptr @sensor_dev_attr_thermal_cruise1, !303, !"sensor_dev_attr_thermal_cruise1", i1 false, i1 false}
!305 = !{ptr @.str.85, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hwmon/w83792d.c", i32 1071, i32 8}
!307 = !{ptr @sensor_dev_attr_tolerance2, !306, !"sensor_dev_attr_tolerance2", i1 false, i1 false}
!308 = !{ptr @.str.86, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/w83792d.c", i32 1077, i32 8}
!310 = !{ptr @sensor_dev_attr_thermal_cruise2, !309, !"sensor_dev_attr_thermal_cruise2", i1 false, i1 false}
!311 = !{ptr @.str.87, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/hwmon/w83792d.c", i32 1073, i32 8}
!313 = !{ptr @sensor_dev_attr_tolerance3, !312, !"sensor_dev_attr_tolerance3", i1 false, i1 false}
!314 = !{ptr @.str.88, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/w83792d.c", i32 1079, i32 8}
!316 = !{ptr @sensor_dev_attr_thermal_cruise3, !315, !"sensor_dev_attr_thermal_cruise3", i1 false, i1 false}
!317 = !{ptr @.str.89, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/hwmon/w83792d.c", i32 1081, i32 8}
!319 = !{ptr @sensor_dev_attr_sf2_point1_fan1, !318, !"sensor_dev_attr_sf2_point1_fan1", i1 false, i1 false}
!320 = !{ptr @.str.90, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/w83792d.c", i32 1083, i32 8}
!322 = !{ptr @sensor_dev_attr_sf2_point2_fan1, !321, !"sensor_dev_attr_sf2_point2_fan1", i1 false, i1 false}
!323 = !{ptr @.str.91, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/w83792d.c", i32 1085, i32 8}
!325 = !{ptr @sensor_dev_attr_sf2_point3_fan1, !324, !"sensor_dev_attr_sf2_point3_fan1", i1 false, i1 false}
!326 = !{ptr @.str.92, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/w83792d.c", i32 1087, i32 8}
!328 = !{ptr @sensor_dev_attr_sf2_point4_fan1, !327, !"sensor_dev_attr_sf2_point4_fan1", i1 false, i1 false}
!329 = !{ptr @.str.93, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/w83792d.c", i32 1089, i32 8}
!331 = !{ptr @sensor_dev_attr_sf2_point1_fan2, !330, !"sensor_dev_attr_sf2_point1_fan2", i1 false, i1 false}
!332 = !{ptr @.str.94, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/w83792d.c", i32 1091, i32 8}
!334 = !{ptr @sensor_dev_attr_sf2_point2_fan2, !333, !"sensor_dev_attr_sf2_point2_fan2", i1 false, i1 false}
!335 = !{ptr @.str.95, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/hwmon/w83792d.c", i32 1093, i32 8}
!337 = !{ptr @sensor_dev_attr_sf2_point3_fan2, !336, !"sensor_dev_attr_sf2_point3_fan2", i1 false, i1 false}
!338 = !{ptr @.str.96, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/w83792d.c", i32 1095, i32 8}
!340 = !{ptr @sensor_dev_attr_sf2_point4_fan2, !339, !"sensor_dev_attr_sf2_point4_fan2", i1 false, i1 false}
!341 = !{ptr @.str.97, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/hwmon/w83792d.c", i32 1097, i32 8}
!343 = !{ptr @sensor_dev_attr_sf2_point1_fan3, !342, !"sensor_dev_attr_sf2_point1_fan3", i1 false, i1 false}
!344 = !{ptr @.str.98, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/w83792d.c", i32 1099, i32 8}
!346 = !{ptr @sensor_dev_attr_sf2_point2_fan3, !345, !"sensor_dev_attr_sf2_point2_fan3", i1 false, i1 false}
!347 = !{ptr @.str.99, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/hwmon/w83792d.c", i32 1101, i32 8}
!349 = !{ptr @sensor_dev_attr_sf2_point3_fan3, !348, !"sensor_dev_attr_sf2_point3_fan3", i1 false, i1 false}
!350 = !{ptr @.str.100, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/w83792d.c", i32 1103, i32 8}
!352 = !{ptr @sensor_dev_attr_sf2_point4_fan3, !351, !"sensor_dev_attr_sf2_point4_fan3", i1 false, i1 false}
!353 = !{ptr @.str.101, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/hwmon/w83792d.c", i32 1105, i32 8}
!355 = !{ptr @sensor_dev_attr_sf2_level1_fan1, !354, !"sensor_dev_attr_sf2_level1_fan1", i1 false, i1 false}
!356 = !{ptr @.str.102, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/w83792d.c", i32 1107, i32 8}
!358 = !{ptr @sensor_dev_attr_sf2_level2_fan1, !357, !"sensor_dev_attr_sf2_level2_fan1", i1 false, i1 false}
!359 = !{ptr @.str.103, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/hwmon/w83792d.c", i32 1109, i32 8}
!361 = !{ptr @sensor_dev_attr_sf2_level3_fan1, !360, !"sensor_dev_attr_sf2_level3_fan1", i1 false, i1 false}
!362 = !{ptr @.str.104, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/w83792d.c", i32 1111, i32 8}
!364 = !{ptr @sensor_dev_attr_sf2_level1_fan2, !363, !"sensor_dev_attr_sf2_level1_fan2", i1 false, i1 false}
!365 = !{ptr @.str.105, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/hwmon/w83792d.c", i32 1113, i32 8}
!367 = !{ptr @sensor_dev_attr_sf2_level2_fan2, !366, !"sensor_dev_attr_sf2_level2_fan2", i1 false, i1 false}
!368 = !{ptr @.str.106, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/w83792d.c", i32 1115, i32 8}
!370 = !{ptr @sensor_dev_attr_sf2_level3_fan2, !369, !"sensor_dev_attr_sf2_level3_fan2", i1 false, i1 false}
!371 = !{ptr @.str.107, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/w83792d.c", i32 1117, i32 8}
!373 = !{ptr @sensor_dev_attr_sf2_level1_fan3, !372, !"sensor_dev_attr_sf2_level1_fan3", i1 false, i1 false}
!374 = !{ptr @.str.108, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/w83792d.c", i32 1119, i32 8}
!376 = !{ptr @sensor_dev_attr_sf2_level2_fan3, !375, !"sensor_dev_attr_sf2_level2_fan3", i1 false, i1 false}
!377 = !{ptr @.str.109, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/w83792d.c", i32 1121, i32 8}
!379 = !{ptr @sensor_dev_attr_sf2_level3_fan3, !378, !"sensor_dev_attr_sf2_level3_fan3", i1 false, i1 false}
!380 = !{ptr @.str.110, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/hwmon/w83792d.c", i32 1123, i32 8}
!382 = !{ptr @sensor_dev_attr_fan1_input, !381, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!383 = !{ptr @.str.111, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/w83792d.c", i32 1130, i32 8}
!385 = !{ptr @sensor_dev_attr_fan1_min, !384, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!386 = !{ptr @.str.112, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/hwmon/w83792d.c", i32 1144, i32 8}
!388 = !{ptr @sensor_dev_attr_fan1_div, !387, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!389 = !{ptr @.str.113, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/hwmon/w83792d.c", i32 435, i32 22}
!391 = !{ptr @.str.114, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/w83792d.c", i32 1027, i32 8}
!393 = !{ptr @sensor_dev_attr_fan1_alarm, !392, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!394 = !{ptr @.str.115, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/w83792d.c", i32 1124, i32 8}
!396 = !{ptr @sensor_dev_attr_fan2_input, !395, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!397 = !{ptr @.str.116, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/w83792d.c", i32 1132, i32 8}
!399 = !{ptr @sensor_dev_attr_fan2_min, !398, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!400 = !{ptr @.str.117, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/w83792d.c", i32 1146, i32 8}
!402 = !{ptr @sensor_dev_attr_fan2_div, !401, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!403 = !{ptr @.str.118, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/w83792d.c", i32 1028, i32 8}
!405 = !{ptr @sensor_dev_attr_fan2_alarm, !404, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!406 = !{ptr @.str.119, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/hwmon/w83792d.c", i32 1125, i32 8}
!408 = !{ptr @sensor_dev_attr_fan3_input, !407, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!409 = !{ptr @.str.120, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/hwmon/w83792d.c", i32 1134, i32 8}
!411 = !{ptr @sensor_dev_attr_fan3_min, !410, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!412 = !{ptr @.str.121, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/hwmon/w83792d.c", i32 1148, i32 8}
!414 = !{ptr @sensor_dev_attr_fan3_div, !413, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!415 = !{ptr @.str.122, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/hwmon/w83792d.c", i32 1029, i32 8}
!417 = !{ptr @sensor_dev_attr_fan3_alarm, !416, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!418 = !{ptr @w83792d_group_fan, !419, !"w83792d_group_fan", i1 false, i1 false}
!419 = !{!"../drivers/hwmon/w83792d.c", i32 1195, i32 37}
!420 = !{ptr @w83792d_attributes_fan, !421, !"w83792d_attributes_fan", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/w83792d.c", i32 1159, i32 26}
!422 = !{ptr @.str.123, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/hwmon/w83792d.c", i32 1126, i32 8}
!424 = !{ptr @sensor_dev_attr_fan4_input, !423, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!425 = !{ptr @.str.124, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../drivers/hwmon/w83792d.c", i32 1136, i32 8}
!427 = !{ptr @sensor_dev_attr_fan4_min, !426, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!428 = !{ptr @.str.125, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/hwmon/w83792d.c", i32 1150, i32 8}
!430 = !{ptr @sensor_dev_attr_fan4_div, !429, !"sensor_dev_attr_fan4_div", i1 false, i1 false}
!431 = !{ptr @.str.126, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/hwmon/w83792d.c", i32 1038, i32 8}
!433 = !{ptr @sensor_dev_attr_fan4_alarm, !432, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!434 = !{ptr @.str.127, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/hwmon/w83792d.c", i32 1045, i32 8}
!436 = !{ptr @sensor_dev_attr_pwm4, !435, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!437 = !{ptr @.str.128, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../drivers/hwmon/w83792d.c", i32 1061, i32 8}
!439 = !{ptr @sensor_dev_attr_pwm4_mode, !438, !"sensor_dev_attr_pwm4_mode", i1 false, i1 false}
!440 = !{ptr @.str.129, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/hwmon/w83792d.c", i32 1127, i32 8}
!442 = !{ptr @sensor_dev_attr_fan5_input, !441, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!443 = !{ptr @.str.130, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/hwmon/w83792d.c", i32 1138, i32 8}
!445 = !{ptr @sensor_dev_attr_fan5_min, !444, !"sensor_dev_attr_fan5_min", i1 false, i1 false}
!446 = !{ptr @.str.131, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/hwmon/w83792d.c", i32 1152, i32 8}
!448 = !{ptr @sensor_dev_attr_fan5_div, !447, !"sensor_dev_attr_fan5_div", i1 false, i1 false}
!449 = !{ptr @.str.132, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/hwmon/w83792d.c", i32 1039, i32 8}
!451 = !{ptr @sensor_dev_attr_fan5_alarm, !450, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!452 = !{ptr @.str.133, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/hwmon/w83792d.c", i32 1046, i32 8}
!454 = !{ptr @sensor_dev_attr_pwm5, !453, !"sensor_dev_attr_pwm5", i1 false, i1 false}
!455 = !{ptr @.str.134, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/hwmon/w83792d.c", i32 1063, i32 8}
!457 = !{ptr @sensor_dev_attr_pwm5_mode, !456, !"sensor_dev_attr_pwm5_mode", i1 false, i1 false}
!458 = !{ptr @.str.135, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/hwmon/w83792d.c", i32 1128, i32 8}
!460 = !{ptr @sensor_dev_attr_fan6_input, !459, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!461 = !{ptr @.str.136, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/hwmon/w83792d.c", i32 1140, i32 8}
!463 = !{ptr @sensor_dev_attr_fan6_min, !462, !"sensor_dev_attr_fan6_min", i1 false, i1 false}
!464 = !{ptr @.str.137, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/hwmon/w83792d.c", i32 1154, i32 8}
!466 = !{ptr @sensor_dev_attr_fan6_div, !465, !"sensor_dev_attr_fan6_div", i1 false, i1 false}
!467 = !{ptr @.str.138, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/hwmon/w83792d.c", i32 1040, i32 8}
!469 = !{ptr @sensor_dev_attr_fan6_alarm, !468, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!470 = !{ptr @.str.139, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/hwmon/w83792d.c", i32 1047, i32 8}
!472 = !{ptr @sensor_dev_attr_pwm6, !471, !"sensor_dev_attr_pwm6", i1 false, i1 false}
!473 = !{ptr @.str.140, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/hwmon/w83792d.c", i32 1065, i32 8}
!475 = !{ptr @sensor_dev_attr_pwm6_mode, !474, !"sensor_dev_attr_pwm6_mode", i1 false, i1 false}
!476 = !{ptr @.str.141, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/hwmon/w83792d.c", i32 1129, i32 8}
!478 = !{ptr @sensor_dev_attr_fan7_input, !477, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!479 = !{ptr @.str.142, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/hwmon/w83792d.c", i32 1142, i32 8}
!481 = !{ptr @sensor_dev_attr_fan7_min, !480, !"sensor_dev_attr_fan7_min", i1 false, i1 false}
!482 = !{ptr @.str.143, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/hwmon/w83792d.c", i32 1156, i32 8}
!484 = !{ptr @sensor_dev_attr_fan7_div, !483, !"sensor_dev_attr_fan7_div", i1 false, i1 false}
!485 = !{ptr @.str.144, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/hwmon/w83792d.c", i32 1035, i32 8}
!487 = !{ptr @sensor_dev_attr_fan7_alarm, !486, !"sensor_dev_attr_fan7_alarm", i1 false, i1 false}
!488 = !{ptr @.str.145, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/hwmon/w83792d.c", i32 1048, i32 8}
!490 = !{ptr @sensor_dev_attr_pwm7, !489, !"sensor_dev_attr_pwm7", i1 false, i1 false}
!491 = !{ptr @.str.146, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/hwmon/w83792d.c", i32 1067, i32 8}
!493 = !{ptr @sensor_dev_attr_pwm7_mode, !492, !"sensor_dev_attr_pwm7_mode", i1 false, i1 false}
!494 = !{ptr @w83792d_probe.__key, !495, !"__key", i1 false, i1 false}
!495 = !{!"../drivers/hwmon/w83792d.c", i32 1366, i32 2}
!496 = !{ptr @.str.147, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @.str.148, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/hwmon/w83792d.c", i32 933, i32 5}
!499 = !{ptr @.str.149, !498, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.150, !498, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.151, !498, !"<string literal>", i1 false, i1 false}
!502 = !{ptr @w83792d_detect_subclients._entry, !498, !"_entry", i1 false, i1 false}
!503 = !{ptr @w83792d_detect_subclients._entry_ptr, !498, !"_entry_ptr", i1 false, i1 false}
!504 = !{ptr @.str.153, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/hwmon/w83792d.c", i32 947, i32 3}
!506 = !{ptr @w83792d_detect_subclients._entry.152, !505, !"_entry", i1 false, i1 false}
!507 = !{ptr @w83792d_detect_subclients._entry_ptr.154, !505, !"_entry_ptr", i1 false, i1 false}
!508 = !{ptr @w83792d_id, !509, !"w83792d_id", i1 false, i1 false}
!509 = !{!"../drivers/hwmon/w83792d.c", i32 298, i32 35}
!510 = !{ptr @normal_i2c, !511, !"normal_i2c", i1 false, i1 false}
!511 = !{!"../drivers/hwmon/w83792d.c", i32 37, i32 29}
!512 = !{i32 1, !"wchar_size", i32 2}
!513 = !{i32 1, !"min_enum_size", i32 4}
!514 = !{i32 8, !"branch-target-enforcement", i32 0}
!515 = !{i32 8, !"sign-return-address", i32 0}
!516 = !{i32 8, !"sign-return-address-all", i32 0}
!517 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!518 = !{i32 7, !"uwtable", i32 1}
!519 = !{i32 7, !"frame-pointer", i32 2}
!520 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!521 = !{i8 0, i8 2}
!522 = !{i64 2149007013, i64 2149007018, i64 2149007031, i64 2149007075, i64 2149007109, i64 2149007130}
!523 = !{!"auto-init"}
