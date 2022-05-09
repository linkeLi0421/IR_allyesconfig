; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83781d.c_pt.bc'
source_filename = "../drivers/hwmon/w83781d.c"
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.w83781d_data = type { ptr, ptr, %struct.mutex, i32, ptr, i32, %struct.mutex, i8, i32, [2 x ptr], [9 x i8], [9 x i8], [9 x i8], [3 x i8], [3 x i8], i8, i8, i8, [2 x i16], [2 x i16], [2 x i16], [3 x i8], i8, i32, i32, [4 x i8], i8, [3 x i16], i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_subclients = internal constant [25 x i8] c"w83781d.force_subclients\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_force_subclients = internal constant %struct.kparam_array { i32 4, i32 2, ptr null, ptr @param_ops_short, ptr @force_subclients }, align 4
@__param_force_subclients = internal constant %struct.kernel_param { ptr @__param_str_force_subclients, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_force_subclients } }, section "__param", align 4
@__UNIQUE_ID_force_subclientstype292 = internal constant [49 x i8] c"w83781d.parmtype=force_subclients:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_force_subclients293 = internal constant [109 x i8] c"w83781d.parm=force_subclients:List of subclient addresses: {bus, clientaddr, subclientaddr1, subclientaddr2}\00", section ".modinfo", align 1
@__param_str_reset = internal constant [14 x i8] c"w83781d.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype294 = internal constant [28 x i8] c"w83781d.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset295 = internal constant [52 x i8] c"w83781d.parm=reset:Set to one to reset chip on load\00", section ".modinfo", align 1
@__param_str_init = internal constant [13 x i8] c"w83781d.init\00", align 1
@init = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype296 = internal constant [27 x i8] c"w83781d.parmtype=init:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_init297 = internal constant [60 x i8] c"w83781d.parm=init:Set to zero to bypass chip initialization\00", section ".modinfo", align 1
@w83781d_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @w83781d_remove, ptr @w83781d_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @w83781d_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83781d_ids, ptr @w83781d_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author340 = internal constant [129 x i8] c"w83781d.author=Frodo Looijaard <frodol@dds.nl>, Philip Edelbrock <phil@netroedge.com>, and Mark Studebaker <mdsxyz123@yahoo.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description341 = internal constant [35 x i8] c"w83781d.description=W83781D driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file342 = internal constant [35 x i8] c"w83781d.file=drivers/hwmon/w83781d\00", section ".modinfo", align 1
@__UNIQUE_ID_license343 = internal constant [20 x i8] c"w83781d.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_w83781d__344_2096_sensors_w83781d_init6 = internal global ptr @sensors_w83781d_init, section ".initcall6.init", align 4
@__exitcall_sensors_w83781d_exit = internal global ptr @sensors_w83781d_exit, section ".exitcall.exit", align 4
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@force_subclients = internal global { [4 x i16], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83781d\00", [24 x i8] zeroinitializer }, align 32
@w83781d_of_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83781d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83781g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83782d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"winbond,w83783s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asus,as99127f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@w83781d_ids = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83781d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"w83782d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"w83783s\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"as99127f\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 -2], [46 x i8] zeroinitializer }, align 32
@w83781d_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_in1 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_in1, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_in78 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_in78, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_temp3 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_temp3, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_pwm12 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_pwm12, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_pwm34 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_pwm34, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_group_other = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83781d_attributes_other, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83781d_attributes = internal global { [61 x ptr], [44 x i8] } { [61 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms, ptr @dev_attr_beep_mask, ptr @sensor_dev_attr_beep_enable, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_div = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_beep_mask = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @beep_mask_show, ptr @beep_mask_store }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_beep_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@w83781d_update_device.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 1, i8 108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"w83781d_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/w83781d.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting device update\0A\00", [40 x i8] zeroinitializer }, align 32
@W83781D_REG_PWM = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"[Z^_", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"beep_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@w83781d_attributes_in1 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@w83781d_attributes_in78 = internal global { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in8_beep, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_beep\00", [23 x i8] zeroinitializer }, align 32
@w83781d_attributes_temp3 = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_beep, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @store_temp_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max_hyst, ptr @store_temp_max_hyst }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp3_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_beep = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp3_beep, ptr @store_beep }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@w83781d_attributes_pwm12 = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @dev_attr_pwm2_enable, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_pwm2_enable = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm2_enable_show, ptr @pwm2_enable_store }, [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@w83781d_attributes_pwm34 = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr null], [20 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm4 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@w83781d_attributes_other = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_type, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sensor, ptr @store_sensor }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sensor, ptr @store_sensor }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_type = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_sensor, ptr @store_sensor }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_type\00", [21 x i8] zeroinitializer }, align 32
@BIT_SCFG1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\04\08", [29 x i8] zeroinitializer }, align 32
@BIT_SCFG2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\10 @", [29 x i8] zeroinitializer }, align 32
@store_sensor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.4, i32 816, ptr @.str.95, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Sensor type %d is deprecated, please use 4 instead\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"store_sensor\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@store_sensor._entry_ptr = internal global ptr @store_sensor._entry, section ".printk_index", align 4
@store_sensor._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.94, ptr @.str.4, i32 826, ptr @.str.99, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid sensor type %ld; must be 1, 2, or 4\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@store_sensor._entry_ptr.100 = internal global ptr @store_sensor._entry.97, section ".printk_index", align 4
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_type\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_type\00", [21 x i8] zeroinitializer }, align 32
@w83781d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@w83781d_probe.__key.104 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.105 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83781d_detect_subclients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.4, i32 865, ptr @.str.99, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid subclient address %d; must be 0x48-0x4f\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"w83781d_detect_subclients\00", [38 x i8] zeroinitializer }, align 32
@w83781d_detect_subclients._entry_ptr = internal global ptr @w83781d_detect_subclients._entry, section ".printk_index", align 4
@w83781d_detect_subclients._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.4, i32 890, ptr @.str.99, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Duplicate addresses 0x%x for subclients.\0A\00", [54 x i8] zeroinitializer }, align 32
@w83781d_detect_subclients._entry_ptr.110 = internal global ptr @w83781d_detect_subclients._entry.108, section ".printk_index", align 4
@w83781d_detect_subclients._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.4, i32 901, ptr @.str.99, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Subclient %d registration at address 0x%x failed.\0A\00", [45 x i8] zeroinitializer }, align 32
@w83781d_detect_subclients._entry_ptr.113 = internal global ptr @w83781d_detect_subclients._entry.111, section ".printk_index", align 4
@w83781d_init_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.4, i32 1355, ptr @.str.116, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"If reset=1 solved a problem you were having, please report!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w83781d_init_device\00", [44 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@w83781d_init_device._entry_ptr = internal global ptr @w83781d_init_device._entry, section ".printk_index", align 4
@w83781d_init_device._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.4, i32 1413, ptr @.str.95, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enabling temp2, readings might not make sense\0A\00", [49 x i8] zeroinitializer }, align 32
@w83781d_init_device._entry_ptr.119 = internal global ptr @w83781d_init_device._entry.117, section ".printk_index", align 4
@w83781d_init_device._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.115, ptr @.str.4, i32 1424, ptr @.str.95, ptr @.str.96 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Enabling temp3, readings might not make sense\0A\00", [49 x i8] zeroinitializer }, align 32
@w83781d_init_device._entry_ptr.122 = internal global ptr @w83781d_init_device._entry.120, section ".printk_index", align 4
@w83781d_init_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@w83781d_detect.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.4, ptr @.str.124, i8 1, i8 20, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"w83781d_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Detection of w83781d chip failed at step 3\0A\00", [52 x i8] zeroinitializer }, align 32
@w83781d_detect.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.4, ptr @.str.125, i8 1, i8 23, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Detection of w83781d chip failed at step 4\0A\00", [52 x i8] zeroinitializer }, align 32
@w83781d_detect.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.4, ptr @.str.126, i8 1, i8 26, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.126 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Detection of w83781d chip failed at step 5\0A\00", [52 x i8] zeroinitializer }, align 32
@w83781d_detect.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.123, ptr @.str.4, ptr @.str.127, i8 1, i8 30, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"w83781d chip vendor is neither Winbond nor Asus\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83782d\00", [24 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83783s\00", [24 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"as99127f\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.133 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.134 = internal global [4 x i64] [i64 2, i64 32, i64 163, i64 195]
@__sancov_gen_cov_switch_values.135 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 92]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 18, i64 92]
@__sancov_gen_cov_switch_values.137 = internal global [7 x i64] [i64 5, i64 32, i64 16, i64 17, i64 48, i64 49, i64 64]
@__sancov_gen_cov_switch_values.138 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.139 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.140 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.141 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 8, i64 80, i64 82, i64 83]
@__sancov_gen_cov_switch_values.143 = internal global [5 x i64] [i64 3, i64 8, i64 82, i64 83, i64 85]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.147 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 3]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 3435]
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 57, i32 13 }
@___asan_gen_.153 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 61, i32 13 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"w83781d_driver\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1584, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"force_subclients\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 52, i32 23 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1587, i32 11 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"w83781d_of_match\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1574, i32 34 }
@___asan_gen_.168 = private unnamed_addr constant [12 x i8] c"w83781d_ids\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1565, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 46, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant [14 x i8] c"w83781d_group\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 959, i32 37 }
@___asan_gen_.177 = private unnamed_addr constant [18 x i8] c"w83781d_group_in1\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 967, i32 37 }
@___asan_gen_.180 = private unnamed_addr constant [19 x i8] c"w83781d_group_in78\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 976, i32 37 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c"w83781d_group_temp3\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 984, i32 37 }
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c"w83781d_group_pwm12\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 994, i32 37 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c"w83781d_group_pwm34\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1003, i32 37 }
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"w83781d_group_other\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1013, i32 37 }
@___asan_gen_.195 = private unnamed_addr constant [19 x i8] c"w83781d_attributes\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 940, i32 26 }
@___asan_gen_.198 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in0_beep\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_beep\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_beep\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_beep\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in5_beep\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_alarm\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in6_beep\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.291 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_div\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan1_beep\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_div\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan2_beep\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_div\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_fan3_beep\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_beep\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp2_max_hyst\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_beep\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [19 x i8] c"dev_attr_beep_mask\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_beep_enable\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 255, i32 1 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1456, i32 3 }
@___asan_gen_.393 = private unnamed_addr constant [16 x i8] c"W83781D_REG_PWM\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 128, i32 17 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 289, i32 1 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 465, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 453, i32 22 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 586, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 291, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 467, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 590, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 292, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 468, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 592, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 293, i32 1 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 469, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 594, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 294, i32 1 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 470, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 596, i32 8 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 295, i32 1 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 471, i32 8 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 598, i32 8 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 336, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 337, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 681, i32 8 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 474, i32 8 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 604, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 339, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 340, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 683, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 475, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 606, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 342, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 343, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 685, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 476, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 608, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 360, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 401, i32 1 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 477, i32 8 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 610, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 402, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 478, i32 8 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 612, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 412, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 437, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 446, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 517, i32 8 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 616, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant [23 x i8] c"w83781d_attributes_in1\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 963, i32 26 }
@___asan_gen_.582 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.588 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.594 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_beep\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 290, i32 1 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 466, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 588, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant [24 x i8] c"w83781d_attributes_in78\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 971, i32 26 }
@___asan_gen_.615 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.618 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.621 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.624 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_alarm\00", align 1
@___asan_gen_.627 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in7_beep\00", align 1
@___asan_gen_.630 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_alarm\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in8_beep\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 296, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 472, i32 8 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 600, i32 8 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 297, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 473, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 602, i32 8 }
@___asan_gen_.675 = private unnamed_addr constant [25 x i8] c"w83781d_attributes_temp3\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 980, i32 26 }
@___asan_gen_.678 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.681 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.684 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp3_max_hyst\00", align 1
@___asan_gen_.687 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.690 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_beep\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 403, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 479, i32 8 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 614, i32 8 }
@___asan_gen_.708 = private unnamed_addr constant [25 x i8] c"w83781d_attributes_pwm12\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 988, i32 26 }
@___asan_gen_.711 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.717 = private unnamed_addr constant [21 x i8] c"dev_attr_pwm2_enable\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 762, i32 8 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 763, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 767, i32 8 }
@___asan_gen_.729 = private unnamed_addr constant [25 x i8] c"w83781d_attributes_pwm34\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 998, i32 26 }
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm4\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 764, i32 8 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 765, i32 8 }
@___asan_gen_.744 = private unnamed_addr constant [25 x i8] c"w83781d_attributes_other\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1007, i32 26 }
@___asan_gen_.747 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_type\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_type\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_type\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 834, i32 8 }
@___asan_gen_.759 = private unnamed_addr constant [10 x i8] c"BIT_SCFG1\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 141, i32 17 }
@___asan_gen_.762 = private unnamed_addr constant [10 x i8] c"BIT_SCFG2\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 144, i32 17 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 814, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 825, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 836, i32 8 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 838, i32 8 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1208, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1209, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 863, i32 5 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 888, i32 4 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 899, i32 4 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1354, i32 3 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1412, i32 4 }
@___asan_gen_.846 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1423, i32 5 }
@___asan_gen_.852 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1443, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1105, i32 3 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1116, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1128, i32 4 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1146, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1156, i32 17 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1158, i32 17 }
@___asan_gen_.876 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.877 = private constant [27 x i8] c"../drivers/hwmon/w83781d.c\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.877, i32 1160, i32 17 }
@llvm.compiler.used = appending global [267 x ptr] [ptr @__UNIQUE_ID_author340, ptr @__UNIQUE_ID_description341, ptr @__UNIQUE_ID_file342, ptr @__UNIQUE_ID_force_subclients293, ptr @__UNIQUE_ID_force_subclientstype292, ptr @__UNIQUE_ID_init297, ptr @__UNIQUE_ID_inittype296, ptr @__UNIQUE_ID_license343, ptr @__UNIQUE_ID_reset295, ptr @__UNIQUE_ID_resettype294, ptr @__exitcall_sensors_w83781d_exit, ptr @__initcall__kmod_w83781d__344_2096_sensors_w83781d_init6, ptr @__param_force_subclients, ptr @__param_init, ptr @__param_reset, ptr @sensors_w83781d_exit, ptr @store_sensor._entry, ptr @store_sensor._entry.97, ptr @store_sensor._entry_ptr, ptr @store_sensor._entry_ptr.100, ptr @w83781d_detect_subclients._entry, ptr @w83781d_detect_subclients._entry.108, ptr @w83781d_detect_subclients._entry.111, ptr @w83781d_detect_subclients._entry_ptr, ptr @w83781d_detect_subclients._entry_ptr.110, ptr @w83781d_detect_subclients._entry_ptr.113, ptr @w83781d_init_device._entry, ptr @w83781d_init_device._entry.117, ptr @w83781d_init_device._entry.120, ptr @w83781d_init_device._entry_ptr, ptr @w83781d_init_device._entry_ptr.119, ptr @w83781d_init_device._entry_ptr.122, ptr @reset, ptr @init, ptr @w83781d_driver, ptr @force_subclients, ptr @.str, ptr @w83781d_of_match, ptr @w83781d_ids, ptr @normal_i2c, ptr @w83781d_group, ptr @w83781d_group_in1, ptr @w83781d_group_in78, ptr @w83781d_group_temp3, ptr @w83781d_group_pwm12, ptr @w83781d_group_pwm34, ptr @w83781d_group_other, ptr @w83781d_attributes, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_alarm, ptr @sensor_dev_attr_in0_beep, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_in2_beep, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_alarm, ptr @sensor_dev_attr_in3_beep, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_alarm, ptr @sensor_dev_attr_in4_beep, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_alarm, ptr @sensor_dev_attr_in5_beep, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_alarm, ptr @sensor_dev_attr_in6_beep, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_div, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan1_beep, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_div, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan2_beep, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_div, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan3_beep, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_beep, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_hyst, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_beep, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @dev_attr_alarms, ptr @dev_attr_beep_mask, ptr @sensor_dev_attr_beep_enable, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @W83781D_REG_PWM, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @w83781d_attributes_in1, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_beep, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @w83781d_attributes_in78, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_alarm, ptr @sensor_dev_attr_in7_beep, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_alarm, ptr @sensor_dev_attr_in8_beep, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @w83781d_attributes_temp3, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_hyst, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_beep, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @w83781d_attributes_pwm12, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm2, ptr @dev_attr_pwm2_enable, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @w83781d_attributes_pwm34, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm4, ptr @.str.90, ptr @.str.91, ptr @w83781d_attributes_other, ptr @sensor_dev_attr_temp1_type, ptr @sensor_dev_attr_temp2_type, ptr @sensor_dev_attr_temp3_type, ptr @.str.92, ptr @BIT_SCFG1, ptr @BIT_SCFG2, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.99, ptr @.str.101, ptr @.str.102, ptr @w83781d_probe.__key, ptr @.str.103, ptr @w83781d_probe.__key.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.118, ptr @.str.121, ptr @w83781d_init_device.__key, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], section "llvm.metadata"
@0 = internal global [243 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_subclients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_of_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_ids to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_in1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_in78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_temp3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_pwm12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_pwm34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_group_other to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes to i32), i32 244, i32 288, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_div to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_beep_mask to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_beep_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83781D_REG_PWM to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_in1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_in78 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_temp3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_beep to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_pwm12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm2_enable to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_pwm34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_attributes_other to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_SCFG1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @BIT_SCFG2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_sensor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_sensor._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_probe.__key.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_detect_subclients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_detect_subclients._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_detect_subclients._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_init_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_init_device._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_init_device._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83781d_init_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sensors_w83781d_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @w83781d_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sensors_w83781d_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83781d_driver) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83781d_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %hwmon_dev = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwmon_dev, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in1) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in78) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_temp3) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm12) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm34) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_other) #9
  %lm75 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %lm75 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lm75, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #9
  %arrayidx3 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83781d_probe(ptr noundef %client) #2 align 64 {
