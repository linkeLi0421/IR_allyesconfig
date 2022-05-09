; ModuleID = '/llk/IR_all_yes/drivers/hwmon/thmc50.c_pt.bc'
source_filename = "../drivers/hwmon/thmc50.c"
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
%struct.thmc50_data = type { ptr, [3 x ptr], %struct.mutex, i32, i32, i8, i8, [3 x i8], [3 x i8], [3 x i8], [3 x i8], i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__UNIQUE_ID_file288 = internal constant [33 x i8] c"thmc50.file=drivers/hwmon/thmc50\00", section ".modinfo", align 1
@__UNIQUE_ID_license289 = internal constant [19 x i8] c"thmc50.license=GPL\00", section ".modinfo", align 1
@__param_str_adm1022_temp3 = internal constant [21 x i8] c"thmc50.adm1022_temp3\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_adm1022_temp3 = internal constant %struct.kparam_array { i32 16, i32 2, ptr @adm1022_temp3_num, ptr @param_ops_ushort, ptr @adm1022_temp3 }, align 4
@__param_adm1022_temp3 = internal constant %struct.kernel_param { ptr @__param_str_adm1022_temp3, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_arr_adm1022_temp3 } }, section "__param", align 4
@__UNIQUE_ID_adm1022_temp3type290 = internal constant [46 x i8] c"thmc50.parmtype=adm1022_temp3:array of ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_adm1022_temp3291 = internal constant [97 x i8] c"thmc50.parm=adm1022_temp3:List of adapter,address pairs to enable 3rd temperature (ADM1022 only)\00", section ".modinfo", align 1
@__initcall__kmod_thmc50__308_429_thmc50_driver_init6 = internal global ptr @thmc50_driver_init, section ".initcall6.init", align 4
@thmc50_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @thmc50_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @thmc50_id, ptr @thmc50_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_thmc50_driver_exit = internal global ptr @thmc50_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [50 x i8] c"thmc50.author=Krzysztof Helt <krzysztof.h1@wp.pl>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [33 x i8] c"thmc50.description=THMC50 driver\00", section ".modinfo", align 1
@adm1022_temp3_num = internal global { i32, [28 x i8] } zeroinitializer, align 32
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@adm1022_temp3 = internal global { [16 x i16], [32 x i8] } zeroinitializer, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thmc50\00", [25 x i8] zeroinitializer }, align 32
@thmc50_id = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1022\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"thmc50\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@thmc50_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@thmc50_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thmc50_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@temp3_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @temp3_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@thmc50_attributes = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_mode, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_critical_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_critical_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @analog_out_show, ptr @analog_out_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_mode = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_mode_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@THMC50_REG_TEMP = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"'& ", [29 x i8] zeroinitializer }, align 32
@THMC50_REG_TEMP_MAX = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"97+", [29 x i8] zeroinitializer }, align 32
@THMC50_REG_TEMP_MIN = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c":8,", [29 x i8] zeroinitializer }, align 32
@THMC50_REG_TEMP_CRITICAL = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\13\14\14", [29 x i8] zeroinitializer }, align 32
@THMC50_REG_TEMP_DEFAULT = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\17\18\18", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@temp3_attributes = internal global { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_critical_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@thmc50_detect.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.25, ptr @.str.26, i8 0, i8 79, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"thmc50_detect\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/thmc50.c\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"thmc50: detect failed, smbus byte data not supported!\0A\00", [41 x i8] zeroinitializer }, align 32
@thmc50_detect.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.25, ptr @.str.27, i8 0, i8 80, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"thmc50: Probing for THMC50 at 0x%2X on bus %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1022\00", [24 x i8] zeroinitializer }, align 32
@thmc50_detect.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.25, ptr @.str.29, i8 0, i8 87, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"thmc50: Detection of THMC50/ADM1022 failed\0A\00", [52 x i8] zeroinitializer }, align 32
@thmc50_detect.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.24, ptr @.str.25, ptr @.str.30, i8 0, i8 88, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"thmc50: Detected %s (version %x, revision %x)\0A\00", [49 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 65, i64 73]
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"thmc50_driver\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 418, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"adm1022_temp3_num\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 29, i32 21 }
@___asan_gen_.37 = private unnamed_addr constant [14 x i8] c"adm1022_temp3\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 28, i32 23 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 421, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"thmc50_id\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 411, i32 35 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 23, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 395, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"thmc50_group\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 287, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [12 x i8] c"temp3_group\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 302, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [18 x i8] c"thmc50_attributes\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 270, i32 26 }
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_mode\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 250, i32 8 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 206, i32 22 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"THMC50_REG_TEMP\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 47, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"THMC50_REG_TEMP_MAX\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 49, i32 17 }
@___asan_gen_.115 = private unnamed_addr constant [20 x i8] c"THMC50_REG_TEMP_MIN\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 48, i32 17 }
@___asan_gen_.118 = private unnamed_addr constant [25 x i8] c"THMC50_REG_TEMP_CRITICAL\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 50, i32 17 }
@___asan_gen_.121 = private unnamed_addr constant [24 x i8] c"THMC50_REG_TEMP_DEFAULT\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 51, i32 17 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 249, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 248, i32 8 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 251, i32 8 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 261, i32 8 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 245, i32 22 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 254, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 253, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 252, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 255, i32 8 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 262, i32 8 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 264, i32 8 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 267, i32 8 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 268, i32 8 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 159, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"temp3_attributes\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 292, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 258, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 257, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 256, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 259, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 263, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 265, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 317, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 321, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 334, i32 15 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 348, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [26 x i8] c"../drivers/hwmon/thmc50.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 352, i32 2 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_adm1022_temp3291, ptr @__UNIQUE_ID_adm1022_temp3type290, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file288, ptr @__UNIQUE_ID_license289, ptr @__exitcall_thmc50_driver_exit, ptr @__initcall__kmod_thmc50__308_429_thmc50_driver_init6, ptr @__param_adm1022_temp3, ptr @thmc50_driver_exit, ptr @thmc50_driver, ptr @adm1022_temp3_num, ptr @adm1022_temp3, ptr @.str, ptr @thmc50_id, ptr @normal_i2c, ptr @thmc50_probe.__key, ptr @.str.1, ptr @thmc50_group, ptr @temp3_group, ptr @thmc50_attributes, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_mode, ptr @.str.2, ptr @.str.3, ptr @THMC50_REG_TEMP, ptr @THMC50_REG_TEMP_MAX, ptr @THMC50_REG_TEMP_MIN, ptr @THMC50_REG_TEMP_CRITICAL, ptr @THMC50_REG_TEMP_DEFAULT, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @temp3_attributes, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thmc50_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1022_temp3_num to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1022_temp3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thmc50_id to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thmc50_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thmc50_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp3_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thmc50_attributes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_mode to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THMC50_REG_TEMP to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THMC50_REG_TEMP_MAX to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THMC50_REG_TEMP_MIN to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THMC50_REG_TEMP_CRITICAL to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @THMC50_REG_TEMP_DEFAULT to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @temp3_attributes to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thmc50_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @thmc50_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @thmc50_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @thmc50_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thmc50_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 132, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @i2c_match_id(ptr noundef nonnull @thmc50_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %update_lock = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @thmc50_probe.__key) #8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %call.i31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 25) #8
  %conv.i = trunc i32 %call.i31 to i8
  %analog_out.i = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %analog_out.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %analog_out.i, align 2
  %conv3.i = and i32 %call.i31, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv3.i)
  %cmp.i = icmp eq i32 %conv3.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %analog_out.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %analog_out.i, align 2
  %call7.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 25, i8 noundef zeroext 1) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %call8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 64) #8
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp9.i = icmp ne i32 %9, 1
  %and.i = and i32 %call8.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp9.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %if.end.i.thmc50_init_client.exit_crit_edge, label %if.then11.i

