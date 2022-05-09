; ModuleID = '/llk/IR_all_yes/drivers/hwmon/w83l786ng.c_pt.bc'
source_filename = "../drivers/hwmon/w83l786ng.c"
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
%struct.w83l786ng_data = type { ptr, %struct.mutex, i8, i32, i32, [3 x i8], [3 x i8], [3 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x i8], [2 x [3 x i8]], [2 x i8], [2 x i8], [2 x i8], [2 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_reset = internal constant [16 x i8] c"w83l786ng.reset\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@reset = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_reset = internal constant %struct.kernel_param { ptr @__param_str_reset, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @reset } }, section "__param", align 4
@__UNIQUE_ID_resettype288 = internal constant [30 x i8] c"w83l786ng.parmtype=reset:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_reset289 = internal constant [61 x i8] c"w83l786ng.parm=reset:Set to 1 to reset chip, not recommended\00", section ".modinfo", align 1
@__initcall__kmod_w83l786ng__325_761_w83l786ng_driver_init6 = internal global ptr @w83l786ng_driver_init, section ".initcall6.init", align 4
@w83l786ng_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @w83l786ng_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @w83l786ng_id, ptr @w83l786ng_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_w83l786ng_driver_exit = internal global ptr @w83l786ng_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author326 = internal constant [26 x i8] c"w83l786ng.author=Kevin Lo\00", section ".modinfo", align 1
@__UNIQUE_ID_description327 = internal constant [39 x i8] c"w83l786ng.description=w83l786ng driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file328 = internal constant [39 x i8] c"w83l786ng.file=drivers/hwmon/w83l786ng\00", section ".modinfo", align 1
@__UNIQUE_ID_license329 = internal constant [22 x i8] c"w83l786ng.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"w83l786ng\00", [22 x i8] zeroinitializer }, align 32
@w83l786ng_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"w83l786ng\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 46, i16 47, i16 -2], [26 x i8] zeroinitializer }, align 32
@w83l786ng_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@w83l786ng_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @w83l786ng_group, ptr null], [24 x i8] zeroinitializer }, align 32
@w83l786ng_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @w83l786ng_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@w83l786ng_attrs = internal global { [30 x ptr], [40 x i8] } { [30 x ptr] [ptr @sda_in_input, ptr @sda_in_min, ptr @sda_in_max, ptr getelementptr (i8, ptr @sda_in_input, i64 32), ptr getelementptr (i8, ptr @sda_in_min, i64 32), ptr getelementptr (i8, ptr @sda_in_max, i64 32), ptr getelementptr (i8, ptr @sda_in_input, i64 64), ptr getelementptr (i8, ptr @sda_in_min, i64 64), ptr getelementptr (i8, ptr @sda_in_max, i64 64), ptr @sda_fan_input, ptr @sda_fan_min, ptr @sda_fan_div, ptr getelementptr (i8, ptr @sda_fan_input, i64 32), ptr getelementptr (i8, ptr @sda_fan_min, i64 32), ptr getelementptr (i8, ptr @sda_fan_div, i64 32), ptr @sda_temp_input, ptr @sda_temp_max, ptr @sda_temp_max_hyst, ptr getelementptr (i8, ptr @sda_temp_input, i64 32), ptr getelementptr (i8, ptr @sda_temp_max, i64 32), ptr getelementptr (i8, ptr @sda_temp_max_hyst, i64 32), ptr @sda_pwm, ptr @sda_pwm_mode, ptr @sda_pwm_enable, ptr getelementptr (i8, ptr @sda_pwm, i64 32), ptr getelementptr (i8, ptr @sda_pwm_mode, i64 32), ptr getelementptr (i8, ptr @sda_pwm_enable, i64 32), ptr @sda_tolerance, ptr getelementptr (i8, ptr @sda_tolerance, i64 32), ptr null], [40 x i8] zeroinitializer }, align 32
@sda_in_input = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in, ptr null }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sda_in_min = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_min, ptr @store_in_min }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sda_in_max = internal global { [3 x %struct.sensor_device_attribute], [32 x i8] } { [3 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 1 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_in_max, ptr @store_in_max }, i32 2 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_input = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan, ptr null }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_min = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_min, ptr @store_fan_min }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_fan_div = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fan_div, ptr @store_fan_div }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_input = internal global { [2 x %struct.sensor_device_attribute_2], [32 x i8] } { [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i8 0, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_max = internal global { [2 x %struct.sensor_device_attribute_2], [32 x i8] } { [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 1, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_temp_max_hyst = internal global { [2 x %struct.sensor_device_attribute_2], [32 x i8] } { [2 x %struct.sensor_device_attribute_2] [%struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 0 }, %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr @store_temp }, i8 2, i8 1 }], [32 x i8] zeroinitializer }, align 32
@sda_pwm = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm, ptr @store_pwm }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_pwm_mode = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_mode, ptr @store_pwm_mode }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_pwm_enable = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_pwm_enable, ptr @store_pwm_enable }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@sda_tolerance = internal global { [2 x %struct.sensor_device_attribute], [32 x i8] } { [2 x %struct.sensor_device_attribute] [%struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 0 }, %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_tolerance, ptr @store_tolerance }, i32 1 }], [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@w83l786ng_update_device.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 40, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"w83l786ng_update_device\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/hwmon/w83l786ng.c\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Updating w83l786ng data.\0A\00", [38 x i8] zeroinitializer }, align 32
@W83L786NG_PWM_MODE_SHIFT = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\06\07", [30 x i8] zeroinitializer }, align 32
@W83L786NG_PWM_ENABLE_SHIFT = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\02\04", [30 x i8] zeroinitializer }, align 32
@W83L786NG_REG_PWM = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\81\87", [30 x i8] zeroinitializer }, align 32
@W83L786NG_REG_TEMP = internal constant { [2 x [3 x i8]], [26 x i8] } { [2 x [3 x i8]] [[3 x i8] c"%56", [3 x i8] c"&78"], [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_div\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_div\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp2_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm1_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pwm2_tolerance\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@w83l786ng_detect.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.7, ptr @.str.38, i8 0, i8 -88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"w83l786ng_detect\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"W83L786NG detection failed at 0x%02x\0A\00", [58 x i8] zeroinitializer }, align 32
@w83l786ng_detect.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.7, ptr @.str.39, i8 0, i8 -85, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Unsupported chip (man_id=0x%04X, chip_id=0x%02X)\0A\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 255]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 30, i32 13 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"w83l786ng_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 750, i32 26 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 753, i32 14 }
@___asan_gen_.52 = private unnamed_addr constant [13 x i8] c"w83l786ng_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 744, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 26, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 722, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"w83l786ng_groups\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [16 x i8] c"w83l786ng_group\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 658, i32 1 }
@___asan_gen_.70 = private unnamed_addr constant [16 x i8] c"w83l786ng_attrs\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 643, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant [13 x i8] c"sda_in_input\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 259, i32 39 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"sda_in_min\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 265, i32 39 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"sda_in_max\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 271, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"sda_fan_input\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 383, i32 39 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"sda_fan_min\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 388, i32 39 }
@___asan_gen_.88 = private unnamed_addr constant [12 x i8] c"sda_fan_div\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 395, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"sda_temp_input\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 442, i32 41 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"sda_temp_max\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 447, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"sda_temp_max_hyst\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 454, i32 41 }
@___asan_gen_.100 = private unnamed_addr constant [8 x i8] c"sda_pwm\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 554, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [13 x i8] c"sda_pwm_mode\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 559, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"sda_pwm_enable\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 566, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"sda_tolerance\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 612, i32 39 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 260, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 261, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 262, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 232, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 160, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [25 x i8] c"W83L786NG_PWM_MODE_SHIFT\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 64, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"W83L786NG_PWM_ENABLE_SHIFT\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 65, i32 17 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"W83L786NG_REG_PWM\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 68, i32 17 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"W83L786NG_REG_TEMP\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 55, i32 17 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 266, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 267, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 268, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 272, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 273, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 274, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 384, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 385, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 389, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 391, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 396, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 398, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 319, i32 22 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 443, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 444, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 448, i32 2 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 450, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 455, i32 2 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 457, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 555, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 556, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 560, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 562, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 567, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 569, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 613, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 615, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 579, i32 22 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 672, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.236 = private constant [29 x i8] c"../drivers/hwmon/w83l786ng.c\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.236, i32 684, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author326, ptr @__UNIQUE_ID_description327, ptr @__UNIQUE_ID_file328, ptr @__UNIQUE_ID_license329, ptr @__UNIQUE_ID_reset289, ptr @__UNIQUE_ID_resettype288, ptr @__exitcall_w83l786ng_driver_exit, ptr @__initcall__kmod_w83l786ng__325_761_w83l786ng_driver_init6, ptr @__param_reset, ptr @w83l786ng_driver_exit, ptr @reset, ptr @w83l786ng_driver, ptr @.str, ptr @w83l786ng_id, ptr @normal_i2c, ptr @w83l786ng_probe.__key, ptr @.str.1, ptr @w83l786ng_groups, ptr @w83l786ng_group, ptr @w83l786ng_attrs, ptr @sda_in_input, ptr @sda_in_min, ptr @sda_in_max, ptr @sda_fan_input, ptr @sda_fan_min, ptr @sda_fan_div, ptr @sda_temp_input, ptr @sda_temp_max, ptr @sda_temp_max_hyst, ptr @sda_pwm, ptr @sda_pwm_mode, ptr @sda_pwm_enable, ptr @sda_tolerance, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @W83L786NG_PWM_MODE_SHIFT, ptr @W83L786NG_PWM_ENABLE_SHIFT, ptr @W83L786NG_REG_PWM, ptr @W83L786NG_REG_TEMP, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w83l786ng_attrs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_input to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_min to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_in_max to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_input to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_min to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_fan_div to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_input to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_max to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_temp_max_hyst to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_pwm to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_pwm_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_pwm_enable to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sda_tolerance to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83L786NG_PWM_MODE_SHIFT to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83L786NG_PWM_ENABLE_SHIFT to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83L786NG_REG_PWM to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @W83L786NG_REG_TEMP to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w83l786ng_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @w83l786ng_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w83l786ng_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @w83l786ng_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83l786ng_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 140, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @w83l786ng_probe.__key) #7
  %1 = load i8, ptr @reset, align 1, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext -128) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call.i11.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #7
  %conv.i.i = trunc i32 %call.i11.i to i8
  %2 = and i8 %conv.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool2.not.i = icmp eq i8 %2, 0
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.w83l786ng_init_client.exit_crit_edge