entry:
  %sc_addr.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 296, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %lock = getelementptr inbounds %struct.w83781d_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.103, ptr noundef nonnull @w83781d_probe.__key) #9
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %call.i, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.105, ptr noundef nonnull @w83781d_probe.__key.104) #9
  %call5 = tail call ptr @i2c_match_id(ptr noundef nonnull @w83781d_ids, ptr noundef %client) #9
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call5, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.w83781d_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %client, ptr %call.i, align 4
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %5 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr.i, align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sc_addr.i) #9
  %7 = getelementptr inbounds [2 x i16], ptr %sc_addr.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 -1, ptr %7, align 2, !annotation !409
  %adapter1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %9 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adapter1.i, align 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i, align 4
  %type.i = getelementptr inbounds %struct.w83781d_data, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type.i, align 4
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i.i, align 4
  %17 = load i16, ptr @force_subclients, align 2
  %conv3.i = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv3.i)
  %cmp.i = icmp eq i32 %16, %conv3.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.else.i_crit_edge

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end
  %18 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %6)
  %cmp6.i = icmp eq i16 %18, %6
  br i1 %cmp6.i, label %for.body.preheader.i, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

for.body.preheader.i:                             ; preds = %land.lhs.true.i
  %19 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 2), align 2
  %20 = add i16 %19, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %20)
  %21 = icmp ult i16 %20, -8
  br i1 %21, label %for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge, label %for.cond.i

for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit.thread

for.cond.i:                                       ; preds = %for.body.preheader.i
  %22 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 3), align 2
  %23 = add i16 %22, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %23)
  %24 = icmp ult i16 %23, -8
  br i1 %24, label %for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge, label %for.cond.1.i

for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit.thread

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = and i16 %19, 7
  %26 = shl nuw nsw i16 %22, 4
  %27 = and i16 %26, 112
  %or133.i = or i16 %27, %25
  %lock.i.i = getelementptr inbounds %struct.w83781d_data, ptr %12, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #9
  %28 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %12, align 4
  %conv14.i.i.i = trunc i16 %or133.i to i8
  %call15.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %29, i8 noundef zeroext 74, i8 noundef zeroext %conv14.i.i.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i) #9
  %30 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 2), align 2
  br label %if.end30.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end.if.else.i_crit_edge
  %lock.i134.i = getelementptr inbounds %struct.w83781d_data, ptr %12, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i134.i, i32 noundef 0) #9
  %31 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %12, align 4
  %call12.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 74) #9
  tail call void @mutex_unlock(ptr noundef %lock.i134.i) #9
  %33 = trunc i32 %call12.i.i.i to i16
  %34 = and i16 %33, 7
  %conv28.i = or i16 %34, 72
  %35 = lshr i16 %33, 4
  %36 = and i16 %35, 7
  %phi.cast.i = or i16 %36, 72
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.else.i, %for.cond.1.i
  %storemerge.i = phi i16 [ %conv28.i, %if.else.i ], [ %30, %for.cond.1.i ]
  %val1.0.i = phi i16 [ %phi.cast.i, %if.else.i ], [ 72, %for.cond.1.i ]
  %37 = ptrtoint ptr %sc_addr.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %storemerge.i, ptr %sc_addr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp31.not.i = icmp eq i32 %14, 2
  br i1 %cmp31.not.i, label %if.end30.i.for.body67.i_crit_edge, label %if.then33.i

if.end30.i.for.body67.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67.i

if.then33.i:                                      ; preds = %if.end30.i
  %38 = load i16, ptr @force_subclients, align 2
  %conv34.i = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv34.i)
  %cmp35.i = icmp eq i32 %16, %conv34.i
  br i1 %cmp35.i, label %land.lhs.true37.i, label %if.then33.i.if.end48.i_crit_edge

if.then33.i.if.end48.i_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

land.lhs.true37.i:                                ; preds = %if.then33.i
  %39 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %6)
  %cmp39.i = icmp eq i16 %39, %6
  br i1 %cmp39.i, label %if.then41.i, label %land.lhs.true37.i.if.end48.i_crit_edge

land.lhs.true37.i.if.end48.i_crit_edge:           ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then41.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #11
  %40 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 3), align 2
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.then41.i, %land.lhs.true37.i.if.end48.i_crit_edge, %if.then33.i.if.end48.i_crit_edge
  %storemerge132.i = phi i16 [ %40, %if.then41.i ], [ %val1.0.i, %land.lhs.true37.i.if.end48.i_crit_edge ], [ %val1.0.i, %if.then33.i.if.end48.i_crit_edge ]
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %storemerge132.i, ptr %7, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %storemerge.i, i16 %storemerge132.i)
  %cmp53.i = icmp eq i16 %storemerge.i, %storemerge132.i
  br i1 %cmp53.i, label %if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge, label %if.end48.i.for.body67.i_crit_edge

if.end48.i.for.body67.i_crit_edge:                ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body67.i

if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge: ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit.thread

for.body67.i:                                     ; preds = %if.end48.i.for.body67.i_crit_edge, %if.end30.i.for.body67.i_crit_edge
  %42 = ptrtoint ptr %sc_addr.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sc_addr.i, align 2
  %call69.i = tail call ptr @i2c_new_dummy_device(ptr noundef %10, i16 noundef zeroext %43) #9
  %arrayidx70.i = getelementptr %struct.w83781d_data, ptr %12, i32 0, i32 9, i32 0
  %44 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call69.i, ptr %arrayidx70.i, align 4
  %cmp.i.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body67.i.do.end77.i_crit_edge, label %for.inc89.i

for.body67.i.do.end77.i_crit_edge:                ; preds = %for.body67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77.i

do.end77.i:                                       ; preds = %for.body67.i.1.do.end77.i_crit_edge, %for.body67.i.do.end77.i_crit_edge
  %i.1138.i.lcssa = phi i32 [ 0, %for.body67.i.do.end77.i_crit_edge ], [ 1, %for.body67.i.1.do.end77.i_crit_edge ]
  %.lcssa = phi i16 [ %43, %for.body67.i.do.end77.i_crit_edge ], [ %49, %for.body67.i.1.do.end77.i_crit_edge ]
  %arrayidx70.i.lcssa = phi ptr [ %arrayidx70.i, %for.body67.i.do.end77.i_crit_edge ], [ %arrayidx70.i.1, %for.body67.i.1.do.end77.i_crit_edge ]
  %conv80.i = zext i16 %.lcssa to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.112, i32 noundef %i.1138.i.lcssa, i32 noundef %conv80.i) #12
  %45 = ptrtoint ptr %arrayidx70.i.lcssa to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx70.i.lcssa, align 4
  %47 = ptrtoint ptr %46 to i32
  br i1 %cmp.i.i, label %do.end77.i.w83781d_detect_subclients.exit_crit_edge, label %ERROR_SC_3.i

do.end77.i.w83781d_detect_subclients.exit_crit_edge: ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit

for.inc89.i:                                      ; preds = %for.body67.i
  br i1 %cmp31.not.i, label %for.inc89.i.w83781d_detect_subclients.exit.thread76_crit_edge, label %for.body67.i.1

for.inc89.i.w83781d_detect_subclients.exit.thread76_crit_edge: ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit.thread76

for.body67.i.1:                                   ; preds = %for.inc89.i
  %arrayidx68.i.1 = getelementptr inbounds [2 x i16], ptr %sc_addr.i, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx68.i.1 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %arrayidx68.i.1, align 2
  %call69.i.1 = tail call ptr @i2c_new_dummy_device(ptr noundef %10, i16 noundef zeroext %49) #9
  %arrayidx70.i.1 = getelementptr %struct.w83781d_data, ptr %12, i32 0, i32 9, i32 1
  %50 = ptrtoint ptr %arrayidx70.i.1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call69.i.1, ptr %arrayidx70.i.1, align 4
  %cmp.i.i.1 = icmp ugt ptr %call69.i.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.1, label %for.body67.i.1.do.end77.i_crit_edge, label %for.body67.i.1.w83781d_detect_subclients.exit.thread76_crit_edge

for.body67.i.1.w83781d_detect_subclients.exit.thread76_crit_edge: ; preds = %for.body67.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_detect_subclients.exit.thread76

for.body67.i.1.do.end77.i_crit_edge:              ; preds = %for.body67.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end77.i

w83781d_detect_subclients.exit.thread76:          ; preds = %for.body67.i.1.w83781d_detect_subclients.exit.thread76_crit_edge, %for.inc89.i.w83781d_detect_subclients.exit.thread76_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc_addr.i) #9
  br label %if.end10

ERROR_SC_3.i:                                     ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  %lm75.le.i = getelementptr inbounds %struct.w83781d_data, ptr %12, i32 0, i32 9
  %51 = ptrtoint ptr %lm75.le.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %lm75.le.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %52) #9
  br label %w83781d_detect_subclients.exit

w83781d_detect_subclients.exit.thread:            ; preds = %if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge, %for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge, %for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge
  %.lcssa142.i.sink = phi i16 [ %19, %for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ %22, %for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ %storemerge.i, %if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge ]
  %.str.106.sink = phi ptr [ @.str.106, %for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ @.str.106, %for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ @.str.109, %if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge ]
  %retval.0.i.ph = phi i32 [ -22, %for.body.preheader.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ -22, %for.cond.i.w83781d_detect_subclients.exit.thread_crit_edge ], [ -16, %if.end48.i.w83781d_detect_subclients.exit.thread_crit_edge ]
  %conv19.i = zext i16 %.lcssa142.i.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.106.sink, i32 noundef %conv19.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc_addr.i) #9
  br label %cleanup

w83781d_detect_subclients.exit:                   ; preds = %ERROR_SC_3.i, %do.end77.i.w83781d_detect_subclients.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sc_addr.i) #9
  %tobool8.not = icmp eq ptr %46, null
  br i1 %tobool8.not, label %w83781d_detect_subclients.exit.if.end10_crit_edge, label %w83781d_detect_subclients.exit.cleanup_crit_edge

w83781d_detect_subclients.exit.cleanup_crit_edge: ; preds = %w83781d_detect_subclients.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

w83781d_detect_subclients.exit.if.end10_crit_edge: ; preds = %w83781d_detect_subclients.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.end10:                                         ; preds = %w83781d_detect_subclients.exit.if.end10_crit_edge, %w83781d_detect_subclients.exit.thread76
  %53 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i, align 4
  %type1.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %type1.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type1.i, align 4
  %57 = load i8, ptr @reset, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp.not.i = icmp eq i32 %56, 3
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond.i, label %if.end10.if.end.i_crit_edge, label %do.end.i53

if.end10.if.end.i_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i53:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.114) #12
  %lock.i.i50 = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %54, align 4
  %call12.i.i.i51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %59, i8 noundef zeroext 77) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %call12.i.i174.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %61, i8 noundef zeroext 92) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %62 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %54, align 4
  %call15.i.i.i52 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %63, i8 noundef zeroext 64, i8 noundef zeroext -128) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  %64 = trunc i32 %call12.i.i.i51 to i8
  %conv.i = or i8 %64, -128
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %65 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %54, align 4
  %call15.i.i177.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %66, i8 noundef zeroext 77, i8 noundef zeroext %conv.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %67 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %54, align 4
  %conv14.i.i179.i = trunc i32 %call12.i.i174.i to i8
  %call15.i.i180.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %68, i8 noundef zeroext 92, i8 noundef zeroext %conv14.i.i179.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i50, i32 noundef 0) #9
  %69 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %54, align 4
  %call15.i.i182.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %70, i8 noundef zeroext 87, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i.i50) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i53, %if.end10.if.end.i_crit_edge
  %71 = load i8, ptr @init, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool9.not.i = icmp eq i8 %71, 0
  br i1 %tobool9.not.i, label %if.end.i.if.end21.i_crit_edge, label %land.lhs.true11.i

if.end.i.if.end21.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

land.lhs.true11.i:                                ; preds = %if.end.i
  %72 = load i8, ptr @reset, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool12.not.i = icmp ne i8 %72, 0
  %or.cond170.i = select i1 %tobool12.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond170.i, label %land.lhs.true11.i.if.end21.i_crit_edge, label %if.then16.i

land.lhs.true11.i.if.end21.i_crit_edge:           ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i183.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i183.i, i32 noundef 0) #9
  %73 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %54, align 4
  %call12.i.i184.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %74, i8 noundef zeroext 77) #9
  tail call void @mutex_unlock(ptr noundef %lock.i183.i) #9
  %75 = trunc i32 %call12.i.i184.i to i8
  %conv19.i54 = or i8 %75, -128
  tail call void @mutex_lock_nested(ptr noundef %lock.i183.i, i32 noundef 0) #9
  %76 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %54, align 4
  %call15.i.i187.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %77, i8 noundef zeroext 77, i8 noundef zeroext %conv19.i54) #9
  tail call void @mutex_unlock(ptr noundef %lock.i183.i) #9
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then16.i, %land.lhs.true11.i.if.end21.i_crit_edge, %if.end.i.if.end21.i_crit_edge
  %call22.i = tail call zeroext i8 @vid_which_vrm() #9
  %vrm.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 28
  %78 = ptrtoint ptr %vrm.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %call22.i, ptr %vrm.i, align 4
  %79 = zext i32 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values)
  switch i32 %56, label %if.then28.i [
    i32 0, label %if.end21.i.if.end62.i_crit_edge
    i32 3, label %if.end21.i.if.end62.i_crit_edge96
  ]

if.end21.i.if.end62.i_crit_edge96:                ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.end21.i.if.end62.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

if.then28.i:                                      ; preds = %if.end21.i
  %lock.i188.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i188.i, i32 noundef 0) #9
  %80 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %54, align 4
  %call12.i.i189.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %81, i8 noundef zeroext 93) #9
  tail call void @mutex_unlock(ptr noundef %lock.i188.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp55.i = icmp eq i32 %56, 2
  %and.i = and i32 %call12.i.i189.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool35.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool35.not.i, label %if.then28.i.for.cond.i55_crit_edge, label %if.else.i57

if.then28.i.for.cond.i55_crit_edge:               ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i55

for.cond.i55:                                     ; preds = %if.else.i57, %if.then28.i.for.cond.i55_crit_edge
  %.sink.i = phi i16 [ 4, %if.then28.i.for.cond.i55_crit_edge ], [ %..i, %if.else.i57 ]
  %arrayidx38.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 27, i32 0
  %82 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %.sink.i, ptr %arrayidx38.i, align 2
  %and.1.i = and i32 %call12.i.i189.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool35.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool35.not.1.i, label %if.then36.1.i, label %if.else.1.i

if.else.1.i:                                      ; preds = %for.cond.i55
  tail call void @mutex_lock_nested(ptr noundef %lock.i188.i, i32 noundef 0) #9
  %83 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %54, align 4
  %call12.i.i191.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %84, i8 noundef zeroext 89) #9
  tail call void @mutex_unlock(ptr noundef %lock.i188.i) #9
  %and43.1.i = and i32 %call12.i.i191.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.1.i)
  %tobool44.not.1.i = icmp eq i32 %and43.1.i, 0
  %arrayidx52.1.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 27, i32 1
  br i1 %tobool44.not.1.i, label %if.else49.1.i, label %if.then45.1.i

