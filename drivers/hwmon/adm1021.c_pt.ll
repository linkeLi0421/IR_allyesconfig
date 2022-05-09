; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adm1021.c_pt.bc'
source_filename = "../drivers/hwmon/adm1021.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
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
%struct.adm1021_data = type { ptr, i32, [3 x ptr], %struct.mutex, i8, i8, i32, [2 x i32], [2 x i32], [2 x i32], i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adm1021__300_497_adm1021_driver_init6 = internal global ptr @adm1021_driver_init, section ".initcall6.init", align 4
@adm1021_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adm1021_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adm1021_id, ptr @adm1021_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adm1021_driver_exit = internal global ptr @adm1021_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author301 = internal constant [89 x i8] c"adm1021.author=Frodo Looijaard <frodol@dds.nl> and Philip Edelbrock <phil@netroedge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description302 = internal constant [35 x i8] c"adm1021.description=adm1021 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [35 x i8] c"adm1021.file=drivers/hwmon/adm1021\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [20 x i8] c"adm1021.license=GPL\00", section ".modinfo", align 1
@__param_str_read_only = internal constant [18 x i8] c"adm1021.read_only\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@read_only = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_read_only = internal constant %struct.kernel_param { ptr @__param_str_read_only, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @read_only } }, section "__param", align 4
@__UNIQUE_ID_read_onlytype305 = internal constant [32 x i8] c"adm1021.parmtype=read_only:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_read_only306 = internal constant [60 x i8] c"adm1021.parm=read_only:Don't set any values, read only mode\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1021\00", [24 x i8] zeroinitializer }, align 32
@adm1021_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adm1021\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adm1023\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max1617\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max1617a\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"thmc10\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"lm84\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"gl523sm\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"mc1066\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 24, i16 25, i16 26, i16 41, i16 42, i16 43, i16 76, i16 77, i16 78, i16 -2], [44 x i8] zeroinitializer }, align 32
@adm1021_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@adm1021_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1021_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1021_min_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adm1021_min_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@adm1021_attributes = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @dev_attr_alarms, ptr @dev_attr_low_power, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_max_show, ptr @temp_max_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_low_power = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @low_power_show, ptr @low_power_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adm1021_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"adm1021_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adm1021.c\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting adm1021 update\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low_power\00", [22 x i8] zeroinitializer }, align 32
@adm1021_min_attributes = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp2_min_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_min_show, ptr @temp_min_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@adm1021_detect.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.5, ptr @.str.21, i8 0, i8 82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adm1021_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"detect failed, smbus byte data not supported!\0A\00", [49 x i8] zeroinitializer }, align 32
@adm1021_detect.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.5, ptr @.str.22, i8 0, i8 85, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"detect failed, chip not detected!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max1617a\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adm1023\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"thmc10\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gl523sm\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mc1066\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lm84\00", [27 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1617\00", [24 x i8] zeroinitializer }, align 32
@adm1021_detect.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.20, ptr @.str.5, ptr @.str.30, i8 0, i8 107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Detected chip %s at adapter %d, address 0x%02x.\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 35, i64 65, i64 73, i64 84]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 48]
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"adm1021_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 486, i32 26 }
@___asan_gen_.35 = private unnamed_addr constant [10 x i8] c"read_only\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 89, i32 13 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 489, i32 11 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"adm1021_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 473, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 21, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 457, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [14 x i8] c"adm1021_group\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 305, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"adm1021_min_group\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 317, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"adm1021_attributes\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 292, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [19 x i8] c"dev_attr_low_power\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 278, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 161, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 102, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 277, i32 8 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 281, i32 8 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 280, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 283, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 178, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 285, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 287, i32 8 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 289, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 290, i32 8 }
@___asan_gen_.131 = private unnamed_addr constant [23 x i8] c"adm1021_min_attributes\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 309, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 279, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 282, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 284, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 286, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 330, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 341, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 363, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 366, i32 16 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 372, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 374, i32 15 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 376, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 416, i32 16 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 423, i32 16 }
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [27 x i8] c"../drivers/hwmon/adm1021.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 427, i32 2 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_read_only306, ptr @__UNIQUE_ID_read_onlytype305, ptr @__exitcall_adm1021_driver_exit, ptr @__initcall__kmod_adm1021__300_497_adm1021_driver_init6, ptr @__param_read_only, ptr @adm1021_driver_exit, ptr @adm1021_driver, ptr @read_only, ptr @.str, ptr @adm1021_id, ptr @normal_i2c, ptr @adm1021_probe.__key, ptr @.str.1, ptr @adm1021_group, ptr @adm1021_min_group, ptr @adm1021_attributes, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @dev_attr_alarms, ptr @dev_attr_low_power, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @adm1021_min_attributes, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp2_min_alarm, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [53 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_only to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_min_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_attributes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_low_power to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adm1021_min_attributes to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1021_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adm1021_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adm1021_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @adm1021_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1021_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 148, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %call3 = tail call ptr @i2c_match_id(ptr noundef nonnull @adm1021_id, ptr noundef %client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call3, i32 0, i32 1
  %1 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.adm1021_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %type, align 4
  %update_lock = getelementptr inbounds %struct.adm1021_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @adm1021_probe.__key) #7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp.not = icmp eq i32 %5, 5
  br i1 %cmp.not, label %if.end7.thread, label %land.lhs.true

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %groups35 = getelementptr inbounds %struct.adm1021_data, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %groups35 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @adm1021_group, ptr %groups35, align 4
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %7 = load i8, ptr @read_only, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end7, label %if.end7.thread38