if.end.i.w83l786ng_init_client.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %w83l786ng_init_client.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i8 %conv.i.i, 1
  %call.i12.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %or.i) #7
  br label %w83l786ng_init_client.exit

w83l786ng_init_client.exit:                       ; preds = %if.then3.i, %if.end.i.w83l786ng_init_client.exit_crit_edge
  %call.i35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 59) #7
  %conv.i = trunc i32 %call.i35 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call.i, i32 0, i32 10, i32 0
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv.i, ptr %arrayidx, align 1
  %call.i35.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 60) #7
  %conv.i.1 = trunc i32 %call.i35.1 to i8
  %arrayidx.1 = getelementptr %struct.w83l786ng_data, ptr %call.i, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv.i.1, ptr %arrayidx.1, align 1
  %call.i36 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 84) #7
  %conv.i37 = trunc i32 %call.i36 to i8
  %and = and i8 %conv.i37, 7
  %fan_div = getelementptr inbounds %struct.w83l786ng_data, ptr %call.i, i32 0, i32 9
  %5 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %and, ptr %fan_div, align 1
  %6 = lshr i8 %conv.i37, 4
  %7 = and i8 %6, 7
  %arrayidx12 = getelementptr %struct.w83l786ng_data, ptr %call.i, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx12, align 1
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call13 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @w83l786ng_groups) #7
  %cmp.i.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %call13 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %9, i32 0
  br label %cleanup

