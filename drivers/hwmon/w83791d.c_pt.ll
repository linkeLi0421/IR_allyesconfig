; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83791d.c_pt.bc'
source_filename = "../drivers/hwmon/w83791d.c"
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
%struct.w83791d_data = type { ptr, %struct.mutex, i8, i32, [10 x i8], [10 x i8], [10 x i8], [5 x i8], [5 x i8], [5 x i8], [3 x i8], [2 x [3 x i16]], [5 x i8], [3 x i8], [3 x i8], [3 x i8], i32, i8, i32, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_force_subclients = internal constant [25 x i8] c"w83791d.force_subclients\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_force_subclients = internal constant %struct.kparam_array { i32 4, i32 2, ptr null, ptr @param_ops_short, ptr @force_subclients }, align 4
@__param_force_subclients = internal constant %struct.kernel_param { ptr @__param_str_force_subclients, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_force_subclients } }, section "__param", align 4
@__UNIQUE_ID_force_subclientstype288 = internal constant [49 x i8] c"w83791d.parmtype=force_subclients:array of short\00", section ".modinfo", align 1
@__UNIQUE_ID_force_subclients289 = internal constant [109 x i8] c"w83791d.parm=force_subclients:List of subclient addresses: {bus, clientaddr, subclientaddr1, subclientaddr2}\00", section ".modinfo", align 1
@__param_str_reset = internal constant [14 x i8] c"w83791d.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype290 = internal constant [28 x i8] c"w83791d.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset291 = internal constant [61 x i8] c"w83791d.parm=reset:Set to one to force a hardware chip reset\00", section ".modinfo", align 1
@__param_str_init = internal constant [13 x i8] c"w83791d.init\00", align 1
@init = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_init = internal constant %struct.kernel_param { ptr @__param_str_init, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @init } }, section "__param", align 4
@__UNIQUE_ID_inittype292 = internal constant [27 x i8] c"w83791d.parmtype=init:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_init293 = internal constant [68 x i8] c"w83791d.parm=init:Set to one to force extra software initialization\00", section ".modinfo", align 1
@__initcall__kmod_w83791d__352_1655_w83791d_driver_init6 = internal global ptr @w83791d_driver_init, section ".initcall6.init", align 4
@w83791d_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @w83791d_remove, ptr @w83791d_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83791d_id, ptr @w83791d_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_w83791d_driver_exit = internal global ptr @w83791d_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author353 = internal constant [51 x i8] c"w83791d.author=Charles Spirakis <bezaur@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description354 = internal constant [35 x i8] c"w83791d.description=W83791D driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file355 = internal constant [35 x i8] c"w83791d.file=drivers/hwmon/w83791d\00", section ".modinfo", align 1
@__UNIQUE_ID_license356 = internal constant [20 x i8] c"w83791d.license=GPL\00", section ".modinfo", align 1
@param_ops_short = external dso_local constant %struct.kernel_param_ops, align 4
@force_subclients = internal global { [4 x i16], [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"w83791d\00", [24 x i8] zeroinitializer }, align 32
@w83791d_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83791d\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [5 x i16], [22 x i8] } { [5 x i16] [i16 44, i16 45, i16 46, i16 47, i16 -2], [22 x i8] zeroinitializer }, align 32
@w83791d_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83791d_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83791d_attributes = internal global { [98 x ptr], [120 x i8] } { [98 x ptr] [ptr @sda_in_input, ptr @sda_in_min, ptr @sda_in_max, ptr @sda_in_beep, ptr @sda_in_alarm, ptr getelementptr (i8, ptr @sda_in_input, i64 32), ptr getelementptr (i8, ptr @sda_in_min, i64 32), ptr getelementptr (i8, ptr @sda_in_max, i64 32), ptr getelementptr (i8, ptr @sda_in_beep, i64 32), ptr getelementptr (i8, ptr @sda_in_alarm, i64 32), ptr getelementptr (i8, ptr @sda_in_input, i64 64), ptr getelementptr (i8, ptr @sda_in_min, i64 64), ptr getelementptr (i8, ptr @sda_in_max, i64 64), ptr getelementptr (i8, ptr @sda_in_beep, i64 64), ptr getelementptr (i8, ptr @sda_in_alarm, i64 64), ptr getelementptr (i8, ptr @sda_in_input, i64 96), ptr getelementptr (i8, ptr @sda_in_min, i64 96), ptr getelementptr (i8, ptr @sda_in_max, i64 96), ptr getelementptr (i8, ptr @sda_in_beep, i64 96), ptr getelementptr (i8, ptr @sda_in_alarm, i64 96), ptr getelementptr (i8, ptr @sda_in_input, i64 128), ptr getelementptr (i8, ptr @sda_in_min, i64 128), ptr getelementptr (i8, ptr @sda_in_max, i64 128), ptr getelementptr (i8, ptr @sda_in_beep, i64 128), ptr getelementptr (i8, ptr @sda_in_alarm, i64 128), ptr getelementptr (i8, ptr @sda_in_input, i64 160), ptr getelementptr (i8, ptr @sda_in_min, i64 160), ptr getelementptr (i8, ptr @sda_in_max, i64 160), ptr getelementptr (i8, ptr @sda_in_beep, i64 160), ptr getelementptr (i8, ptr @sda_in_alarm, i64 160), ptr getelementptr (i8, ptr @sda_in_input, i64 192), ptr getelementptr (i8, ptr @sda_in_min, i64 192), ptr getelementptr (i8, ptr @sda_in_max, i64 192), ptr getelementptr (i8, ptr @sda_in_beep, i64 192), ptr getelementptr (i8, ptr @sda_in_alarm, i64 192), ptr getelementptr (i8, ptr @sda_in_input, i64 224), ptr getelementptr (i8, ptr @sda_in_min, i64 224), ptr getelementptr (i8, ptr @sda_in_max, i64 224), ptr getelementptr (i8, ptr @sda_in_beep, i64 224), ptr getelementptr (i8, ptr @sda_in_alarm, i64 224), ptr getelementptr (i8, ptr @sda_in_input, i64 256), ptr getelementptr (i8, ptr @sda_in_min, i64 256), ptr getelementptr (i8, ptr @sda_in_max, i64 256), ptr getelementptr (i8, ptr @sda_in_beep, i64 256), ptr getelementptr (i8, ptr @sda_in_alarm, i64 256), ptr getelementptr (i8, ptr @sda_in_input, i64 288), ptr getelementptr (i8, ptr @sda_in_min, i64 288), ptr getelementptr (i8, ptr @sda_in_max, i64 288), ptr getelementptr (i8, ptr @sda_in_beep, i64 288), ptr getelementptr (i8, ptr @sda_in_alarm, i64 288), ptr @sda_fan_input, ptr @sda_fan_min, ptr @sda_fan_div, ptr @sda_fan_beep, ptr @sda_fan_alarm, ptr getelementptr (i8, ptr @sda_fan_input, i64 32), ptr getelementptr (i8, ptr @sda_fan_min, i64 32), ptr getelementptr (i8, ptr @sda_fan_div, i64 32), ptr getelementptr (i8, ptr @sda_fan_beep, i64 32), ptr getelementptr (i8, ptr @sda_fan_alarm, i64 32), ptr getelementptr (i8, ptr @sda_fan_input, i64 64), ptr getelementptr (i8, ptr @sda_fan_min, i64 64), ptr getelementptr (i8, ptr @sda_fan_div, i64 64), ptr getelementptr (i8, ptr @sda_fan_beep, i64 64), ptr getelementptr (i8, ptr @sda_fan_alarm, i64 64), ptr @sda_temp_input, ptr @sda_temp_max, ptr @sda_temp_max_hyst, ptr @sda_temp_beep, ptr @sda_temp_alarm, ptr getelementptr (i8, ptr @sda_temp_input, i64 32), ptr getelementptr (i8, ptr @sda_temp_max, i64 32), ptr getelementptr (i8, ptr @sda_temp_max_hyst, i64 32), ptr getelementptr (i8, ptr @sda_temp_beep, i64 32), ptr getelementptr (i8, ptr @sda_temp_alarm, i64 32), ptr getelementptr (i8, ptr @sda_temp_input, i64 64), ptr getelementptr (i8, ptr @sda_temp_max, i64 64), ptr getelementptr (i8, ptr @sda_temp_max_hyst, i64 64), ptr getelementptr (i8, ptr @sda_temp_beep, i64 64), ptr getelementptr (i8, ptr @sda_temp_alarm, i64 64), ptr @dev_attr_alarms, ptr @sda_beep_ctrl, ptr getelementptr (i8, ptr @sda_beep_ctrl, i64 32), ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @sda_pwm, ptr getelementptr (i8, ptr @sda_pwm, i64 32), ptr getelementptr (i8, ptr @sda_pwm, i64 64), ptr @sda_pwmenable, ptr getelementptr (i8, ptr @sda_pwmenable, i64 32), ptr getelementptr (i8, ptr @sda_pwmenable, i64 64), ptr @sda_temp_target, ptr getelementptr (i8, ptr @sda_temp_target, i64 32), ptr getelementptr (i8, ptr @sda_temp_target, i64 64), ptr @sda_temp_tolerance, ptr getelementptr (i8, ptr @sda_temp_tolerance, i64 32), ptr getelementptr (i8, ptr @sda_temp_tolerance, i64 64), ptr null], [120 x i8] zeroinitializer }, align 32
@sda_in_input = internal global { [10 x %struct.sensor_device_attribute], [64 x i8] } { [10 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 9 }], [64 x i8] zeroinitializer }, align 32
@sda_in_min = internal global { [10 x %struct.sensor_device_attribute], [64 x i8] } { [10 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 9 }], [64 x i8] zeroinitializer }, align 32
@sda_in_max = internal global { [10 x %struct.sensor_device_attribute], [64 x i8] } { [10 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 9 }], [64 x i8] zeroinitializer }, align 32
@sda_in_beep = internal global { [10 x %struct.sensor_device_attribute], [64 x i8] } { [10 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 13 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 10 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 16 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 17 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 14 }], [64 x i8] zeroinitializer }, align 32
@sda_in_alarm = internal global { [10 x %struct.sensor_device_attribute], [64 x i8] } { [10 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 8 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 9 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 10 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 19 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 20 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 14 }], [64 x i8] zeroinitializer }, align 32
@sda_fan_input = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 4 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_min = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 4 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_div = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 4 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_beep = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 21 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 22 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_alarm = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 11 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 21 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 22 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_input = internal global { [3 x %struct.sensor_device_attribute_2], [32 x i8] } { [3 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr null }, i8 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_max = internal global { [3 x %struct.sensor_device_attribute_2], [32 x i8] } { [3 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr @store_temp1 }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_max_hyst = internal global { [3 x %struct.sensor_device_attribute_2], [32 x i8] } { [3 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp1, ptr @store_temp1 }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp23, ptr @store_temp23 }, i8 2, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_beep = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep, ptr @store_beep }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_alarm = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 5 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 13 }], [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@sda_beep_ctrl = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep_enable, ptr @store_beep_enable }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_beep_mask, ptr @store_beep_mask }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@sda_pwm = internal global { [5 x %struct.sensor_device_attribute], [32 x i8] } { [5 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 2 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 3 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 4 }], [32 x i8] zeroinitializer }, align 32
@sda_pwmenable = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.131, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.132, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.133, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwmenable, ptr @store_pwmenable }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_target = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.134, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_target, ptr @store_temp_target }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.135, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_target, ptr @store_temp_target }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.136, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_target, ptr @store_temp_target }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_tolerance = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.137, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_tolerance, ptr @store_temp_tolerance }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.138, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_tolerance, ptr @store_temp_tolerance }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.139, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_tolerance, ptr @store_temp_tolerance }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@w83791d_update_device.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.13, ptr @.str.14, i8 1, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"w83791d_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/w83791d.c\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Starting w83791d device update\0A\00", [32 x i8] zeroinitializer }, align 32
@W83791D_REG_IN = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" !\22#$%&\B0\B1\B2", [22 x i8] zeroinitializer }, align 32
@W83791D_REG_IN_MAX = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"+-/1357\B4\B6\B8", [22 x i8] zeroinitializer }, align 32
@W83791D_REG_IN_MIN = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c",.02468\B5\B7\B9", [22 x i8] zeroinitializer }, align 32
@W83791D_REG_FAN_MIN = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c";<=\BC\BD", [27 x i8] zeroinitializer }, align 32
@W83791D_REG_FAN_DIV = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"GK\\", [29 x i8] zeroinitializer }, align 32
@W83791D_REG_PWM = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\81\83\94\A0\A1", [27 x i8] zeroinitializer }, align 32
@W83791D_REG_FAN_CFG = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\84\95", [30 x i8] zeroinitializer }, align 32
@W83791D_REG_TEMP_TARGET = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\85\86\96", [29 x i8] zeroinitializer }, align 32
@W83791D_REG_TEMP_TOL = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\87\97", [30 x i8] zeroinitializer }, align 32
@W83791D_REG_TEMP1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"'9:", [29 x i8] zeroinitializer }, align 32
@W83791D_REG_TEMP_ADD = internal constant { [2 x [6 x i8]], [20 x i8] } { [2 x [6 x i8]] [[6 x i8] c"\C0\C1\C5\C6\C3\C4", [6 x i8] c"\C8\C9\CD\CE\CB\CC"], [20 x i8] zeroinitializer }, align 32
@W83791D_REG_BEEP_CTRL = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"VW\A3", [29 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug332 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.16, i8 1, i8 -108, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"w83791d_print_debug\00", [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"======Start of w83791d debug values======\0A\00", [53 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug333 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.17, i8 1, i8 -108, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%d set of Voltages: ===>\0A\00", [38 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug334 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.18, i8 1, i8 -108, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vin[%d] is:     0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug335 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.19, i8 1, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vin[%d] min is: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.20, i8 1, i8 -107, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vin[%d] max is: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.21, i8 1, i8 -107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%d set of Fan Counts/Divisors: ===>\0A\00", [59 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.22, i8 1, i8 -106, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fan[%d] is:     0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.23, i8 1, i8 -106, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fan[%d] min is: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.24, i8 1, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"fan_div[%d] is: 0x%02x\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.25, i8 1, i8 -104, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%d set of Temperatures: ===>\0A\00", [34 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.26, i8 1, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"temp1[%d] is: 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug343 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.27, i8 1, i8 -102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"temp_add[%d][%d] is: 0x%04x\0A\00", [35 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug344 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.28, i8 1, i8 -101, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Misc Information: ===>\0A\00", [40 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.29, i8 1, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"alarm is:     0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug346 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.30, i8 1, i8 -101, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"beep_mask is: 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.31, i8 1, i8 -101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"beep_enable is: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.32, i8 1, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vid is: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.33, i8 1, i8 -100, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vrm is: 0x%02x\0A\00", [16 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.34, i8 1, i8 -100, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"=======End of w83791d debug values========\0A\00", [52 x i8] zeroinitializer }, align 32
@w83791d_print_debug.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.13, ptr @.str.35, i8 1, i8 -100, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in0_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in9_beep\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_min\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_div\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_div\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan5_div\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@store_fan_div._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.13, i32 622, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"store_fan_div: Unexpected nr seen: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"store_fan_div\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@store_fan_div._entry_ptr = internal global ptr @store_fan_div._entry, section ".printk_index", align 4
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan1_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan2_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan3_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan4_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fan5_beep\00", [22 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp3_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_beep\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"beep_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"beep_mask\00", [22 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm4\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm5\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_target\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_target\00", [19 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_target\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_tolerance\00", [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_tolerance\00", [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_tolerance\00", [16 x i8] zeroinitializer }, align 32
@w83791d_probe.__UNIQUE_ID_ddebug330 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.140, ptr @.str.13, ptr @.str.141, i8 1, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.140 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"w83791d_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device ID version: %d.%d (0x%02x)\0A\00", [61 x i8] zeroinitializer }, align 32
@w83791d_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83791d_group_fanpwm45 = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83791d_attributes_fanpwm45, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83791d_detect_subclients._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.13, i32 1269, ptr @.str.145, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"invalid subclient address %d; must be 0x48-0x4f\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"w83791d_detect_subclients\00", [38 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@w83791d_detect_subclients._entry_ptr = internal global ptr @w83791d_detect_subclients._entry, section ".printk_index", align 4
@w83791d_detect_subclients._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.144, ptr @.str.13, i32 1282, ptr @.str.145, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"duplicate addresses 0x%x, use force_subclient\0A\00", [49 x i8] zeroinitializer }, align 32
@w83791d_detect_subclients._entry_ptr.148 = internal global ptr @w83791d_detect_subclients._entry.146, section ".printk_index", align 4
@w83791d_attributes_fanpwm45 = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr getelementptr (i8, ptr @sda_fan_input, i64 96), ptr getelementptr (i8, ptr @sda_fan_min, i64 96), ptr getelementptr (i8, ptr @sda_fan_div, i64 96), ptr getelementptr (i8, ptr @sda_fan_beep, i64 96), ptr getelementptr (i8, ptr @sda_fan_alarm, i64 96), ptr getelementptr (i8, ptr @sda_fan_input, i64 128), ptr getelementptr (i8, ptr @sda_fan_min, i64 128), ptr getelementptr (i8, ptr @sda_fan_div, i64 128), ptr getelementptr (i8, ptr @sda_fan_beep, i64 128), ptr getelementptr (i8, ptr @sda_fan_alarm, i64 128), ptr getelementptr (i8, ptr @sda_pwm, i64 96), ptr getelementptr (i8, ptr @sda_pwm, i64 128), ptr null], [44 x i8] zeroinitializer }, align 32
@switch.table.store_fan_div = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 1, i32 2, i32 2], [44 x i8] zeroinitializer }, align 32
@switch.table.store_fan_div.149 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 207, i32 63, i32 63, i32 248, i32 143], [44 x i8] zeroinitializer }, align 32
@switch.table.store_fan_div.150 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 4, i32 6, i32 6, i32 0, i32 4], [44 x i8] zeroinitializer }, align 32
@switch.table.store_pwmenable = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.store_pwmenable.151 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 2], [20 x i8] zeroinitializer }, align 32
@switch.table.store_pwmenable.152 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 243, i32 207, i32 243], [20 x i8] zeroinitializer }, align 32
@switch.table.store_temp_tolerance = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 0, i32 1], [20 x i8] zeroinitializer }, align 32
@switch.table.store_temp_tolerance.153 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 4, i32 0], [20 x i8] zeroinitializer }, align 32
@switch.table.store_temp_tolerance.154 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 240, i32 15, i32 240], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@___asan_gen_.157 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 49, i32 13 }
@___asan_gen_.160 = private unnamed_addr constant [5 x i8] c"init\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 53, i32 13 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"w83791d_driver\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 336, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"force_subclients\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 44, i32 23 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 339, i32 11 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"w83791d_id\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 330, i32 35 }
@___asan_gen_.175 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 39, i32 29 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"w83791d_group\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1233, i32 37 }
@___asan_gen_.181 = private unnamed_addr constant [19 x i8] c"w83791d_attributes\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1196, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"sda_in_input\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 388, i32 39 }
@___asan_gen_.187 = private unnamed_addr constant [11 x i8] c"sda_in_min\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 401, i32 39 }
@___asan_gen_.190 = private unnamed_addr constant [11 x i8] c"sda_in_max\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 414, i32 39 }
@___asan_gen_.193 = private unnamed_addr constant [12 x i8] c"sda_in_beep\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 489, i32 39 }
@___asan_gen_.196 = private unnamed_addr constant [13 x i8] c"sda_in_alarm\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 502, i32 39 }
@___asan_gen_.199 = private unnamed_addr constant [14 x i8] c"sda_fan_input\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 657, i32 39 }
@___asan_gen_.202 = private unnamed_addr constant [12 x i8] c"sda_fan_min\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 665, i32 39 }
@___asan_gen_.205 = private unnamed_addr constant [12 x i8] c"sda_fan_div\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 678, i32 39 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"sda_fan_beep\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 691, i32 39 }
@___asan_gen_.211 = private unnamed_addr constant [14 x i8] c"sda_fan_alarm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 699, i32 39 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"sda_temp_input\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 986, i32 41 }
@___asan_gen_.217 = private unnamed_addr constant [13 x i8] c"sda_temp_max\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 992, i32 41 }
@___asan_gen_.220 = private unnamed_addr constant [18 x i8] c"sda_temp_max_hyst\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1001, i32 41 }
@___asan_gen_.223 = private unnamed_addr constant [14 x i8] c"sda_temp_beep\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1014, i32 39 }
@___asan_gen_.226 = private unnamed_addr constant [15 x i8] c"sda_temp_alarm\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1020, i32 39 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [14 x i8] c"sda_beep_ctrl\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1125, i32 39 }
@___asan_gen_.235 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [8 x i8] c"sda_pwm\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 736, i32 39 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"sda_pwmenable\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 805, i32 39 }
@___asan_gen_.247 = private unnamed_addr constant [16 x i8] c"sda_temp_target\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 847, i32 39 }
@___asan_gen_.250 = private unnamed_addr constant [19 x i8] c"sda_temp_tolerance\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 909, i32 39 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 389, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 390, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 391, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 392, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 393, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 394, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 395, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 396, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 397, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 398, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 360, i32 1 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1489, i32 3 }
@___asan_gen_.295 = private unnamed_addr constant [15 x i8] c"W83791D_REG_IN\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 58, i32 17 }
@___asan_gen_.298 = private unnamed_addr constant [19 x i8] c"W83791D_REG_IN_MAX\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 71, i32 17 }
@___asan_gen_.301 = private unnamed_addr constant [19 x i8] c"W83791D_REG_IN_MIN\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 83, i32 17 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c"W83791D_REG_FAN_MIN\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 102, i32 17 }
@___asan_gen_.307 = private unnamed_addr constant [20 x i8] c"W83791D_REG_FAN_DIV\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 134, i32 17 }
@___asan_gen_.310 = private unnamed_addr constant [16 x i8] c"W83791D_REG_PWM\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 110, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant [20 x i8] c"W83791D_REG_FAN_CFG\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 129, i32 17 }
@___asan_gen_.316 = private unnamed_addr constant [24 x i8] c"W83791D_REG_TEMP_TARGET\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 118, i32 17 }
@___asan_gen_.319 = private unnamed_addr constant [21 x i8] c"W83791D_REG_TEMP_TOL\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 124, i32 17 }
@___asan_gen_.322 = private unnamed_addr constant [18 x i8] c"W83791D_REG_TEMP1\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 144, i32 17 }
@___asan_gen_.325 = private unnamed_addr constant [21 x i8] c"W83791D_REG_TEMP_ADD\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 150, i32 17 }
@___asan_gen_.328 = private unnamed_addr constant [22 x i8] c"W83791D_REG_BEEP_CTRL\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 167, i32 17 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1616, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1617, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1619, i32 3 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1620, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1621, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1623, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1625, i32 3 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1626, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1627, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1634, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1636, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1639, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1644, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1645, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1646, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1647, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1648, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1649, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1650, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1651, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 402, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 403, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 404, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 405, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 406, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 407, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 408, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 409, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 410, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 411, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 415, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 416, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 417, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 418, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 419, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 420, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 421, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 422, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 423, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 424, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 490, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 491, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 492, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 493, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 494, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 495, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 496, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 497, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 498, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 499, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 503, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 504, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 505, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 506, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 507, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 508, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 509, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 510, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 511, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 512, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 658, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 659, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 660, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 661, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 662, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 666, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 668, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 670, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 672, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 674, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 679, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 681, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 683, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 685, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 687, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 558, i32 22 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 622, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 692, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 693, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 694, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 695, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 696, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 700, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 701, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 702, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 703, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 704, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 987, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 988, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 989, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 993, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 995, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 997, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1002, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1004, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1006, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1015, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1016, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1017, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1021, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1022, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1023, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1034, i32 8 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1126, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1128, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1140, i32 8 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1173, i32 8 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 737, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 739, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 741, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 743, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 745, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 806, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 808, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 810, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 848, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 850, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 852, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 910, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 912, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 914, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1351, i32 2 }
@___asan_gen_.715 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1361, i32 2 }
@___asan_gen_.721 = private unnamed_addr constant [23 x i8] c"w83791d_group_fanpwm45\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1250, i32 37 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1266, i32 5 }
@___asan_gen_.736 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.739 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1281, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant [28 x i8] c"w83791d_attributes_fanpwm45\00", align 1
@___asan_gen_.743 = private constant [27 x i8] c"../drivers/hwmon/w83791d.c\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.743, i32 1242, i32 26 }
@___asan_gen_.745 = private unnamed_addr constant [27 x i8] c"switch.table.store_fan_div\00", align 1
@___asan_gen_.746 = private unnamed_addr constant [31 x i8] c"switch.table.store_fan_div.149\00", align 1
@___asan_gen_.747 = private unnamed_addr constant [31 x i8] c"switch.table.store_fan_div.150\00", align 1
@___asan_gen_.748 = private unnamed_addr constant [29 x i8] c"switch.table.store_pwmenable\00", align 1
@___asan_gen_.749 = private unnamed_addr constant [33 x i8] c"switch.table.store_pwmenable.151\00", align 1
@___asan_gen_.750 = private unnamed_addr constant [33 x i8] c"switch.table.store_pwmenable.152\00", align 1
@___asan_gen_.751 = private unnamed_addr constant [34 x i8] c"switch.table.store_temp_tolerance\00", align 1
@___asan_gen_.752 = private unnamed_addr constant [38 x i8] c"switch.table.store_temp_tolerance.153\00", align 1
@___asan_gen_.753 = private unnamed_addr constant [38 x i8] c"switch.table.store_temp_tolerance.154\00", align 1
@llvm.compiler.used = appending global [224 x ptr] [ptr @__UNIQUE_ID_author353, ptr @__UNIQUE_ID_description354, ptr @__UNIQUE_ID_file355, ptr @__UNIQUE_ID_force_subclients289, ptr @__UNIQUE_ID_force_subclientstype288, ptr @__UNIQUE_ID_init293, ptr @__UNIQUE_ID_inittype292, ptr @__UNIQUE_ID_license356, ptr @__UNIQUE_ID_reset291, ptr @__UNIQUE_ID_resettype290, ptr @__exitcall_w83791d_driver_exit, ptr @__initcall__kmod_w83791d__352_1655_w83791d_driver_init6, ptr @__param_force_subclients, ptr @__param_init, ptr @__param_reset, ptr @store_fan_div._entry, ptr @store_fan_div._entry_ptr, ptr @w83791d_detect_subclients._entry, ptr @w83791d_detect_subclients._entry.146, ptr @w83791d_detect_subclients._entry_ptr, ptr @w83791d_detect_subclients._entry_ptr.148, ptr @w83791d_driver_exit, ptr @reset, ptr @init, ptr @w83791d_driver, ptr @force_subclients, ptr @.str, ptr @w83791d_id, ptr @normal_i2c, ptr @w83791d_group, ptr @w83791d_attributes, ptr @sda_in_input, ptr @sda_in_min, ptr @sda_in_max, ptr @sda_in_beep, ptr @sda_in_alarm, ptr @sda_fan_input, ptr @sda_fan_min, ptr @sda_fan_div, ptr @sda_fan_beep, ptr @sda_fan_alarm, ptr @sda_temp_input, ptr @sda_temp_max, ptr @sda_temp_max_hyst, ptr @sda_temp_beep, ptr @sda_temp_alarm, ptr @dev_attr_alarms, ptr @sda_beep_ctrl, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @sda_pwm, ptr @sda_pwmenable, ptr @sda_temp_target, ptr @sda_temp_tolerance, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @W83791D_REG_IN, ptr @W83791D_REG_IN_MAX, ptr @W83791D_REG_IN_MIN, ptr @W83791D_REG_FAN_MIN, ptr @W83791D_REG_FAN_DIV, ptr @W83791D_REG_PWM, ptr @W83791D_REG_FAN_CFG, ptr @W83791D_REG_TEMP_TARGET, ptr @W83791D_REG_TEMP_TOL, ptr @W83791D_REG_TEMP1, ptr @W83791D_REG_TEMP_ADD, ptr @W83791D_REG_BEEP_CTRL, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @w83791d_probe.__key, ptr @.str.142, ptr @w83791d_group_fanpwm45, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @w83791d_attributes_fanpwm45, ptr @switch.table.store_fan_div, ptr @switch.table.store_fan_div.149, ptr @switch.table.store_fan_div.150, ptr @switch.table.store_pwmenable, ptr @switch.table.store_pwmenable.151, ptr @switch.table.store_pwmenable.152, ptr @switch.table.store_temp_tolerance, ptr @switch.table.store_temp_tolerance.153, ptr @switch.table.store_temp_tolerance.154], section "llvm.metadata"
@0 = internal global [205 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @force_subclients to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_attributes to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_input to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_min to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_max to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_beep to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_alarm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_input to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_min to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_div to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_beep to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_alarm to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_input to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_max to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_max_hyst to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_beep to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_alarm to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_beep_ctrl to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_pwm to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_pwmenable to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_target to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_tolerance to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_IN to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_IN_MAX to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_IN_MIN to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_FAN_MIN to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_FAN_DIV to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_PWM to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_FAN_CFG to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_TEMP_TARGET to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_TEMP_TOL to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_TEMP1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_TEMP_ADD to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83791D_REG_BEEP_CTRL to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @store_fan_div._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_group_fanpwm45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_detect_subclients._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_detect_subclients._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83791d_attributes_fanpwm45 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_fan_div to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_fan_div.149 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_fan_div.150 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_pwmenable to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_pwmenable.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_pwmenable.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_temp_tolerance to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_temp_tolerance.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.store_temp_tolerance.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83791d_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83791d_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w83791d_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @w83791d_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83791d_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @hwmon_device_unregister(ptr noundef %3) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void @sysfs_remove_group(ptr noundef %dev, ptr noundef nonnull @w83791d_group) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83791d_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 73) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_probe.__UNIQUE_ID_ddebug330, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_probe, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !441

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = lshr i32 %call.i, 5
  %and = and i32 %0, 7
  %1 = lshr i32 %call.i, 1
  %and7 = and i32 %1, 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_probe.__UNIQUE_ID_ddebug330, ptr noundef %dev1, ptr noundef nonnull @.str.141, i32 noundef %and, i32 noundef %and7, i32 noundef %call.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call.i88 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #9
  %tobool10.not = icmp eq ptr %call.i88, null
  br i1 %tobool10.not, label %do.end.cleanup_crit_edge, label %if.end12

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %do.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i88, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %call.i88, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.142, ptr noundef nonnull @w83791d_probe.__key) #9
  %adapter1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %3 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter1.i, align 8
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i.i, align 4
  %7 = load i16, ptr @force_subclients, align 2
  %conv2.i = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv2.i)
  %cmp.i = icmp eq i32 %6, %conv2.i
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end12.if.end24.i_crit_edge