if.end7.thread38:                                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %groups39 = getelementptr inbounds %struct.adm1021_data, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %groups39 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @adm1021_group, ptr %groups39, align 4
  br label %if.then10

if.end7:                                          ; preds = %land.lhs.true
  %call.i34 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #7
  %9 = trunc i32 %call.i34 to i8
  %conv.i = and i8 %9, -65
  %call1.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 9, i8 noundef zeroext %conv.i) #7
  %call2.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 10, i8 noundef zeroext 4) #7
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %type, align 4
  %groups = getelementptr inbounds %struct.adm1021_data, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @adm1021_group, ptr %groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp9.not = icmp eq i32 %.pr, 5
  br i1 %cmp9.not, label %if.end7.if.end13_crit_edge, label %if.end7.if.then10_crit_edge

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then10:                                        ; preds = %if.end7.if.then10_crit_edge, %if.end7.thread38
  %groups41 = phi ptr [ %groups39, %if.end7.thread38 ], [ %groups, %if.end7.if.then10_crit_edge ]
  %arrayidx12 = getelementptr %struct.adm1021_data, ptr %call.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @adm1021_min_group, ptr %arrayidx12, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end7.if.end13_crit_edge, %if.end7.thread
  %groups37 = phi ptr [ %groups35, %if.end7.thread ], [ %groups41, %if.then10 ], [ %groups, %if.end7.if.end13_crit_edge ]
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups37) #7
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %call16 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %13, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end13 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adm1021_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  br i1 %cmp.i.not, label %if.end8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1021_detect.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1021_detect, %cleanup188)) #7
          to label %if.then7 [label %cleanup188], !srcloc !119

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adm1021_detect.__UNIQUE_ID_ddebug297, ptr noundef nonnull @.str.21) #7
  br label %cleanup188

if.end8:                                          ; preds = %entry
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 2) #7
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 4) #7
  %call11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 3) #7
  %and = and i32 %call9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  %and13 = and i32 %call11, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  %or.cond = select i1 %tobool12.not, i1 %tobool14.not, i1 false
  %and16 = and i32 %call10, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %or.cond247 = select i1 %or.cond, i1 %tobool17.not, i1 false
  br i1 %or.cond247, label %if.end37, label %do.body19

do.body19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1021_detect.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1021_detect, %cleanup188)) #7
          to label %if.then33 [label %cleanup188], !srcloc !119

if.then33:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adm1021_detect.__UNIQUE_ID_ddebug298, ptr noundef nonnull @.str.22) #7
  br label %cleanup188

if.end37:                                         ; preds = %if.end8
  %call38 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #7
  %call39 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp41 = icmp slt i32 %call39, 0
  %or.cond248 = select i1 %cmp, i1 true, i1 %cmp41
  br i1 %or.cond248, label %if.end37.cleanup188_crit_edge, label %if.end43