cleanup:                                          ; preds = %w83l786ng_init_client.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %w83l786ng_init_client.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w83l786ng_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #7
  %6 = and i32 %call.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  br i1 %tobool3.not, label %if.end13, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83l786ng_detect.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83l786ng_detect, %cleanup)) #7
          to label %if.then10 [label %cleanup], !srcloc !154

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  %conv11 = zext i16 %8 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83l786ng_detect.__UNIQUE_ID_ddebug323, ptr noundef %dev, ptr noundef nonnull @.str.38, i32 noundef %conv11) #7
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %call.i64 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 77) #7
  %conv15 = shl i32 %call.i64, 8
  %shl = and i32 %conv15, 65280
  %call.i66 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 76) #7
  %conv17 = and i32 %call.i66, 255
  %add = or i32 %shl, %conv17
  %call.i68 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #7
  %conv.i69 = trunc i32 %call.i68 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 23715, i32 %add)
  %cmp.not = icmp eq i32 %add, 23715
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %conv.i69)
  %cmp23.not = icmp eq i8 %conv.i69, -128
  %or.cond = select i1 %cmp.not, i1 %cmp23.not, i1 false
  br i1 %or.cond, label %if.end47, label %do.body26

do.body26:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83l786ng_detect.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83l786ng_detect, %cleanup)) #7
          to label %if.then40 [label %cleanup], !srcloc !154

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %conv43 = and i32 %call.i68, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83l786ng_detect.__UNIQUE_ID_ddebug324, ptr noundef %dev41, ptr noundef nonnull @.str.39, i32 noundef %add, i32 noundef %conv43) #7
  br label %cleanup