if.end12.if.end24.i_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

land.lhs.true.i:                                  ; preds = %if.end12
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %addr.i, align 2
  %10 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 1), align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %9)
  %cmp5.i = icmp eq i16 %10, %9
  br i1 %cmp5.i, label %for.body.preheader.i, label %land.lhs.true.i.if.end24.i_crit_edge

land.lhs.true.i.if.end24.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24.i

for.body.preheader.i:                             ; preds = %land.lhs.true.i
  %11 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 2), align 2
  %12 = add i16 %11, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %12)
  %13 = icmp ult i16 %12, -8
  br i1 %13, label %for.body.preheader.i.do.end.i_crit_edge, label %for.cond.i

for.body.preheader.i.do.end.i_crit_edge:          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond.i:                                       ; preds = %for.body.preheader.i
  %14 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @force_subclients, i32 0, i32 3), align 2
  %15 = add i16 %14, -80
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %15)
  %16 = icmp ult i16 %15, -8
  br i1 %16, label %for.cond.i.do.end.i_crit_edge, label %for.cond.1.i

for.cond.i.do.end.i_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

for.cond.1.i:                                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = and i16 %11, 7
  %18 = shl nuw nsw i16 %14, 4
  %19 = and i16 %18, 112
  %or91.i = or i16 %19, %17
  %conv22.i = trunc i16 %or91.i to i8
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 74, i8 noundef zeroext %conv22.i) #9
  br label %if.end24.i