if.end37.cleanup188_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %call38)
  %cmp44 = icmp eq i32 %call38, 77
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp45 = icmp eq i32 %call39, 1
  %or.cond249 = select i1 %cmp44, i1 %cmp45, i1 false
  br i1 %or.cond249, label %if.then46, label %if.else

if.then46:                                        ; preds = %if.end43
  %call47 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 1
  br i1 %cmp48.not, label %if.then46.do.body167_crit_edge, label %if.then46.cleanup188_crit_edge

if.then46.cleanup188_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.then46.do.body167_crit_edge:                   ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.else:                                          ; preds = %if.end43
  %6 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call38, label %if.else72 [
    i32 65, label %if.then52
    i32 73, label %if.else.do.body167_crit_edge
    i32 35, label %if.then68
    i32 84, label %if.then71
  ]

if.else.do.body167_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.then52:                                        ; preds = %if.else
  %7 = trunc i32 %call39 to i8
  %trunc = and i8 %7, -16
  %8 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %trunc, label %if.then52.cleanup188_crit_edge [
    i8 48, label %if.then52.do.body167_crit_edge
    i8 0, label %if.then59
  ]

if.then52.do.body167_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.then52.cleanup188_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.then59:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.then68:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.then71:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.else72:                                        ; preds = %if.else
  %call73 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 6) #7
  %call74 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp75 = icmp slt i32 %call73, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp77 = icmp slt i32 %call74, 0
  %or.cond250 = select i1 %cmp75, i1 true, i1 %cmp77
  br i1 %or.cond250, label %if.else72.cleanup188_crit_edge, label %if.end79

if.else72.cleanup188_crit_edge:                   ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end79:                                         ; preds = %if.else72
  %call80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #7
  %call81 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #7
  %call82 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 5) #7
  %call83 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 7) #7
  %sext.mask = and i32 %call80, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp85.not = icmp eq i32 %sext.mask, 0
  %sext.mask243 = and i32 %call81, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask243)
  %cmp90.not = icmp eq i32 %sext.mask243, 0
  %or.cond251 = select i1 %cmp85.not, i1 %cmp90.not, i1 false
  %sext.mask244 = and i32 %call82, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask244)
  %cmp95.not = icmp eq i32 %sext.mask244, 0
  %or.cond252 = select i1 %or.cond251, i1 %cmp95.not, i1 false
  %sext.mask245 = and i32 %call83, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask245)
  %cmp100.not = icmp eq i32 %sext.mask245, 0
  %or.cond253 = select i1 %or.cond252, i1 %cmp100.not, i1 false
  br i1 %or.cond253, label %if.end103, label %if.end79.cleanup188_crit_edge

if.end79.cleanup188_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end103:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %call81)
  %cmp104 = icmp eq i32 %call80, %call81
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %call82)
  %cmp107 = icmp eq i32 %call80, %call82
  %or.cond254 = select i1 %cmp104, i1 %cmp107, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %call83)
  %cmp110 = icmp eq i32 %call80, %call83
  %or.cond255 = select i1 %or.cond254, i1 %cmp110, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %call73)
  %cmp113 = icmp eq i32 %call80, %call73
  %or.cond256 = select i1 %or.cond255, i1 %cmp113, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call80, i32 %call74)
  %cmp116 = icmp eq i32 %call80, %call74
  %or.cond257 = select i1 %or.cond256, i1 %cmp116, i1 false
  br i1 %or.cond257, label %if.end103.cleanup188_crit_edge, label %if.end119

if.end103.cleanup188_crit_edge:                   ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end119:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp120 = icmp eq i32 %call10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %call38, i32 %call11)
  %cmp123 = icmp eq i32 %call38, %call11
  %or.cond258 = select i1 %cmp120, i1 %cmp123, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %call11)
  %cmp126 = icmp eq i32 %call39, %call11
  %or.cond259 = select i1 %or.cond258, i1 %cmp126, i1 false
  %and129 = and i32 %call11, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %cmp130 = icmp eq i32 %and129, 0
  %or.cond260 = select i1 %or.cond259, i1 %cmp130, i1 false
  %and133 = and i32 %call9, 171
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134 = icmp eq i32 %and133, 0
  %or.cond261 = select i1 %or.cond260, i1 %cmp134, i1 false
  br i1 %or.cond261, label %if.end119.do.body167_crit_edge, label %if.end144