if.end47:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call48 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.then40, %do.body26, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end47 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then10 ], [ -19, %if.then40 ], [ -19, %do.body ], [ -19, %do.body26 ]
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
define internal i32 @show_in(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @w83l786ng_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !153
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.if.end109_crit_edge

lor.lhs.false.if.end109_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end109

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @w83l786ng_update_device.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@w83l786ng_update_device, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !154

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @w83l786ng_update_device.__UNIQUE_ID_ddebug302, ptr noundef %dev9, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #7
  %conv.i = trunc i32 %call.i to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 5, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv.i, ptr %arrayidx, align 1
  %call.i173 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 44) #7
  %conv.i174 = trunc i32 %call.i173 to i8
  %arrayidx16 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i174, ptr %arrayidx16, align 1
  %call.i175 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 43) #7
  %conv.i176 = trunc i32 %call.i175 to i8
  %arrayidx21 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 6, i32 0
  %11 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv.i176, ptr %arrayidx21, align 1
  %call.i.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 33) #7
  %conv.i.1 = trunc i32 %call.i.1 to i8
  %arrayidx.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i.1, ptr %arrayidx.1, align 1
  %call.i173.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 46) #7
  %conv.i174.1 = trunc i32 %call.i173.1 to i8
  %arrayidx16.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv.i174.1, ptr %arrayidx16.1, align 1
  %call.i175.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 45) #7
  %conv.i176.1 = trunc i32 %call.i175.1 to i8
  %arrayidx21.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %arrayidx21.1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv.i176.1, ptr %arrayidx21.1, align 1
  %call.i.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 34) #7
  %conv.i.2 = trunc i32 %call.i.2 to i8
  %arrayidx.2 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv.i.2, ptr %arrayidx.2, align 1
  %call.i173.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 48) #7
  %conv.i174.2 = trunc i32 %call.i173.2 to i8
  %arrayidx16.2 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 7, i32 2
  %16 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv.i174.2, ptr %arrayidx16.2, align 1
  %call.i175.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 47) #7
  %conv.i176.2 = trunc i32 %call.i175.2 to i8
  %arrayidx21.2 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 6, i32 2
  %17 = ptrtoint ptr %arrayidx21.2 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv.i176.2, ptr %arrayidx21.2, align 1
  %call.i177 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 40) #7
  %conv.i178 = trunc i32 %call.i177 to i8
  %arrayidx29 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 8, i32 0
  %18 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i178, ptr %arrayidx29, align 1
  %call.i179 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 59) #7
  %conv.i180 = trunc i32 %call.i179 to i8
  %arrayidx33 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 10, i32 0
  %19 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv.i180, ptr %arrayidx33, align 1
  %call.i177.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 41) #7
  %conv.i178.1 = trunc i32 %call.i177.1 to i8
  %arrayidx29.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 8, i32 1
  %20 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv.i178.1, ptr %arrayidx29.1, align 1
  %call.i179.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 60) #7
  %conv.i180.1 = trunc i32 %call.i179.1 to i8
  %arrayidx33.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i180.1, ptr %arrayidx33.1, align 1
  %call.i181 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 84) #7
  %conv.i182 = trunc i32 %call.i181 to i8
  %and = and i8 %conv.i182, 7
  %fan_div = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %fan_div to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %and, ptr %fan_div, align 1
  %23 = lshr i8 %conv.i182, 4
  %24 = and i8 %23, 7
  %arrayidx45 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx45, align 1
  %call.i183 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -128) #7
  %26 = trunc i32 %call.i183 to i8
  %27 = lshr i8 %26, 6
  %28 = and i8 %27, 1
  %29 = xor i8 %28, 1
  %arrayidx58 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 14, i32 0
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx58, align 1
  %31 = trunc i32 %call.i183 to i8
  %32 = lshr i8 %31, 2
  %33 = and i8 %32, 3
  %conv65 = add nuw nsw i8 %33, 1
  %arrayidx66 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 15, i32 0
  %34 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv65, ptr %arrayidx66, align 1
  %call.i185 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -127) #7
  %conv.i186 = trunc i32 %call.i185 to i8
  %35 = and i8 %conv.i186, 15
  %narrow = mul nuw i8 %35, 17
  %arrayidx73 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 13, i32 0
  %36 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %narrow, ptr %arrayidx73, align 1
  %37 = trunc i32 %call.i183 to i8
  %38 = xor i8 %37, -1
  %39 = lshr i8 %38, 7
  %arrayidx58.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 14, i32 1
  %40 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx58.1, align 1
  %41 = trunc i32 %call.i183 to i8
  %42 = lshr i8 %41, 4
  %43 = and i8 %42, 3
  %conv65.1 = add nuw nsw i8 %43, 1
  %arrayidx66.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 15, i32 1
  %44 = ptrtoint ptr %arrayidx66.1 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv65.1, ptr %arrayidx66.1, align 1
  %call.i185.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -121) #7
  %conv.i186.1 = trunc i32 %call.i185.1 to i8
  %45 = and i8 %conv.i186.1, 15
  %narrow.1 = mul nuw i8 %45, 17
  %arrayidx73.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 13, i32 1
  %46 = ptrtoint ptr %arrayidx73.1 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %narrow.1, ptr %arrayidx73.1, align 1
  %call.i187 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 37) #7
  %conv.i188 = trunc i32 %call.i187 to i8
  %arrayidx89 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 0, i32 0
  %47 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.i188, ptr %arrayidx89, align 1
  %call.i187.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 53) #7
  %conv.i188.1 = trunc i32 %call.i187.1 to i8
  %arrayidx89.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx89.1 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i188.1, ptr %arrayidx89.1, align 1
  %call.i187.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 54) #7
  %conv.i188.2 = trunc i32 %call.i187.2 to i8
  %arrayidx89.2 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx89.2 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv.i188.2, ptr %arrayidx89.2, align 1
  %call.i187.1198 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 38) #7
  %conv.i188.1199 = trunc i32 %call.i187.1198 to i8
  %arrayidx89.1200 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx89.1200 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv.i188.1199, ptr %arrayidx89.1200, align 1
  %call.i187.1.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 55) #7
  %conv.i188.1.1 = trunc i32 %call.i187.1.1 to i8
  %arrayidx89.1.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 1, i32 1
  %51 = ptrtoint ptr %arrayidx89.1.1 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv.i188.1.1, ptr %arrayidx89.1.1, align 1
  %call.i187.2.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #7
  %conv.i188.2.1 = trunc i32 %call.i187.2.1 to i8
  %arrayidx89.2.1 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 12, i32 1, i32 2
  %52 = ptrtoint ptr %arrayidx89.2.1 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv.i188.2.1, ptr %arrayidx89.2.1, align 1
  %call.i189 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -115) #7
  %conv.i190 = trunc i32 %call.i189 to i8
  %and98 = and i8 %conv.i190, 15
  %tolerance = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 16
  %53 = ptrtoint ptr %tolerance to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %and98, ptr %tolerance, align 1
  %54 = lshr i8 %conv.i190, 4
  %arrayidx106 = getelementptr %struct.w83l786ng_data, ptr %1, i32 0, i32 16, i32 1
  %55 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %arrayidx106, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %56 = load volatile i32, ptr @jiffies, align 128
  %57 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %last_updated, align 4
  %valid108 = getelementptr inbounds %struct.w83l786ng_data, ptr %1, i32 0, i32 2
  %58 = ptrtoint ptr %valid108 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %valid108, align 4
  br label %if.end109