if.then45.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %arrayidx52.1.i, align 2
  br label %if.end54.1.i

if.else49.1.i:                                    ; preds = %if.else.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %86 = ptrtoint ptr %arrayidx52.1.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 2, ptr %arrayidx52.1.i, align 2
  br label %if.end54.1.i

if.then36.1.i:                                    ; preds = %for.cond.i55
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38.1.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 27, i32 1
  %87 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 4, ptr %arrayidx38.1.i, align 2
  br label %if.end54.1.i

if.end54.1.i:                                     ; preds = %if.then36.1.i, %if.else49.1.i, %if.then45.1.i
  br i1 %cmp55.i, label %if.end54.1.i.if.end62.i_crit_edge, label %for.cond.1.i56

if.end54.1.i.if.end62.i_crit_edge:                ; preds = %if.end54.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62.i

for.cond.1.i56:                                   ; preds = %if.end54.1.i
  %and.2.i = and i32 %call12.i.i189.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool35.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool35.not.2.i, label %if.then36.2.i, label %if.else.2.i

if.else.2.i:                                      ; preds = %for.cond.1.i56
  tail call void @mutex_lock_nested(ptr noundef %lock.i188.i, i32 noundef 0) #9
  %88 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %54, align 4
  %call12.i.i191.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %89, i8 noundef zeroext 89) #9
  tail call void @mutex_unlock(ptr noundef %lock.i188.i) #9
  %and43.2.i = and i32 %call12.i.i191.2.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.2.i)
  %tobool44.not.2.i = icmp eq i32 %and43.2.i, 0
  %arrayidx52.2.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 27, i32 2
  br i1 %tobool44.not.2.i, label %if.else49.2.i, label %if.then45.2.i

if.then45.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %90 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 1, ptr %arrayidx52.2.i, align 2
  br label %if.end62.i

if.else49.2.i:                                    ; preds = %if.else.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %arrayidx52.2.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 2, ptr %arrayidx52.2.i, align 2
  br label %if.end62.i

if.then36.2.i:                                    ; preds = %for.cond.1.i56
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38.2.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 27, i32 2
  %92 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 4, ptr %arrayidx38.2.i, align 2
  br label %if.end62.i

if.else.i57:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i188.i, i32 noundef 0) #9
  %93 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %54, align 4
  %call12.i.i191.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %94, i8 noundef zeroext 89) #9
  tail call void @mutex_unlock(ptr noundef %lock.i188.i) #9
  %and43.i = and i32 %call12.i.i191.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  %..i = select i1 %tobool44.not.i, i16 2, i16 1
  br label %for.cond.i55

if.end62.i:                                       ; preds = %if.then36.2.i, %if.else49.2.i, %if.then45.2.i, %if.end54.1.i.if.end62.i_crit_edge, %if.end21.i.if.end62.i_crit_edge, %if.end21.i.if.end62.i_crit_edge96
  %95 = load i8, ptr @init, align 1, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool63.not.i = icmp eq i8 %95, 0
  %or.cond172.i = select i1 %tobool63.not.i, i1 true, i1 %cmp.not.i
  br i1 %or.cond172.i, label %if.end62.i.w83781d_init_device.exit_crit_edge, label %if.then68.i

if.end62.i.w83781d_init_device.exit_crit_edge:    ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_init_device.exit

if.then68.i:                                      ; preds = %if.end62.i
  %lock.i192.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i192.i, i32 noundef 0) #9
  %arrayidx.i.i.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 9, i32 0
  %96 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call17.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %97, i8 noundef zeroext 1) #9
  tail call void @mutex_unlock(ptr noundef %lock.i192.i) #9
  %and72.i = and i32 %call17.i.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %if.then68.i.if.end82.i_crit_edge, label %do.end77.i59

if.then68.i.if.end82.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end82.i

do.end77.i59:                                     ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.118) #12
  %98 = trunc i32 %call17.i.i.i to i8
  %conv80.i58 = and i8 %98, -2
  tail call void @mutex_lock_nested(ptr noundef %lock.i192.i, i32 noundef 0) #9
  %99 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i.i.i, align 4
  %call21.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %100, i8 noundef zeroext 1, i8 noundef zeroext %conv80.i58) #9
  tail call void @mutex_unlock(ptr noundef %lock.i192.i) #9
  br label %if.end82.i

if.end82.i:                                       ; preds = %do.end77.i59, %if.then68.i.if.end82.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp83.not.i = icmp eq i32 %56, 2
  br i1 %cmp83.not.i, label %if.end82.i.w83781d_init_device.exit_crit_edge, label %if.then85.i

if.end82.i.w83781d_init_device.exit_crit_edge:    ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_init_device.exit

if.then85.i:                                      ; preds = %if.end82.i
  tail call void @mutex_lock_nested(ptr noundef %lock.i192.i, i32 noundef 0) #9
  %arrayidx.i.i196.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 9, i32 1
  %101 = ptrtoint ptr %arrayidx.i.i196.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %arrayidx.i.i196.i, align 4
  %call17.i.i197.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %102, i8 noundef zeroext 1) #9
  tail call void @mutex_unlock(ptr noundef %lock.i192.i) #9
  %and89.i = and i32 %call17.i.i197.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.then85.i.w83781d_init_device.exit_crit_edge, label %do.end94.i

if.then85.i.w83781d_init_device.exit_crit_edge:   ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_init_device.exit

do.end94.i:                                       ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.121) #12
  %103 = trunc i32 %call17.i.i197.i to i16
  %conv97.i = and i16 %103, 254
  tail call fastcc void @w83781d_write_value(ptr noundef %54, i16 noundef zeroext 594, i16 noundef zeroext %conv97.i) #9
  br label %w83781d_init_device.exit

w83781d_init_device.exit:                         ; preds = %do.end94.i, %if.then85.i.w83781d_init_device.exit_crit_edge, %if.end82.i.w83781d_init_device.exit_crit_edge, %if.end62.i.w83781d_init_device.exit_crit_edge
  %lock.i198.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i198.i, i32 noundef 0) #9
  %104 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %54, align 4
  %call12.i.i199.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %105, i8 noundef zeroext 64) #9
  tail call void @mutex_unlock(ptr noundef %lock.i198.i) #9
  %106 = trunc i32 %call12.i.i199.i to i8
  %107 = and i8 %106, -10
  %conv105.i = or i8 %107, 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i198.i, i32 noundef 0) #9
  %108 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %54, align 4
  %call15.i.i202.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %109, i8 noundef zeroext 64, i8 noundef zeroext %conv105.i) #9
  tail call void @mutex_unlock(ptr noundef %lock.i198.i) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i198.i, i32 noundef 0) #9
  %110 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %54, align 4
  %call12.i.i73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %111, i8 noundef zeroext 59) #9
  tail call void @mutex_unlock(ptr noundef %lock.i198.i) #9
  %conv113.i = trunc i32 %call12.i.i73 to i8
  %arrayidx114.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 14, i32 0
  %112 = ptrtoint ptr %arrayidx114.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %conv113.i, ptr %arrayidx114.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i198.i, i32 noundef 0) #9
  %113 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %54, align 4
  %call12.i.i71 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %114, i8 noundef zeroext 60) #9
  tail call void @mutex_unlock(ptr noundef %lock.i198.i) #9
  %conv113.1.i = trunc i32 %call12.i.i71 to i8
  %arrayidx114.1.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 14, i32 1
  %115 = ptrtoint ptr %arrayidx114.1.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %conv113.1.i, ptr %arrayidx114.1.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i198.i, i32 noundef 0) #9
  %116 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %54, align 4
  %call12.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %117, i8 noundef zeroext 61) #9
  tail call void @mutex_unlock(ptr noundef %lock.i198.i) #9
  %conv113.2.i = trunc i32 %call12.i.i to i8
  %arrayidx114.2.i = getelementptr %struct.w83781d_data, ptr %54, i32 0, i32 14, i32 2
  %118 = ptrtoint ptr %arrayidx114.2.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 %conv113.2.i, ptr %arrayidx114.2.i, align 1
  %update_lock.i = getelementptr inbounds %struct.w83781d_data, ptr %54, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %update_lock.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @w83781d_init_device.__key) #9
  %119 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %type, align 4
  %call.i60 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60)
  %tobool.not.i61 = icmp eq i32 %call.i60, 0
  br i1 %tobool.not.i61, label %if.end.i63, label %w83781d_init_device.exit.exit_remove_files_crit_edge

w83781d_init_device.exit.exit_remove_files_crit_edge: ; preds = %w83781d_init_device.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end.i63:                                       ; preds = %w83781d_init_device.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %120)
  %cmp.not.i62 = icmp eq i32 %120, 2
  br i1 %cmp.not.i62, label %if.end.i63.if.then38.i_crit_edge, label %if.then1.i

if.end.i63.if.then38.i_crit_edge:                 ; preds = %if.end.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.then1.i:                                       ; preds = %if.end.i63
  %call3.i = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then1.i.exit_remove_files_crit_edge

if.then1.i.exit_remove_files_crit_edge:           ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end7.i:                                        ; preds = %if.then1.i
  %121 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %120, label %if.then12.i [
    i32 3, label %if.end7.i.if.then20.i_crit_edge
    i32 0, label %if.end7.i.if.then20.i_crit_edge97
  ]

if.end7.i.if.then20.i_crit_edge97:                ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.end7.i.if.then20.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.then12.i:                                      ; preds = %if.end7.i
  %call14.i = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.then12.i.if.then20.i_crit_edge, label %if.then12.i.exit_remove_files_crit_edge

if.then12.i.exit_remove_files_crit_edge:          ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.then12.i.if.then20.i_crit_edge:                ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then20.i

if.then20.i:                                      ; preds = %if.then12.i.if.then20.i_crit_edge, %if.end7.i.if.then20.i_crit_edge, %if.end7.i.if.then20.i_crit_edge97
  %call22.i64 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_temp3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i64)
  %tobool23.not.i = icmp eq i32 %call22.i64, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.then20.i.exit_remove_files_crit_edge

if.then20.i.exit_remove_files_crit_edge:          ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end25.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cond.i = icmp eq i32 %120, 0
  br i1 %cond.i, label %if.end25.i.if.end15_crit_edge, label %if.then27.i

if.end25.i.if.end15_crit_edge:                    ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then27.i:                                      ; preds = %if.end25.i
  %call29.i = tail call i32 @sysfs_chmod_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_alarm, i16 noundef zeroext 420) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end34.i, label %if.then27.i.exit_remove_files_crit_edge

if.then27.i.exit_remove_files_crit_edge:          ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end34.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %120)
  %cond3.i = icmp eq i32 %120, 3
  br i1 %cond3.i, label %if.end34.i.if.end15_crit_edge, label %if.end34.i.if.then38.i_crit_edge

if.end34.i.if.then38.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38.i

if.end34.i.if.end15_crit_edge:                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then38.i:                                      ; preds = %if.end34.i.if.then38.i_crit_edge, %if.end.i63.if.then38.i_crit_edge
  %call40.i = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end44.i, label %if.then38.i.exit_remove_files_crit_edge

if.then38.i.exit_remove_files_crit_edge:          ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end44.i:                                       ; preds = %if.then38.i
  %122 = zext i32 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %120, label %if.end44.i.if.then58.i_crit_edge [
    i32 1, label %if.then48.i
    i32 3, label %if.end44.i.if.end15_crit_edge
  ]

if.end44.i.if.end15_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end44.i.if.then58.i_crit_edge:                 ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58.i

if.then48.i:                                      ; preds = %if.end44.i
  %call50.i = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then48.i.if.then58.i_crit_edge, label %if.then48.i.exit_remove_files_crit_edge

if.then48.i.exit_remove_files_crit_edge:          ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.then48.i.if.then58.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then58.i

if.then58.i:                                      ; preds = %if.then48.i.if.then58.i_crit_edge, %if.end44.i.if.then58.i_crit_edge
  %call59.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp1_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i65, label %if.then58.i.exit_remove_files_crit_edge

if.then58.i.exit_remove_files_crit_edge:          ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end62.i65:                                     ; preds = %if.then58.i
  %call63.i = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp2_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  br i1 %tobool64.not.i, label %if.end66.i, label %if.end62.i65.exit_remove_files_crit_edge

if.end62.i65.exit_remove_files_crit_edge:         ; preds = %if.end62.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.end66.i:                                       ; preds = %if.end62.i65
  br i1 %cmp.not.i62, label %if.end66.i.if.end15_crit_edge, label %if.then68.i67

if.end66.i.if.end15_crit_edge:                    ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then68.i67:                                    ; preds = %if.end66.i
  %call69.i66 = tail call i32 @device_create_file(ptr noundef %dev1, ptr noundef nonnull @sensor_dev_attr_temp3_type) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i66)
  %tobool70.not.i = icmp eq i32 %call69.i66, 0
  br i1 %tobool70.not.i, label %if.then68.i67.if.end15_crit_edge, label %if.then68.i67.exit_remove_files_crit_edge

if.then68.i67.exit_remove_files_crit_edge:        ; preds = %if.then68.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_remove_files

if.then68.i67.if.end15_crit_edge:                 ; preds = %if.then68.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.end15:                                         ; preds = %if.then68.i67.if.end15_crit_edge, %if.end66.i.if.end15_crit_edge, %if.end44.i.if.end15_crit_edge, %if.end34.i.if.end15_crit_edge, %if.end25.i.if.end15_crit_edge
  %call16 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %hwmon_dev = getelementptr inbounds %struct.w83781d_data, ptr %call.i, i32 0, i32 1
  %123 = ptrtoint ptr %hwmon_dev to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call16, ptr %hwmon_dev, align 4
  %cmp.i69 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %call16 to i32
  br label %exit_remove_files

exit_remove_files:                                ; preds = %if.then19, %if.then68.i67.exit_remove_files_crit_edge, %if.end62.i65.exit_remove_files_crit_edge, %if.then58.i.exit_remove_files_crit_edge, %if.then48.i.exit_remove_files_crit_edge, %if.then38.i.exit_remove_files_crit_edge, %if.then27.i.exit_remove_files_crit_edge, %if.then20.i.exit_remove_files_crit_edge, %if.then12.i.exit_remove_files_crit_edge, %if.then1.i.exit_remove_files_crit_edge, %w83781d_init_device.exit.exit_remove_files_crit_edge
  %err.0 = phi i32 [ %124, %if.then19 ], [ %call69.i66, %if.then68.i67.exit_remove_files_crit_edge ], [ %call63.i, %if.end62.i65.exit_remove_files_crit_edge ], [ %call59.i, %if.then58.i.exit_remove_files_crit_edge ], [ %call50.i, %if.then48.i.exit_remove_files_crit_edge ], [ %call40.i, %if.then38.i.exit_remove_files_crit_edge ], [ %call29.i, %if.then27.i.exit_remove_files_crit_edge ], [ %call22.i64, %if.then20.i.exit_remove_files_crit_edge ], [ %call14.i, %if.then12.i.exit_remove_files_crit_edge ], [ %call3.i, %if.then1.i.exit_remove_files_crit_edge ], [ %call.i60, %w83781d_init_device.exit.exit_remove_files_crit_edge ]
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in1) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_in78) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_temp3) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm12) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_pwm34) #9
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83781d_group_other) #9
  %lm75 = getelementptr inbounds %struct.w83781d_data, ptr %call.i, i32 0, i32 9
  %125 = ptrtoint ptr %lm75 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %lm75, align 4
  tail call void @i2c_unregister_device(ptr noundef %126) #9
  %arrayidx24 = getelementptr %struct.w83781d_data, ptr %call.i, i32 0, i32 9, i32 1
  %127 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx24, align 4
  tail call void @i2c_unregister_device(ptr noundef %128) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_remove_files, %if.end15.cleanup_crit_edge, %w83781d_detect_subclients.exit.cleanup_crit_edge, %w83781d_detect_subclients.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %exit_remove_files ], [ -12, %entry.cleanup_crit_edge ], [ %47, %w83781d_detect_subclients.exit.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %retval.0.i.ph, %w83781d_detect_subclients.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83781d_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %conv = zext i16 %3 to i32
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
  br i1 %cmp.i.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %entry
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #9
  %and = and i32 %call6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end16, label %do.body

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83781d_detect.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83781d_detect, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !411

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83781d_detect.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.124) #9
  br label %cleanup