if.end.i.thmc50_init_client.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %thmc50_init_client.exit

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %has_temp3.i = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %has_temp3.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %has_temp3.i, align 4
  br label %thmc50_init_client.exit

thmc50_init_client.exit:                          ; preds = %if.then11.i, %if.end.i.thmc50_init_client.exit_crit_edge
  %11 = trunc i32 %call8.i to i8
  %conv13.i = or i8 %11, 1
  %call14.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 64, i8 noundef zeroext %conv13.i) #8
  %groups = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @thmc50_group, ptr %groups, align 4
  %has_temp3 = getelementptr inbounds %struct.thmc50_data, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %has_temp3 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_temp3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool4.not = icmp eq i8 %14, 0
  br i1 %tobool4.not, label %thmc50_init_client.exit.if.end9_crit_edge, label %if.then5

thmc50_init_client.exit.if.end9_crit_edge:        ; preds = %thmc50_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then5:                                         ; preds = %thmc50_init_client.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8 = getelementptr %struct.thmc50_data, ptr %call.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @temp3_group, ptr %arrayidx8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %thmc50_init_client.exit.if.end9_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call12 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #8
  %cmp.i.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call12 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %16, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thmc50_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  br i1 %cmp.i.not, label %do.body9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thmc50_detect.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thmc50_detect, %cleanup)) #8
          to label %if.then7 [label %cleanup], !srcloc !138

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @thmc50_detect.__UNIQUE_ID_ddebug304, ptr noundef nonnull @.str.26) #8
  br label %cleanup

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thmc50_detect.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thmc50_detect, %do.end28)) #8
          to label %if.then23 [label %do.end28], !srcloc !138

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %6 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %addr, align 2
  %conv = zext i16 %7 to i32
  %8 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adapter1, align 8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %9, i32 0, i32 11
  %10 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr.i, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @thmc50_detect.__UNIQUE_ID_ddebug305, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %11) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body9
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #8
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #8
  %call31 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %call30)
  %cmp = icmp ugt i32 %call30, 191
  %and = and i32 %call31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool33.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp, i1 %tobool33.not, i1 false
  br i1 %or.cond, label %if.end35, label %do.end28.cleanup_crit_edge

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end35:                                         ; preds = %do.end28
  %12 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call29, label %do.body62 [
    i32 65, label %if.then38
    i32 73, label %if.end35.do.body82_crit_edge
  ]