if.end109:                                        ; preds = %do.end, %lor.lhs.false.if.end109_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
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
define internal i32 @show_in_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %add = add i32 %8, 4
  %div31 = lshr i32 %add, 3
  %9 = call i32 @llvm.umin.i32(i32 %div31, i32 255)
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 7, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %11 = shl i8 %.tr, 1
  %conv11 = add i8 %11, 44
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv11, i8 noundef zeroext %conv) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 6, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %mul = shl nuw nsw i32 %conv, 3
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_in_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %add = add i32 %8, 4
  %div31 = lshr i32 %add, 3
  %9 = call i32 @llvm.umin.i32(i32 %div31, i32 255)
  %conv = trunc i32 %9 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 6, i32 %1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %11 = shl i8 %.tr, 1
  %conv11 = add i8 %11, 43
  %call.i32 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv11, i8 noundef zeroext %conv) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 8, i32 %1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 9, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %3, label %cond.false8 [
    i8 0, label %entry.cond.end14_crit_edge
    i8 -1, label %cond.end14.fold.split
  ]

entry.cond.end14_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end14

cond.false8:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %3 to i32
  %arrayidx12 = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 9, i32 %1
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %mul = shl i32 %conv, %conv13
  %div = sdiv i32 1350000, %mul
  br label %cond.end14

cond.end14.fold.split:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end14

cond.end14:                                       ; preds = %cond.end14.fold.split, %cond.false8, %entry.cond.end14_crit_edge
  %cond15 = phi i32 [ -1, %entry.cond.end14_crit_edge ], [ %div, %cond.false8 ], [ 0, %cond.end14.fold.split ]
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %cond15)
  ret i32 %call16
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp eq i32 %8, 0
  br i1 %cmp.i, label %if.end.FAN_TO_REG.exit_crit_edge, label %if.end.i

if.end.FAN_TO_REG.exit_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %FAN_TO_REG.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 9, i32 %1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  %11 = call i32 @llvm.smax.i32(i32 %8, i32 1) #7
  %12 = call i32 @llvm.umin.i32(i32 %11, i32 1000000) #7
  %mul.i = shl i32 %12, %conv
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %13 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #7
  %14 = call i32 @llvm.umin.i32(i32 %13, i32 254) #7
  %conv.i = trunc i32 %14 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i, %if.end.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i, %if.end.i ], [ -1, %if.end.FAN_TO_REG.exit_crit_edge ]
  %arrayidx4 = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 10, i32 %1
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %retval.0.i, ptr %arrayidx4, align 1
  %16 = trunc i32 %1 to i8
  %conv5 = add i8 %16, 59
  %call.i23 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv5, i8 noundef zeroext %retval.0.i) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fan_div(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.21, i32 noundef %shl)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_fan_div(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 10, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %8, label %cond.false10 [
    i8 0, label %if.end.cond.end16_crit_edge
    i8 -1, label %cond.end16.fold.split
  ]

if.end.cond.end16_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16

cond.false10:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i8 %8 to i32
  %arrayidx14 = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 9, i32 %1
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx14, align 1
  %conv15 = zext i8 %11 to i32
  %mul = shl i32 %conv, %conv15
  %div = sdiv i32 1350000, %mul
  br label %cond.end16

cond.end16.fold.split:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end16

cond.end16:                                       ; preds = %cond.end16.fold.split, %cond.false10, %if.end.cond.end16_crit_edge
  %cond17 = phi i32 [ -1, %if.end.cond.end16_crit_edge ], [ %div, %cond.false10 ], [ 0, %cond.end16.fold.split ]
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = call i32 @llvm.smax.i32(i32 %13, i32 1) #7
  %15 = call i32 @llvm.umin.i32(i32 %14, i32 128) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp818.i = icmp ult i32 %15, 2
  br i1 %cmp818.i, label %cond.end16.DIV_TO_REG.exit_crit_edge, label %if.end.i

cond.end16.DIV_TO_REG.exit_crit_edge:             ; preds = %cond.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i:                                         ; preds = %cond.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp8.i = icmp ult i32 %15, 4
  br i1 %cmp8.i, label %if.end.i.DIV_TO_REG.exit_crit_edge, label %if.end.i.1

if.end.i.DIV_TO_REG.exit_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %15)
  %cmp8.i.1 = icmp ult i32 %15, 8
  br i1 %cmp8.i.1, label %if.end.i.1.DIV_TO_REG.exit_crit_edge, label %if.end.i.2

if.end.i.1.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %cmp8.i.2 = icmp ult i32 %15, 16
  br i1 %cmp8.i.2, label %if.end.i.2.DIV_TO_REG.exit_crit_edge, label %if.end.i.3

if.end.i.2.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %15)
  %cmp8.i.3 = icmp ult i32 %15, 32
  br i1 %cmp8.i.3, label %if.end.i.3.DIV_TO_REG.exit_crit_edge, label %if.end.i.4

if.end.i.3.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp8.i.4 = icmp ult i32 %15, 64
  br i1 %cmp8.i.4, label %if.end.i.4.DIV_TO_REG.exit_crit_edge, label %if.end.i.5

if.end.i.4.DIV_TO_REG.exit_crit_edge:             ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %DIV_TO_REG.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %14)
  %cmp8.i.5 = icmp ult i32 %14, 128
  %spec.select = select i1 %cmp8.i.5, i8 6, i8 7
  br label %DIV_TO_REG.exit