if.end16:                                         ; preds = %if.end5
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #9
  %and19 = and i32 %call17, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %land.lhs.true, label %if.end16.if.end56_crit_edge

if.end16.if.end56_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true:                                    ; preds = %if.end16
  %call17.fr = freeze i32 %call17
  %and21 = and i32 %call17.fr, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %switch.early.test, label %lor.lhs.false

switch.early.test:                                ; preds = %land.lhs.true
  %8 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %call18, label %switch.early.test.do.body37_crit_edge [
    i32 195, label %switch.early.test.if.end56_crit_edge
    i32 163, label %switch.early.test.if.end56_crit_edge276
  ]

switch.early.test.if.end56_crit_edge276:          ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

switch.early.test.if.end56_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

switch.early.test.do.body37_crit_edge:            ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

lor.lhs.false:                                    ; preds = %land.lhs.true
  %9 = zext i32 %call18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %call18, label %lor.lhs.false.do.body37_crit_edge [
    i32 92, label %lor.lhs.false.if.end56_crit_edge
    i32 18, label %lor.lhs.false.if.end56_crit_edge277
  ]

lor.lhs.false.if.end56_crit_edge277:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

lor.lhs.false.if.end56_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

lor.lhs.false.do.body37_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

do.body37:                                        ; preds = %lor.lhs.false.do.body37_crit_edge, %switch.early.test.do.body37_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83781d_detect.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83781d_detect, %cleanup)) #9
          to label %if.then51 [label %cleanup], !srcloc !411

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  %dev52 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83781d_detect.__UNIQUE_ID_ddebug335, ptr noundef %dev52, ptr noundef nonnull @.str.125) #9
  br label %cleanup

if.end56:                                         ; preds = %lor.lhs.false.if.end56_crit_edge, %lor.lhs.false.if.end56_crit_edge277, %switch.early.test.if.end56_crit_edge, %switch.early.test.if.end56_crit_edge276, %if.end16.if.end56_crit_edge
  %and57 = and i32 %call17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %call18)
  %cmp60 = icmp eq i32 %call18, 163
  %or.cond250 = select i1 %tobool58.not, i1 %cmp60, i1 false
  br i1 %or.cond250, label %if.end56.if.then68_crit_edge, label %lor.lhs.false62

if.end56.if.then68_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

lor.lhs.false62:                                  ; preds = %if.end56
  %tobool58.not.not = xor i1 %tobool58.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call18)
  %cmp66 = icmp eq i32 %call18, 92
  %or.cond251 = select i1 %tobool58.not.not, i1 %cmp66, i1 false
  br i1 %or.cond251, label %lor.lhs.false62.if.then68_crit_edge, label %lor.lhs.false62.if.end93_crit_edge

lor.lhs.false62.if.end93_crit_edge:               ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

lor.lhs.false62.if.then68_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then68

if.then68:                                        ; preds = %lor.lhs.false62.if.then68_crit_edge, %if.end56.if.then68_crit_edge
  %call69 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 72) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call69, i32 %conv)
  %cmp70.not = icmp eq i32 %call69, %conv
  br i1 %cmp70.not, label %if.then68.if.end93_crit_edge, label %do.body73

if.then68.if.end93_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end93

do.body73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83781d_detect.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83781d_detect, %cleanup)) #9
          to label %if.then87 [label %cleanup], !srcloc !411

if.then87:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #11
  %dev88 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83781d_detect.__UNIQUE_ID_ddebug336, ptr noundef %dev88, ptr noundef nonnull @.str.126) #9
  br label %cleanup

if.end93:                                         ; preds = %if.then68.if.end93_crit_edge, %lor.lhs.false62.if.end93_crit_edge
  %call94 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  %10 = trunc i32 %call94 to i8
  %11 = and i8 %10, 120
  %conv96 = or i8 %11, -128
  %call97 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 78, i8 noundef zeroext %conv96) #9
  %call98 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call98)
  %cmp99 = icmp eq i32 %call98, 92
  %12 = zext i32 %call98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %call98, label %do.body106 [
    i32 92, label %if.end93.if.end126_crit_edge
    i32 18, label %if.end93.if.end126_crit_edge278
  ]

if.end93.if.end126_crit_edge278:                  ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

if.end93.if.end126_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126

do.body106:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83781d_detect.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83781d_detect, %cleanup)) #9
          to label %if.then120 [label %cleanup], !srcloc !411

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #11
  %dev121 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83781d_detect.__UNIQUE_ID_ddebug337, ptr noundef %dev121, ptr noundef nonnull @.str.127) #9
  br label %cleanup

if.end126:                                        ; preds = %if.end93.if.end126_crit_edge, %if.end93.if.end126_crit_edge278
  %call127 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 88) #9
  %13 = zext i32 %call127 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %call127, label %if.end126.cleanup_crit_edge [
    i32 16, label %if.end126.land.lhs.true133_crit_edge
    i32 17, label %if.end126.land.lhs.true133_crit_edge279
    i32 48, label %land.lhs.true140
    i32 64, label %land.lhs.true147
    i32 49, label %if.end126.if.end193_crit_edge
  ]

if.end126.if.end193_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end126.land.lhs.true133_crit_edge279:          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true133

if.end126.land.lhs.true133_crit_edge:             ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true133

if.end126.cleanup_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true133:                                 ; preds = %if.end126.land.lhs.true133_crit_edge, %if.end126.land.lhs.true133_crit_edge279
  br i1 %cmp99, label %land.lhs.true133.if.end193_crit_edge, label %land.lhs.true133.cleanup_crit_edge

land.lhs.true133.cleanup_crit_edge:               ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true133.if.end193_crit_edge:             ; preds = %land.lhs.true133
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

land.lhs.true140:                                 ; preds = %if.end126
  br i1 %cmp99, label %land.lhs.true140.if.end193_crit_edge, label %land.lhs.true140.cleanup_crit_edge

land.lhs.true140.cleanup_crit_edge:               ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true140.if.end193_crit_edge:             ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

land.lhs.true147:                                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_const_cmp2(i16 45, i16 %3)
  %cmp151 = icmp eq i16 %3, 45
  %or.cond253 = select i1 %cmp99, i1 %cmp151, i1 false
  br i1 %or.cond253, label %land.lhs.true147.if.end193_crit_edge, label %land.lhs.true147.cleanup_crit_edge

land.lhs.true147.cleanup_crit_edge:               ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true147.if.end193_crit_edge:             ; preds = %land.lhs.true147
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

if.end193:                                        ; preds = %land.lhs.true147.if.end193_crit_edge, %land.lhs.true140.if.end193_crit_edge, %land.lhs.true133.if.end193_crit_edge, %if.end126.if.end193_crit_edge
  %client_name.0270 = phi ptr [ @.str.129, %land.lhs.true147.if.end193_crit_edge ], [ @.str.130, %if.end126.if.end193_crit_edge ], [ @.str.128, %land.lhs.true140.if.end193_crit_edge ], [ @.str, %land.lhs.true133.if.end193_crit_edge ]
  %call194 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %client_name.0270, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end193, %land.lhs.true147.cleanup_crit_edge, %land.lhs.true140.cleanup_crit_edge, %land.lhs.true133.cleanup_crit_edge, %if.end126.cleanup_crit_edge, %if.then120, %do.body106, %if.then87, %do.body73, %if.then51, %do.body37, %if.then14, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end193 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then14 ], [ -19, %if.then51 ], [ -19, %if.then87 ], [ -19, %if.then120 ], [ -19, %if.end126.cleanup_crit_edge ], [ -19, %land.lhs.true133.cleanup_crit_edge ], [ -19, %land.lhs.true140.cleanup_crit_edge ], [ -19, %land.lhs.true147.cleanup_crit_edge ], [ -19, %do.body ], [ -19, %do.body37 ], [ -19, %do.body73 ], [ -19, %do.body106 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwmon_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83781d_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add2 = add i32 %5, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !410
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end240_crit_edge

lor.lhs.false.if.end240_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83781d_update_device.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83781d_update_device, %do.end)) #9
          to label %if.then8 [label %do.end], !srcloc !411

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83781d_update_device.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %type = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %do.end
  %i.0430 = phi i32 [ 0, %do.end ], [ %i.0430.be, %for.body.backedge ]
  %9 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10 = icmp eq i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.0430)
  %cmp11 = icmp eq i32 %i.0430, 1
  %or.cond = select i1 %cmp10, i1 %cmp11, i1 false
  br i1 %or.cond, label %for.inc, label %if.end13

if.end13:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %i.0430)
  %cmp14 = icmp ult i32 %i.0430, 7
  %cond.v = select i1 %cmp14, i32 32, i32 1353
  %cond = add nuw nsw i32 %cond.v, %i.0430
  %conv = trunc i32 %cond to i16
  %call18 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext %conv)
  %conv19 = trunc i32 %call18 to i8
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 10, i32 %i.0430
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv19, ptr %arrayidx, align 1
  %mul = shl nuw i32 %i.0430, 1
  %cond29.v = select i1 %cmp14, i32 44, i32 1351
  %cond29 = add i32 %cond29.v, %mul
  %conv30 = trunc i32 %cond29 to i16
  %call31 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext %conv30)
  %conv32 = trunc i32 %call31 to i8
  %arrayidx33 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 12, i32 %i.0430
  %12 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv32, ptr %arrayidx33, align 1
  %cond44.v = select i1 %cmp14, i32 43, i32 1350
  %cond44 = add i32 %cond44.v, %mul
  %conv45 = trunc i32 %cond44 to i16
  %call46 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext %conv45)
  %conv47 = trunc i32 %call46 to i8
  %arrayidx48 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 11, i32 %i.0430
  %13 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv47, ptr %arrayidx48, align 1
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp50.not = icmp ne i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.0430)
  %cmp53 = icmp eq i32 %i.0430, 6
  %or.cond357 = select i1 %cmp50.not, i1 %cmp53, i1 false
  %inc = add nuw nsw i32 %i.0430, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 9
  %or.cond436 = select i1 %or.cond357, i1 true, i1 %exitcond.not
  br i1 %or.cond436, label %if.end13.for.end_crit_edge, label %if.end13.for.body.backedge_crit_edge

if.end13.for.body.backedge_crit_edge:             ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

if.end13.for.end_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc.old = add nuw nsw i32 %i.0430, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.old)
  %exitcond.not.old = icmp eq i32 %inc.old, 9
  br i1 %exitcond.not.old, label %for.inc.for.end_crit_edge, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.backedge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.backedge:                                ; preds = %for.inc.for.body.backedge_crit_edge, %if.end13.for.body.backedge_crit_edge
  %i.0430.be = phi i32 [ %inc.old, %for.inc.for.body.backedge_crit_edge ], [ %inc, %if.end13.for.body.backedge_crit_edge ]
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end13.for.end_crit_edge
  %call63 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 40)
  %conv64 = trunc i32 %call63 to i8
  %arrayidx65 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 13, i32 0
  %16 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv64, ptr %arrayidx65, align 1
  %call68 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 59)
  %conv69 = trunc i32 %call68 to i8
  %arrayidx70 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 14, i32 0
  %17 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv69, ptr %arrayidx70, align 1
  %call63.1 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 41)
  %conv64.1 = trunc i32 %call63.1 to i8
  %arrayidx65.1 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 13, i32 1
  %18 = ptrtoint ptr %arrayidx65.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv64.1, ptr %arrayidx65.1, align 1
  %call68.1 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 60)
  %conv69.1 = trunc i32 %call68.1 to i8
  %arrayidx70.1 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 14, i32 1
  %19 = ptrtoint ptr %arrayidx70.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv69.1, ptr %arrayidx70.1, align 1
  %call63.2 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 42)
  %conv64.2 = trunc i32 %call63.2 to i8
  %arrayidx65.2 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 13, i32 2
  %20 = ptrtoint ptr %arrayidx65.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv64.2, ptr %arrayidx65.2, align 1
  %call68.2 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 61)
  %conv69.2 = trunc i32 %call68.2 to i8
  %arrayidx70.2 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 14, i32 2
  %21 = ptrtoint ptr %arrayidx70.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv69.2, ptr %arrayidx70.2, align 1
  %22 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %23, label %for.cond82 [
    i32 0, label %for.end.if.end106_crit_edge
    i32 3, label %for.end.if.end106_crit_edge437
  ]

for.end.if.end106_crit_edge437:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

for.end.if.end106_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end106

for.cond82:                                       ; preds = %for.end
  %call88 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 91)
  %conv89 = trunc i32 %call88 to i8
  %arrayidx90 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 25, i32 0
  %25 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv89, ptr %arrayidx90, align 1
  %tobool95.not = icmp eq ptr %3, null
  %call88.1 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 90)
  %conv89.1 = trunc i32 %call88.1 to i8
  %arrayidx90.1 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 25, i32 1
  %26 = ptrtoint ptr %arrayidx90.1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv89.1, ptr %arrayidx90.1, align 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp92.not.1 = icmp ne i32 %28, 1
  %or.cond358.1 = select i1 %cmp92.not.1, i1 true, i1 %tobool95.not
  br i1 %or.cond358.1, label %for.cond82.for.end103_crit_edge, label %for.cond82.3

for.cond82.for.end103_crit_edge:                  ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end103

for.cond82.3:                                     ; preds = %for.cond82
  call void @__sanitizer_cov_trace_pc() #11
  %call88.2 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 94)
  %conv89.2 = trunc i32 %call88.2 to i8
  %arrayidx90.2 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 25, i32 2
  %29 = ptrtoint ptr %arrayidx90.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv89.2, ptr %arrayidx90.2, align 1
  %call88.3 = tail call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext 95)
  %conv89.3 = trunc i32 %call88.3 to i8
  %arrayidx90.3 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 25, i32 3
  %30 = ptrtoint ptr %arrayidx90.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv89.3, ptr %arrayidx90.3, align 1
  br label %for.end103

for.end103:                                       ; preds = %for.cond82.3, %for.cond82.for.end103_crit_edge
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %call12.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 92) #9
  tail call void @mutex_unlock(ptr noundef %lock.i) #9
  %33 = trunc i32 %call12.i.i to i8
  %34 = lshr i8 %33, 3
  %conv105 = and i8 %34, 1
  %pwm2_enable = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 26
  %35 = ptrtoint ptr %pwm2_enable to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv105, ptr %pwm2_enable, align 4
  br label %if.end106

if.end106:                                        ; preds = %for.end103, %for.end.if.end106_crit_edge, %for.end.if.end106_crit_edge437
  %lock.i360 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call12.i.i361 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %37, i8 noundef zeroext 39) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv108 = trunc i32 %call12.i.i361 to i8
  %temp = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 15
  %38 = ptrtoint ptr %temp to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv108, ptr %temp, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 4
  %call12.i.i363 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 57) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv110 = trunc i32 %call12.i.i363 to i8
  %temp_max = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 16
  %41 = ptrtoint ptr %temp_max to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv110, ptr %temp_max, align 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %call12.i.i365 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %43, i8 noundef zeroext 58) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv112 = trunc i32 %call12.i.i365 to i8
  %temp_max_hyst = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 17
  %44 = ptrtoint ptr %temp_max_hyst to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv112, ptr %temp_max_hyst, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %arrayidx.i.i = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 9, i32 0
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %46, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  %conv.i.i.i = trunc i32 %call.i.i.i to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i) #9
  %conv1.i.i.i = zext i16 %47 to i32
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 %call.i.i.i, i32 %conv1.i.i.i
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv114 = trunc i32 %cond.i.i.i to i16
  %temp_add = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 18
  %48 = ptrtoint ptr %temp_add to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv114, ptr %temp_add, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %49 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i46.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %50, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i.i)
  %cmp.i47.i.i = icmp slt i32 %call.i46.i.i, 0
  %conv.i48.i.i = trunc i32 %call.i46.i.i to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i.i) #9
  %conv1.i49.i.i = zext i16 %51 to i32
  %cond.i50.i.i = select i1 %cmp.i47.i.i, i32 %call.i46.i.i, i32 %conv1.i49.i.i
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv117 = trunc i32 %cond.i50.i.i to i16
  %temp_max_add = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 19
  %52 = ptrtoint ptr %temp_max_add to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv117, ptr %temp_max_add, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %53 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i41.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %54, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i.i)
  %cmp.i42.i.i = icmp slt i32 %call.i41.i.i, 0
  %conv.i43.i.i = trunc i32 %call.i41.i.i to i16
  %55 = tail call i16 @llvm.bswap.i16(i16 %conv.i43.i.i) #9
  %conv1.i44.i.i = zext i16 %55 to i32
  %cond.i45.i.i = select i1 %cmp.i42.i.i, i32 %call.i41.i.i, i32 %conv1.i44.i.i
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv120 = trunc i32 %cond.i45.i.i to i16
  %temp_max_hyst_add = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 20
  %56 = ptrtoint ptr %temp_max_hyst_add to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv120, ptr %temp_max_hyst_add, align 4
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %58)
  %cmp123.not = icmp eq i32 %58, 2
  br i1 %cmp123.not, label %if.end106.if.end138_crit_edge, label %if.then125