if.end35.do.body82_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

if.then38:                                        ; preds = %if.end35
  %13 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adapter1, align 8
  %nr.i132 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i132 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i132, align 4
  %17 = load i32, ptr @adm1022_temp3_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp41137 = icmp ugt i32 %17, 1
  br i1 %cmp41137, label %for.body.lr.ph, label %if.then38.do.body82_crit_edge

if.then38.do.body82_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

for.body.lr.ph:                                   ; preds = %if.then38
  %addr49 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %add139 = phi i32 [ 1, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %add57, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i16], ptr @adm1022_temp3, i32 0, i32 %i.0138
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv43 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv43)
  %cmp44 = icmp eq i32 %16, %conv43
  br i1 %cmp44, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx47 = getelementptr [16 x i16], ptr @adm1022_temp3, i32 0, i32 %add139
  %20 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx47, align 2
  %22 = ptrtoint ptr %addr49 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %addr49, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp51 = icmp eq i16 %21, %23
  br i1 %cmp51, label %if.then53, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %24 = trunc i32 %call31 to i8
  %conv54 = or i8 %24, -128
  %call55 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv54) #8
  br label %do.body82

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %add57 = add i32 %i.0138, 2
  %add = or i32 %add57, 1
  %cmp41 = icmp ult i32 %add, %17
  br i1 %cmp41, label %for.inc.for.body_crit_edge, label %for.inc.do.body82_crit_edge

for.inc.do.body82_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body82

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

do.body62:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thmc50_detect.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thmc50_detect, %cleanup)) #8
          to label %if.then76 [label %cleanup], !srcloc !138

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @thmc50_detect.__UNIQUE_ID_ddebug306, ptr noundef nonnull @.str.29) #8
  br label %cleanup