DIV_TO_REG.exit:                                  ; preds = %if.end.i.5, %if.end.i.4.DIV_TO_REG.exit_crit_edge, %if.end.i.3.DIV_TO_REG.exit_crit_edge, %if.end.i.2.DIV_TO_REG.exit_crit_edge, %if.end.i.1.DIV_TO_REG.exit_crit_edge, %if.end.i.DIV_TO_REG.exit_crit_edge, %cond.end16.DIV_TO_REG.exit_crit_edge
  %i.0.lcssa.i = phi i8 [ 0, %cond.end16.DIV_TO_REG.exit_crit_edge ], [ 1, %if.end.i.DIV_TO_REG.exit_crit_edge ], [ 2, %if.end.i.1.DIV_TO_REG.exit_crit_edge ], [ 3, %if.end.i.2.DIV_TO_REG.exit_crit_edge ], [ 4, %if.end.i.3.DIV_TO_REG.exit_crit_edge ], [ 5, %if.end.i.4.DIV_TO_REG.exit_crit_edge ], [ %spec.select, %if.end.i.5 ]
  %arrayidx20 = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 9, i32 %1
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %i.0.lcssa.i, ptr %arrayidx20, align 1
  %17 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %1, label %DIV_TO_REG.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb21
  ]

DIV_TO_REG.exit.sw.epilog_crit_edge:              ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb21:                                          ; preds = %DIV_TO_REG.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb21, %sw.bb, %DIV_TO_REG.exit.sw.epilog_crit_edge
  %keep_mask.0 = phi i32 [ 0, %DIV_TO_REG.exit.sw.epilog_crit_edge ], [ 143, %sw.bb21 ], [ 248, %sw.bb ]
  %new_shift.0 = phi i32 [ 0, %DIV_TO_REG.exit.sw.epilog_crit_edge ], [ 4, %sw.bb21 ], [ 0, %sw.bb ]
  %call.i84 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 84) #7
  %conv2589 = and i32 %call.i84, %keep_mask.0
  %18 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20, align 1
  %conv28 = zext i8 %19 to i32
  %shl30 = shl nuw nsw i32 %conv28, %new_shift.0
  %neg = xor i32 %keep_mask.0, -1
  %and32 = and i32 %shl30, %neg
  %conv3690 = or i32 %and32, %conv2589
  %conv36 = trunc i32 %conv3690 to i8
  %call.i85 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 84, i8 noundef zeroext %conv36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond17)
  %cmp.i = icmp eq i32 %cond17, 0
  br i1 %cmp.i, label %sw.epilog.FAN_TO_REG.exit_crit_edge, label %if.end.i87

sw.epilog.FAN_TO_REG.exit_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %FAN_TO_REG.exit

if.end.i87:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx20, align 1
  %conv40 = zext i8 %21 to i32
  %22 = call i32 @llvm.smax.i32(i32 %cond17, i32 1) #7
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 1000000) #7
  %mul.i = shl i32 %23, %conv40
  %div8.i = sdiv i32 %mul.i, 2
  %add.i = add nsw i32 %div8.i, 1350000
  %div10.i = sdiv i32 %add.i, %mul.i
  %24 = call i32 @llvm.smax.i32(i32 %div10.i, i32 1) #7
  %25 = call i32 @llvm.umin.i32(i32 %24, i32 254) #7
  %conv.i86 = trunc i32 %25 to i8
  br label %FAN_TO_REG.exit

FAN_TO_REG.exit:                                  ; preds = %if.end.i87, %sw.epilog.FAN_TO_REG.exit_crit_edge
  %retval.0.i = phi i8 [ %conv.i86, %if.end.i87 ], [ -1, %sw.epilog.FAN_TO_REG.exit_crit_edge ]
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %retval.0.i, ptr %arrayidx, align 1
  %27 = trunc i32 %1 to i8
  %conv45 = add i8 %27, 59
  %call.i88 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv45, i8 noundef zeroext %retval.0.i) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %FAN_TO_REG.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %FAN_TO_REG.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx4 = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 12, i32 %conv, i32 %conv3
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
  %call14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %mul)
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index2 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv3 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp slt i32 %10, 0
  %add = add i32 %10, 256000
  %cond = select i1 %cmp, i32 %add, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 999, i32 %cond)
  %cmp8 = icmp sgt i32 %cond, 999
  %div = sdiv i32 %cond, 1000
  %11 = call i32 @llvm.smin.i32(i32 %div, i32 255)
  %12 = trunc i32 %11 to i8
  %conv21 = select i1 %cmp8, i8 %12, i8 0
  %arrayidx22 = getelementptr %struct.w83l786ng_data, ptr %5, i32 0, i32 12, i32 %conv, i32 %conv3
  %13 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv21, ptr %arrayidx22, align 1
  %arrayidx24 = getelementptr [2 x [3 x i8]], ptr @W83L786NG_REG_TEMP, i32 0, i32 %conv, i32 %conv3
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx24, align 1
  %call.i50 = call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext %15, i8 noundef zeroext %conv21) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 13, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 255)
  %10 = trunc i32 %9 to i16
  %div11.lhs.trunc = add nuw nsw i16 %10, 8
  %div1137 = udiv i16 %div11.lhs.trunc, 17
  %div11.zext = zext i16 %div1137 to i32
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div11.zext, ptr %val, align 4
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %12 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val, align 4
  %14 = trunc i32 %13 to i8
  %conv = mul i8 %14, 17
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 13, i32 %1
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx12 = getelementptr [2 x i8], ptr @W83L786NG_REG_PWM, i32 0, i32 %1
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx12, align 1
  %call.i35 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext %17) #7
  %18 = and i32 %call.i35, 240
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %or = or i32 %20, %18
  store i32 %or, ptr %val, align 4
  %conv16 = trunc i32 %or to i8
  %call.i36 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %17, i8 noundef zeroext %conv16) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 14, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp ugt i32 %8, 1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 14, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %call.i34 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -128) #7
  %conv.i = trunc i32 %call.i34 to i8
  %arrayidx6 = getelementptr [2 x i8], ptr @W83L786NG_PWM_MODE_SHIFT, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %13 to i32
  %shl = shl nuw i32 1, %conv7
  %14 = trunc i32 %shl to i8
  %15 = xor i8 %14, -1
  %conv9 = and i8 %15, %conv.i
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  %conv1636 = or i32 %shl, %call.i34
  %conv16 = trunc i32 %conv1636 to i8
  %reg.0 = select i1 %tobool10.not, i8 %conv16, i8 %conv9
  %call.i35 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext %reg.0) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 15, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_pwm_enable(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = add i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %9)
  %10 = icmp ult i32 %9, -2
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %call.i32 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -128) #7
  %conv.i = trunc i32 %call.i32 to i8
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %conv = trunc i32 %12 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 15, i32 %1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx7 = getelementptr [2 x i8], ptr @W83L786NG_PWM_ENABLE_SHIFT, i32 0, i32 %1
  %14 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %15 to i32
  %shl = shl i32 3, %conv8
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv10 = and i8 %17, %conv.i
  %18 = load i32, ptr %val, align 4
  %sub = add i32 %18, 255
  %shl13 = shl i32 %sub, %conv8
  %19 = trunc i32 %shl13 to i8
  %conv15 = or i8 %conv10, %19
  %call.i33 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext %conv15) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_tolerance(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @w83l786ng_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %call, i32 0, i32 16, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @store_tolerance(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !155
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.w83l786ng_data, ptr %3, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %call.i53 = call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -115) #7
  %conv.i = trunc i32 %call.i53 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  %cond = select i1 %cmp, i8 15, i8 -16
  %and = and i8 %cond, %conv.i
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %9 = call i32 @llvm.umin.i32(i32 %8, i32 15)
  %10 = trunc i32 %9 to i8
  %arrayidx = getelementptr %struct.w83l786ng_data, ptr %3, i32 0, i32 16, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %arrayidx, align 1
  %12 = shl nuw i8 %10, 4
  %tol_tmp.0 = select i1 %cmp, i8 %12, i8 %10
  %or52 = or i8 %tol_tmp.0, %and
  %call.i54 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -115, i8 noundef zeroext %or52) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !141, !142}