if.end106.if.end138_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end138

if.then125:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %arrayidx.i.i372 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 9, i32 1
  %59 = ptrtoint ptr %arrayidx.i.i372 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx.i.i372, align 4
  %call.i.i.i373 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %60, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i373)
  %cmp.i.i.i374 = icmp slt i32 %call.i.i.i373, 0
  %conv.i.i.i375 = trunc i32 %call.i.i.i373 to i16
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i375) #9
  %conv1.i.i.i376 = zext i16 %61 to i32
  %cond.i.i.i377 = select i1 %cmp.i.i.i374, i32 %call.i.i.i373, i32 %conv1.i.i.i376
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv127 = trunc i32 %cond.i.i.i377 to i16
  %arrayidx129 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 18, i32 1
  %62 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %conv127, ptr %arrayidx129, align 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %63 = ptrtoint ptr %arrayidx.i.i372 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx.i.i372, align 4
  %call.i46.i.i380 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %64, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i.i380)
  %cmp.i47.i.i381 = icmp slt i32 %call.i46.i.i380, 0
  %conv.i48.i.i382 = trunc i32 %call.i46.i.i380 to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i.i382) #9
  %conv1.i49.i.i383 = zext i16 %65 to i32
  %cond.i50.i.i384 = select i1 %cmp.i47.i.i381, i32 %call.i46.i.i380, i32 %conv1.i49.i.i383
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv131 = trunc i32 %cond.i50.i.i384 to i16
  %arrayidx133 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 19, i32 1
  %66 = ptrtoint ptr %arrayidx133 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv131, ptr %arrayidx133, align 2
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %67 = ptrtoint ptr %arrayidx.i.i372 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i.i372, align 4
  %call.i41.i.i387 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %68, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i.i387)
  %cmp.i42.i.i388 = icmp slt i32 %call.i41.i.i387, 0
  %conv.i43.i.i389 = trunc i32 %call.i41.i.i387 to i16
  %69 = tail call i16 @llvm.bswap.i16(i16 %conv.i43.i.i389) #9
  %conv1.i44.i.i390 = zext i16 %69 to i32
  %cond.i45.i.i391 = select i1 %cmp.i42.i.i388, i32 %call.i41.i.i387, i32 %conv1.i44.i.i390
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %conv135 = trunc i32 %cond.i45.i.i391 to i16
  %arrayidx137 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 20, i32 1
  %70 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv135, ptr %arrayidx137, align 2
  br label %if.end138

if.end138:                                        ; preds = %if.then125, %if.end106.if.end138_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %call12.i.i393 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %72, i8 noundef zeroext 71) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %73 = trunc i32 %call12.i.i393 to i8
  %conv141 = and i8 %73, 15
  %vid = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 22
  %74 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv141, ptr %vid, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %call12.i.i395 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %76, i8 noundef zeroext 73) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %77 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %vid, align 1
  %call142.tr = trunc i32 %call12.i.i395 to i8
  %79 = shl i8 %call142.tr, 4
  %80 = and i8 %79, 16
  %conv146 = or i8 %80, %78
  store i8 %conv146, ptr %vid, align 1
  %81 = lshr i8 %73, 4
  %conv149 = and i8 %81, 3
  %fan_div = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 21
  %82 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv149, ptr %fan_div, align 4
  %83 = lshr i8 %73, 6
  %arrayidx155 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 21, i32 1
  %84 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %arrayidx155, align 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %85 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %1, align 4
  %call12.i.i397 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %86, i8 noundef zeroext 75) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %87 = trunc i32 %call12.i.i397 to i8
  %88 = lshr i8 %87, 6
  %arrayidx161 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 21, i32 2
  %89 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %88, ptr %arrayidx161, align 2
  %90 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %type, align 4
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %91, label %if.then169 [
    i32 0, label %if.end138.if.end192_crit_edge
    i32 3, label %if.end138.if.end192_crit_edge438
  ]

if.end138.if.end192_crit_edge438:                 ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.end138.if.end192_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end192

if.then169:                                       ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %93 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %1, align 4
  %call12.i.i399 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %94, i8 noundef zeroext 93) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %95 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %fan_div, align 4
  %97 = trunc i32 %call12.i.i399 to i8
  %98 = lshr i8 %97, 3
  %99 = and i8 %98, 4
  %conv177 = or i8 %99, %96
  store i8 %conv177, ptr %fan_div, align 4
  %100 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx155, align 1
  %102 = lshr i8 %97, 4
  %103 = and i8 %102, 4
  %conv184 = or i8 %101, %103
  store i8 %conv184, ptr %arrayidx155, align 1
  %104 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %arrayidx161, align 2
  %106 = lshr i8 %97, 5
  %107 = and i8 %106, 4
  %conv191 = or i8 %105, %107
  store i8 %conv191, ptr %arrayidx161, align 2
  %108 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr = load i32, ptr %type, align 4
  br label %if.end192

if.end192:                                        ; preds = %if.then169, %if.end138.if.end192_crit_edge, %if.end138.if.end192_crit_edge438
  %109 = phi i32 [ %91, %if.end138.if.end192_crit_edge ], [ %91, %if.end138.if.end192_crit_edge438 ], [ %.pr, %if.then169 ]
  %110 = zext i32 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %109, label %if.else213 [
    i32 1, label %if.then196
    i32 2, label %if.then207
  ]

if.then196:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %112, i8 noundef zeroext 89) #9
  %call26.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %112, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %113 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %1, align 4
  %call.i.i402 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %114, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i403 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %114, i8 noundef zeroext 90) #9
  %call26.i.i404 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %114, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl199 = shl i32 %call1257.i.i403, 8
  %or200 = or i32 %shl199, %call1257.i.i
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %call.i.i406 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i407 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %116, i8 noundef zeroext 91) #9
  %call26.i.i408 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %116, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl202 = shl i32 %call1257.i.i407, 16
  %or203 = or i32 %or200, %shl202
  br label %if.end220

if.then207:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %call.i.i410 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i411 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %118, i8 noundef zeroext 89) #9
  %call26.i.i412 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %118, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  %call.i.i414 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %120, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i415 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %120, i8 noundef zeroext 90) #9
  %call26.i.i416 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %120, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl210 = shl i32 %call1257.i.i415, 8
  %or211 = or i32 %shl210, %call1257.i.i411
  br label %if.end220

if.else213:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %call12.i.i418 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %122, i8 noundef zeroext 65) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %call12.i.i420 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %124, i8 noundef zeroext 66) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl216 = shl i32 %call12.i.i420, 8
  %or217 = or i32 %shl216, %call12.i.i418
  br label %if.end220

if.end220:                                        ; preds = %if.else213, %if.then207, %if.then196
  %or211.sink = phi i32 [ %or211, %if.then207 ], [ %or217, %if.else213 ], [ %or203, %if.then196 ]
  %alarms212 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 23
  %125 = ptrtoint ptr %alarms212 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %or211.sink, ptr %alarms212, align 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %126 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %1, align 4
  %call12.i.i422 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %127, i8 noundef zeroext 87) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl222 = shl i32 %call12.i.i422, 8
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %128 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %1, align 4
  %call12.i.i424 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %129, i8 noundef zeroext 86) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %add224 = add i32 %call12.i.i424, %shl222
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 24
  %130 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %add224, ptr %beep_mask, align 4
  %131 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %type, align 4
  %133 = zext i32 %132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %132, label %if.then232 [
    i32 0, label %if.end220.if.end237_crit_edge
    i32 3, label %if.end220.if.end237_crit_edge439
  ]

if.end220.if.end237_crit_edge439:                 ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.end220.if.end237_crit_edge:                    ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end237

if.then232:                                       ; preds = %if.end220
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_lock_nested(ptr noundef %lock.i360, i32 noundef 0) #9
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %call.i.i426 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i427 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %135, i8 noundef zeroext 83) #9
  %call26.i.i428 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %135, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  tail call void @mutex_unlock(ptr noundef %lock.i360) #9
  %shl234 = shl i32 %call1257.i.i427, 16
  %136 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %beep_mask, align 4
  %or236 = or i32 %137, %shl234
  store i32 %or236, ptr %beep_mask, align 4
  br label %if.end237

if.end237:                                        ; preds = %if.then232, %if.end220.if.end237_crit_edge, %if.end220.if.end237_crit_edge439
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %138 = load volatile i32, ptr @jiffies, align 128
  %139 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %last_updated, align 4
  %valid239 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 7
  %140 = ptrtoint ptr %valid239 to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 1, ptr %valid239, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.end237, %lor.lhs.false.if.end240_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @w83781d_read_value(ptr noundef %data, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.w83781d_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = lshr i16 %reg, 8
  %3 = and i16 %2, 15
  %and.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i = icmp ugt i16 %3, 2
  br i1 %cmp.i, label %if.then25.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.end22.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %sub.i = add nsw i32 %and.i, -1
  %arrayidx.i = getelementptr %struct.w83781d_data, ptr %data, i32 0, i32 9, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %trunc.i = trunc i16 %reg to i8
  %7 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %trunc.i, label %sw.default.i [
    i8 80, label %sw.bb.i
    i8 82, label %sw.bb16.i
    i8 83, label %sw.bb18.i
  ]

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  %conv.i.i = trunc i32 %call.i.i to i16
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #9
  %conv1.i.i = zext i16 %8 to i32
  %cond.i.i = select i1 %cmp.i.i, i32 %call.i.i, i32 %conv1.i.i
  br label %w83781d_read_value_i2c.exit

sw.bb16.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 1) #9
  br label %w83781d_read_value_i2c.exit

sw.bb18.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i41.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41.i)
  %cmp.i42.i = icmp slt i32 %call.i41.i, 0
  %conv.i43.i = trunc i32 %call.i41.i to i16
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv.i43.i) #9
  %conv1.i44.i = zext i16 %9 to i32
  %cond.i45.i = select i1 %cmp.i42.i, i32 %call.i41.i, i32 %conv1.i44.i
  br label %w83781d_read_value_i2c.exit

sw.default.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i46.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %6, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %cmp.i47.i = icmp slt i32 %call.i46.i, 0
  %conv.i48.i = trunc i32 %call.i46.i to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i48.i) #9
  %conv1.i49.i = zext i16 %10 to i32
  %cond.i50.i = select i1 %cmp.i47.i, i32 %call.i46.i, i32 %conv1.i49.i
  br label %w83781d_read_value_i2c.exit

if.end22.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.i = trunc i16 %reg to i8
  %call12.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv11.i) #9
  br label %w83781d_read_value_i2c.exit

if.then25.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i = trunc i16 %3 to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 78, i8 noundef zeroext %conv3.i) #9
  %conv1156.i = trunc i16 %reg to i8
  %call1257.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv1156.i) #9
  %call26.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  br label %w83781d_read_value_i2c.exit

w83781d_read_value_i2c.exit:                      ; preds = %if.then25.i, %if.end22.i, %sw.default.i, %sw.bb18.i, %sw.bb16.i, %sw.bb.i
  %res.054.i = phi i32 [ %call1257.i, %if.then25.i ], [ %call12.i, %if.end22.i ], [ %cond.i.i, %sw.bb.i ], [ %call17.i, %sw.bb16.i ], [ %cond.i45.i, %sw.bb18.i ], [ %cond.i50.i, %sw.default.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret i32 %res.054.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_min(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  %div41 = lshr i32 %add, 4
  %7 = call i32 @llvm.umin.i32(i32 %div41, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 12, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp9 = icmp slt i32 %3, 7
  %mul = shl i32 %3, 1
  %cond17.v = select i1 %cmp9, i32 44, i32 1351
  %cond17 = add i32 %cond17.v, %mul
  %conv18 = trunc i32 %cond17 to i16
  %9 = trunc i32 %7 to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv18, i16 noundef zeroext %9)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @w83781d_write_value(ptr noundef %data, i16 noundef zeroext %reg, i16 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.w83781d_data, ptr %data, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = lshr i16 %reg, 8
  %3 = and i16 %2, 15
  %and.i = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %cmp.i = icmp ugt i16 %3, 2
  br i1 %cmp.i, label %if.then29.i, label %if.end.i

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %4 = icmp eq i16 %3, 0
  br i1 %4, label %if.end26.i, label %if.else.i

if.else.i:                                        ; preds = %if.end.i
  %sub.i = add nsw i32 %and.i, -1
  %arrayidx.i = getelementptr %struct.w83781d_data, ptr %data, i32 0, i32 9, i32 %sub.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.i, align 4
  %trunc.i = trunc i16 %reg to i8
  %7 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %trunc.i, label %if.else.i.w83781d_write_value_i2c.exit_crit_edge [
    i8 82, label %sw.bb.i
    i8 83, label %sw.bb22.i
    i8 85, label %sw.bb24.i
  ]

if.else.i.w83781d_write_value_i2c.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83781d_write_value_i2c.exit

sw.bb.i:                                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv20.i = trunc i16 %value to i8
  %call21.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %6, i8 noundef zeroext 1, i8 noundef zeroext %conv20.i) #9
  br label %w83781d_write_value_i2c.exit

sw.bb22.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = tail call i16 @llvm.bswap.i16(i16 %value) #9
  %call.i.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %6, i8 noundef zeroext 2, i16 noundef zeroext %8) #9
  br label %w83781d_write_value_i2c.exit

sw.bb24.i:                                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i16 @llvm.bswap.i16(i16 %value) #9
  %call.i1.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %6, i8 noundef zeroext 3, i16 noundef zeroext %9) #9
  br label %w83781d_write_value_i2c.exit

if.end26.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.i = trunc i16 %reg to i8
  %conv14.i = trunc i16 %value to i8
  %call15.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv11.i, i8 noundef zeroext %conv14.i) #9
  br label %w83781d_write_value_i2c.exit

if.then29.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv3.i = trunc i16 %3 to i8
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 78, i8 noundef zeroext %conv3.i) #9
  %conv115.i = trunc i16 %reg to i8
  %conv146.i = trunc i16 %value to i8
  %call157.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext %conv115.i, i8 noundef zeroext %conv146.i) #9
  %call30.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  br label %w83781d_write_value_i2c.exit

w83781d_write_value_i2c.exit:                     ; preds = %if.then29.i, %if.end26.i, %sw.bb24.i, %sw.bb22.i, %sw.bb.i, %if.else.i.w83781d_write_value_i2c.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 11, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  %div41 = lshr i32 %add, 4
  %7 = call i32 @llvm.umin.i32(i32 %div41, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 11, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %cmp9 = icmp slt i32 %3, 7
  %mul = shl i32 %3, 1
  %cond17.v = select i1 %cmp9, i32 43, i32 1350
  %cond17 = add i32 %cond17.v, %mul
  %conv18 = trunc i32 %cond17 to i16
  %9 = trunc i32 %7 to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv18, i16 noundef zeroext %9)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_mask, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %bit = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit) #9
  %4 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %bit, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %bit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %tobool2.not = icmp ult i32 %6, 2
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  %shl7 = shl nuw i32 1, %3
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 24
  %9 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %beep_mask, align 4
  %or = or i32 %10, %shl7
  store i32 %or, ptr %beep_mask, align 4
  br label %if.end10

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl7, -1
  %beep_mask8 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 24
  %11 = ptrtoint ptr %beep_mask8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %beep_mask8, align 4
  %and9 = and i32 %12, %neg
  store i32 %and9, ptr %beep_mask8, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp slt i32 %3, 8
  br i1 %cmp, label %if.then11, label %if.else28