do.body82:                                        ; preds = %for.inc.do.body82_crit_edge, %if.then53, %if.then38.do.body82_crit_edge, %if.end35.do.body82_crit_edge
  %type_name.0 = phi ptr [ @.str.28, %if.then53 ], [ @.str, %if.end35.do.body82_crit_edge ], [ @.str.28, %if.then38.do.body82_crit_edge ], [ @.str.28, %for.inc.do.body82_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @thmc50_detect.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@thmc50_detect, %do.end100)) #8
          to label %if.then96 [label %do.end100], !srcloc !138

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #10
  %shr = lshr i32 %call30, 4
  %sub = add nsw i32 %shr, -12
  %and97 = and i32 %call30, 15
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @thmc50_detect.__UNIQUE_ID_ddebug307, ptr noundef nonnull @.str.30, ptr noundef nonnull %type_name.0, i32 noundef %sub, i32 noundef %and97) #8
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body82
  %call101 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %type_name.0, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end100, %if.then76, %do.body62, %do.end28.cleanup_crit_edge, %if.then7, %do.body
  %retval.0 = phi i32 [ 0, %do.end100 ], [ -19, %if.then7 ], [ -19, %do.end28.cleanup_crit_edge ], [ -19, %if.then76 ], [ -19, %do.body ], [ -19, %do.body62 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.thmc50_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !139
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.thmc50_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %8)
  %cmp = icmp sgt i32 %8, -128000
  %div = sdiv i32 %8, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %10 = trunc i32 %9 to i8
  %conv = select i1 %cmp, i8 %10, i8 -128
  %arrayidx = getelementptr %struct.thmc50_data, ptr %3, i32 0, i32 8, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [3 x i8], ptr @THMC50_REG_TEMP_MAX, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @thmc50_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %type = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %add = select i1 %cmp, i32 120, i32 20
  %update_lock = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %last_updated = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated, align 4
  %add2 = add i32 %7, %add
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp3 = icmp slt i32 %sub, 0
  br i1 %cmp3, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 1, !range !140
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %has_temp3 = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %has_temp3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %has_temp3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool4.not = icmp eq i8 %12, 0
  %call6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 64) #8
  %and = and i32 %call6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 39) #8
  %conv10 = trunc i32 %call9 to i8
  %arrayidx11 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 7, i32 0
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv10, ptr %arrayidx11, align 1
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 57) #8
  %conv14 = trunc i32 %call13 to i8
  %arrayidx15 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 8, i32 0
  %14 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv14, ptr %arrayidx15, align 1
  %call17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 58) #8
  %conv18 = trunc i32 %call17 to i8
  %arrayidx19 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 9, i32 0
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18, ptr %arrayidx19, align 1
  %cond25.in69 = select i1 %tobool20.not, i8 23, i8 19
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %cond25.in69) #8
  %conv28 = trunc i32 %call27 to i8
  %arrayidx29 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 10, i32 0
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv28, ptr %arrayidx29, align 1
  %call9.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 38) #8
  %conv10.1 = trunc i32 %call9.1 to i8
  %arrayidx11.1 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx11.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv10.1, ptr %arrayidx11.1, align 1
  %call13.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 55) #8
  %conv14.1 = trunc i32 %call13.1 to i8
  %arrayidx15.1 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv14.1, ptr %arrayidx15.1, align 1
  %call17.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 56) #8
  %conv18.1 = trunc i32 %call17.1 to i8
  %arrayidx19.1 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv18.1, ptr %arrayidx19.1, align 1
  %cond25.in69.1 = select i1 %tobool20.not, i8 24, i8 20
  %call27.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %cond25.in69.1) #8
  %conv28.1 = trunc i32 %call27.1 to i8
  %arrayidx29.1 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv28.1, ptr %arrayidx29.1, align 1
  br i1 %tobool4.not, label %if.then.for.end_crit_edge, label %for.body.2

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.2:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call9.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 32) #8
  %conv10.2 = trunc i32 %call9.2 to i8
  %arrayidx11.2 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 7, i32 2
  %21 = ptrtoint ptr %arrayidx11.2 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv10.2, ptr %arrayidx11.2, align 1
  %call13.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 43) #8
  %conv14.2 = trunc i32 %call13.2 to i8
  %arrayidx15.2 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 8, i32 2
  %22 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv14.2, ptr %arrayidx15.2, align 1
  %call17.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 44) #8
  %conv18.2 = trunc i32 %call17.2 to i8
  %arrayidx19.2 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 9, i32 2
  %23 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv18.2, ptr %arrayidx19.2, align 1
  %cond25.in69.2 = select i1 %tobool20.not, i8 24, i8 20
  %call27.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %cond25.in69.2) #8
  %conv28.2 = trunc i32 %call27.2 to i8
  %arrayidx29.2 = getelementptr %struct.thmc50_data, ptr %1, i32 0, i32 10, i32 2
  %24 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv28.2, ptr %arrayidx29.2, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.2, %if.then.for.end_crit_edge
  %call30 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 25) #8
  %conv31 = trunc i32 %call30 to i8
  %analog_out = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %analog_out to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv31, ptr %analog_out, align 2
  %call32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 65) #8
  %conv33 = trunc i32 %call32 to i8
  %alarms = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 12
  %26 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv33, ptr %alarms, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %28 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %last_updated, align 4
  %valid35 = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %valid35 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %valid35, align 1
  br label %if.end