do.end.i:                                         ; preds = %for.cond.i.do.end.i_crit_edge, %for.body.preheader.i.do.end.i_crit_edge
  %.lcssa.i = phi i16 [ %11, %for.body.preheader.i.do.end.i_crit_edge ], [ %14, %for.cond.i.do.end.i_crit_edge ]
  %conv18.i = zext i16 %.lcssa.i to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.143, i32 noundef %conv18.i) #12
  br label %cleanup

if.end24.i:                                       ; preds = %for.cond.1.i, %land.lhs.true.i.if.end24.i_crit_edge, %if.end12.if.end24.i_crit_edge
  %call.i92.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 74) #9
  %and28.i = and i32 %call.i92.i, 136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool.not.i, label %land.lhs.true29.i, label %if.end24.i.if.end43.i_crit_edge

if.end24.i.if.end43.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

land.lhs.true29.i:                                ; preds = %if.end24.i
  %and31.i = and i32 %call.i92.i, 7
  %20 = lshr i32 %call.i92.i, 4
  %and33.i = and i32 %20, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %and31.i, i32 %and33.i)
  %cmp34.i = icmp eq i32 %and31.i, %and33.i
  br i1 %cmp34.i, label %do.end39.i, label %land.lhs.true29.i.if.end43.i_crit_edge

land.lhs.true29.i.if.end43.i_crit_edge:           ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43.i

do.end39.i:                                       ; preds = %land.lhs.true29.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = or i32 %and31.i, 72
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.147, i32 noundef %add.i) #12
  br label %cleanup

if.end43.i:                                       ; preds = %land.lhs.true29.i.if.end43.i_crit_edge, %if.end24.i.if.end43.i_crit_edge
  %and45.i = and i32 %call.i92.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %if.then47.i, label %if.end43.i.if.end54.i_crit_edge

if.end43.i.if.end54.i_crit_edge:                  ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54.i

if.then47.i:                                      ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = trunc i32 %call.i92.i to i16
  %22 = and i16 %21, 7
  %conv52.i = or i16 %22, 72
  %call53.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %4, i16 noundef zeroext %conv52.i) #9
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then47.i, %if.end43.i.if.end54.i_crit_edge
  %and56.i = and i32 %call.i92.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i)
  %tobool57.not.i = icmp eq i32 %and56.i, 0
  br i1 %tobool57.not.i, label %if.then58.i, label %if.end54.i.if.end19_crit_edge

if.end54.i.if.end19_crit_edge:                    ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then58.i:                                      ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = trunc i32 %call.i92.i to i16
  %24 = lshr i16 %23, 4
  %25 = and i16 %24, 7
  %conv64.i = or i16 %25, 72
  %call65.i = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %4, i16 noundef zeroext %conv64.i) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then58.i, %if.end54.i.if.end19_crit_edge
  %26 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %driver_data.i.i, align 4
  %28 = load i8, ptr @reset, align 1, !range !442
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i90 = icmp eq i8 %28, 0
  br i1 %tobool.not.i90, label %lor.lhs.false.i, label %if.end19.if.then.i_crit_edge

if.end19.if.then.i_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end19
  %29 = load i8, ptr @init, align 1, !range !442
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.not.i = icmp eq i8 %29, 0
  br i1 %tobool1.not.i, label %lor.lhs.false.i.w83791d_init_client.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.w83791d_init_client.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83791d_init_client.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end19.if.then.i_crit_edge
  %call.i.i91 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 77) #9
  %30 = load i8, ptr @reset, align 1, !range !442
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool3.not.i = icmp eq i8 %30, 0
  br i1 %tobool3.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then4.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i64.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext -128) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then4.i, %if.then.i.if.end.i_crit_edge
  %31 = trunc i32 %call.i.i91 to i8
  %conv7.i = or i8 %31, -128
  %call.i65.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 77, i8 noundef zeroext %conv7.i) #9
  %call.i66.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 87) #9
  %32 = trunc i32 %call.i66.i to i8
  %conv12.i = and i8 %32, -17
  %call.i67.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 87, i8 noundef zeroext %conv12.i) #9
  %33 = load i8, ptr @init, align 1, !range !442
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool14.not.i = icmp eq i8 %33, 0
  br i1 %tobool14.not.i, label %if.end.i.w83791d_init_client.exit_crit_edge, label %if.then15.i

if.end.i.w83791d_init_client.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %w83791d_init_client.exit

if.then15.i:                                      ; preds = %if.end.i
  %call.i68.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -62) #9
  %and19.i = and i32 %call.i68.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.then15.i.if.end26.i_crit_edge, label %if.then21.i

if.then15.i.if.end26.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26.i

if.then21.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = trunc i32 %call.i68.i to i8
  %conv24.i = and i8 %34, -2
  %call.i69.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -62, i8 noundef zeroext %conv24.i) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then21.i, %if.then15.i.if.end26.i_crit_edge
  %call.i70.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -54) #9
  %and30.i = and i32 %call.i70.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.end26.i.if.end37.i_crit_edge, label %if.then32.i

if.end26.i.if.end37.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = trunc i32 %call.i70.i to i8
  %conv35.i = and i8 %35, -2
  %call.i71.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -54, i8 noundef zeroext %conv35.i) #9
  br label %if.end37.i

if.end37.i:                                       ; preds = %if.then32.i, %if.end26.i.if.end37.i_crit_edge
  %call.i72.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #9
  %36 = trunc i32 %call.i72.i to i8
  %37 = and i8 %36, -10
  %conv43.i = or i8 %37, 1
  %call.i73.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv43.i) #9
  br label %w83791d_init_client.exit

w83791d_init_client.exit:                         ; preds = %if.end37.i, %if.end.i.w83791d_init_client.exit_crit_edge, %lor.lhs.false.i.w83791d_init_client.exit_crit_edge
  %call47.i = tail call zeroext i8 @vid_which_vrm() #9
  %vrm.i = getelementptr inbounds %struct.w83791d_data, ptr %27, i32 0, i32 20
  %38 = ptrtoint ptr %vrm.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %call47.i, ptr %vrm.i, align 1
  %call.i92 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 59) #9
  %conv = trunc i32 %call.i92 to i8
  %arrayidx21 = getelementptr %struct.w83791d_data, ptr %call.i88, i32 0, i32 8, i32 0
  %39 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv, ptr %arrayidx21, align 1
  %call.i92.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 60) #9
  %conv.1 = trunc i32 %call.i92.1 to i8
  %arrayidx21.1 = getelementptr %struct.w83791d_data, ptr %call.i88, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.1, ptr %arrayidx21.1, align 1
  %call.i92.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #9
  %conv.2 = trunc i32 %call.i92.2 to i8
  %arrayidx21.2 = getelementptr %struct.w83791d_data, ptr %call.i88, i32 0, i32 8, i32 2
  %41 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv.2, ptr %arrayidx21.2, align 1
  %call.i92.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -68) #9
  %conv.3 = trunc i32 %call.i92.3 to i8
  %arrayidx21.3 = getelementptr %struct.w83791d_data, ptr %call.i88, i32 0, i32 8, i32 3
  %42 = ptrtoint ptr %arrayidx21.3 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv.3, ptr %arrayidx21.3, align 1
  %call.i92.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -67) #9
  %conv.4 = trunc i32 %call.i92.4 to i8
  %arrayidx21.4 = getelementptr %struct.w83791d_data, ptr %call.i88, i32 0, i32 8, i32 4
  %43 = ptrtoint ptr %arrayidx21.4 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.4, ptr %arrayidx21.4, align 1
  %call23 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83791d_group) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %w83791d_init_client.exit.cleanup_crit_edge

w83791d_init_client.exit.cleanup_crit_edge:       ; preds = %w83791d_init_client.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %w83791d_init_client.exit
  %call.i93 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 21) #9
  %conv2987 = and i32 %call.i93, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv2987)
  %tobool30.not = icmp eq i32 %conv2987, 0
  br i1 %tobool30.not, label %if.end38, label %if.then31

if.then31:                                        ; preds = %if.end26
  %call34 = tail call i32 @sysfs_create_group(ptr noundef %dev1, ptr noundef nonnull @w83791d_group_fanpwm45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end38.thread, label %if.then31.error4_crit_edge

if.then31.error4_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %error4

if.end38:                                         ; preds = %if.end26
  %call39 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %44 = ptrtoint ptr %call.i88 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call39, ptr %call.i88, align 4
  %cmp.i94 = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38.thread:                                  ; preds = %if.then31
  %call3998 = tail call ptr @hwmon_device_register(ptr noundef %dev1) #9
  %45 = ptrtoint ptr %call.i88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call3998, ptr %call.i88, align 4
  %cmp.i9499 = icmp ugt ptr %call3998, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i9499, label %if.then47, label %if.end38.thread.cleanup_crit_edge

if.end38.thread.cleanup_crit_edge:                ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then42:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %call39 to i32
  br label %error4

if.then47:                                        ; preds = %if.end38.thread
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %call3998 to i32
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83791d_group_fanpwm45) #9
  br label %error4

error4:                                           ; preds = %if.then47, %if.then42, %if.then31.error4_crit_edge
  %err.0 = phi i32 [ %call34, %if.then31.error4_crit_edge ], [ %47, %if.then47 ], [ %46, %if.then42 ]
  tail call void @sysfs_remove_group(ptr noundef %dev1, ptr noundef nonnull @w83791d_group) #9
  br label %cleanup