if.then11:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call12.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %14, i8 noundef zeroext 86) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not = icmp eq i32 %16, 0
  %shl20 = shl nuw nsw i32 1, %3
  %or17 = or i32 %call12.i.i, %shl20
  %neg21 = xor i32 %shl20, -1
  %and23 = and i32 %call12.i.i, %neg21
  %reg.0.in = select i1 %tobool13.not, i32 %and23, i32 %or17
  %17 = trunc i32 %reg.0.in to i8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 86, i8 noundef zeroext %17) #9
  br label %if.end71

if.else28:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp29 = icmp ult i32 %3, 16
  %lock.i105 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i105, i32 noundef 0) #9
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  br i1 %cmp29, label %if.then31, label %if.else50

if.then31:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i.i106 = call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 87) #9
  call void @mutex_unlock(ptr noundef %lock.i105) #9
  %22 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool34.not = icmp eq i32 %23, 0
  %sub41 = add nsw i32 %3, -8
  %shl42 = shl nuw nsw i32 1, %sub41
  %or38 = or i32 %call12.i.i106, %shl42
  %neg43 = xor i32 %shl42, -1
  %and45 = and i32 %call12.i.i106, %neg43
  %reg.1.in = select i1 %tobool34.not, i32 %and45, i32 %or38
  %24 = trunc i32 %reg.1.in to i8
  call void @mutex_lock_nested(ptr noundef %lock.i105, i32 noundef 0) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call15.i.i109 = call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 87, i8 noundef zeroext %24) #9
  br label %if.end71

if.else50:                                        ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call1257.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %21, i8 noundef zeroext 83) #9
  %call26.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  call void @mutex_unlock(ptr noundef %lock.i105) #9
  %27 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool53.not = icmp eq i32 %28, 0
  %sub61 = add nsw i32 %3, -16
  %shl62 = shl nuw i32 1, %sub61
  %or58 = or i32 %call1257.i.i, %shl62
  %neg63 = xor i32 %shl62, -1
  %and65 = and i32 %call1257.i.i, %neg63
  %reg.2.in = select i1 %tobool53.not, i32 %and65, i32 %or58
  %29 = trunc i32 %reg.2.in to i8
  call void @mutex_lock_nested(ptr noundef %lock.i105, i32 noundef 0) #9
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %call.i.i112 = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call157.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 83, i8 noundef zeroext %29) #9
  %call30.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %31, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  br label %if.end71

if.end71:                                         ; preds = %if.else50, %if.then31, %if.then11
  %lock.i105.sink = phi ptr [ %lock.i105, %if.then31 ], [ %lock.i105, %if.else50 ], [ %lock.i, %if.then11 ]
  call void @mutex_unlock(ptr noundef %lock.i105.sink) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end71 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %3, label %if.end6.i [
    i8 0, label %entry.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %if.then5.i
  ]

entry.FAN_FROM_REG.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 21, i32 %1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %conv.i = zext i8 %3 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %if.end6.i, %if.then5.i, %entry.FAN_FROM_REG.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ %div8.i, %if.end6.i ], [ -1, %entry.FAN_FROM_REG.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %3, label %if.end6.i [
    i8 0, label %entry.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %if.then5.i
  ]

entry.FAN_FROM_REG.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.then5.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.end6.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx2 = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 21, i32 %1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %6 to i32
  %conv.i = zext i8 %3 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %if.end6.i, %if.then5.i, %entry.FAN_FROM_REG.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ %div8.i, %if.end6.i ], [ -1, %entry.FAN_FROM_REG.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %retval.0.i)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 21, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  %9 = call i32 @llvm.smax.i32(i32 %6, i32 1) #9
  %10 = call i32 @llvm.umin.i32(i32 %9, i32 1000000) #9
  %mul.i = shl i32 %10, %conv
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %11 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #9
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 254) #9
  %conv.i = trunc i32 %12 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx3 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 14, i32 %3
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx3, align 1
  %14 = trunc i32 %3 to i16
  %conv4 = add i16 %14, 59
  %conv7 = zext i8 %retval.0.i to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv4, i16 noundef zeroext %conv7)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_div(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 21, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_div(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 14, i32 %3
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx, align 1
  %arrayidx2 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 21, i32 %3
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %6, label %if.end6.i [
    i8 0, label %if.end.FAN_FROM_REG.exit_crit_edge
    i8 -1, label %if.then5.i
  ]

if.end.FAN_FROM_REG.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.then5.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_FROM_REG.exit

if.end6.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2, align 1
  %conv = zext i8 %9 to i32
  %conv.i = zext i8 %6 to i32
  %mul.i = shl i32 %conv.i, %conv
  %div8.i = sdiv i32 1350000, %mul.i
  br label %FAN_FROM_REG.exit

FAN_FROM_REG.exit:                                ; preds = %if.end6.i, %if.then5.i, %if.end.FAN_FROM_REG.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.then5.i ], [ %div8.i, %if.end6.i ], [ -1, %if.end.FAN_FROM_REG.exit_crit_edge ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %type = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  %14 = call i32 @llvm.smax.i32(i32 %11, i32 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.i = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp2.i = icmp eq i32 %13, 3
  %15 = or i1 %cmp1.i, %cmp2.i
  %16 = select i1 %15, i32 8, i32 128
  %17 = call i32 @llvm.umin.i32(i32 %14, i32 %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp1122.i = icmp ult i32 %17, 2
  br i1 %cmp1122.i, label %FAN_FROM_REG.exit.DIV_TO_REG.exit_crit_edge, label %if.end.i

FAN_FROM_REG.exit.DIV_TO_REG.exit_crit_edge:      ; preds = %FAN_FROM_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i:                                         ; preds = %FAN_FROM_REG.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp11.i = icmp ult i32 %17, 4
  br i1 %cmp11.i, label %if.end.i.DIV_TO_REG.exit_crit_edge, label %if.end.i.1

if.end.i.DIV_TO_REG.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp11.i.1 = icmp ult i32 %17, 8
  br i1 %cmp11.i.1, label %if.end.i.1.DIV_TO_REG.exit_crit_edge, label %if.end.i.2

if.end.i.1.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %17)
  %cmp11.i.2 = icmp ult i32 %17, 16
  br i1 %cmp11.i.2, label %if.end.i.2.DIV_TO_REG.exit_crit_edge, label %if.end.i.3

if.end.i.2.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %cmp11.i.3 = icmp ult i32 %17, 32
  br i1 %cmp11.i.3, label %if.end.i.3.DIV_TO_REG.exit_crit_edge, label %if.end.i.4

if.end.i.3.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %17)
  %cmp11.i.4 = icmp ult i32 %17, 64
  br i1 %cmp11.i.4, label %if.end.i.4.DIV_TO_REG.exit_crit_edge, label %if.end.i.5

if.end.i.4.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %DIV_TO_REG.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %17)
  %cmp11.i.5 = icmp ult i32 %17, 128
  %spec.select = select i1 %cmp11.i.5, i8 6, i8 7
  br label %DIV_TO_REG.exit

DIV_TO_REG.exit:                                  ; preds = %if.end.i.5, %if.end.i.4.DIV_TO_REG.exit_crit_edge, %if.end.i.3.DIV_TO_REG.exit_crit_edge, %if.end.i.2.DIV_TO_REG.exit_crit_edge, %if.end.i.1.DIV_TO_REG.exit_crit_edge, %if.end.i.DIV_TO_REG.exit_crit_edge, %FAN_FROM_REG.exit.DIV_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %FAN_FROM_REG.exit.DIV_TO_REG.exit_crit_edge ], [ 1, %if.end.i.DIV_TO_REG.exit_crit_edge ], [ 2, %if.end.i.1.DIV_TO_REG.exit_crit_edge ], [ 3, %if.end.i.2.DIV_TO_REG.exit_crit_edge ], [ 4, %if.end.i.3.DIV_TO_REG.exit_crit_edge ], [ 5, %if.end.i.4.DIV_TO_REG.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %18 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %i.0.lcssa.i, ptr %arrayidx2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %conv8 = select i1 %cmp, i16 75, i16 71
  %call9 = call fastcc i32 @w83781d_read_value(ptr noundef %1, i16 noundef zeroext %conv8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp eq i32 %3, 0
  %cond12 = select i1 %cmp10, i32 207, i32 63
  %and = and i32 %call9, %cond12
  %19 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx2, align 1
  %21 = and i8 %20, 3
  %and16 = zext i8 %21 to i32
  %cond19 = select i1 %cmp10, i32 4, i32 6
  %shl20 = shl nuw nsw i32 %and16, %cond19
  %or = or i32 %shl20, %and
  %22 = trunc i32 %or to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv8, i16 noundef zeroext %22)
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %24, label %if.then34 [
    i32 0, label %DIV_TO_REG.exit.if.end48_crit_edge
    i32 3, label %DIV_TO_REG.exit.if.end48_crit_edge108
  ]

DIV_TO_REG.exit.if.end48_crit_edge108:            ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

DIV_TO_REG.exit.if.end48_crit_edge:               ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then34:                                        ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %call12.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %27, i8 noundef zeroext 93) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %add = add i32 %3, 5
  %shl36 = shl nuw i32 1, %add
  %neg = xor i32 %shl36, -1
  %and37 = and i32 %call12.i.i, %neg
  %28 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx2, align 1
  %30 = and i8 %29, 4
  %and41 = zext i8 %30 to i32
  %add42 = add i32 %3, 3
  %shl43 = shl i32 %and41, %add42
  %or44 = or i32 %shl43, %and37
  %31 = trunc i32 %or44 to i8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext 93, i8 noundef zeroext %31) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then34, %DIV_TO_REG.exit.if.end48_crit_edge, %DIV_TO_REG.exit.if.end48_crit_edge108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, 0
  br i1 %cmp.i, label %if.end48.FAN_TO_REG.exit_crit_edge, label %if.end.i106

if.end48.FAN_TO_REG.exit_crit_edge:               ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %FAN_TO_REG.exit

if.end.i106:                                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx2, align 1
  %conv51 = zext i8 %35 to i32
  %36 = call i32 @llvm.smax.i32(i32 %retval.0.i, i32 1) #9
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 1000000) #9
  %mul.i103 = shl i32 %37, %conv51
  %div8.i104 = sdiv i32 %mul.i103, 2
  %add.i = add nsw i32 %div8.i104, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i103
  %38 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #9
  %39 = call i32 @llvm.umin.i32(i32 %38, i32 254) #9
  %conv.i105 = trunc i32 %39 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i106, %if.end48.FAN_TO_REG.exit_crit_edge
  %retval.0.i107 = phi i8 [ %conv.i105, %if.end.i106 ], [ -1, %if.end48.FAN_TO_REG.exit_crit_edge ]
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %retval.0.i107, ptr %arrayidx, align 1
  %41 = trunc i32 %3 to i16
  %conv57 = add i16 %41, 59
  %conv60 = zext i8 %retval.0.i107 to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv57, i16 noundef zeroext %conv60)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %1, -2
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 18, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %mul.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %temp = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %temp to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %temp, align 1
  %conv = sext i8 %6 to i32
  %mul = mul nsw i32 %conv, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %1, -2
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 19, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %mul.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %temp_max = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 16
  %5 = ptrtoint ptr %temp_max to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %temp_max, align 2
  %conv = sext i8 %6 to i32
  %mul = mul nsw i32 %conv, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -55000) #9
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 125000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.i = icmp slt i32 %8, 0
  %cond8.i = select i1 %cmp7.i, i32 -250, i32 250
  %add.i = add nsw i32 %cond8.i, %8
  %div.i = sdiv i32 %add.i, 500
  %div.tr.i = trunc i32 %div.i to i16
  %conv.i = shl nsw i16 %div.tr.i, 7
  %sub = add nsw i32 %3, -2
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 19, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp4 = icmp eq i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5 = icmp eq i32 %3, 2
  %phi.cast = select i1 %cmp5, i16 341, i16 57
  %cond6 = select i1 %cmp4, i16 597, i16 %phi.cast
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %cond6, i16 noundef zeroext %conv.i)
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127000, i32 %6)
  %cmp12 = icmp sgt i32 %6, -127000
  %div = sdiv i32 %6, 1000
  %10 = call i32 @llvm.smin.i32(i32 %div, i32 128)
  %11 = trunc i32 %10 to i8
  %conv25 = select i1 %cmp12, i8 %11, i8 -127
  %temp_max = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 16
  %12 = ptrtoint ptr %temp_max to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %temp_max, align 2
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 57, i8 noundef zeroext %conv25) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then2
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end39 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max_hyst(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add nsw i32 %1, -2
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 20, i32 %sub
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 128
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 500
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %mul.i)
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %temp_max_hyst = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 17
  %5 = ptrtoint ptr %temp_max_hyst to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %temp_max_hyst, align 1
  %conv = sext i8 %6 to i32
  %mul = mul nsw i32 %conv, 1000
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call3, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_max_hyst(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -55000) #9
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 125000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7.i = icmp slt i32 %8, 0
  %cond8.i = select i1 %cmp7.i, i32 -250, i32 250
  %add.i = add nsw i32 %cond8.i, %8
  %div.i = sdiv i32 %add.i, 500
  %div.tr.i = trunc i32 %div.i to i16
  %conv.i = shl nsw i16 %div.tr.i, 7
  %sub = add nsw i32 %3, -2
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 20, i32 %sub
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv.i, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp4 = icmp eq i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp5 = icmp eq i32 %3, 2
  %phi.cast = select i1 %cmp5, i16 339, i16 58
  %cond6 = select i1 %cmp4, i16 595, i16 %phi.cast
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %cond6, i16 noundef zeroext %conv.i)
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127000, i32 %6)
  %cmp12 = icmp sgt i32 %6, -127000
  %div = sdiv i32 %6, 1000
  %10 = call i32 @llvm.smin.i32(i32 %div, i32 128)
  %11 = trunc i32 %10 to i8
  %conv25 = select i1 %cmp12, i8 %11, i8 -127
  %temp_max_hyst = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %temp_max_hyst to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv25, ptr %temp_max_hyst, align 1
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 58, i8 noundef zeroext %conv25) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then2
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end39 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 22
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 1
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %call1)
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 4
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %5 = call i32 @llvm.umin.i32(i32 %4, i32 255)
  %conv = trunc i32 %5 to i8
  %vrm = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 28
  %6 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %vrm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 23
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %type = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_mask, align 4
  %neg = and i32 %3, 32767
  %and = xor i32 %neg, 32767
  %and2 = and i32 %3, 16744447
  %cond = select i1 %cmp, i32 %and, i32 %and2
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.2, i32 noundef %cond)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @beep_mask_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %beep_mask, align 4
  %and = and i32 %4, 32768
  %type = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp eq i32 %6, 3
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %neg = and i32 %8, 32767
  %and2 = xor i32 %neg, 32767
  %and3 = and i32 %8, 16744447
  %cond = select i1 %cmp, i32 %and2, i32 %and3
  %or = or i32 %cond, %and
  %9 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %or, ptr %beep_mask, align 4
  %10 = trunc i32 %cond to i8
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 86, i8 noundef zeroext %10) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %13 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %beep_mask, align 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %17 = lshr i32 %14, 8
  %conv14.i.i42 = trunc i32 %17 to i8
  %call15.i.i43 = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 87, i8 noundef zeroext %conv14.i.i42) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %19, label %if.then18 [
    i32 0, label %if.end.if.end24_crit_edge
    i32 3, label %if.end.if.end24_crit_edge45
  ]