!llvm.module.flags = !{!144, !145, !146, !147, !148, !149, !150, !151}
!llvm.ident = !{!152}

!0 = !{ptr @__param_reset, !1, !"__param_reset", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/w83l786ng.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_resettype288, !1, !"__UNIQUE_ID_resettype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_reset289, !4, !"__UNIQUE_ID_reset289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/w83l786ng.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_w83l786ng__325_761_w83l786ng_driver_init6, !6, !"__initcall__kmod_w83l786ng__325_761_w83l786ng_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/w83l786ng.c", i32 761, i32 1}
!7 = !{ptr @__exitcall_w83l786ng_driver_exit, !6, !"__exitcall_w83l786ng_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author326, !9, !"__UNIQUE_ID_author326", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/w83l786ng.c", i32 763, i32 1}
!10 = !{ptr @__UNIQUE_ID_description327, !11, !"__UNIQUE_ID_description327", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/w83l786ng.c", i32 764, i32 1}
!12 = !{ptr @__UNIQUE_ID_file328, !13, !"__UNIQUE_ID_file328", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/w83l786ng.c", i32 765, i32 1}
!14 = !{ptr @__UNIQUE_ID_license329, !13, !"__UNIQUE_ID_license329", i1 false, i1 false}
!15 = !{ptr @reset, !16, !"reset", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/w83l786ng.c", i32 30, i32 13}
!17 = !{ptr @__param_str_reset, !1, !"__param_str_reset", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/w83l786ng.c", i32 753, i32 14}
!20 = !{ptr @w83l786ng_driver, !21, !"w83l786ng_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/w83l786ng.c", i32 750, i32 26}
!22 = !{ptr @w83l786ng_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/w83l786ng.c", i32 722, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @w83l786ng_groups, !26, !"w83l786ng_groups", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/w83l786ng.c", i32 658, i32 1}
!27 = !{ptr @w83l786ng_group, !26, !"w83l786ng_group", i1 false, i1 false}
!28 = !{ptr @w83l786ng_attrs, !29, !"w83l786ng_attrs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/w83l786ng.c", i32 643, i32 26}
!30 = !{ptr @.str.2, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/w83l786ng.c", i32 260, i32 2}
!32 = !{ptr @.str.3, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/w83l786ng.c", i32 261, i32 2}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/w83l786ng.c", i32 262, i32 2}
!36 = !{ptr @sda_in_input, !37, !"sda_in_input", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/w83l786ng.c", i32 259, i32 39}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/w83l786ng.c", i32 232, i32 1}
!40 = !{ptr @.str.6, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/w83l786ng.c", i32 160, i32 3}
!42 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @w83l786ng_update_device.__UNIQUE_ID_ddebug302, !41, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!45 = !{ptr @W83L786NG_PWM_MODE_SHIFT, !46, !"W83L786NG_PWM_MODE_SHIFT", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/w83l786ng.c", i32 64, i32 17}
!47 = !{ptr @W83L786NG_PWM_ENABLE_SHIFT, !48, !"W83L786NG_PWM_ENABLE_SHIFT", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/w83l786ng.c", i32 65, i32 17}
!49 = !{ptr @W83L786NG_REG_PWM, !50, !"W83L786NG_REG_PWM", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/w83l786ng.c", i32 68, i32 17}
!51 = !{ptr @W83L786NG_REG_TEMP, !52, !"W83L786NG_REG_TEMP", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/w83l786ng.c", i32 55, i32 17}
!53 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/w83l786ng.c", i32 266, i32 2}
!55 = !{ptr @.str.10, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/w83l786ng.c", i32 267, i32 2}
!57 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/w83l786ng.c", i32 268, i32 2}
!59 = !{ptr @sda_in_min, !60, !"sda_in_min", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/w83l786ng.c", i32 265, i32 39}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/w83l786ng.c", i32 272, i32 2}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/w83l786ng.c", i32 273, i32 2}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/w83l786ng.c", i32 274, i32 2}
!67 = !{ptr @sda_in_max, !68, !"sda_in_max", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/w83l786ng.c", i32 271, i32 39}
!69 = !{ptr @.str.15, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/w83l786ng.c", i32 384, i32 2}
!71 = !{ptr @.str.16, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/w83l786ng.c", i32 385, i32 2}
!73 = !{ptr @sda_fan_input, !74, !"sda_fan_input", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/w83l786ng.c", i32 383, i32 39}
!75 = !{ptr @.str.17, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/w83l786ng.c", i32 389, i32 2}
!77 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/w83l786ng.c", i32 391, i32 2}
!79 = !{ptr @sda_fan_min, !80, !"sda_fan_min", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/w83l786ng.c", i32 388, i32 39}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/w83l786ng.c", i32 396, i32 2}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/w83l786ng.c", i32 398, i32 2}
!85 = !{ptr @sda_fan_div, !86, !"sda_fan_div", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/w83l786ng.c", i32 395, i32 39}
!87 = !{ptr @.str.21, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/w83l786ng.c", i32 319, i32 22}
!89 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/w83l786ng.c", i32 443, i32 2}
!91 = !{ptr @.str.23, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/w83l786ng.c", i32 444, i32 2}
!93 = !{ptr @sda_temp_input, !94, !"sda_temp_input", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/w83l786ng.c", i32 442, i32 41}
!95 = !{ptr @.str.24, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/w83l786ng.c", i32 448, i32 2}
!97 = !{ptr @.str.25, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/w83l786ng.c", i32 450, i32 2}
!99 = !{ptr @sda_temp_max, !100, !"sda_temp_max", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/w83l786ng.c", i32 447, i32 41}
!101 = !{ptr @.str.26, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/w83l786ng.c", i32 455, i32 2}
!103 = !{ptr @.str.27, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/w83l786ng.c", i32 457, i32 2}
!105 = !{ptr @sda_temp_max_hyst, !106, !"sda_temp_max_hyst", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/w83l786ng.c", i32 454, i32 41}
!107 = !{ptr @.str.28, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/w83l786ng.c", i32 555, i32 2}
!109 = !{ptr @.str.29, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/w83l786ng.c", i32 556, i32 2}
!111 = !{ptr @sda_pwm, !112, !"sda_pwm", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/w83l786ng.c", i32 554, i32 39}
!113 = !{ptr @.str.30, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/w83l786ng.c", i32 560, i32 2}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/w83l786ng.c", i32 562, i32 2}
!117 = !{ptr @sda_pwm_mode, !118, !"sda_pwm_mode", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/w83l786ng.c", i32 559, i32 39}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/w83l786ng.c", i32 567, i32 2}
!121 = !{ptr @.str.33, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/w83l786ng.c", i32 569, i32 2}
!123 = !{ptr @sda_pwm_enable, !124, !"sda_pwm_enable", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/w83l786ng.c", i32 566, i32 39}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/w83l786ng.c", i32 613, i32 2}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/w83l786ng.c", i32 615, i32 2}
!129 = !{ptr @sda_tolerance, !130, !"sda_tolerance", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/w83l786ng.c", i32 612, i32 39}
!131 = !{ptr @.str.36, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/w83l786ng.c", i32 579, i32 22}
!133 = !{ptr @w83l786ng_id, !134, !"w83l786ng_id", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/w83l786ng.c", i32 744, i32 35}
!135 = !{ptr @.str.37, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/w83l786ng.c", i32 672, i32 3}
!137 = !{ptr @.str.38, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @w83l786ng_detect.__UNIQUE_ID_ddebug323, !136, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!139 = !{ptr @.str.39, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/w83l786ng.c", i32 684, i32 3}
!141 = !{ptr @w83l786ng_detect.__UNIQUE_ID_ddebug324, !140, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!142 = !{ptr @normal_i2c, !143, !"normal_i2c", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/w83l786ng.c", i32 26, i32 29}
!144 = !{i32 1, !"wchar_size", i32 2}
!145 = !{i32 1, !"min_enum_size", i32 4}
!146 = !{i32 8, !"branch-target-enforcement", i32 0}
!147 = !{i32 8, !"sign-return-address", i32 0}
!148 = !{i32 8, !"sign-return-address-all", i32 0}
!149 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!150 = !{i32 7, !"uwtable", i32 1}
!151 = !{i32 7, !"frame-pointer", i32 2}
!152 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!153 = !{i8 0, i8 2}
!154 = !{i64 2148972199, i64 2148972204, i64 2148972217, i64 2148972261, i64 2148972295, i64 2148972316}
!155 = !{!"auto-init"}