if.end119.do.body167_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.end144:                                        ; preds = %if.end119
  %sext = shl i32 %call73, 24
  %conv146 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv146, i32 %call82)
  %cmp147 = icmp sgt i32 %conv146, %call82
  %sext246 = shl i32 %call74, 24
  %conv151 = ashr exact i32 %sext246, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv151, i32 %call83)
  %cmp152 = icmp sgt i32 %conv151, %call83
  %or.cond262 = select i1 %cmp147, i1 true, i1 %cmp152
  br i1 %or.cond262, label %if.end144.cleanup188_crit_edge, label %if.end144.do.body167_crit_edge

if.end144.do.body167_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body167

if.end144.cleanup188_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

do.body167:                                       ; preds = %if.end144.do.body167_crit_edge, %if.end119.do.body167_crit_edge, %if.then71, %if.then68, %if.then59, %if.then52.do.body167_crit_edge, %if.else.do.body167_crit_edge, %if.then46.do.body167_crit_edge
  %type_name.2 = phi ptr [ @.str, %if.then59 ], [ @.str.26, %if.then68 ], [ @.str.27, %if.then71 ], [ @.str.23, %if.then46.do.body167_crit_edge ], [ @.str.24, %if.then52.do.body167_crit_edge ], [ @.str.25, %if.else.do.body167_crit_edge ], [ @.str.28, %if.end119.do.body167_crit_edge ], [ @.str.29, %if.end144.do.body167_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1021_detect.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1021_detect, %do.end186)) #7
          to label %if.then181 [label %do.end186], !srcloc !119

if.then181:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %conv183 = zext i16 %12 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @adm1021_detect.__UNIQUE_ID_ddebug299, ptr noundef nonnull @.str.30, ptr noundef nonnull %type_name.2, i32 noundef %10, i32 noundef %conv183) #7
  br label %do.end186

do.end186:                                        ; preds = %if.then181, %do.body167
  %call187 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %type_name.2, i32 noundef 20) #7
  br label %cleanup188

cleanup188:                                       ; preds = %do.end186, %if.end144.cleanup188_crit_edge, %if.end103.cleanup188_crit_edge, %if.end79.cleanup188_crit_edge, %if.else72.cleanup188_crit_edge, %if.then52.cleanup188_crit_edge, %if.then46.cleanup188_crit_edge, %if.end37.cleanup188_crit_edge, %if.then33, %do.body19, %if.then7, %do.body
  %retval.1 = phi i32 [ 0, %do.end186 ], [ -19, %if.then7 ], [ -19, %if.then33 ], [ -19, %if.end37.cleanup188_crit_edge ], [ -19, %if.then46.cleanup188_crit_edge ], [ -19, %if.then52.cleanup188_crit_edge ], [ -19, %do.body ], [ -19, %do.body19 ], [ -19, %if.else72.cleanup188_crit_edge ], [ -19, %if.end79.cleanup188_crit_edge ], [ -19, %if.end103.cleanup188_crit_edge ], [ -19, %if.end144.cleanup188_crit_edge ]
  ret i32 %retval.1
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
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1021_data, ptr %call, i32 0, i32 7, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !120
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %div = sdiv i32 %8, 1000
  store i32 %div, ptr %temp, align 4
  %update_lock = getelementptr inbounds %struct.adm1021_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -128)
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 127)
  %mul = mul nsw i32 %12, 1000
  %arrayidx = getelementptr %struct.adm1021_data, ptr %3, i32 0, i32 7, i32 %1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx, align 4
  %14 = load i8, ptr @read_only, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %.tr = trunc i32 %1 to i8
  %15 = shl i8 %.tr, 1
  %conv = add i8 %15, 11
  %conv14 = trunc i32 %12 to i8
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv14) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adm1021_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add2 = add i32 %5, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end63_crit_edge