if.end:                                           ; preds = %for.end, %lor.lhs.false.if.end_crit_edge
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
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.thmc50_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #8
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %val, align 4, !annotation !139
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.thmc50_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %8)
  %cmp = icmp sgt i32 %8, -128000
  %div = sdiv i32 %8, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %10 = trunc i32 %9 to i8
  %conv = select i1 %cmp, i8 %10, i8 -128
  %arrayidx = getelementptr %struct.thmc50_data, ptr %3, i32 0, i32 9, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx10 = getelementptr [3 x i8], ptr @THMC50_REG_TEMP_MIN, i32 0, i32 %1
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx10, align 1
  %call13 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %13, i8 noundef zeroext %conv) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.thmc50_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_critical_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.thmc50_data, ptr %call, i32 0, i32 10, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %3 to i32
  %mul = mul nsw i32 %conv, 1000
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.thmc50_data, ptr %call, i32 0, i32 12
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarms, align 1
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %and)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_out_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @thmc50_update_device(ptr noundef %dev)
  %analog_out = getelementptr inbounds %struct.thmc50_data, ptr %call, i32 0, i32 11
  %0 = ptrtoint ptr %analog_out to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %analog_out, align 2
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @analog_out_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #8
  %4 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %tmp, align 4, !annotation !139
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %tmp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %5 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tmp, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 255)
  %conv = trunc i32 %7 to i8
  %analog_out = getelementptr inbounds %struct.thmc50_data, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %analog_out to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %analog_out, align 2
  %call11 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 25, i8 noundef zeroext %conv) #8
  %call12 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 64) #8
  %9 = ptrtoint ptr %analog_out to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %analog_out, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp15 = icmp eq i8 %10, 0
  %and = and i32 %call12, 223
  %masksel = select i1 %cmp15, i32 0, i32 32
  %config.0 = or i32 %masksel, %and
  %conv19 = trunc i32 %config.0 to i8
  %call20 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 64, i8 noundef zeroext %conv19) #8
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pwm_mode_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %buf, ptr @.str.17, i32 3)
  ret i32 2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !11, !13, !15, !16, !17, !19, !21, !23, !25, !27, !28, !30, !32, !34, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !85, !87, !89, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !113, !114, !115, !116, !118, !119, !121, !123, !124, !126, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__UNIQUE_ID_file288, !1, !"__UNIQUE_ID_file288", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/thmc50.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_license289, !1, !"__UNIQUE_ID_license289", i1 false, i1 false}