cleanup:                                          ; preds = %error4, %if.end38.thread.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %w83791d_init_client.exit.cleanup_crit_edge, %do.end39.i, %do.end.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error4 ], [ -12, %do.end.cleanup_crit_edge ], [ %call23, %w83791d_init_client.exit.cleanup_crit_edge ], [ 0, %if.end38.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %do.end39.i ], [ 0, %if.end38.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83791d_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #9
  %and = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i60 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  %call.i61 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #9
  %and8 = and i32 %call.i60, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %if.end5.if.end19_crit_edge

if.end5.if.end19_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then10:                                        ; preds = %if.end5
  %and11 = and i32 %call.i60, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  %tobool12.not.not = xor i1 %tobool12.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 163, i32 %call.i61)
  %cmp.not = icmp eq i32 %call.i61, 163
  %or.cond = select i1 %tobool12.not.not, i1 true, i1 %cmp.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i61)
  %cmp16.not = icmp eq i32 %call.i61, 92
  %or.cond57 = select i1 %tobool12.not, i1 true, i1 %cmp16.not
  %or.cond59 = select i1 %or.cond, i1 %or.cond57, i1 false
  br i1 %or.cond59, label %if.then10.if.end19_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.end19:                                         ; preds = %if.then10.if.end19_crit_edge, %if.end5.if.end19_crit_edge
  %call.i62 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 72) #9
  %conv = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i62, i32 %conv)
  %cmp21.not = icmp eq i32 %call.i62, %conv
  br i1 %cmp21.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call.i63 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  %8 = trunc i32 %call.i63 to i8
  %9 = and i8 %8, 120
  %conv27 = or i8 %9, -128
  %call.i64 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 78, i8 noundef zeroext %conv27) #9
  %call.i65 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 88) #9
  %call.i66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 113, i32 %call.i65)
  %cmp31.not = icmp eq i32 %call.i65, 113
  call void @__sanitizer_cov_trace_const_cmp4(i32 92, i32 %call.i66)
  %cmp34.not = icmp eq i32 %call.i66, 92
  %or.cond58 = select i1 %cmp31.not, i1 %cmp34.not, i1 false
  br i1 %or.cond58, label %if.end37, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call38 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 4, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83791d_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %last_updated = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_updated, align 4
  %add = add i32 %3, 300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !442
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end243_crit_edge

lor.lhs.false.if.end243_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end243

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_update_device.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_update_device, %for.body)) #9
          to label %if.then7 [label %for.body], !srcloc !441

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_update_device.__UNIQUE_ID_ddebug331, ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7, %do.body
  %i.0376 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.body ], [ 0, %if.then7 ]
  %arrayidx = getelementptr [10 x i8], ptr @W83791D_REG_IN, i32 0, i32 %i.0376
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %8) #9
  %conv = trunc i32 %call.i to i8
  %arrayidx10 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 4, i32 %i.0376
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %arrayidx10, align 1
  %arrayidx11 = getelementptr [10 x i8], ptr @W83791D_REG_IN_MAX, i32 0, i32 %i.0376
  %10 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx11, align 1
  %call.i354 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %11) #9
  %conv13 = trunc i32 %call.i354 to i8
  %arrayidx14 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 5, i32 %i.0376
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %arrayidx14, align 1
  %arrayidx15 = getelementptr [10 x i8], ptr @W83791D_REG_IN_MIN, i32 0, i32 %i.0376
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx15, align 1
  %call.i355 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext %14) #9
  %conv17 = trunc i32 %call.i355 to i8
  %arrayidx18 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 6, i32 %i.0376
  %15 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv17, ptr %arrayidx18, align 1
  %inc = add nuw nsw i32 %i.0376, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %for.body22.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body22.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i356 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 40) #9
  %conv25 = trunc i32 %call.i356 to i8
  %arrayidx26 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 7, i32 0
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv25, ptr %arrayidx26, align 1
  %call.i357 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 59) #9
  %conv29 = trunc i32 %call.i357 to i8
  %arrayidx30 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 0
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv29, ptr %arrayidx30, align 1
  %call.i356.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 41) #9
  %conv25.1 = trunc i32 %call.i356.1 to i8
  %arrayidx26.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv25.1, ptr %arrayidx26.1, align 1
  %call.i357.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 60) #9
  %conv29.1 = trunc i32 %call.i357.1 to i8
  %arrayidx30.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv29.1, ptr %arrayidx30.1, align 1
  %call.i356.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 42) #9
  %conv25.2 = trunc i32 %call.i356.2 to i8
  %arrayidx26.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv25.2, ptr %arrayidx26.2, align 1
  %call.i357.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 61) #9
  %conv29.2 = trunc i32 %call.i357.2 to i8
  %arrayidx30.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv29.2, ptr %arrayidx30.2, align 1
  %call.i356.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -70) #9
  %conv25.3 = trunc i32 %call.i356.3 to i8
  %arrayidx26.3 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 7, i32 3
  %22 = ptrtoint ptr %arrayidx26.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv25.3, ptr %arrayidx26.3, align 1
  %call.i357.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -68) #9
  %conv29.3 = trunc i32 %call.i357.3 to i8
  %arrayidx30.3 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv29.3, ptr %arrayidx30.3, align 1
  %call.i356.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -69) #9
  %conv25.4 = trunc i32 %call.i356.4 to i8
  %arrayidx26.4 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 7, i32 4
  %24 = ptrtoint ptr %arrayidx26.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv25.4, ptr %arrayidx26.4, align 1
  %call.i357.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -67) #9
  %conv29.4 = trunc i32 %call.i357.4 to i8
  %arrayidx30.4 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 4
  %25 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv29.4, ptr %arrayidx30.4, align 1
  %call.i358 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 71) #9
  %conv40 = trunc i32 %call.i358 to i8
  %call.i358.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 75) #9
  %conv40.1 = trunc i32 %call.i358.1 to i8
  %call.i358.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 92) #9
  %conv40.2 = trunc i32 %call.i358.2 to i8
  %26 = lshr i8 %conv40, 4
  %27 = and i8 %26, 3
  %fan_div = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %fan_div, align 4
  %29 = lshr i8 %conv40, 6
  %arrayidx55 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 1
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx55, align 1
  %31 = lshr i8 %conv40.1, 6
  %arrayidx62 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 2
  %32 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %arrayidx62, align 2
  %33 = and i8 %conv40.2, 7
  %arrayidx68 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 3
  %34 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx68, align 1
  %35 = lshr i8 %conv40.2, 4
  %36 = and i8 %35, 7
  %arrayidx75 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 4
  %37 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %arrayidx75, align 4
  %call.i359 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 93) #9
  %38 = ptrtoint ptr %fan_div to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %fan_div, align 1
  %40 = trunc i32 %call.i359 to i8
  %41 = lshr i8 %40, 3
  %42 = and i8 %41, 4
  %conv89 = or i8 %39, %42
  store i8 %conv89, ptr %fan_div, align 1
  %43 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx55, align 1
  %45 = trunc i32 %call.i359 to i8
  %46 = lshr i8 %45, 4
  %47 = and i8 %46, 4
  %conv89.1 = or i8 %44, %47
  store i8 %conv89.1, ptr %arrayidx55, align 1
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %arrayidx62, align 1
  %50 = trunc i32 %call.i359 to i8
  %51 = lshr i8 %50, 5
  %52 = and i8 %51, 4
  %conv89.2 = or i8 %49, %52
  store i8 %conv89.2, ptr %arrayidx62, align 1
  %call.i360 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -127) #9
  %conv99 = trunc i32 %call.i360 to i8
  %arrayidx100 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 0
  %53 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv99, ptr %arrayidx100, align 1
  %call.i360.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -125) #9
  %conv99.1 = trunc i32 %call.i360.1 to i8
  %arrayidx100.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv99.1, ptr %arrayidx100.1, align 1
  %call.i360.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -108) #9
  %conv99.2 = trunc i32 %call.i360.2 to i8
  %arrayidx100.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 2
  %55 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv99.2, ptr %arrayidx100.2, align 1
  %call.i360.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -96) #9
  %conv99.3 = trunc i32 %call.i360.3 to i8
  %arrayidx100.3 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 3
  %56 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv99.3, ptr %arrayidx100.3, align 1
  %call.i360.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -95) #9
  %conv99.4 = trunc i32 %call.i360.4 to i8
  %arrayidx100.4 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 4
  %57 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv99.4, ptr %arrayidx100.4, align 1
  %call.i361 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -124) #9
  %conv110 = trunc i32 %call.i361 to i8
  %call.i361.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -107) #9
  %conv110.1 = trunc i32 %call.i361.1 to i8
  %58 = lshr i8 %conv110, 2
  %59 = and i8 %58, 3
  %pwm_enable = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 13
  %60 = ptrtoint ptr %pwm_enable to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %pwm_enable, align 1
  %61 = lshr i8 %conv110, 4
  %62 = and i8 %61, 3
  %arrayidx127 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 13, i32 1
  %63 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %arrayidx127, align 1
  %64 = lshr i8 %conv110.1, 2
  %65 = and i8 %64, 3
  %arrayidx134 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 13, i32 2
  %66 = ptrtoint ptr %arrayidx134 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %arrayidx134, align 1
  %call.i362 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -123) #9
  %67 = trunc i32 %call.i362 to i8
  %conv142 = and i8 %67, 127
  %arrayidx143 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 14, i32 0
  %68 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv142, ptr %arrayidx143, align 1
  %call.i362.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -122) #9
  %69 = trunc i32 %call.i362.1 to i8
  %conv142.1 = and i8 %69, 127
  %arrayidx143.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 14, i32 1
  %70 = ptrtoint ptr %arrayidx143.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv142.1, ptr %arrayidx143.1, align 1
  %call.i362.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -106) #9
  %71 = trunc i32 %call.i362.2 to i8
  %conv142.2 = and i8 %71, 127
  %arrayidx143.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 14, i32 2
  %72 = ptrtoint ptr %arrayidx143.2 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv142.2, ptr %arrayidx143.2, align 1
  %call.i363 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -121) #9
  %conv153 = trunc i32 %call.i363 to i8
  %call.i363.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -105) #9
  %conv153.1 = trunc i32 %call.i363.1 to i8
  %73 = and i8 %conv153, 15
  %temp_tolerance = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 15
  %74 = ptrtoint ptr %temp_tolerance to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %73, ptr %temp_tolerance, align 1
  %75 = lshr i8 %conv153, 4
  %arrayidx169 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 15, i32 1
  %76 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx169, align 1
  %77 = and i8 %conv153.1, 15
  %arrayidx175 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 15, i32 2
  %78 = ptrtoint ptr %arrayidx175 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 %77, ptr %arrayidx175, align 1
  %call.i364 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 39) #9
  %conv182 = trunc i32 %call.i364 to i8
  %arrayidx183 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 10, i32 0
  %79 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv182, ptr %arrayidx183, align 1
  %call.i364.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 57) #9
  %conv182.1 = trunc i32 %call.i364.1 to i8
  %arrayidx183.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 10, i32 1
  %80 = ptrtoint ptr %arrayidx183.1 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %conv182.1, ptr %arrayidx183.1, align 1
  %call.i364.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 58) #9
  %conv182.2 = trunc i32 %call.i364.2 to i8
  %arrayidx183.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 10, i32 2
  %81 = ptrtoint ptr %arrayidx183.2 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %conv182.2, ptr %arrayidx183.2, align 1
  %call.i365 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -64) #9
  %shl = shl i32 %call.i365, 8
  %call.i366 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -63) #9
  %or203 = or i32 %call.i366, %shl
  %conv204 = trunc i32 %or203 to i16
  %arrayidx206 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 0, i32 0
  %82 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %conv204, ptr %arrayidx206, align 2
  %call.i365.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -59) #9
  %shl.1 = shl i32 %call.i365.1, 8
  %call.i366.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -58) #9
  %or203.1 = or i32 %call.i366.1, %shl.1
  %conv204.1 = trunc i32 %or203.1 to i16
  %arrayidx206.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 0, i32 1
  %83 = ptrtoint ptr %arrayidx206.1 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv204.1, ptr %arrayidx206.1, align 2
  %call.i365.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -61) #9
  %shl.2 = shl i32 %call.i365.2, 8
  %call.i366.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -60) #9
  %or203.2 = or i32 %call.i366.2, %shl.2
  %conv204.2 = trunc i32 %or203.2 to i16
  %arrayidx206.2 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 0, i32 2
  %84 = ptrtoint ptr %arrayidx206.2 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv204.2, ptr %arrayidx206.2, align 2
  %call.i365.1396 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -56) #9
  %shl.1397 = shl i32 %call.i365.1396, 8
  %call.i366.1399 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -55) #9
  %or203.1400 = or i32 %call.i366.1399, %shl.1397
  %conv204.1401 = trunc i32 %or203.1400 to i16
  %arrayidx206.1402 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 1, i32 0
  %85 = ptrtoint ptr %arrayidx206.1402 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %conv204.1401, ptr %arrayidx206.1402, align 2
  %call.i365.1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -51) #9
  %shl.1.1 = shl i32 %call.i365.1.1, 8
  %call.i366.1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -50) #9
  %or203.1.1 = or i32 %call.i366.1.1, %shl.1.1
  %conv204.1.1 = trunc i32 %or203.1.1 to i16
  %arrayidx206.1.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 1, i32 1
  %86 = ptrtoint ptr %arrayidx206.1.1 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv204.1.1, ptr %arrayidx206.1.1, align 2
  %call.i365.2.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -53) #9
  %shl.2.1 = shl i32 %call.i365.2.1, 8
  %call.i366.2.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -52) #9
  %or203.2.1 = or i32 %call.i366.2.1, %shl.2.1
  %conv204.2.1 = trunc i32 %or203.2.1 to i16
  %arrayidx206.2.1 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 1, i32 2
  %87 = ptrtoint ptr %arrayidx206.2.1 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 %conv204.2.1, ptr %arrayidx206.2.1, align 2
  %call.i367 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -87) #9
  %call.i368 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -86) #9
  %shl215 = shl i32 %call.i368, 8
  %add216 = add i32 %shl215, %call.i367
  %call.i369 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -85) #9
  %shl218 = shl i32 %call.i369, 16
  %add219 = add i32 %add216, %shl218
  %alarms = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 16
  %88 = ptrtoint ptr %alarms to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %add219, ptr %alarms, align 4
  %call.i370 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 86) #9
  %call.i371 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 87) #9
  %shl222 = shl i32 %call.i371, 8
  %add223 = add i32 %shl222, %call.i370
  %call.i372 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -93) #9
  %shl225 = shl i32 %call.i372, 16
  %add226 = add i32 %add223, %shl225
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 18
  %89 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add226, ptr %beep_mask, align 4
  %shr228 = lshr i32 %add226, 15
  %90 = trunc i32 %shr228 to i8
  %conv230 = and i8 %90, 1
  %beep_enable = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 17
  %91 = ptrtoint ptr %beep_enable to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 %conv230, ptr %beep_enable, align 4
  %call.i373 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 71) #9
  %92 = trunc i32 %call.i373 to i8
  %conv233 = and i8 %92, 15
  %vid = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 19
  %93 = ptrtoint ptr %vid to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv233, ptr %vid, align 4
  %call.i374 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 73) #9
  %94 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %vid, align 4
  %call234.tr = trunc i32 %call.i374 to i8
  %96 = shl i8 %call234.tr, 4
  %97 = and i8 %96, 16
  %conv240 = or i8 %97, %95
  store i8 %conv240, ptr %vid, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %98 = load volatile i32, ptr @jiffies, align 128
  %99 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %last_updated, align 4
  %valid242 = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 2
  %100 = ptrtoint ptr %valid242 to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %valid242, align 4
  br label %if.end243