lor.lhs.false.if.end63_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end63

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adm1021_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adm1021_update_device, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !119

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adm1021_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.6) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  %type = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 1
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #7
  %sext = shl i32 %call10, 24
  %conv12 = ashr exact i32 %sext, 24
  %mul = mul nsw i32 %conv12, 1000
  %arrayidx = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 9, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul, ptr %arrayidx, align 4
  %call16 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #7
  %sext99 = shl i32 %call16, 24
  %conv18 = ashr exact i32 %sext99, 24
  %mul19 = mul nsw i32 %conv18, 1000
  %arrayidx20 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 7, i32 0
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul19, ptr %arrayidx20, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp21.not = icmp eq i32 %12, 5
  br i1 %cmp21.not, label %do.end.for.inc_crit_edge, label %if.then23

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #7
  %sext100 = shl i32 %call27, 24
  %conv29 = ashr exact i32 %sext100, 24
  %mul30 = mul nsw i32 %conv29, 1000
  %arrayidx31 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 8, i32 0
  %13 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul30, ptr %arrayidx31, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %do.end.for.inc_crit_edge
  %call10.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #7
  %sext.1 = shl i32 %call10.1, 24
  %conv12.1 = ashr exact i32 %sext.1, 24
  %mul.1 = mul nsw i32 %conv12.1, 1000
  %arrayidx.1 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %mul.1, ptr %arrayidx.1, align 4
  %call16.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #7
  %sext99.1 = shl i32 %call16.1, 24
  %conv18.1 = ashr exact i32 %sext99.1, 24
  %mul19.1 = mul nsw i32 %conv18.1, 1000
  %arrayidx20.1 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul19.1, ptr %arrayidx20.1, align 4
  %16 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp21.not.1 = icmp eq i32 %17, 5
  br i1 %cmp21.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then23.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.1

if.then23.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %call27.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #7
  %sext100.1 = shl i32 %call27.1, 24
  %conv29.1 = ashr exact i32 %sext100.1, 24
  %mul30.1 = mul nsw i32 %conv29.1, 1000
  %arrayidx31.1 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 8, i32 1
  %18 = ptrtoint ptr %arrayidx31.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul30.1, ptr %arrayidx31.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then23.1, %for.inc.for.inc.1_crit_edge
  %call33 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #7
  %19 = trunc i32 %call33 to i8
  %conv34 = and i8 %19, 124
  %alarms = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %alarms to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv34, ptr %alarms, align 4
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp36 = icmp eq i32 %22, 1
  br i1 %cmp36, label %if.then38, label %for.inc.1.if.end60_crit_edge

for.inc.1.if.end60_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then38:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #7
  %shr = ashr i32 %call39, 5
  %mul40 = mul i32 %shr, 125
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.1, align 4
  %add43 = add i32 %mul40, %24
  store i32 %add43, ptr %arrayidx.1, align 4
  %call44 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 19) #7
  %shr45 = ashr i32 %call44, 5
  %mul46 = mul i32 %shr45, 125
  %25 = ptrtoint ptr %arrayidx20.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20.1, align 4
  %add49 = add i32 %mul46, %26
  store i32 %add49, ptr %arrayidx20.1, align 4
  %call50 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 20) #7
  %shr51 = ashr i32 %call50, 5
  %mul52 = mul i32 %shr51, 125
  %arrayidx54 = getelementptr %struct.adm1021_data, ptr %1, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx54, align 4
  %add55 = add i32 %mul52, %28
  store i32 %add55, ptr %arrayidx54, align 4
  %call56 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #7
  %conv57 = trunc i32 %call56 to i8
  %remote_temp_offset = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %remote_temp_offset to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv57, ptr %remote_temp_offset, align 1
  %call58 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 18) #7
  %conv59 = trunc i32 %call58 to i8
  %remote_temp_offset_prec = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 12
  %30 = ptrtoint ptr %remote_temp_offset_prec to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv59, ptr %remote_temp_offset_prec, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then38, %for.inc.1.if.end60_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %last_updated, align 4
  %valid62 = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 4
  %33 = ptrtoint ptr %valid62 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %valid62, align 4
  br label %if.end63