!3 = !{ptr @__param_adm1022_temp3, !4, !"__param_adm1022_temp3", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/thmc50.c", i32 30, i32 1}
!5 = !{ptr @__UNIQUE_ID_adm1022_temp3type290, !4, !"__UNIQUE_ID_adm1022_temp3type290", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_adm1022_temp3291, !7, !"__UNIQUE_ID_adm1022_temp3291", i1 false, i1 false}
!7 = !{!"../drivers/hwmon/thmc50.c", i32 31, i32 1}
!8 = !{ptr @__initcall__kmod_thmc50__308_429_thmc50_driver_init6, !9, !"__initcall__kmod_thmc50__308_429_thmc50_driver_init6", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/thmc50.c", i32 429, i32 1}
!10 = !{ptr @__exitcall_thmc50_driver_exit, !9, !"__exitcall_thmc50_driver_exit", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author309, !12, !"__UNIQUE_ID_author309", i1 false, i1 false}
!12 = !{!"../drivers/hwmon/thmc50.c", i32 431, i32 1}
!13 = !{ptr @__UNIQUE_ID_description310, !14, !"__UNIQUE_ID_description310", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/thmc50.c", i32 432, i32 1}
!15 = !{ptr @__param_str_adm1022_temp3, !4, !"__param_str_adm1022_temp3", i1 false, i1 false}
!16 = !{ptr @__param_arr_adm1022_temp3, !4, !"__param_arr_adm1022_temp3", i1 false, i1 false}
!17 = !{ptr @adm1022_temp3_num, !18, !"adm1022_temp3_num", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/thmc50.c", i32 29, i32 21}
!19 = !{ptr @adm1022_temp3, !20, !"adm1022_temp3", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/thmc50.c", i32 28, i32 23}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/thmc50.c", i32 421, i32 11}
!23 = !{ptr @thmc50_driver, !24, !"thmc50_driver", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/thmc50.c", i32 418, i32 26}
!25 = !{ptr @thmc50_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/thmc50.c", i32 395, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @thmc50_group, !29, !"thmc50_group", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/thmc50.c", i32 287, i32 37}
!30 = !{ptr @thmc50_attributes, !31, !"thmc50_attributes", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/thmc50.c", i32 270, i32 26}
!32 = !{ptr @.str.2, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/thmc50.c", i32 250, i32 8}
!34 = !{ptr @sensor_dev_attr_temp1_max, !33, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!35 = !{ptr @.str.3, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/thmc50.c", i32 206, i32 22}
!37 = !{ptr @THMC50_REG_TEMP, !38, !"THMC50_REG_TEMP", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/thmc50.c", i32 47, i32 17}
!39 = !{ptr @THMC50_REG_TEMP_MAX, !40, !"THMC50_REG_TEMP_MAX", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/thmc50.c", i32 49, i32 17}
!41 = !{ptr @THMC50_REG_TEMP_MIN, !42, !"THMC50_REG_TEMP_MIN", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/thmc50.c", i32 48, i32 17}
!43 = !{ptr @THMC50_REG_TEMP_CRITICAL, !44, !"THMC50_REG_TEMP_CRITICAL", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/thmc50.c", i32 50, i32 17}
!45 = !{ptr @THMC50_REG_TEMP_DEFAULT, !46, !"THMC50_REG_TEMP_DEFAULT", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/thmc50.c", i32 51, i32 17}
!47 = !{ptr @.str.4, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/thmc50.c", i32 249, i32 8}
!49 = !{ptr @sensor_dev_attr_temp1_min, !48, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!50 = !{ptr @.str.5, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/thmc50.c", i32 248, i32 8}
!52 = !{ptr @sensor_dev_attr_temp1_input, !51, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!53 = !{ptr @.str.6, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/thmc50.c", i32 251, i32 8}
!55 = !{ptr @sensor_dev_attr_temp1_crit, !54, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!56 = !{ptr @.str.7, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/thmc50.c", i32 261, i32 8}
!58 = !{ptr @sensor_dev_attr_temp1_alarm, !57, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!59 = !{ptr @.str.8, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/thmc50.c", i32 245, i32 22}
!61 = !{ptr @.str.9, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/thmc50.c", i32 254, i32 8}
!63 = !{ptr @sensor_dev_attr_temp2_max, !62, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!64 = !{ptr @.str.10, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/thmc50.c", i32 253, i32 8}
!66 = !{ptr @sensor_dev_attr_temp2_min, !65, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!67 = !{ptr @.str.11, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/thmc50.c", i32 252, i32 8}
!69 = !{ptr @sensor_dev_attr_temp2_input, !68, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!70 = !{ptr @.str.12, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/thmc50.c", i32 255, i32 8}
!72 = !{ptr @sensor_dev_attr_temp2_crit, !71, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!73 = !{ptr @.str.13, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/thmc50.c", i32 262, i32 8}
!75 = !{ptr @sensor_dev_attr_temp2_alarm, !74, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!76 = !{ptr @.str.14, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/thmc50.c", i32 264, i32 8}
!78 = !{ptr @sensor_dev_attr_temp2_fault, !77, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/thmc50.c", i32 267, i32 8}
!81 = !{ptr @sensor_dev_attr_pwm1, !80, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!82 = !{ptr @.str.16, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/thmc50.c", i32 268, i32 8}
!84 = !{ptr @sensor_dev_attr_pwm1_mode, !83, !"sensor_dev_attr_pwm1_mode", i1 false, i1 false}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/hwmon/thmc50.c", i32 159, i32 22}
!87 = !{ptr @temp3_group, !88, !"temp3_group", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/thmc50.c", i32 302, i32 37}
!89 = !{ptr @temp3_attributes, !90, !"temp3_attributes", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/thmc50.c", i32 292, i32 26}
!91 = !{ptr @.str.18, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/thmc50.c", i32 258, i32 8}
!93 = !{ptr @sensor_dev_attr_temp3_max, !92, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!94 = !{ptr @.str.19, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/thmc50.c", i32 257, i32 8}
!96 = !{ptr @sensor_dev_attr_temp3_min, !95, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!97 = !{ptr @.str.20, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/thmc50.c", i32 256, i32 8}
!99 = !{ptr @sensor_dev_attr_temp3_input, !98, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!100 = !{ptr @.str.21, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/thmc50.c", i32 259, i32 8}
!102 = !{ptr @sensor_dev_attr_temp3_crit, !101, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!103 = !{ptr @.str.22, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/thmc50.c", i32 263, i32 8}
!105 = !{ptr @sensor_dev_attr_temp3_alarm, !104, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!106 = !{ptr @.str.23, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/thmc50.c", i32 265, i32 8}
!108 = !{ptr @sensor_dev_attr_temp3_fault, !107, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!109 = !{ptr @thmc50_id, !110, !"thmc50_id", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/thmc50.c", i32 411, i32 35}
!111 = !{ptr @.str.24, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/thmc50.c", i32 317, i32 3}
!113 = !{ptr @.str.25, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @thmc50_detect.__UNIQUE_ID_ddebug304, !112, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/thmc50.c", i32 321, i32 2}
!118 = !{ptr @thmc50_detect.__UNIQUE_ID_ddebug305, !117, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!119 = !{ptr @.str.28, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/thmc50.c", i32 334, i32 15}
!121 = !{ptr @.str.29, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/thmc50.c", i32 348, i32 3}
!123 = !{ptr @thmc50_detect.__UNIQUE_ID_ddebug306, !122, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!124 = !{ptr @.str.30, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/thmc50.c", i32 352, i32 2}
!126 = !{ptr @thmc50_detect.__UNIQUE_ID_ddebug307, !125, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!127 = !{ptr @normal_i2c, !128, !"normal_i2c", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/thmc50.c", i32 23, i32 29}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{i64 2148964050, i64 2148964055, i64 2148964068, i64 2148964112, i64 2148964146, i64 2148964167}
!139 = !{!"auto-init"}
!140 = !{i8 0, i8 2}