if.end243:                                        ; preds = %for.body22.preheader, %lor.lhs.false.if.end243_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #9
  tail call fastcc void @w83791d_print_debug(ptr noundef %1, ptr noundef %dev)
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
define internal fastcc void @w83791d_print_debug(ptr nocapture noundef readonly %data, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug332, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body4)) #9
          to label %if.then [label %do.body4], !srcloc !441

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug332, ptr noundef %dev, ptr noundef nonnull @.str.16) #9
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug333, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body22)) #9
          to label %if.then18 [label %do.body22], !srcloc !441

if.then18:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug333, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef 10) #9
  br label %do.body22

do.body22:                                        ; preds = %for.inc.do.body22_crit_edge, %if.then18, %do.body4
  %i.0526 = phi i32 [ %inc, %for.inc.do.body22_crit_edge ], [ 0, %do.body4 ], [ 0, %if.then18 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug334, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body40)) #9
          to label %if.then36 [label %do.body40], !srcloc !441

if.then36:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 4, i32 %i.0526
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug334, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %i.0526, i32 noundef %conv) #9
  br label %do.body40

do.body40:                                        ; preds = %if.then36, %do.body22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug335, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body60)) #9
          to label %if.then54 [label %do.body60], !srcloc !441

if.then54:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx55 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 6, i32 %i.0526
  %2 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx55, align 1
  %conv56 = zext i8 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug335, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %i.0526, i32 noundef %conv56) #9
  br label %do.body60

do.body60:                                        ; preds = %if.then54, %do.body40
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %for.inc)) #9
          to label %if.then74 [label %for.inc], !srcloc !441

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx75 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 5, i32 %i.0526
  %4 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx75, align 1
  %conv76 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug336, ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %i.0526, i32 noundef %conv76) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then74, %do.body60
  %inc = add nuw nsw i32 %i.0526, 1
  %exitcond.not = icmp eq i32 %inc, 10
  br i1 %exitcond.not, label %do.body80, label %for.inc.do.body22_crit_edge

for.inc.do.body22_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body22

do.body80:                                        ; preds = %for.inc
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body102)) #9
          to label %if.then94 [label %do.body102], !srcloc !441

if.then94:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug337, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 5) #9
  br label %do.body102

do.body102:                                       ; preds = %for.inc162.do.body102_crit_edge, %if.then94, %do.body80
  %i.1530 = phi i32 [ %inc163, %for.inc162.do.body102_crit_edge ], [ 0, %do.body80 ], [ 0, %if.then94 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body122)) #9
          to label %if.then116 [label %do.body122], !srcloc !441

if.then116:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx117 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 7, i32 %i.1530
  %6 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx117, align 1
  %conv118 = zext i8 %7 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug338, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %i.1530, i32 noundef %conv118) #9
  br label %do.body122

do.body122:                                       ; preds = %if.then116, %do.body102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body142)) #9
          to label %if.then136 [label %do.body142], !srcloc !441

if.then136:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx137 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 8, i32 %i.1530
  %8 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx137, align 1
  %conv138 = zext i8 %9 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug339, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %i.1530, i32 noundef %conv138) #9
  br label %do.body142

do.body142:                                       ; preds = %if.then136, %do.body122
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %for.inc162)) #9
          to label %if.then156 [label %for.inc162], !srcloc !441

if.then156:                                       ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx157 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 9, i32 %i.1530
  %10 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx157, align 1
  %conv158 = zext i8 %11 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug340, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %i.1530, i32 noundef %conv158) #9
  br label %for.inc162

for.inc162:                                       ; preds = %if.then156, %do.body142
  %inc163 = add nuw nsw i32 %i.1530, 1
  %exitcond539.not = icmp eq i32 %inc163, 5
  br i1 %exitcond539.not, label %do.body165, label %for.inc162.do.body102_crit_edge

for.inc162.do.body102_crit_edge:                  ; preds = %for.inc162
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body102

do.body165:                                       ; preds = %for.inc162
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body187)) #9
          to label %if.then179 [label %do.body187], !srcloc !441

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug341, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 3) #9
  br label %do.body187

do.body187:                                       ; preds = %for.inc207.do.body187_crit_edge, %if.then179, %do.body165
  %i.2534 = phi i32 [ %inc208, %for.inc207.do.body187_crit_edge ], [ 0, %do.body165 ], [ 0, %if.then179 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %for.inc207)) #9
          to label %if.then201 [label %for.inc207], !srcloc !441

if.then201:                                       ; preds = %do.body187
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx202 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 10, i32 %i.2534
  %12 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx202, align 1
  %conv203 = zext i8 %13 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug342, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %i.2534, i32 noundef %conv203) #9
  br label %for.inc207

for.inc207:                                       ; preds = %if.then201, %do.body187
  %inc208 = add nuw nsw i32 %i.2534, 1
  %exitcond540.not = icmp eq i32 %inc208, 3
  br i1 %exitcond540.not, label %for.inc207.for.cond214.preheader_crit_edge, label %for.inc207.do.body187_crit_edge

for.inc207.do.body187_crit_edge:                  ; preds = %for.inc207
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body187

for.inc207.for.cond214.preheader_crit_edge:       ; preds = %for.inc207
  br label %for.cond214.preheader

for.cond214.preheader:                            ; preds = %for.inc242.for.cond214.preheader_crit_edge, %for.inc207.for.cond214.preheader_crit_edge
  %i.3538 = phi i32 [ %inc243, %for.inc242.for.cond214.preheader_crit_edge ], [ 0, %for.inc207.for.cond214.preheader_crit_edge ]
  br label %do.body218

do.body218:                                       ; preds = %for.inc239.do.body218_crit_edge, %for.cond214.preheader
  %j.0536 = phi i32 [ 0, %for.cond214.preheader ], [ %inc240, %for.inc239.do.body218_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug343, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %for.inc239)) #9
          to label %if.then232 [label %for.inc239], !srcloc !441

if.then232:                                       ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx234 = getelementptr %struct.w83791d_data, ptr %data, i32 0, i32 11, i32 %i.3538, i32 %j.0536
  %14 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %arrayidx234, align 2
  %conv235 = zext i16 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug343, ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %i.3538, i32 noundef %j.0536, i32 noundef %conv235) #9
  br label %for.inc239

for.inc239:                                       ; preds = %if.then232, %do.body218
  %inc240 = add nuw nsw i32 %j.0536, 1
  %exitcond541.not = icmp eq i32 %inc240, 3
  br i1 %exitcond541.not, label %for.inc242, label %for.inc239.do.body218_crit_edge

for.inc239.do.body218_crit_edge:                  ; preds = %for.inc239
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body218

for.inc242:                                       ; preds = %for.inc239
  %inc243 = add nuw nsw i32 %i.3538, 1
  %exitcond542.not = icmp eq i32 %inc243, 2
  br i1 %exitcond542.not, label %do.body245, label %for.inc242.for.cond214.preheader_crit_edge

for.inc242.for.cond214.preheader_crit_edge:       ; preds = %for.inc242
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond214.preheader

do.body245:                                       ; preds = %for.inc242
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug344, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body263)) #9
          to label %if.then259 [label %do.body263], !srcloc !441

if.then259:                                       ; preds = %do.body245
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug344, ptr noundef %dev, ptr noundef nonnull @.str.28) #9
  br label %do.body263

do.body263:                                       ; preds = %if.then259, %do.body245
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body281)) #9
          to label %if.then277 [label %do.body281], !srcloc !441

if.then277:                                       ; preds = %do.body263
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.w83791d_data, ptr %data, i32 0, i32 16
  %16 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %alarms, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug345, ptr noundef %dev, ptr noundef nonnull @.str.29, i32 noundef %17) #9
  br label %do.body281

do.body281:                                       ; preds = %if.then277, %do.body263
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug346, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body299)) #9
          to label %if.then295 [label %do.body299], !srcloc !441

if.then295:                                       ; preds = %do.body281
  call void @__sanitizer_cov_trace_pc() #11
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %data, i32 0, i32 18
  %18 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %beep_mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug346, ptr noundef %dev, ptr noundef nonnull @.str.30, i32 noundef %19) #9
  br label %do.body299

do.body299:                                       ; preds = %if.then295, %do.body281
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body318)) #9
          to label %if.then313 [label %do.body318], !srcloc !441

if.then313:                                       ; preds = %do.body299
  call void @__sanitizer_cov_trace_pc() #11
  %beep_enable = getelementptr inbounds %struct.w83791d_data, ptr %data, i32 0, i32 17
  %20 = ptrtoint ptr %beep_enable to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %beep_enable, align 4
  %conv314 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug347, ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %conv314) #9
  br label %do.body318

do.body318:                                       ; preds = %if.then313, %do.body299
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body337)) #9
          to label %if.then332 [label %do.body337], !srcloc !441

if.then332:                                       ; preds = %do.body318
  call void @__sanitizer_cov_trace_pc() #11
  %vid = getelementptr inbounds %struct.w83791d_data, ptr %data, i32 0, i32 19
  %22 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %vid, align 4
  %conv333 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug348, ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %conv333) #9
  br label %do.body337

do.body337:                                       ; preds = %if.then332, %do.body318
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body356)) #9
          to label %if.then351 [label %do.body356], !srcloc !441

if.then351:                                       ; preds = %do.body337
  call void @__sanitizer_cov_trace_pc() #11
  %vrm = getelementptr inbounds %struct.w83791d_data, ptr %data, i32 0, i32 20
  %24 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %vrm, align 1
  %conv352 = zext i8 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug349, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv352) #9
  br label %do.body356

do.body356:                                       ; preds = %if.then351, %do.body337
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.body374)) #9
          to label %if.then370 [label %do.body374], !srcloc !441

if.then370:                                       ; preds = %do.body356
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug350, ptr noundef %dev, ptr noundef nonnull @.str.34) #9
  br label %do.body374

do.body374:                                       ; preds = %if.then370, %do.body356
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83791d_print_debug.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83791d_print_debug, %do.end391)) #9
          to label %if.then388 [label %do.end391], !srcloc !441

if.then388:                                       ; preds = %do.body374
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83791d_print_debug.__UNIQUE_ID_ddebug351, ptr noundef %dev, ptr noundef nonnull @.str.35) #9
  br label %do.end391