if.end63:                                         ; preds = %if.end60, %lor.lhs.false.if.end63_crit_edge
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1021_data, ptr %call, i32 0, i32 9, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.adm1021_data, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %alarms, align 4
  %conv = zext i8 %3 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %and)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %alarms = getelementptr inbounds %struct.adm1021_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %alarms to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %alarms, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @low_power_show(ptr noundef %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %low_power = getelementptr inbounds %struct.adm1021_data, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %low_power to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %low_power, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @low_power_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !120
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp ne i32 %6, 0
  %update_lock = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %low_power5 = getelementptr inbounds %struct.adm1021_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %low_power5 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %low_power5, align 1
  %9 = zext i1 %cmp to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %9)
  %cmp7.not = icmp eq i8 %8, %9
  br i1 %cmp7.not, label %if.end.if.end15_crit_edge, label %if.then9

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #7
  %10 = ptrtoint ptr %low_power5 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %low_power5, align 1
  %and = and i32 %call10, 191
  %shl = select i1 %cmp, i32 64, i32 0
  %or = or i32 %and, %shl
  %conv13 = trunc i32 %or to i8
  %call14 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 9, i8 noundef zeroext %conv13) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.end.if.end15_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end15 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_show(ptr noundef %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @adm1021_update_device(ptr noundef %dev)
  %arrayidx = getelementptr %struct.adm1021_data, ptr %call, i32 0, i32 8, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %3)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !120
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %div = sdiv i32 %8, 1000
  store i32 %div, ptr %temp, align 4
  %update_lock = getelementptr inbounds %struct.adm1021_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -128)
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 127)
  %mul = mul nsw i32 %12, 1000
  %arrayidx = getelementptr %struct.adm1021_data, ptr %3, i32 0, i32 8, i32 %1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul, ptr %arrayidx, align 4
  %14 = load i8, ptr @read_only, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool11.not = icmp eq i8 %14, 0
  br i1 %tobool11.not, label %if.then12, label %if.end.if.end16_crit_edge

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %.tr = trunc i32 %1 to i8
  %15 = shl i8 %.tr, 1
  %conv = add i8 %15, 12
  %conv14 = trunc i32 %12 to i8
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv, i8 noundef zeroext %conv14) #7
  br label %if.end16