if.end.if.end24_crit_edge45:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %beep_mask, align 4
  %shr20 = lshr i32 %22, 16
  %23 = trunc i32 %shr20 to i8
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 78, i8 noundef zeroext 4) #9
  %call157.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 83, i8 noundef zeroext %23) #9
  %call30.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %25, i8 noundef zeroext 78, i8 noundef zeroext 0) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end.if.end24_crit_edge, %if.end.if.end24_crit_edge45
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end24 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp3_alarm(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %type = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %cond = select i1 %cmp, i32 5, i32 13
  %alarms = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 23
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %cond
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp3_beep(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %type = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %cond = select i1 %cmp, i32 5, i32 13
  %beep_mask = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 24
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_mask, align 4
  %shr = lshr i32 %3, %cond
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 25, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 25, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx9 = getelementptr [4 x i8], ptr @W83781D_REG_PWM, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx9, align 1
  %conv10 = zext i8 %10 to i16
  %11 = trunc i32 %7 to i16
  call fastcc void @w83781d_write_value(ptr noundef %1, i16 noundef zeroext %conv10, i16 noundef zeroext %11)
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm2_enable_show(ptr noundef %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %pwm2_enable = getelementptr inbounds %struct.w83781d_data, ptr %call, i32 0, i32 26
  %0 = ptrtoint ptr %pwm2_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm2_enable, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm2_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp ult i32 %4, 2
  br i1 %switch, label %sw.bb, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call12.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 92) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %and = and i32 %call12.i.i, 247
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shl = shl i32 %8, 3
  %or = or i32 %shl, %and
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv14.i.i = trunc i32 %or to i8
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %10, i8 noundef zeroext 92, i8 noundef zeroext %conv14.i.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %call12.i.i28 = call i32 @i2c_smbus_read_byte_data(ptr noundef %12, i8 noundef zeroext 77) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %and5 = and i32 %call12.i.i28, 239
  %13 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  %shl7 = select i1 %tobool6.not, i32 16, i32 0
  %or8 = or i32 %shl7, %and5
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %conv14.i.i30 = trunc i32 %or8 to i8
  %call15.i.i31 = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 77, i8 noundef zeroext %conv14.i.i30) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %conv11 = trunc i32 %18 to i8
  %pwm2_enable = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 26
  %19 = ptrtoint ptr %pwm2_enable to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv11, ptr %pwm2_enable, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %count, %sw.bb ], [ -22, %if.end.cleanup.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_sensor(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83781d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83781d_data, ptr %call, i32 0, i32 27, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_sensor(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !409
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 6
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %6, label %do.end43 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
    i32 3435, label %do.end
    i32 4, label %if.end.sw.bb30_crit_edge
  ]

if.end.sw.bb30_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb30

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %call12.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 93) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %arrayidx = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = trunc i32 %call12.i.i to i8
  %conv14.i.i = or i8 %11, %14
  %call15.i.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %13, i8 noundef zeroext 93, i8 noundef zeroext %conv14.i.i) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call12.i.i80 = call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext 89) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %arrayidx7 = getelementptr [3 x i8], ptr @BIT_SCFG2, i32 0, i32 %3
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx7, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %21 = trunc i32 %call12.i.i80 to i8
  %conv14.i.i82 = or i8 %18, %21
  %call15.i.i83 = call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 89, i8 noundef zeroext %conv14.i.i82) #9
  call void @mutex_unlock(ptr noundef %lock.i) #9
  %22 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %val, align 4
  %conv12 = trunc i32 %23 to i16
  %arrayidx13 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 27, i32 %3
  %24 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv12, ptr %arrayidx13, align 2
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock.i84 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i84, i32 noundef 0) #9
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call12.i.i85 = call i32 @i2c_smbus_read_byte_data(ptr noundef %26, i8 noundef zeroext 93) #9
  call void @mutex_unlock(ptr noundef %lock.i84) #9
  %arrayidx16 = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %3
  %27 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx16, align 1
  call void @mutex_lock_nested(ptr noundef %lock.i84, i32 noundef 0) #9
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 4
  %31 = trunc i32 %call12.i.i85 to i8
  %conv14.i.i87 = or i8 %28, %31
  %call15.i.i88 = call i32 @i2c_smbus_write_byte_data(ptr noundef %30, i8 noundef zeroext 93, i8 noundef zeroext %conv14.i.i87) #9
  call void @mutex_unlock(ptr noundef %lock.i84) #9
  call void @mutex_lock_nested(ptr noundef %lock.i84, i32 noundef 0) #9
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call12.i.i90 = call i32 @i2c_smbus_read_byte_data(ptr noundef %33, i8 noundef zeroext 89) #9
  call void @mutex_unlock(ptr noundef %lock.i84) #9
  %arrayidx22 = getelementptr [3 x i8], ptr @BIT_SCFG2, i32 0, i32 %3
  %34 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx22, align 1
  %conv23 = zext i8 %35 to i32
  %neg = xor i32 %conv23, -1
  %and = and i32 %call12.i.i90, %neg
  call void @mutex_lock_nested(ptr noundef %lock.i84, i32 noundef 0) #9
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %conv14.i.i92 = trunc i32 %and to i8
  %call15.i.i93 = call i32 @i2c_smbus_write_byte_data(ptr noundef %37, i8 noundef zeroext 89, i8 noundef zeroext %conv14.i.i92) #9
  call void @mutex_unlock(ptr noundef %lock.i84) #9
  %38 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %val, align 4
  %conv26 = trunc i32 %39 to i16
  %arrayidx28 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 27, i32 %3
  %40 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv26, ptr %arrayidx28, align 2
  br label %sw.epilog

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.93, i32 noundef 3435) #12
  br label %sw.bb30

sw.bb30:                                          ; preds = %do.end, %if.end.sw.bb30_crit_edge
  %lock.i94 = getelementptr inbounds %struct.w83781d_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %lock.i94, i32 noundef 0) #9
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call12.i.i95 = call i32 @i2c_smbus_read_byte_data(ptr noundef %42, i8 noundef zeroext 93) #9
  call void @mutex_unlock(ptr noundef %lock.i94) #9
  %arrayidx32 = getelementptr [3 x i8], ptr @BIT_SCFG1, i32 0, i32 %3
  %43 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %44 to i32
  %neg34 = xor i32 %conv33, -1
  %and35 = and i32 %call12.i.i95, %neg34
  call void @mutex_lock_nested(ptr noundef %lock.i94, i32 noundef 0) #9
  %45 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %1, align 4
  %conv14.i.i97 = trunc i32 %and35 to i8
  %call15.i.i98 = call i32 @i2c_smbus_write_byte_data(ptr noundef %46, i8 noundef zeroext 93, i8 noundef zeroext %conv14.i.i97) #9
  call void @mutex_unlock(ptr noundef %lock.i94) #9
  %47 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val, align 4
  %conv38 = trunc i32 %48 to i16
  %arrayidx40 = getelementptr %struct.w83781d_data, ptr %1, i32 0, i32 27, i32 %3
  %49 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv38, ptr %arrayidx40, align 2
  br label %sw.epilog

do.end43:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %6) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end43, %sw.bb30, %sw.bb14, %sw.bb
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwmon_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_chmod_file(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 243)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !63, !65, !67, !68, !70, !71, !72, !73, !74, !75, !77, !78, !80, !81, !83, !84, !85, !86, !87, !88, !90, !91, !93, !94, !96, !97, !98, !99, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !113, !114, !116, !117, !119, !120, !122, !123, !124, !125, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !185, !186, !187, !189, !190, !192, !193, !195, !196, !197, !198, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !225, !227, !228, !229, !230, !231, !232, !234, !235, !237, !238, !240, !242, !244, !245, !246, !247, !248, !249, !251, !252, !254, !255, !257, !258, !259, !260, !261, !262, !264, !265, !267, !268, !270, !272, !274, !275, !276, !277, !278, !279, !281, !282, !284, !285, !287, !289, !291, !292, !294, !295, !297, !298, !300, !302, !304, !305, !307, !308, !310, !312, !314, !315, !317, !318, !319, !320, !321, !322, !324, !325, !326, !327, !329, !331, !333, !334, !336, !337, !339, !340, !342, !343, !345, !346, !347, !348, !350, !351, !352, !354, !355, !356, !358, !359, !360, !361, !362, !364, !365, !366, !368, !369, !370, !372, !374, !376, !378, !379, !380, !382, !383, !385, !386, !388, !389, !391, !393, !395, !397, !398}
!llvm.module.flags = !{!400, !401, !402, !403, !404, !405, !406, !407}
!llvm.ident = !{!408}