do.end391:                                        ; preds = %if.then388, %do.body374
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  %div33 = lshr i32 %add, 4
  %7 = call i32 @llvm.umin.i32(i32 %div33, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 6, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr [10 x i8], ptr @W83791D_REG_IN_MIN, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %call.i34 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %10, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_max(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %add = add i32 %6, 8
  %div33 = lshr i32 %add, 4
  %7 = call i32 @llvm.umin.i32(i32 %div33, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 5, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr [10 x i8], ptr @W83791D_REG_IN_MAX, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %call.i34 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %10, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 18
  %2 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %beep_mask, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %div = sdiv i32 %3, 8
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool5.not = icmp ne i32 %6, 0
  %cond = zext i1 %tobool5.not to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %cond, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %mul = shl nsw i32 %div, 3
  %shl = shl i32 255, %mul
  %neg = xor i32 %shl, -1
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %beep_mask, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %beep_mask, align 4
  %arrayidx = getelementptr [3 x i8], ptr @W83791D_REG_BEEP_CTRL, i32 0, i32 %div
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %call.i44 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #9
  %shl8 = shl i32 %call.i44, %mul
  %12 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %beep_mask, align 4
  %or = or i32 %13, %shl8
  %shl10 = shl nuw i32 1, %3
  %neg11 = xor i32 %shl10, -1
  %and13 = and i32 %or, %neg11
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %shl14 = shl i32 %15, %3
  %or16 = or i32 %shl14, %and13
  store i32 %or16, ptr %beep_mask, align 4
  %shr = lshr i32 %or16, %mul
  %conv = trunc i32 %shr to i8
  %call.i45 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11, i8 noundef zeroext %conv) #9
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
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %alarms = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 16
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %3, %1
  %and = and i32 %shr, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 7, i32 %1
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 9, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 8, i32 %1
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 9, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_min(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.fan_to_reg.exit_crit_edge, label %if.end.i

if.end.fan_to_reg.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_to_reg.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 %3
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
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end.i, %if.end.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %if.end.fan_to_reg.exit_crit_edge ]
  %arrayidx6 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 %3
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %retval.0.i, ptr %arrayidx6, align 1
  %arrayidx7 = getelementptr [5 x i8], ptr @W83791D_REG_FAN_MIN, i32 0, i32 %3
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %call.i26 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %15, i8 noundef zeroext %retval.0.i) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %fan_to_reg.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %fan_to_reg.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_div(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.91, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_div(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 8, i32 %3
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.false12:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = zext i8 %6 to i32
  %arrayidx16 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 %3
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %9 to i32
  %mul = shl i32 %conv, %conv17
  %div = sdiv i32 1350000, %mul
  br label %cond.end18

cond.end18.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end18

cond.end18:                                       ; preds = %cond.end18.fold.split, %cond.false12, %if.end.cond.end18_crit_edge
  %cond19 = phi i32 [ -1, %if.end.cond.end18_crit_edge ], [ %div, %cond.false12 ], [ 0, %cond.end18.fold.split ]
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = call i32 @llvm.smax.i32(i32 %11, i32 1) #9
  %13 = call i32 @llvm.umin.i32(i32 %12, i32 128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp81.i = icmp ult i32 %13, 2
  br i1 %cmp81.i, label %cond.end18.div_to_reg.exit_crit_edge, label %if.end.i

cond.end18.div_to_reg.exit_crit_edge:             ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i:                                         ; preds = %cond.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp8.i = icmp ult i32 %13, 4
  br i1 %cmp8.i, label %if.end.i.div_to_reg.exit_crit_edge, label %if.end.i.1

if.end.i.div_to_reg.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %13)
  %cmp8.i.1 = icmp ult i32 %13, 8
  br i1 %cmp8.i.1, label %if.end.i.1.div_to_reg.exit_crit_edge, label %if.end.i.2

if.end.i.1.div_to_reg.exit_crit_edge:             ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp8.i.2 = icmp ult i32 %13, 16
  br i1 %cmp8.i.2, label %if.end.i.2.div_to_reg.exit_crit_edge, label %if.end.i.3

if.end.i.2.div_to_reg.exit_crit_edge:             ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %13)
  %cmp8.i.3 = icmp ult i32 %13, 32
  br i1 %cmp8.i.3, label %if.end.i.3.div_to_reg.exit_crit_edge, label %if.end.i.4

if.end.i.3.div_to_reg.exit_crit_edge:             ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp8.i.4 = icmp ult i32 %13, 64
  br i1 %cmp8.i.4, label %if.end.i.4.div_to_reg.exit_crit_edge, label %if.end.i.5

if.end.i.4.div_to_reg.exit_crit_edge:             ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %div_to_reg.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %12)
  %cmp8.i.5 = icmp ult i32 %12, 128
  %spec.select = select i1 %cmp8.i.5, i8 6, i8 7
  br label %div_to_reg.exit

div_to_reg.exit:                                  ; preds = %if.end.i.5, %if.end.i.4.div_to_reg.exit_crit_edge, %if.end.i.3.div_to_reg.exit_crit_edge, %if.end.i.2.div_to_reg.exit_crit_edge, %if.end.i.1.div_to_reg.exit_crit_edge, %if.end.i.div_to_reg.exit_crit_edge, %cond.end18.div_to_reg.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %cond.end18.div_to_reg.exit_crit_edge ], [ 1, %if.end.i.div_to_reg.exit_crit_edge ], [ 2, %if.end.i.1.div_to_reg.exit_crit_edge ], [ 3, %if.end.i.2.div_to_reg.exit_crit_edge ], [ 4, %if.end.i.3.div_to_reg.exit_crit_edge ], [ 5, %if.end.i.4.div_to_reg.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %arrayidx22 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 9, i32 %3
  %14 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %i.0.lcssa.i, ptr %arrayidx22, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %15 = icmp ult i32 %3, 5
  br i1 %15, label %switch.lookup, label %do.end

do.end:                                           ; preds = %div_to_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.92, i32 noundef %3) #12
  br label %err_exit

switch.lookup:                                    ; preds = %div_to_reg.exit
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.store_fan_div, i32 0, i32 %3
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep139 = getelementptr inbounds [5 x i32], ptr @switch.table.store_fan_div.149, i32 0, i32 %3
  %17 = ptrtoint ptr %switch.gep139 to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load140 = load i32, ptr %switch.gep139, align 4
  %switch.gep141 = getelementptr inbounds [5 x i32], ptr @switch.table.store_fan_div.150, i32 0, i32 %3
  %18 = ptrtoint ptr %switch.gep141 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load142 = load i32, ptr %switch.gep141, align 4
  %arrayidx27 = getelementptr [3 x i8], ptr @W83791D_REG_FAN_DIV, i32 0, i32 %switch.load
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27, align 1
  %call.i133 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %20) #9
  %and = and i32 %call.i133, %switch.load140
  %21 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx22, align 1
  %conv33 = zext i8 %22 to i32
  %shl35 = shl nuw nsw i32 %conv33, %switch.load142
  %neg = and i32 %switch.load140, 247
  %and37 = xor i32 %neg, 247
  %conv41 = and i32 %and37, %shl35
  %or = or i32 %conv41, %and
  %conv42 = trunc i32 %or to i8
  %call.i134 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %20, i8 noundef zeroext %conv42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp44 = icmp ult i32 %3, 3
  br i1 %cmp44, label %if.then46, label %switch.lookup.if.end68_crit_edge

switch.lookup.if.end68_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then46:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %shl47 = shl nuw nsw i32 32, %3
  %call.i135 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext 93) #9
  %conv51 = xor i32 %shl47, -1
  %and52 = and i32 %call.i135, %conv51
  %23 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx22, align 1
  %conv56 = zext i8 %24 to i32
  %add57 = add nuw nsw i32 %3, 3
  %shl58 = shl nuw nsw i32 %conv56, %add57
  %and61 = and i32 %shl58, %shl47
  %or65 = or i32 %and61, %and52
  %conv66 = trunc i32 %or65 to i8
  %call.i136 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext 93, i8 noundef zeroext %conv66) #9
  br label %if.end68

if.end68:                                         ; preds = %if.then46, %switch.lookup.if.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond19)
  %cmp.i = icmp eq i32 %cond19, 0
  br i1 %cmp.i, label %if.end68.fan_to_reg.exit_crit_edge, label %if.end.i137

if.end68.fan_to_reg.exit_crit_edge:               ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %fan_to_reg.exit

if.end.i137:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx22, align 1
  %conv71 = zext i8 %26 to i32
  %27 = call i32 @llvm.smax.i32(i32 %cond19, i32 1) #9
  %28 = call i32 @llvm.umin.i32(i32 %27, i32 1000000) #9
  %mul.i = shl i32 %28, %conv71
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %29 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #9
  %30 = call i32 @llvm.umin.i32(i32 %29, i32 254) #9
  %conv.i = trunc i32 %30 to i8
  br label %fan_to_reg.exit

fan_to_reg.exit:                                  ; preds = %if.end.i137, %if.end68.fan_to_reg.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i137 ], [ -1, %if.end68.fan_to_reg.exit_crit_edge ]
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %arrayidx76 = getelementptr [5 x i8], ptr @W83791D_REG_FAN_MIN, i32 0, i32 %3
  %32 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx76, align 1
  %call.i138 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %33, i8 noundef zeroext %retval.0.i) #9
  br label %err_exit

err_exit:                                         ; preds = %fan_to_reg.exit, %do.end
  %count.addr.0 = phi i32 [ -22, %do.end ], [ %count, %fan_to_reg.exit ]
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %err_exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %err_exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp1(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp23(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %conv = zext i8 %1 to i32
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %conv3 = zext i8 %3 to i32
  %arrayidx4 = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 11, i32 %conv, i32 %conv3
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx4, align 2
  %6 = sdiv i16 %5, 128
  %div = sext i16 %6 to i32
  %mul = mul nsw i32 %div, 500
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp1(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127999, i32 %6)
  %cmp = icmp slt i32 %6, -127999
  br i1 %cmp, label %if.end.cond.end14_crit_edge, label %cond.false

if.end.cond.end14_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 126999, i32 %6)
  %cmp5 = icmp sgt i32 %6, 126999
  br i1 %cmp5, label %cond.false.cond.end14_crit_edge, label %cond.false7

cond.false.cond.end14_crit_edge:                  ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end14

cond.false7:                                      ; preds = %cond.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp8 = icmp slt i32 %6, 0
  br i1 %cmp8, label %cond.true9, label %cond.false10

cond.true9:                                       ; preds = %cond.false7
  call void @__sanitizer_cov_trace_pc() #11
  %sub.nonneg = sub nsw i32 500, %6
  %div34 = udiv i32 %sub.nonneg, 1000
  %div34.neg = sub nsw i32 0, %div34
  br label %cond.end14

cond.false10:                                     ; preds = %cond.false7
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i32 %6, 500
  %div1135 = udiv i32 %add, 1000
  br label %cond.end14

cond.end14:                                       ; preds = %cond.false10, %cond.true9, %cond.false.cond.end14_crit_edge, %if.end.cond.end14_crit_edge
  %cond15 = phi i32 [ -128, %if.end.cond.end14_crit_edge ], [ 127, %cond.false.cond.end14_crit_edge ], [ %div34.neg, %cond.true9 ], [ %div1135, %cond.false10 ]
  %conv = trunc i32 %cond15 to i8
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 10, i32 %3
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx16 = getelementptr [3 x i8], ptr @W83791D_REG_TEMP1, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx16, align 1
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %9, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %cond.end14 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp23(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !443
  %nr4 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %3 = ptrtoint ptr %nr4 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %nr4, align 1
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %5 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index5, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv6 = zext i8 %6 to i32
  %conv = zext i8 %4 to i32
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -128000)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 127500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp18 = icmp sgt i32 %9, 0
  %cond30.in.v = select i1 %cmp18, i32 250, i32 -250
  %cond30.in = add nsw i32 %cond30.in.v, %10
  %cond30 = sdiv i32 %cond30.in, 500
  %cond30.tr = trunc i32 %cond30 to i16
  %conv31 = shl nsw i16 %cond30.tr, 7
  %arrayidx32 = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 11, i32 %conv, i32 %conv6
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv31, ptr %arrayidx32, align 2
  %mul34 = shl nuw nsw i32 %conv6, 1
  %arrayidx35 = getelementptr [2 x [6 x i8]], ptr @W83791D_REG_TEMP_ADD, i32 0, i32 %conv, i32 %mul34
  %12 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx35, align 1
  %14 = lshr i16 %conv31, 8
  %conv40 = trunc i16 %14 to i8
  %call.i86 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %13, i8 noundef zeroext %conv40) #9
  %add44 = or i32 %mul34, 1
  %arrayidx45 = getelementptr [2 x [6 x i8]], ptr @W83791D_REG_TEMP_ADD, i32 0, i32 %conv, i32 %add44
  %15 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx45, align 1
  %17 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx32, align 2
  %19 = trunc i16 %18 to i8
  %conv50 = and i8 %19, -128
  %call.i87 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %16, i8 noundef zeroext %conv50) #9
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
define internal i32 @alarms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 16
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alarms, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.91, i32 noundef %1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep_enable(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %beep_enable = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 17
  %0 = ptrtoint ptr %beep_enable to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %beep_enable, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep_enable(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2.not = icmp ne i32 %4, 0
  %conv = zext i1 %tobool2.not to i8
  %beep_enable = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %beep_enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %beep_enable, align 4
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %beep_mask, align 4
  %and = and i32 %7, -32769
  %shl = select i1 %tobool2.not, i32 32768, i32 0
  %or = or i32 %and, %shl
  store i32 %or, ptr %beep_mask, align 4
  %shr = lshr i32 %or, 8
  %and7 = and i32 %shr, 255
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and7, ptr %val, align 4
  %conv8 = trunc i32 %shr to i8
  %call.i22 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 87, i8 noundef zeroext %conv8) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_beep_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 18
  %0 = ptrtoint ptr %beep_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %beep_mask, align 4
  %and = and i32 %1, 16777215
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_beep_mask(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %and2 = and i32 %4, 16744447
  %beep_mask = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 18
  %beep_enable = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 17
  %5 = ptrtoint ptr %beep_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %beep_enable, align 4
  %conv = zext i8 %6 to i32
  %shl = shl nuw nsw i32 %conv, 15
  %or = or i32 %shl, %and2
  %7 = ptrtoint ptr %beep_mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %or, ptr %beep_mask, align 4
  store i32 %or, ptr %val, align 4
  %conv7 = trunc i32 %4 to i8
  %call.i23 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 86, i8 noundef zeroext %conv7) #9
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shr = ashr i32 %9, 8
  store i32 %shr, ptr %val, align 4
  %conv7.1 = trunc i32 %shr to i8
  %call.i23.1 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext 87, i8 noundef zeroext %conv7.1) #9
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %shr.1 = ashr i32 %11, 8
  store i32 %shr.1, ptr %val, align 4
  %conv7.2 = trunc i32 %shr.1 to i8
  %call.i23.2 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr, i8 noundef zeroext -93, i8 noundef zeroext %conv7.2) #9
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %shr.2 = ashr i32 %13, 8
  store i32 %shr.2, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %vid = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %vid, align 4
  %conv = zext i8 %1 to i32
  %vrm = getelementptr inbounds %struct.w83791d_data, ptr %call, i32 0, i32 20
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %call1 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %3) #9
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %call1)
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
  %vrm = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv)
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
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %4)
  %cmp = icmp ugt i32 %4, 255
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %vrm, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end3 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 12, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.91, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %conv = trunc i32 %7 to i8
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 12, i32 %3
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr [5 x i8], ptr @W83791D_REG_PWM, i32 0, i32 %3
  %9 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx12, align 1
  %call.i31 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %10, i8 noundef zeroext %conv) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwmenable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %add = add nuw nsw i32 %conv, 1
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.91, i32 noundef %add)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwmenable(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = add i32 %6, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = trunc i32 %10 to i8
  %conv = add i8 %11, -1
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 13, i32 %3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %13 = icmp ult i32 %3, 3
  br i1 %13, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.store_pwmenable, i32 0, i32 %3
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep43 = getelementptr inbounds [3 x i32], ptr @switch.table.store_pwmenable.151, i32 0, i32 %3
  %15 = ptrtoint ptr %switch.gep43 to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load44 = load i32, ptr %switch.gep43, align 4
  %switch.gep45 = getelementptr inbounds [3 x i32], ptr @switch.table.store_pwmenable.152, i32 0, i32 %3
  %16 = ptrtoint ptr %switch.gep45 to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load46 = load i32, ptr %switch.gep45, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %reg_idx.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %val_shift.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load44, %switch.lookup ]
  %keep_mask.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load46, %switch.lookup ]
  %arrayidx9 = getelementptr [2 x i8], ptr @W83791D_REG_FAN_CFG, i32 0, i32 %reg_idx.0
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx9, align 1
  %call.i41 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %18) #9
  %and = and i32 %call.i41, %keep_mask.0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx, align 1
  %conv16 = zext i8 %20 to i32
  %shl = shl nuw nsw i32 %conv16, %val_shift.0
  %or = or i32 %shl, %and
  %conv18 = trunc i32 %or to i8
  %call.i42 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %18, i8 noundef zeroext %conv18) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_target(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_target(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 127000)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp13.not = icmp eq i32 %8, 0
  %add = add nuw nsw i32 %8, 500
  %div1962 = udiv i32 %add, 1000
  %phi.cast = trunc i32 %div1962 to i8
  %cond24 = select i1 %cmp13.not, i8 0, i8 %phi.cast
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 14, i32 %3
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %cond24, ptr %arrayidx, align 1
  %arrayidx26 = getelementptr [3 x i8], ptr @W83791D_REG_TEMP_TARGET, i32 0, i32 %3
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx26, align 1
  %call.i60 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11) #9
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = trunc i32 %call.i60 to i8
  %15 = and i8 %14, -128
  %conv34 = or i8 %15, %13
  %call.i61 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %11, i8 noundef zeroext %conv34) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_tolerance(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83791d_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83791d_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = mul nuw nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp_tolerance(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %dev, i32 -32
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !443
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %5 = icmp ult i32 %3, 3
  br i1 %5, label %switch.lookup, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.store_temp_tolerance, i32 0, i32 %3
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep54 = getelementptr inbounds [3 x i32], ptr @switch.table.store_temp_tolerance.153, i32 0, i32 %3
  %7 = ptrtoint ptr %switch.gep54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load55 = load i32, ptr %switch.gep54, align 4
  %switch.gep56 = getelementptr inbounds [3 x i32], ptr @switch.table.store_temp_tolerance.154, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep56 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load57 = load i32, ptr %switch.gep56, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end.sw.epilog_crit_edge
  %reg_idx.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %val_shift.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load55, %switch.lookup ]
  %keep_mask.0 = phi i32 [ 0, %if.end.sw.epilog_crit_edge ], [ %switch.load57, %switch.lookup ]
  %update_lock = getelementptr inbounds %struct.w83791d_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = call i32 @llvm.umin.i32(i32 %10, i32 15000)
  %12 = trunc i32 %11 to i16
  %div15.lhs.trunc = add nuw nsw i16 %12, 500
  %div1553 = udiv i16 %div15.lhs.trunc, 1000
  %conv = trunc i16 %div1553 to i8
  %arrayidx = getelementptr %struct.w83791d_data, ptr %1, i32 0, i32 15, i32 %3
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx16 = getelementptr [2 x i8], ptr @W83791D_REG_TEMP_TOL, i32 0, i32 %reg_idx.0
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx16, align 1
  %call.i51 = call i32 @i2c_smbus_read_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %15) #9
  %and = and i32 %call.i51, %keep_mask.0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv24 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv24, %val_shift.0
  %or = or i32 %shl, %and
  %conv27 = trunc i32 %or to i8
  %call.i52 = call i32 @i2c_smbus_write_byte_data(ptr noundef %add.ptr3, i8 noundef zeroext %15, i8 noundef zeroext %conv27) #9
  call void @mutex_unlock(ptr noundef %update_lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 205)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !288, !289, !290, !291, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !359, !361, !363, !365, !367, !368, !370, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !410, !411, !413, !414, !416, !417, !418, !419, !420, !422, !423, !424, !426, !428, !430}