if.end16:                                         ; preds = %if.then12, %if.end.if.end16_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end16 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 53)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !33, !35, !36, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !84, !85, !86, !88, !89, !91, !93, !95, !97, !99, !101, !103, !105, !106, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_adm1021__300_497_adm1021_driver_init6, !1, !"__initcall__kmod_adm1021__300_497_adm1021_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adm1021.c", i32 497, i32 1}
!2 = !{ptr @__exitcall_adm1021_driver_exit, !1, !"__exitcall_adm1021_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author301, !4, !"__UNIQUE_ID_author301", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adm1021.c", i32 499, i32 1}
!5 = !{ptr @__UNIQUE_ID_description302, !6, !"__UNIQUE_ID_description302", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adm1021.c", i32 501, i32 1}
!7 = !{ptr @__UNIQUE_ID_file303, !8, !"__UNIQUE_ID_file303", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adm1021.c", i32 502, i32 1}
!9 = !{ptr @__UNIQUE_ID_license304, !8, !"__UNIQUE_ID_license304", i1 false, i1 false}
!10 = !{ptr @__param_read_only, !11, !"__param_read_only", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adm1021.c", i32 504, i32 1}
!12 = !{ptr @__UNIQUE_ID_read_onlytype305, !11, !"__UNIQUE_ID_read_onlytype305", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_read_only306, !14, !"__UNIQUE_ID_read_only306", i1 false, i1 false}
!14 = !{!"../drivers/hwmon/adm1021.c", i32 505, i32 1}
!15 = !{ptr @read_only, !16, !"read_only", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/adm1021.c", i32 89, i32 13}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adm1021.c", i32 489, i32 11}
!19 = !{ptr @adm1021_driver, !20, !"adm1021_driver", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/adm1021.c", i32 486, i32 26}
!21 = !{ptr @adm1021_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/adm1021.c", i32 457, i32 2}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @adm1021_group, !25, !"adm1021_group", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/adm1021.c", i32 305, i32 37}
!26 = !{ptr @adm1021_attributes, !27, !"adm1021_attributes", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/adm1021.c", i32 292, i32 26}
!28 = !{ptr @.str.2, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adm1021.c", i32 278, i32 8}
!30 = !{ptr @sensor_dev_attr_temp1_max, !29, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!31 = !{ptr @.str.3, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/adm1021.c", i32 161, i32 22}
!33 = !{ptr @.str.4, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adm1021.c", i32 102, i32 3}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @adm1021_update_device.__UNIQUE_ID_ddebug288, !34, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!38 = !{ptr @.str.7, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/adm1021.c", i32 277, i32 8}
!40 = !{ptr @sensor_dev_attr_temp1_input, !39, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/adm1021.c", i32 281, i32 8}
!43 = !{ptr @sensor_dev_attr_temp2_max, !42, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/adm1021.c", i32 280, i32 8}
!46 = !{ptr @sensor_dev_attr_temp2_input, !45, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!47 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/adm1021.c", i32 283, i32 8}
!49 = !{ptr @sensor_dev_attr_temp1_max_alarm, !48, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!50 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/adm1021.c", i32 178, i32 22}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/adm1021.c", i32 285, i32 8}
!54 = !{ptr @sensor_dev_attr_temp2_max_alarm, !53, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/adm1021.c", i32 287, i32 8}
!57 = !{ptr @sensor_dev_attr_temp2_fault, !56, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/adm1021.c", i32 289, i32 8}
!60 = !{ptr @dev_attr_alarms, !59, !"dev_attr_alarms", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/adm1021.c", i32 290, i32 8}
!63 = !{ptr @dev_attr_low_power, !62, !"dev_attr_low_power", i1 false, i1 false}
!64 = !{ptr @adm1021_min_group, !65, !"adm1021_min_group", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adm1021.c", i32 317, i32 37}
!66 = !{ptr @adm1021_min_attributes, !67, !"adm1021_min_attributes", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/adm1021.c", i32 309, i32 26}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/adm1021.c", i32 279, i32 8}
!70 = !{ptr @sensor_dev_attr_temp1_min, !69, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/adm1021.c", i32 282, i32 8}
!73 = !{ptr @sensor_dev_attr_temp2_min, !72, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/adm1021.c", i32 284, i32 8}
!76 = !{ptr @sensor_dev_attr_temp1_min_alarm, !75, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adm1021.c", i32 286, i32 8}
!79 = !{ptr @sensor_dev_attr_temp2_min_alarm, !78, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!80 = !{ptr @adm1021_id, !81, !"adm1021_id", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/adm1021.c", i32 473, i32 35}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/hwmon/adm1021.c", i32 330, i32 3}
!84 = !{ptr @.str.21, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @adm1021_detect.__UNIQUE_ID_ddebug297, !83, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/adm1021.c", i32 341, i32 3}
!88 = !{ptr @adm1021_detect.__UNIQUE_ID_ddebug298, !87, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/adm1021.c", i32 363, i32 15}
!91 = !{ptr @.str.24, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/adm1021.c", i32 366, i32 16}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/adm1021.c", i32 372, i32 15}
!95 = !{ptr @.str.26, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/adm1021.c", i32 374, i32 15}
!97 = !{ptr @.str.27, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/adm1021.c", i32 376, i32 15}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/adm1021.c", i32 416, i32 16}
!101 = !{ptr @.str.29, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/adm1021.c", i32 423, i32 16}
!103 = !{ptr @.str.30, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/adm1021.c", i32 427, i32 2}
!105 = !{ptr @adm1021_detect.__UNIQUE_ID_ddebug299, !104, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!106 = !{ptr @normal_i2c, !107, !"normal_i2c", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/adm1021.c", i32 21, i32 29}
!108 = !{ptr @__param_str_read_only, !11, !"__param_str_read_only", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{i8 0, i8 2}
!119 = !{i64 2148966230, i64 2148966235, i64 2148966248, i64 2148966292, i64 2148966326, i64 2148966347}
!120 = !{!"auto-init"}