!0 = !{ptr @__param_force_subclients, !1, !"__param_force_subclients", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83781d.c", i32 53, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_subclientstype292, !1, !"__UNIQUE_ID_force_subclientstype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_subclients293, !4, !"__UNIQUE_ID_force_subclients293", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83781d.c", i32 54, i32 1}
!5 = !{ptr @__param_reset, !6, !"__param_reset", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83781d.c", i32 58, i32 1}
!7 = !{ptr @__UNIQUE_ID_resettype294, !6, !"__UNIQUE_ID_resettype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reset295, !9, !"__UNIQUE_ID_reset295", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83781d.c", i32 59, i32 1}
!10 = !{ptr @__param_init, !11, !"__param_init", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83781d.c", i32 62, i32 1}
!12 = !{ptr @__UNIQUE_ID_inittype296, !11, !"__UNIQUE_ID_inittype296", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_init297, !14, !"__UNIQUE_ID_init297", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/w83781d.c", i32 63, i32 1}
!15 = !{ptr @__UNIQUE_ID_author340, !16, !"__UNIQUE_ID_author340", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83781d.c", i32 2090, i32 1}
!17 = !{ptr @__UNIQUE_ID_description341, !18, !"__UNIQUE_ID_description341", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/w83781d.c", i32 2093, i32 1}
!19 = !{ptr @__UNIQUE_ID_file342, !20, !"__UNIQUE_ID_file342", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/w83781d.c", i32 2094, i32 1}
!21 = !{ptr @__UNIQUE_ID_license343, !20, !"__UNIQUE_ID_license343", i1 false, i1 false}
!22 = !{ptr @__initcall__kmod_w83781d__344_2096_sensors_w83781d_init6, !23, !"__initcall__kmod_w83781d__344_2096_sensors_w83781d_init6", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/w83781d.c", i32 2096, i32 1}
!24 = !{ptr @__exitcall_sensors_w83781d_exit, !25, !"__exitcall_sensors_w83781d_exit", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/w83781d.c", i32 2097, i32 1}
!26 = !{ptr @reset, !27, !"reset", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/w83781d.c", i32 57, i32 13}
!28 = !{ptr @__param_str_force_subclients, !1, !"__param_str_force_subclients", i1 false, i1 false}
!29 = !{ptr @__param_arr_force_subclients, !1, !"__param_arr_force_subclients", i1 false, i1 false}
!30 = !{ptr @force_subclients, !31, !"force_subclients", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/w83781d.c", i32 52, i32 23}
!32 = !{ptr @__param_str_reset, !6, !"__param_str_reset", i1 false, i1 false}
!33 = !{ptr @__param_str_init, !11, !"__param_str_init", i1 false, i1 false}
!34 = !{ptr @init, !35, !"init", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/w83781d.c", i32 61, i32 13}
!36 = !{ptr @.str, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/w83781d.c", i32 1587, i32 11}
!38 = !{ptr @w83781d_driver, !39, !"w83781d_driver", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/w83781d.c", i32 1584, i32 26}
!40 = !{ptr @w83781d_group, !41, !"w83781d_group", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/w83781d.c", i32 959, i32 37}
!42 = !{ptr @w83781d_attributes, !43, !"w83781d_attributes", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/w83781d.c", i32 940, i32 26}
!44 = !{ptr @.str.1, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/w83781d.c", i32 289, i32 1}
!46 = !{ptr @sensor_dev_attr_in0_input, !45, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!47 = !{ptr @.str.2, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83781d.c", i32 255, i32 1}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83781d.c", i32 1456, i32 3}
!51 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.5, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @w83781d_update_device.__UNIQUE_ID_ddebug339, !50, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!54 = !{ptr @W83781D_REG_PWM, !55, !"W83781D_REG_PWM", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/w83781d.c", i32 128, i32 17}
!56 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sensor_dev_attr_in0_min, !45, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!58 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @sensor_dev_attr_in0_max, !45, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!60 = !{ptr @.str.8, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/w83781d.c", i32 465, i32 8}
!62 = !{ptr @sensor_dev_attr_in0_alarm, !61, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!63 = !{ptr @.str.9, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/w83781d.c", i32 453, i32 22}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83781d.c", i32 586, i32 8}
!67 = !{ptr @sensor_dev_attr_in0_beep, !66, !"sensor_dev_attr_in0_beep", i1 false, i1 false}
!68 = !{ptr @.str.11, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/w83781d.c", i32 291, i32 1}
!70 = !{ptr @sensor_dev_attr_in2_input, !69, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!71 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sensor_dev_attr_in2_min, !69, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!73 = !{ptr @.str.13, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @sensor_dev_attr_in2_max, !69, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!75 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/w83781d.c", i32 467, i32 8}
!77 = !{ptr @sensor_dev_attr_in2_alarm, !76, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!78 = !{ptr @.str.15, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/w83781d.c", i32 590, i32 8}
!80 = !{ptr @sensor_dev_attr_in2_beep, !79, !"sensor_dev_attr_in2_beep", i1 false, i1 false}
!81 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/w83781d.c", i32 292, i32 1}
!83 = !{ptr @sensor_dev_attr_in3_input, !82, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!84 = !{ptr @.str.17, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @sensor_dev_attr_in3_min, !82, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!86 = !{ptr @.str.18, !82, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @sensor_dev_attr_in3_max, !82, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!88 = !{ptr @.str.19, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/w83781d.c", i32 468, i32 8}
!90 = !{ptr @sensor_dev_attr_in3_alarm, !89, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!91 = !{ptr @.str.20, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/w83781d.c", i32 592, i32 8}
!93 = !{ptr @sensor_dev_attr_in3_beep, !92, !"sensor_dev_attr_in3_beep", i1 false, i1 false}
!94 = !{ptr @.str.21, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/w83781d.c", i32 293, i32 1}
!96 = !{ptr @sensor_dev_attr_in4_input, !95, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!97 = !{ptr @.str.22, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @sensor_dev_attr_in4_min, !95, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!99 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @sensor_dev_attr_in4_max, !95, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!101 = !{ptr @.str.24, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/w83781d.c", i32 469, i32 8}
!103 = !{ptr @sensor_dev_attr_in4_alarm, !102, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!104 = !{ptr @.str.25, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/w83781d.c", i32 594, i32 8}
!106 = !{ptr @sensor_dev_attr_in4_beep, !105, !"sensor_dev_attr_in4_beep", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/w83781d.c", i32 294, i32 1}
!109 = !{ptr @sensor_dev_attr_in5_input, !108, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!110 = !{ptr @.str.27, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @sensor_dev_attr_in5_min, !108, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!112 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @sensor_dev_attr_in5_max, !108, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!114 = !{ptr @.str.29, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/w83781d.c", i32 470, i32 8}
!116 = !{ptr @sensor_dev_attr_in5_alarm, !115, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!117 = !{ptr @.str.30, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/w83781d.c", i32 596, i32 8}
!119 = !{ptr @sensor_dev_attr_in5_beep, !118, !"sensor_dev_attr_in5_beep", i1 false, i1 false}
!120 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/w83781d.c", i32 295, i32 1}
!122 = !{ptr @sensor_dev_attr_in6_input, !121, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!123 = !{ptr @.str.32, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sensor_dev_attr_in6_min, !121, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!125 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sensor_dev_attr_in6_max, !121, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!127 = !{ptr @.str.34, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/w83781d.c", i32 471, i32 8}
!129 = !{ptr @sensor_dev_attr_in6_alarm, !128, !"sensor_dev_attr_in6_alarm", i1 false, i1 false}
!130 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/w83781d.c", i32 598, i32 8}
!132 = !{ptr @sensor_dev_attr_in6_beep, !131, !"sensor_dev_attr_in6_beep", i1 false, i1 false}
!133 = !{ptr @.str.36, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/w83781d.c", i32 336, i32 8}
!135 = !{ptr @sensor_dev_attr_fan1_input, !134, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!136 = !{ptr @.str.37, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/w83781d.c", i32 337, i32 8}
!138 = !{ptr @sensor_dev_attr_fan1_min, !137, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!139 = !{ptr @.str.38, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/w83781d.c", i32 681, i32 8}
!141 = !{ptr @sensor_dev_attr_fan1_div, !140, !"sensor_dev_attr_fan1_div", i1 false, i1 false}
!142 = !{ptr @.str.39, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/w83781d.c", i32 474, i32 8}
!144 = !{ptr @sensor_dev_attr_fan1_alarm, !143, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!145 = !{ptr @.str.40, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/w83781d.c", i32 604, i32 8}
!147 = !{ptr @sensor_dev_attr_fan1_beep, !146, !"sensor_dev_attr_fan1_beep", i1 false, i1 false}
!148 = !{ptr @.str.41, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/w83781d.c", i32 339, i32 8}
!150 = !{ptr @sensor_dev_attr_fan2_input, !149, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/w83781d.c", i32 340, i32 8}
!153 = !{ptr @sensor_dev_attr_fan2_min, !152, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!154 = !{ptr @.str.43, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/w83781d.c", i32 683, i32 8}
!156 = !{ptr @sensor_dev_attr_fan2_div, !155, !"sensor_dev_attr_fan2_div", i1 false, i1 false}
!157 = !{ptr @.str.44, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/w83781d.c", i32 475, i32 8}
!159 = !{ptr @sensor_dev_attr_fan2_alarm, !158, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!160 = !{ptr @.str.45, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/w83781d.c", i32 606, i32 8}
!162 = !{ptr @sensor_dev_attr_fan2_beep, !161, !"sensor_dev_attr_fan2_beep", i1 false, i1 false}
!163 = !{ptr @.str.46, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/w83781d.c", i32 342, i32 8}
!165 = !{ptr @sensor_dev_attr_fan3_input, !164, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!166 = !{ptr @.str.47, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/w83781d.c", i32 343, i32 8}
!168 = !{ptr @sensor_dev_attr_fan3_min, !167, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!169 = !{ptr @.str.48, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/w83781d.c", i32 685, i32 8}
!171 = !{ptr @sensor_dev_attr_fan3_div, !170, !"sensor_dev_attr_fan3_div", i1 false, i1 false}
!172 = !{ptr @.str.49, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/w83781d.c", i32 476, i32 8}
!174 = !{ptr @sensor_dev_attr_fan3_alarm, !173, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!175 = !{ptr @.str.50, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/w83781d.c", i32 608, i32 8}
!177 = !{ptr @sensor_dev_attr_fan3_beep, !176, !"sensor_dev_attr_fan3_beep", i1 false, i1 false}
!178 = !{ptr @.str.51, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/w83781d.c", i32 401, i32 1}
!180 = !{ptr @sensor_dev_attr_temp1_input, !179, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!181 = !{ptr @.str.52, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/w83781d.c", i32 360, i32 1}
!183 = !{ptr @.str.53, !179, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @sensor_dev_attr_temp1_max, !179, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!185 = !{ptr @.str.54, !179, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @sensor_dev_attr_temp1_max_hyst, !179, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!187 = !{ptr @.str.55, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/w83781d.c", i32 477, i32 8}
!189 = !{ptr @sensor_dev_attr_temp1_alarm, !188, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!190 = !{ptr @.str.56, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/w83781d.c", i32 610, i32 8}
!192 = !{ptr @sensor_dev_attr_temp1_beep, !191, !"sensor_dev_attr_temp1_beep", i1 false, i1 false}
!193 = !{ptr @.str.57, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/w83781d.c", i32 402, i32 1}
!195 = !{ptr @sensor_dev_attr_temp2_input, !194, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!196 = !{ptr @.str.58, !194, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @sensor_dev_attr_temp2_max, !194, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!198 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @sensor_dev_attr_temp2_max_hyst, !194, !"sensor_dev_attr_temp2_max_hyst", i1 false, i1 false}
!200 = !{ptr @.str.60, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/w83781d.c", i32 478, i32 8}
!202 = !{ptr @sensor_dev_attr_temp2_alarm, !201, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!203 = !{ptr @.str.61, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/w83781d.c", i32 612, i32 8}
!205 = !{ptr @sensor_dev_attr_temp2_beep, !204, !"sensor_dev_attr_temp2_beep", i1 false, i1 false}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/w83781d.c", i32 412, i32 8}
!208 = !{ptr @dev_attr_cpu0_vid, !207, !"dev_attr_cpu0_vid", i1 false, i1 false}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/w83781d.c", i32 437, i32 8}
!211 = !{ptr @dev_attr_vrm, !210, !"dev_attr_vrm", i1 false, i1 false}
!212 = !{ptr @.str.64, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/w83781d.c", i32 446, i32 8}
!214 = !{ptr @dev_attr_alarms, !213, !"dev_attr_alarms", i1 false, i1 false}
!215 = !{ptr @.str.65, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/w83781d.c", i32 517, i32 8}
!217 = !{ptr @dev_attr_beep_mask, !216, !"dev_attr_beep_mask", i1 false, i1 false}
!218 = !{ptr @.str.66, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/w83781d.c", i32 616, i32 8}
!220 = !{ptr @sensor_dev_attr_beep_enable, !219, !"sensor_dev_attr_beep_enable", i1 false, i1 false}
!221 = !{ptr @w83781d_group_in1, !222, !"w83781d_group_in1", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/w83781d.c", i32 967, i32 37}
!223 = !{ptr @w83781d_attributes_in1, !224, !"w83781d_attributes_in1", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/w83781d.c", i32 963, i32 26}
!225 = !{ptr @.str.67, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/w83781d.c", i32 290, i32 1}
!227 = !{ptr @sensor_dev_attr_in1_input, !226, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!228 = !{ptr @.str.68, !226, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @sensor_dev_attr_in1_min, !226, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!230 = !{ptr @.str.69, !226, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @sensor_dev_attr_in1_max, !226, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!232 = !{ptr @.str.70, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/hwmon/w83781d.c", i32 466, i32 8}
!234 = !{ptr @sensor_dev_attr_in1_alarm, !233, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!235 = !{ptr @.str.71, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/w83781d.c", i32 588, i32 8}
!237 = !{ptr @sensor_dev_attr_in1_beep, !236, !"sensor_dev_attr_in1_beep", i1 false, i1 false}
!238 = !{ptr @w83781d_group_in78, !239, !"w83781d_group_in78", i1 false, i1 false}
!239 = !{!"../drivers/hwmon/w83781d.c", i32 976, i32 37}
!240 = !{ptr @w83781d_attributes_in78, !241, !"w83781d_attributes_in78", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/w83781d.c", i32 971, i32 26}
!242 = !{ptr @.str.72, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/w83781d.c", i32 296, i32 1}
!244 = !{ptr @sensor_dev_attr_in7_input, !243, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!245 = !{ptr @.str.73, !243, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @sensor_dev_attr_in7_min, !243, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!247 = !{ptr @.str.74, !243, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @sensor_dev_attr_in7_max, !243, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!249 = !{ptr @.str.75, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/w83781d.c", i32 472, i32 8}
!251 = !{ptr @sensor_dev_attr_in7_alarm, !250, !"sensor_dev_attr_in7_alarm", i1 false, i1 false}
!252 = !{ptr @.str.76, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/hwmon/w83781d.c", i32 600, i32 8}
!254 = !{ptr @sensor_dev_attr_in7_beep, !253, !"sensor_dev_attr_in7_beep", i1 false, i1 false}
!255 = !{ptr @.str.77, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/w83781d.c", i32 297, i32 1}
!257 = !{ptr @sensor_dev_attr_in8_input, !256, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!258 = !{ptr @.str.78, !256, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @sensor_dev_attr_in8_min, !256, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!260 = !{ptr @.str.79, !256, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @sensor_dev_attr_in8_max, !256, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!262 = !{ptr @.str.80, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/hwmon/w83781d.c", i32 473, i32 8}
!264 = !{ptr @sensor_dev_attr_in8_alarm, !263, !"sensor_dev_attr_in8_alarm", i1 false, i1 false}
!265 = !{ptr @.str.81, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/w83781d.c", i32 602, i32 8}
!267 = !{ptr @sensor_dev_attr_in8_beep, !266, !"sensor_dev_attr_in8_beep", i1 false, i1 false}
!268 = !{ptr @w83781d_group_temp3, !269, !"w83781d_group_temp3", i1 false, i1 false}
!269 = !{!"../drivers/hwmon/w83781d.c", i32 984, i32 37}
!270 = !{ptr @w83781d_attributes_temp3, !271, !"w83781d_attributes_temp3", i1 false, i1 false}
!271 = !{!"../drivers/hwmon/w83781d.c", i32 980, i32 26}
!272 = !{ptr @.str.82, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/w83781d.c", i32 403, i32 1}
!274 = !{ptr @sensor_dev_attr_temp3_input, !273, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!275 = !{ptr @.str.83, !273, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @sensor_dev_attr_temp3_max, !273, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!277 = !{ptr @.str.84, !273, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @sensor_dev_attr_temp3_max_hyst, !273, !"sensor_dev_attr_temp3_max_hyst", i1 false, i1 false}
!279 = !{ptr @.str.85, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/w83781d.c", i32 479, i32 8}
!281 = !{ptr @sensor_dev_attr_temp3_alarm, !280, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!282 = !{ptr @.str.86, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/w83781d.c", i32 614, i32 8}
!284 = !{ptr @sensor_dev_attr_temp3_beep, !283, !"sensor_dev_attr_temp3_beep", i1 false, i1 false}
!285 = !{ptr @w83781d_group_pwm12, !286, !"w83781d_group_pwm12", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/w83781d.c", i32 994, i32 37}
!287 = !{ptr @w83781d_attributes_pwm12, !288, !"w83781d_attributes_pwm12", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/w83781d.c", i32 988, i32 26}
!289 = !{ptr @.str.87, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/hwmon/w83781d.c", i32 762, i32 8}
!291 = !{ptr @sensor_dev_attr_pwm1, !290, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!292 = !{ptr @.str.88, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/w83781d.c", i32 763, i32 8}
!294 = !{ptr @sensor_dev_attr_pwm2, !293, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!295 = !{ptr @.str.89, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/w83781d.c", i32 767, i32 8}
!297 = !{ptr @dev_attr_pwm2_enable, !296, !"dev_attr_pwm2_enable", i1 false, i1 false}
!298 = !{ptr @w83781d_group_pwm34, !299, !"w83781d_group_pwm34", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/w83781d.c", i32 1003, i32 37}
!300 = !{ptr @w83781d_attributes_pwm34, !301, !"w83781d_attributes_pwm34", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/w83781d.c", i32 998, i32 26}
!302 = !{ptr @.str.90, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/w83781d.c", i32 764, i32 8}
!304 = !{ptr @sensor_dev_attr_pwm3, !303, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!305 = !{ptr @.str.91, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/hwmon/w83781d.c", i32 765, i32 8}
!307 = !{ptr @sensor_dev_attr_pwm4, !306, !"sensor_dev_attr_pwm4", i1 false, i1 false}
!308 = !{ptr @w83781d_group_other, !309, !"w83781d_group_other", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/w83781d.c", i32 1013, i32 37}
!310 = !{ptr @w83781d_attributes_other, !311, !"w83781d_attributes_other", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/w83781d.c", i32 1007, i32 26}
!312 = !{ptr @.str.92, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/w83781d.c", i32 834, i32 8}
!314 = !{ptr @sensor_dev_attr_temp1_type, !313, !"sensor_dev_attr_temp1_type", i1 false, i1 false}
!315 = !{ptr @.str.93, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/hwmon/w83781d.c", i32 814, i32 3}
!317 = !{ptr @.str.94, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @.str.95, !316, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @.str.96, !316, !"<string literal>", i1 false, i1 false}
!320 = !{ptr @store_sensor._entry, !316, !"_entry", i1 false, i1 false}
!321 = !{ptr @store_sensor._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.98, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/w83781d.c", i32 825, i32 3}
!324 = !{ptr @.str.99, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @store_sensor._entry.97, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @store_sensor._entry_ptr.100, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @BIT_SCFG1, !328, !"BIT_SCFG1", i1 false, i1 false}
!328 = !{!"../drivers/hwmon/w83781d.c", i32 141, i32 17}
!329 = !{ptr @BIT_SCFG2, !330, !"BIT_SCFG2", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/w83781d.c", i32 144, i32 17}
!331 = !{ptr @.str.101, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/hwmon/w83781d.c", i32 836, i32 8}
!333 = !{ptr @sensor_dev_attr_temp2_type, !332, !"sensor_dev_attr_temp2_type", i1 false, i1 false}
!334 = !{ptr @.str.102, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/w83781d.c", i32 838, i32 8}
!336 = !{ptr @sensor_dev_attr_temp3_type, !335, !"sensor_dev_attr_temp3_type", i1 false, i1 false}
!337 = !{ptr @w83781d_probe.__key, !338, !"__key", i1 false, i1 false}
!338 = !{!"../drivers/hwmon/w83781d.c", i32 1208, i32 2}
!339 = !{ptr @.str.103, !338, !"<string literal>", i1 false, i1 false}
!340 = !{ptr @w83781d_probe.__key.104, !341, !"__key", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/w83781d.c", i32 1209, i32 2}
!342 = !{ptr @.str.105, !341, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.106, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/hwmon/w83781d.c", i32 863, i32 5}
!345 = !{ptr @.str.107, !344, !"<string literal>", i1 false, i1 false}
!346 = !{ptr @w83781d_detect_subclients._entry, !344, !"_entry", i1 false, i1 false}
!347 = !{ptr @w83781d_detect_subclients._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!348 = !{ptr @.str.109, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/hwmon/w83781d.c", i32 888, i32 4}
!350 = !{ptr @w83781d_detect_subclients._entry.108, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @w83781d_detect_subclients._entry_ptr.110, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.112, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/w83781d.c", i32 899, i32 4}
!354 = !{ptr @w83781d_detect_subclients._entry.111, !353, !"_entry", i1 false, i1 false}
!355 = !{ptr @w83781d_detect_subclients._entry_ptr.113, !353, !"_entry_ptr", i1 false, i1 false}
!356 = !{ptr @.str.114, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/w83781d.c", i32 1354, i32 3}
!358 = !{ptr @.str.115, !357, !"<string literal>", i1 false, i1 false}
!359 = !{ptr @.str.116, !357, !"<string literal>", i1 false, i1 false}
!360 = !{ptr @w83781d_init_device._entry, !357, !"_entry", i1 false, i1 false}
!361 = !{ptr @w83781d_init_device._entry_ptr, !357, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.118, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/hwmon/w83781d.c", i32 1412, i32 4}
!364 = !{ptr @w83781d_init_device._entry.117, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @w83781d_init_device._entry_ptr.119, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.121, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/w83781d.c", i32 1423, i32 5}
!368 = !{ptr @w83781d_init_device._entry.120, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @w83781d_init_device._entry_ptr.122, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @w83781d_init_device.__key, !371, !"__key", i1 false, i1 false}
!371 = !{!"../drivers/hwmon/w83781d.c", i32 1443, i32 2}
!372 = !{ptr @w83781d_of_match, !373, !"w83781d_of_match", i1 false, i1 false}
!373 = !{!"../drivers/hwmon/w83781d.c", i32 1574, i32 34}
!374 = !{ptr @w83781d_ids, !375, !"w83781d_ids", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/w83781d.c", i32 1565, i32 35}
!376 = !{ptr @.str.123, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/hwmon/w83781d.c", i32 1105, i32 3}
!378 = !{ptr @.str.124, !377, !"<string literal>", i1 false, i1 false}
!379 = !{ptr @w83781d_detect.__UNIQUE_ID_ddebug334, !377, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!380 = !{ptr @.str.125, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/hwmon/w83781d.c", i32 1116, i32 3}
!382 = !{ptr @w83781d_detect.__UNIQUE_ID_ddebug335, !381, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!383 = !{ptr @.str.126, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/w83781d.c", i32 1128, i32 4}
!385 = !{ptr @w83781d_detect.__UNIQUE_ID_ddebug336, !384, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!386 = !{ptr @.str.127, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/hwmon/w83781d.c", i32 1146, i32 3}
!388 = !{ptr @w83781d_detect.__UNIQUE_ID_ddebug337, !387, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!389 = !{ptr @.str.128, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/hwmon/w83781d.c", i32 1156, i32 17}
!391 = !{ptr @.str.129, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/w83781d.c", i32 1158, i32 17}
!393 = !{ptr @.str.130, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/hwmon/w83781d.c", i32 1160, i32 17}
!395 = distinct !{null, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/hwmon/w83781d.c", i32 1165, i32 3}
!397 = distinct !{null, !396, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!398 = !{ptr @normal_i2c, !399, !"normal_i2c", i1 false, i1 false}
!399 = !{!"../drivers/hwmon/w83781d.c", i32 46, i32 29}
!400 = !{i32 1, !"wchar_size", i32 2}
!401 = !{i32 1, !"min_enum_size", i32 4}
!402 = !{i32 8, !"branch-target-enforcement", i32 0}
!403 = !{i32 8, !"sign-return-address", i32 0}
!404 = !{i32 8, !"sign-return-address-all", i32 0}
!405 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!406 = !{i32 7, !"uwtable", i32 1}
!407 = !{i32 7, !"frame-pointer", i32 2}
!408 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!409 = !{!"auto-init"}
!410 = !{i8 0, i8 2}
!411 = !{i64 2149008917, i64 2149008922, i64 2149008935, i64 2149008979, i64 2149009013, i64 2149009034}