!llvm.module.flags = !{!432, !433, !434, !435, !436, !437, !438, !439}
!llvm.ident = !{!440}

!0 = !{ptr @__param_force_subclients, !1, !"__param_force_subclients", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83791d.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_force_subclientstype288, !1, !"__UNIQUE_ID_force_subclientstype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_force_subclients289, !4, !"__UNIQUE_ID_force_subclients289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83791d.c", i32 46, i32 1}
!5 = !{ptr @__param_reset, !6, !"__param_reset", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83791d.c", i32 50, i32 1}
!7 = !{ptr @__UNIQUE_ID_resettype290, !6, !"__UNIQUE_ID_resettype290", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_reset291, !9, !"__UNIQUE_ID_reset291", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83791d.c", i32 51, i32 1}
!10 = !{ptr @__param_init, !11, !"__param_init", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83791d.c", i32 54, i32 1}
!12 = !{ptr @__UNIQUE_ID_inittype292, !11, !"__UNIQUE_ID_inittype292", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_init293, !14, !"__UNIQUE_ID_init293", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/w83791d.c", i32 55, i32 1}
!15 = !{ptr @__initcall__kmod_w83791d__352_1655_w83791d_driver_init6, !16, !"__initcall__kmod_w83791d__352_1655_w83791d_driver_init6", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83791d.c", i32 1655, i32 1}
!17 = !{ptr @__exitcall_w83791d_driver_exit, !16, !"__exitcall_w83791d_driver_exit", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_author353, !19, !"__UNIQUE_ID_author353", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/w83791d.c", i32 1657, i32 1}
!20 = !{ptr @__UNIQUE_ID_description354, !21, !"__UNIQUE_ID_description354", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/w83791d.c", i32 1658, i32 1}
!22 = !{ptr @__UNIQUE_ID_file355, !23, !"__UNIQUE_ID_file355", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/w83791d.c", i32 1659, i32 1}
!24 = !{ptr @__UNIQUE_ID_license356, !23, !"__UNIQUE_ID_license356", i1 false, i1 false}
!25 = !{ptr @reset, !26, !"reset", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/w83791d.c", i32 49, i32 13}
!27 = !{ptr @init, !28, !"init", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/w83791d.c", i32 53, i32 13}
!29 = !{ptr @__param_str_force_subclients, !1, !"__param_str_force_subclients", i1 false, i1 false}
!30 = !{ptr @__param_arr_force_subclients, !1, !"__param_arr_force_subclients", i1 false, i1 false}
!31 = !{ptr @force_subclients, !32, !"force_subclients", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/w83791d.c", i32 44, i32 23}
!33 = !{ptr @__param_str_reset, !6, !"__param_str_reset", i1 false, i1 false}
!34 = !{ptr @__param_str_init, !11, !"__param_str_init", i1 false, i1 false}
!35 = !{ptr @.str, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/w83791d.c", i32 339, i32 11}
!37 = !{ptr @w83791d_driver, !38, !"w83791d_driver", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/w83791d.c", i32 336, i32 26}
!39 = !{ptr @w83791d_group, !40, !"w83791d_group", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/w83791d.c", i32 1233, i32 37}
!41 = !{ptr @w83791d_attributes, !42, !"w83791d_attributes", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/w83791d.c", i32 1196, i32 26}
!43 = !{ptr @.str.1, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/w83791d.c", i32 389, i32 2}
!45 = !{ptr @.str.2, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83791d.c", i32 390, i32 2}
!47 = !{ptr @.str.3, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83791d.c", i32 391, i32 2}
!49 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83791d.c", i32 392, i32 2}
!51 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/w83791d.c", i32 393, i32 2}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/w83791d.c", i32 394, i32 2}
!55 = !{ptr @.str.7, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/w83791d.c", i32 395, i32 2}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/w83791d.c", i32 396, i32 2}
!59 = !{ptr @.str.9, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/w83791d.c", i32 397, i32 2}
!61 = !{ptr @.str.10, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/w83791d.c", i32 398, i32 2}
!63 = !{ptr @sda_in_input, !64, !"sda_in_input", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/w83791d.c", i32 388, i32 39}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83791d.c", i32 360, i32 1}
!67 = !{ptr @.str.12, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/w83791d.c", i32 1489, i32 3}
!69 = !{ptr @.str.13, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.14, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @w83791d_update_device.__UNIQUE_ID_ddebug331, !68, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!72 = !{ptr @W83791D_REG_IN, !73, !"W83791D_REG_IN", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/w83791d.c", i32 58, i32 17}
!74 = !{ptr @W83791D_REG_IN_MAX, !75, !"W83791D_REG_IN_MAX", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/w83791d.c", i32 71, i32 17}
!76 = !{ptr @W83791D_REG_IN_MIN, !77, !"W83791D_REG_IN_MIN", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/w83791d.c", i32 83, i32 17}
!78 = distinct !{null, !79, !"W83791D_REG_FAN", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/w83791d.c", i32 95, i32 17}
!80 = !{ptr @W83791D_REG_FAN_MIN, !81, !"W83791D_REG_FAN_MIN", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/w83791d.c", i32 102, i32 17}
!82 = !{ptr @W83791D_REG_FAN_DIV, !83, !"W83791D_REG_FAN_DIV", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/w83791d.c", i32 134, i32 17}
!84 = !{ptr @W83791D_REG_PWM, !85, !"W83791D_REG_PWM", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/w83791d.c", i32 110, i32 17}
!86 = !{ptr @W83791D_REG_FAN_CFG, !87, !"W83791D_REG_FAN_CFG", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/w83791d.c", i32 129, i32 17}
!88 = !{ptr @W83791D_REG_TEMP_TARGET, !89, !"W83791D_REG_TEMP_TARGET", i1 false, i1 false}
!89 = !{!"../drivers/hwmon/w83791d.c", i32 118, i32 17}
!90 = !{ptr @W83791D_REG_TEMP_TOL, !91, !"W83791D_REG_TEMP_TOL", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/w83791d.c", i32 124, i32 17}
!92 = !{ptr @W83791D_REG_TEMP1, !93, !"W83791D_REG_TEMP1", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/w83791d.c", i32 144, i32 17}
!94 = !{ptr @W83791D_REG_TEMP_ADD, !95, !"W83791D_REG_TEMP_ADD", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/w83791d.c", i32 150, i32 17}
!96 = !{ptr @W83791D_REG_BEEP_CTRL, !97, !"W83791D_REG_BEEP_CTRL", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/w83791d.c", i32 167, i32 17}
!98 = !{ptr @.str.15, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/w83791d.c", i32 1616, i32 2}
!100 = !{ptr @.str.16, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug332, !99, !"__UNIQUE_ID_ddebug332", i1 false, i1 false}
!102 = !{ptr @.str.17, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/w83791d.c", i32 1617, i32 2}
!104 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug333, !103, !"__UNIQUE_ID_ddebug333", i1 false, i1 false}
!105 = !{ptr @.str.18, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/w83791d.c", i32 1619, i32 3}
!107 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug334, !106, !"__UNIQUE_ID_ddebug334", i1 false, i1 false}
!108 = !{ptr @.str.19, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/w83791d.c", i32 1620, i32 3}
!110 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug335, !109, !"__UNIQUE_ID_ddebug335", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/w83791d.c", i32 1621, i32 3}
!113 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug336, !112, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!114 = !{ptr @.str.21, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/w83791d.c", i32 1623, i32 2}
!116 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug337, !115, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!117 = !{ptr @.str.22, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/w83791d.c", i32 1625, i32 3}
!119 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug338, !118, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!120 = !{ptr @.str.23, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/w83791d.c", i32 1626, i32 3}
!122 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug339, !121, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!123 = !{ptr @.str.24, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/w83791d.c", i32 1627, i32 3}
!125 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug340, !124, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!126 = !{ptr @.str.25, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/w83791d.c", i32 1634, i32 2}
!128 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug341, !127, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!129 = !{ptr @.str.26, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/w83791d.c", i32 1636, i32 3}
!131 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug342, !130, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!132 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/w83791d.c", i32 1639, i32 4}
!134 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug343, !133, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!135 = !{ptr @.str.28, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/w83791d.c", i32 1644, i32 2}
!137 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug344, !136, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!138 = !{ptr @.str.29, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/w83791d.c", i32 1645, i32 2}
!140 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug345, !139, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!141 = !{ptr @.str.30, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/w83791d.c", i32 1646, i32 2}
!143 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug346, !142, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!144 = !{ptr @.str.31, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/w83791d.c", i32 1647, i32 2}
!146 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug347, !145, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!147 = !{ptr @.str.32, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/w83791d.c", i32 1648, i32 2}
!149 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug348, !148, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!150 = !{ptr @.str.33, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/w83791d.c", i32 1649, i32 2}
!152 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug349, !151, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!153 = !{ptr @.str.34, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/w83791d.c", i32 1650, i32 2}
!155 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug350, !154, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!156 = !{ptr @.str.35, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/w83791d.c", i32 1651, i32 2}
!158 = !{ptr @w83791d_print_debug.__UNIQUE_ID_ddebug351, !157, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!159 = !{ptr @.str.36, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/w83791d.c", i32 402, i32 2}
!161 = !{ptr @.str.37, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/w83791d.c", i32 403, i32 2}
!163 = !{ptr @.str.38, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/w83791d.c", i32 404, i32 2}
!165 = !{ptr @.str.39, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/w83791d.c", i32 405, i32 2}
!167 = !{ptr @.str.40, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/w83791d.c", i32 406, i32 2}
!169 = !{ptr @.str.41, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/w83791d.c", i32 407, i32 2}
!171 = !{ptr @.str.42, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/w83791d.c", i32 408, i32 2}
!173 = !{ptr @.str.43, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/w83791d.c", i32 409, i32 2}
!175 = !{ptr @.str.44, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/w83791d.c", i32 410, i32 2}
!177 = !{ptr @.str.45, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/w83791d.c", i32 411, i32 2}
!179 = !{ptr @sda_in_min, !180, !"sda_in_min", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/w83791d.c", i32 401, i32 39}
!181 = !{ptr @.str.46, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/w83791d.c", i32 415, i32 2}
!183 = !{ptr @.str.47, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/w83791d.c", i32 416, i32 2}
!185 = !{ptr @.str.48, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/w83791d.c", i32 417, i32 2}
!187 = !{ptr @.str.49, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/w83791d.c", i32 418, i32 2}
!189 = !{ptr @.str.50, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/w83791d.c", i32 419, i32 2}
!191 = !{ptr @.str.51, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/w83791d.c", i32 420, i32 2}
!193 = !{ptr @.str.52, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/w83791d.c", i32 421, i32 2}
!195 = !{ptr @.str.53, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/w83791d.c", i32 422, i32 2}
!197 = !{ptr @.str.54, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/w83791d.c", i32 423, i32 2}
!199 = !{ptr @.str.55, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/w83791d.c", i32 424, i32 2}
!201 = !{ptr @sda_in_max, !202, !"sda_in_max", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/w83791d.c", i32 414, i32 39}
!203 = !{ptr @.str.56, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/w83791d.c", i32 490, i32 2}
!205 = !{ptr @.str.57, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/w83791d.c", i32 491, i32 2}
!207 = !{ptr @.str.58, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/w83791d.c", i32 492, i32 2}
!209 = !{ptr @.str.59, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/w83791d.c", i32 493, i32 2}
!211 = !{ptr @.str.60, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/w83791d.c", i32 494, i32 2}
!213 = !{ptr @.str.61, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/w83791d.c", i32 495, i32 2}
!215 = !{ptr @.str.62, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/w83791d.c", i32 496, i32 2}
!217 = !{ptr @.str.63, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/w83791d.c", i32 497, i32 2}
!219 = !{ptr @.str.64, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/w83791d.c", i32 498, i32 2}
!221 = !{ptr @.str.65, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/w83791d.c", i32 499, i32 2}
!223 = !{ptr @sda_in_beep, !224, !"sda_in_beep", i1 false, i1 false}
!224 = !{!"../drivers/hwmon/w83791d.c", i32 489, i32 39}
!225 = !{ptr @.str.66, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/w83791d.c", i32 503, i32 2}
!227 = !{ptr @.str.67, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/w83791d.c", i32 504, i32 2}
!229 = !{ptr @.str.68, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/hwmon/w83791d.c", i32 505, i32 2}
!231 = !{ptr @.str.69, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/w83791d.c", i32 506, i32 2}
!233 = !{ptr @.str.70, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/w83791d.c", i32 507, i32 2}
!235 = !{ptr @.str.71, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/hwmon/w83791d.c", i32 508, i32 2}
!237 = !{ptr @.str.72, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/w83791d.c", i32 509, i32 2}
!239 = !{ptr @.str.73, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/w83791d.c", i32 510, i32 2}
!241 = !{ptr @.str.74, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/hwmon/w83791d.c", i32 511, i32 2}
!243 = !{ptr @.str.75, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/w83791d.c", i32 512, i32 2}
!245 = !{ptr @sda_in_alarm, !246, !"sda_in_alarm", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/w83791d.c", i32 502, i32 39}
!247 = !{ptr @.str.76, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/hwmon/w83791d.c", i32 658, i32 2}
!249 = !{ptr @.str.77, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/hwmon/w83791d.c", i32 659, i32 2}
!251 = !{ptr @.str.78, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/w83791d.c", i32 660, i32 2}
!253 = !{ptr @.str.79, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/hwmon/w83791d.c", i32 661, i32 2}
!255 = !{ptr @.str.80, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/hwmon/w83791d.c", i32 662, i32 2}
!257 = !{ptr @sda_fan_input, !258, !"sda_fan_input", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/w83791d.c", i32 657, i32 39}
!259 = !{ptr @.str.81, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/hwmon/w83791d.c", i32 666, i32 2}
!261 = !{ptr @.str.82, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/hwmon/w83791d.c", i32 668, i32 2}
!263 = !{ptr @.str.83, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/w83791d.c", i32 670, i32 2}
!265 = !{ptr @.str.84, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/hwmon/w83791d.c", i32 672, i32 2}
!267 = !{ptr @.str.85, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/hwmon/w83791d.c", i32 674, i32 2}
!269 = !{ptr @sda_fan_min, !270, !"sda_fan_min", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/w83791d.c", i32 665, i32 39}
!271 = !{ptr @.str.86, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/hwmon/w83791d.c", i32 679, i32 2}
!273 = !{ptr @.str.87, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/hwmon/w83791d.c", i32 681, i32 2}
!275 = !{ptr @.str.88, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/w83791d.c", i32 683, i32 2}
!277 = !{ptr @.str.89, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/hwmon/w83791d.c", i32 685, i32 2}
!279 = !{ptr @.str.90, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/hwmon/w83791d.c", i32 687, i32 2}
!281 = !{ptr @sda_fan_div, !282, !"sda_fan_div", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/w83791d.c", i32 678, i32 39}
!283 = !{ptr @.str.91, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/hwmon/w83791d.c", i32 558, i32 22}
!285 = !{ptr @.str.92, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/w83791d.c", i32 622, i32 3}
!287 = !{ptr @.str.93, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @.str.94, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.95, !286, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @store_fan_div._entry, !286, !"_entry", i1 false, i1 false}
!291 = !{ptr @store_fan_div._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!292 = !{ptr @.str.96, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/hwmon/w83791d.c", i32 692, i32 2}
!294 = !{ptr @.str.97, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/hwmon/w83791d.c", i32 693, i32 2}
!296 = !{ptr @.str.98, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/hwmon/w83791d.c", i32 694, i32 2}
!298 = !{ptr @.str.99, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/w83791d.c", i32 695, i32 2}
!300 = !{ptr @.str.100, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/hwmon/w83791d.c", i32 696, i32 2}
!302 = !{ptr @sda_fan_beep, !303, !"sda_fan_beep", i1 false, i1 false}
!303 = !{!"../drivers/hwmon/w83791d.c", i32 691, i32 39}
!304 = !{ptr @.str.101, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/w83791d.c", i32 700, i32 2}
!306 = !{ptr @.str.102, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/hwmon/w83791d.c", i32 701, i32 2}
!308 = !{ptr @.str.103, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/hwmon/w83791d.c", i32 702, i32 2}
!310 = !{ptr @.str.104, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/w83791d.c", i32 703, i32 2}
!312 = !{ptr @.str.105, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/hwmon/w83791d.c", i32 704, i32 2}
!314 = !{ptr @sda_fan_alarm, !315, !"sda_fan_alarm", i1 false, i1 false}
!315 = !{!"../drivers/hwmon/w83791d.c", i32 699, i32 39}
!316 = !{ptr @.str.106, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/w83791d.c", i32 987, i32 2}
!318 = !{ptr @.str.107, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/w83791d.c", i32 988, i32 2}
!320 = !{ptr @.str.108, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/w83791d.c", i32 989, i32 2}
!322 = !{ptr @sda_temp_input, !323, !"sda_temp_input", i1 false, i1 false}
!323 = !{!"../drivers/hwmon/w83791d.c", i32 986, i32 41}
!324 = !{ptr @.str.109, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/hwmon/w83791d.c", i32 993, i32 2}
!326 = !{ptr @.str.110, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/w83791d.c", i32 995, i32 2}
!328 = !{ptr @.str.111, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/hwmon/w83791d.c", i32 997, i32 2}
!330 = !{ptr @sda_temp_max, !331, !"sda_temp_max", i1 false, i1 false}
!331 = !{!"../drivers/hwmon/w83791d.c", i32 992, i32 41}
!332 = !{ptr @.str.112, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/w83791d.c", i32 1002, i32 2}
!334 = !{ptr @.str.113, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/w83791d.c", i32 1004, i32 2}
!336 = !{ptr @.str.114, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/w83791d.c", i32 1006, i32 2}
!338 = !{ptr @sda_temp_max_hyst, !339, !"sda_temp_max_hyst", i1 false, i1 false}
!339 = !{!"../drivers/hwmon/w83791d.c", i32 1001, i32 41}
!340 = !{ptr @.str.115, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/hwmon/w83791d.c", i32 1015, i32 2}
!342 = !{ptr @.str.116, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hwmon/w83791d.c", i32 1016, i32 2}
!344 = !{ptr @.str.117, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/hwmon/w83791d.c", i32 1017, i32 2}
!346 = !{ptr @sda_temp_beep, !347, !"sda_temp_beep", i1 false, i1 false}
!347 = !{!"../drivers/hwmon/w83791d.c", i32 1014, i32 39}
!348 = !{ptr @.str.118, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/hwmon/w83791d.c", i32 1021, i32 2}
!350 = !{ptr @.str.119, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/w83791d.c", i32 1022, i32 2}
!352 = !{ptr @.str.120, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/w83791d.c", i32 1023, i32 2}
!354 = !{ptr @sda_temp_alarm, !355, !"sda_temp_alarm", i1 false, i1 false}
!355 = !{!"../drivers/hwmon/w83791d.c", i32 1020, i32 39}
!356 = !{ptr @.str.121, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/hwmon/w83791d.c", i32 1034, i32 8}
!358 = !{ptr @dev_attr_alarms, !357, !"dev_attr_alarms", i1 false, i1 false}
!359 = !{ptr @.str.122, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/hwmon/w83791d.c", i32 1126, i32 2}
!361 = !{ptr @.str.123, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/w83791d.c", i32 1128, i32 2}
!363 = !{ptr @sda_beep_ctrl, !364, !"sda_beep_ctrl", i1 false, i1 false}
!364 = !{!"../drivers/hwmon/w83791d.c", i32 1125, i32 39}
!365 = !{ptr @.str.124, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/hwmon/w83791d.c", i32 1140, i32 8}
!367 = !{ptr @dev_attr_cpu0_vid, !366, !"dev_attr_cpu0_vid", i1 false, i1 false}
!368 = !{ptr @.str.125, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/w83791d.c", i32 1173, i32 8}
!370 = !{ptr @dev_attr_vrm, !369, !"dev_attr_vrm", i1 false, i1 false}
!371 = !{ptr @.str.126, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/w83791d.c", i32 737, i32 2}
!373 = !{ptr @.str.127, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/hwmon/w83791d.c", i32 739, i32 2}
!375 = !{ptr @.str.128, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/hwmon/w83791d.c", i32 741, i32 2}
!377 = !{ptr @.str.129, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/w83791d.c", i32 743, i32 2}
!379 = !{ptr @.str.130, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/hwmon/w83791d.c", i32 745, i32 2}
!381 = !{ptr @sda_pwm, !382, !"sda_pwm", i1 false, i1 false}
!382 = !{!"../drivers/hwmon/w83791d.c", i32 736, i32 39}
!383 = !{ptr @.str.131, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/hwmon/w83791d.c", i32 806, i32 2}
!385 = !{ptr @.str.132, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/hwmon/w83791d.c", i32 808, i32 2}
!387 = !{ptr @.str.133, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/w83791d.c", i32 810, i32 2}
!389 = !{ptr @sda_pwmenable, !390, !"sda_pwmenable", i1 false, i1 false}
!390 = !{!"../drivers/hwmon/w83791d.c", i32 805, i32 39}
!391 = !{ptr @.str.134, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/hwmon/w83791d.c", i32 848, i32 2}
!393 = !{ptr @.str.135, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/hwmon/w83791d.c", i32 850, i32 2}
!395 = !{ptr @.str.136, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/hwmon/w83791d.c", i32 852, i32 2}
!397 = !{ptr @sda_temp_target, !398, !"sda_temp_target", i1 false, i1 false}
!398 = !{!"../drivers/hwmon/w83791d.c", i32 847, i32 39}
!399 = !{ptr @.str.137, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/hwmon/w83791d.c", i32 910, i32 2}
!401 = !{ptr @.str.138, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/hwmon/w83791d.c", i32 912, i32 2}
!403 = !{ptr @.str.139, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/hwmon/w83791d.c", i32 914, i32 2}
!405 = !{ptr @sda_temp_tolerance, !406, !"sda_temp_tolerance", i1 false, i1 false}
!406 = !{!"../drivers/hwmon/w83791d.c", i32 909, i32 39}
!407 = !{ptr @.str.140, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/hwmon/w83791d.c", i32 1351, i32 2}
!409 = !{ptr @.str.141, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @w83791d_probe.__UNIQUE_ID_ddebug330, !408, !"__UNIQUE_ID_ddebug330", i1 false, i1 false}
!411 = !{ptr @w83791d_probe.__key, !412, !"__key", i1 false, i1 false}
!412 = !{!"../drivers/hwmon/w83791d.c", i32 1361, i32 2}
!413 = !{ptr @.str.142, !412, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.143, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/hwmon/w83791d.c", i32 1266, i32 5}
!416 = !{ptr @.str.144, !415, !"<string literal>", i1 false, i1 false}
!417 = !{ptr @.str.145, !415, !"<string literal>", i1 false, i1 false}
!418 = !{ptr @w83791d_detect_subclients._entry, !415, !"_entry", i1 false, i1 false}
!419 = !{ptr @w83791d_detect_subclients._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.147, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/hwmon/w83791d.c", i32 1281, i32 3}
!422 = !{ptr @w83791d_detect_subclients._entry.146, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @w83791d_detect_subclients._entry_ptr.148, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @w83791d_group_fanpwm45, !425, !"w83791d_group_fanpwm45", i1 false, i1 false}
!425 = !{!"../drivers/hwmon/w83791d.c", i32 1250, i32 37}
!426 = !{ptr @w83791d_attributes_fanpwm45, !427, !"w83791d_attributes_fanpwm45", i1 false, i1 false}
!427 = !{!"../drivers/hwmon/w83791d.c", i32 1242, i32 26}
!428 = !{ptr @w83791d_id, !429, !"w83791d_id", i1 false, i1 false}
!429 = !{!"../drivers/hwmon/w83791d.c", i32 330, i32 35}
!430 = !{ptr @normal_i2c, !431, !"normal_i2c", i1 false, i1 false}
!431 = !{!"../drivers/hwmon/w83791d.c", i32 39, i32 29}
!432 = !{i32 1, !"wchar_size", i32 2}
!433 = !{i32 1, !"min_enum_size", i32 4}
!434 = !{i32 8, !"branch-target-enforcement", i32 0}
!435 = !{i32 8, !"sign-return-address", i32 0}
!436 = !{i32 8, !"sign-return-address-all", i32 0}
!437 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!438 = !{i32 7, !"uwtable", i32 1}
!439 = !{i32 7, !"frame-pointer", i32 2}
!440 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!441 = !{i64 2149001524, i64 2149001529, i64 2149001542, i64 2149001586, i64 2149001620, i64 2149001641}
!442 = !{i8 0, i8 2}
!443 = !{!"auto-init"}
