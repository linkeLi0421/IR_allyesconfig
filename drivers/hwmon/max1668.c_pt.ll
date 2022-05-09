; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max1668.c_pt.bc'
source_filename = "../drivers/hwmon/max1668.c"
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
%struct.max1668_data = type { ptr, [3 x ptr], i32, %struct.mutex, i8, i32, [5 x i8], [5 x i8], [5 x i8], i16 }

@__param_str_read_only = internal constant [18 x i8] c"max1668.read_only\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@read_only = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_read_only = internal constant %struct.kernel_param { ptr @__param_str_read_only, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @read_only } }, section "__param", align 4
@__UNIQUE_ID_read_onlytype288 = internal constant [32 x i8] c"max1668.parmtype=read_only:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_read_only289 = internal constant [60 x i8] c"max1668.parm=read_only:Don't set any values, read only mode\00", section ".modinfo", align 1
@__initcall__kmod_max1668__298_444_max1668_driver_init6 = internal global ptr @max1668_driver_init, section ".initcall6.init", align 4
@max1668_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max1668_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max1668_id, ptr @max1668_detect, ptr @max1668_addr_list, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max1668_driver_exit = internal global ptr @max1668_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author299 = internal constant [53 x i8] c"max1668.author=David George <david.george@ska.ac.za>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [61 x i8] c"max1668.description=MAX1668 remote temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [35 x i8] c"max1668.file=drivers/hwmon/max1668\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [20 x i8] c"max1668.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1668\00", [24 x i8] zeroinitializer }, align 32
@max1668_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max1668\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max1805\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max1989\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@max1668_addr_list = internal constant { [10 x i16], [44 x i8] } { [10 x i16] [i16 24, i16 25, i16 26, i16 41, i16 42, i16 43, i16 76, i16 77, i16 78, i16 -2], [44 x i8] zeroinitializer }, align 32
@max1668_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max1668_group_common = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max1668_attribute_mode, ptr null, ptr @max1668_attribute_common, ptr null }, [44 x i8] zeroinitializer }, align 32
@max1668_group_unique = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max1668_attribute_mode, ptr null, ptr @max1668_attribute_unique, ptr null }, [44 x i8] zeroinitializer }, align 32
@max1668_attribute_common = internal global { [18 x ptr], [56 x i8] } { [18 x ptr] [ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_max, ptr @set_temp_max }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_min, ptr @set_temp_min }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_min, ptr @set_temp_min }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_min, ptr @set_temp_min }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_min, ptr @set_temp_min }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp_min, ptr @set_temp_min }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_min\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_min\00", [22 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@max1668_attribute_unique = internal global { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_min, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_temp, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @show_fault, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1805\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max1989\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 5, i64 11]
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"read_only\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 49, i32 13 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"max1668_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 433, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 436, i32 13 }
@___asan_gen_.45 = private unnamed_addr constant [11 x i8] c"max1668_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 424, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"max1668_addr_list\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 20, i32 29 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 412, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"max1668_group_common\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 348, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"max1668_group_unique\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 353, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"max1668_attribute_common\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 286, i32 26 }
@___asan_gen_.66 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_min\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_min\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 244, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 151, i32 22 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 249, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 254, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 259, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 264, i32 8 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 246, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 251, i32 8 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 256, i32 8 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 261, i32 8 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 266, i32 8 }
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_min_alarm\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_min_alarm\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 243, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 248, i32 8 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 253, i32 8 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 269, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 175, i32 22 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 270, i32 8 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 272, i32 8 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 271, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 274, i32 8 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 273, i32 8 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 280, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 281, i32 8 }
@___asan_gen_.198 = private unnamed_addr constant [25 x i8] c"max1668_attribute_unique\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 310, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_min_alarm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_max_alarm\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_min_alarm\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_fault\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 258, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 263, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 276, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 275, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 278, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 277, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 282, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 283, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 382, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [27 x i8] c"../drivers/hwmon/max1668.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 384, i32 15 }
@llvm.compiler.used = appending global [83 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__UNIQUE_ID_read_only289, ptr @__UNIQUE_ID_read_onlytype288, ptr @__exitcall_max1668_driver_exit, ptr @__initcall__kmod_max1668__298_444_max1668_driver_init6, ptr @__param_read_only, ptr @max1668_driver_exit, ptr @read_only, ptr @max1668_driver, ptr @.str, ptr @max1668_id, ptr @max1668_addr_list, ptr @max1668_probe.__key, ptr @.str.1, ptr @max1668_group_common, ptr @max1668_group_unique, ptr @max1668_attribute_common, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp4_min, ptr @sensor_dev_attr_temp5_min, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_min_alarm, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_min_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @max1668_attribute_unique, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_min_alarm, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_min_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_only to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_addr_list to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_group_common to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_group_unique to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_attribute_common to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max1668_attribute_unique to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max1668_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max1668_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max1668_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @max1668_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1668_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 140, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %call8 = tail call ptr @i2c_match_id(ptr noundef nonnull @max1668_id, ptr noundef %client) #8
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call8, i32 0, i32 1
  %7 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %driver_data, align 4
  %type = getelementptr inbounds %struct.max1668_data, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %type, align 4
  %update_lock = getelementptr inbounds %struct.max1668_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max1668_probe.__key) #8
  %groups = getelementptr inbounds %struct.max1668_data, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @max1668_group_common, ptr %groups, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %type, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %12, label %if.end6.if.end15_crit_edge [
    i32 0, label %if.end6.if.then12_crit_edge
    i32 2, label %if.end6.if.then12_crit_edge37
  ]

if.end6.if.then12_crit_edge37:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end6.if.then12_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12

if.end6.if.end15_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then12:                                        ; preds = %if.end6.if.then12_crit_edge, %if.end6.if.then12_crit_edge37
  %arrayidx14 = getelementptr %struct.max1668_data, ptr %call.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @max1668_group_unique, ptr %arrayidx14, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.end6.if.end15_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call18 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #8
  %cmp.i.i = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call18 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end15 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max1668_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
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
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 77, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 77
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %call5, label %if.end8.cleanup_crit_edge [
    i32 3, label %if.end8.if.end21_crit_edge
    i32 5, label %if.then12
    i32 11, label %if.then15
  ]

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.then12, %if.end8.if.end21_crit_edge
  %type_name.0.ph = phi ptr [ @.str, %if.end8.if.end21_crit_edge ], [ @.str.34, %if.then15 ], [ @.str.33, %if.then12 ]
  %call22 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %type_name.0.ph, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ]
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max1668_attribute_mode(ptr nocapture noundef readnone %kobj, ptr noundef readnone %attr, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @read_only, align 1, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %cmp = icmp eq ptr %attr, @sensor_dev_attr_temp1_max
  %cmp1 = icmp eq ptr %attr, @sensor_dev_attr_temp2_max
  %or.cond = or i1 %cmp, %cmp1
  %cmp3 = icmp eq ptr %attr, @sensor_dev_attr_temp3_max
  %or.cond32 = or i1 %cmp3, %or.cond
  %cmp5 = icmp eq ptr %attr, @sensor_dev_attr_temp4_max
  %or.cond33 = or i1 %cmp5, %or.cond32
  %cmp7 = icmp eq ptr %attr, @sensor_dev_attr_temp5_max
  %or.cond34 = or i1 %cmp7, %or.cond33
  %cmp9 = icmp eq ptr %attr, @sensor_dev_attr_temp1_min
  %or.cond35 = or i1 %cmp9, %or.cond34
  %cmp11 = icmp eq ptr %attr, @sensor_dev_attr_temp2_min
  %or.cond36 = or i1 %cmp11, %or.cond35
  %cmp13 = icmp eq ptr %attr, @sensor_dev_attr_temp3_min
  %or.cond37 = or i1 %cmp13, %or.cond36
  %cmp15 = icmp eq ptr %attr, @sensor_dev_attr_temp4_min
  %or.cond38 = or i1 %cmp15, %or.cond37
  %cmp17 = icmp eq ptr %attr, @sensor_dev_attr_temp5_min
  %or.cond39 = or i1 %cmp17, %or.cond38
  %ret.0 = select i1 %or.cond39, i16 420, i16 292
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %ret.0, %if.end ], [ 292, %entry.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max1668_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.max1668_data, ptr %call, i32 0, i32 6, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %mul = mul nsw i32 %conv, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !142
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.max1668_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %8)
  %cmp5 = icmp sgt i32 %8, -128000
  %div = sdiv i32 %8, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %10 = trunc i32 %9 to i8
  %conv = select i1 %cmp5, i8 %10, i8 -128
  %arrayidx = getelementptr %struct.max1668_data, ptr %3, i32 0, i32 6, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv12 = add i8 %12, 19
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv12, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %count.addr.0 = select i1 %cmp16, i32 %call15, i32 %count
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max1668_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.max1668_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %valid = getelementptr inbounds %struct.max1668_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !141
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_updated = getelementptr inbounds %struct.max1668_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated, align 4
  %add2 = add i32 %7, 150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add2, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.abort_crit_edge

land.lhs.true.abort_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %abort

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.if.then9_crit_edge, label %if.end11, !prof !143

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.then9:                                         ; preds = %if.end43.3.if.then9_crit_edge, %if.end43.2.if.then9_crit_edge, %if.end43.1.if.then9_crit_edge, %if.end43.if.then9_crit_edge, %if.end.if.then9_crit_edge
  %call4.lcssa = phi i32 [ %call4, %if.end.if.then9_crit_edge ], [ %call4.1, %if.end43.if.then9_crit_edge ], [ %call4.2, %if.end43.1.if.then9_crit_edge ], [ %call4.3, %if.end43.2.if.then9_crit_edge ], [ %call4.4, %if.end43.3.if.then9_crit_edge ]
  %9 = inttoptr i32 %call4.lcssa to ptr
  br label %abort

if.end11:                                         ; preds = %if.end
  %conv12 = trunc i32 %call4 to i8
  %arrayidx = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 8, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv12, ptr %arrayidx, align 1
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end11.if.then24_crit_edge, label %if.end26, !prof !143

if.end11.if.then24_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.then24:                                        ; preds = %if.end11.4.if.then24_crit_edge, %if.end11.3.if.then24_crit_edge, %if.end11.2.if.then24_crit_edge, %if.end11.1.if.then24_crit_edge, %if.end11.if.then24_crit_edge
  %call15.lcssa = phi i32 [ %call15, %if.end11.if.then24_crit_edge ], [ %call15.1, %if.end11.1.if.then24_crit_edge ], [ %call15.2, %if.end11.2.if.then24_crit_edge ], [ %call15.3, %if.end11.3.if.then24_crit_edge ], [ %call15.4, %if.end11.4.if.then24_crit_edge ]
  %11 = inttoptr i32 %call15.lcssa to ptr
  br label %abort

if.end26:                                         ; preds = %if.end11
  %conv27 = trunc i32 %call15 to i8
  %arrayidx28 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv27, ptr %arrayidx28, align 1
  %call32 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end26.if.then41_crit_edge, label %if.end43, !prof !143

if.end26.if.then41_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.then41:                                        ; preds = %if.end26.4.if.then41_crit_edge, %if.end26.3.if.then41_crit_edge, %if.end26.2.if.then41_crit_edge, %if.end26.1.if.then41_crit_edge, %if.end26.if.then41_crit_edge
  %call32.lcssa = phi i32 [ %call32, %if.end26.if.then41_crit_edge ], [ %call32.1, %if.end26.1.if.then41_crit_edge ], [ %call32.2, %if.end26.2.if.then41_crit_edge ], [ %call32.3, %if.end26.3.if.then41_crit_edge ], [ %call32.4, %if.end26.4.if.then41_crit_edge ]
  %13 = inttoptr i32 %call32.lcssa to ptr
  br label %abort

if.end43:                                         ; preds = %if.end26
  %conv44 = trunc i32 %call32 to i8
  %arrayidx45 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 7, i32 0
  %14 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv44, ptr %arrayidx45, align 1
  %call4.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp slt i32 %call4.1, 0
  br i1 %cmp5.1, label %if.end43.if.then9_crit_edge, label %if.end11.1, !prof !143

if.end43.if.then9_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end11.1:                                       ; preds = %if.end43
  %conv12.1 = trunc i32 %call4.1 to i8
  %arrayidx.1 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 8, i32 1
  %15 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv12.1, ptr %arrayidx.1, align 1
  %call15.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 10) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.1)
  %cmp16.1 = icmp slt i32 %call15.1, 0
  br i1 %cmp16.1, label %if.end11.1.if.then24_crit_edge, label %if.end26.1, !prof !143

if.end11.1.if.then24_crit_edge:                   ; preds = %if.end11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end26.1:                                       ; preds = %if.end11.1
  %conv27.1 = trunc i32 %call15.1 to i8
  %arrayidx28.1 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv27.1, ptr %arrayidx28.1, align 1
  %call32.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.1)
  %cmp33.1 = icmp slt i32 %call32.1, 0
  br i1 %cmp33.1, label %if.end26.1.if.then41_crit_edge, label %if.end43.1, !prof !143

if.end26.1.if.then41_crit_edge:                   ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end43.1:                                       ; preds = %if.end26.1
  %conv44.1 = trunc i32 %call32.1 to i8
  %arrayidx45.1 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 7, i32 1
  %17 = ptrtoint ptr %arrayidx45.1 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv44.1, ptr %arrayidx45.1, align 1
  %call4.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp slt i32 %call4.2, 0
  br i1 %cmp5.2, label %if.end43.1.if.then9_crit_edge, label %if.end11.2, !prof !143

if.end43.1.if.then9_crit_edge:                    ; preds = %if.end43.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end11.2:                                       ; preds = %if.end43.1
  %conv12.2 = trunc i32 %call4.2 to i8
  %arrayidx.2 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 8, i32 2
  %18 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12.2, ptr %arrayidx.2, align 1
  %call15.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.2)
  %cmp16.2 = icmp slt i32 %call15.2, 0
  br i1 %cmp16.2, label %if.end11.2.if.then24_crit_edge, label %if.end26.2, !prof !143

if.end11.2.if.then24_crit_edge:                   ; preds = %if.end11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end26.2:                                       ; preds = %if.end11.2
  %conv27.2 = trunc i32 %call15.2 to i8
  %arrayidx28.2 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 6, i32 2
  %19 = ptrtoint ptr %arrayidx28.2 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv27.2, ptr %arrayidx28.2, align 1
  %call32.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.2)
  %cmp33.2 = icmp slt i32 %call32.2, 0
  br i1 %cmp33.2, label %if.end26.2.if.then41_crit_edge, label %if.end43.2, !prof !143

if.end26.2.if.then41_crit_edge:                   ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end43.2:                                       ; preds = %if.end26.2
  %conv44.2 = trunc i32 %call32.2 to i8
  %arrayidx45.2 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 7, i32 2
  %20 = ptrtoint ptr %arrayidx45.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv44.2, ptr %arrayidx45.2, align 1
  %call4.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.3)
  %cmp5.3 = icmp slt i32 %call4.3, 0
  br i1 %cmp5.3, label %if.end43.2.if.then9_crit_edge, label %if.end11.3, !prof !143

if.end43.2.if.then9_crit_edge:                    ; preds = %if.end43.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end11.3:                                       ; preds = %if.end43.2
  %conv12.3 = trunc i32 %call4.3 to i8
  %arrayidx.3 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 8, i32 3
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv12.3, ptr %arrayidx.3, align 1
  %call15.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.3)
  %cmp16.3 = icmp slt i32 %call15.3, 0
  br i1 %cmp16.3, label %if.end11.3.if.then24_crit_edge, label %if.end26.3, !prof !143

if.end11.3.if.then24_crit_edge:                   ; preds = %if.end11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end26.3:                                       ; preds = %if.end11.3
  %conv27.3 = trunc i32 %call15.3 to i8
  %arrayidx28.3 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 6, i32 3
  %22 = ptrtoint ptr %arrayidx28.3 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv27.3, ptr %arrayidx28.3, align 1
  %call32.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.3)
  %cmp33.3 = icmp slt i32 %call32.3, 0
  br i1 %cmp33.3, label %if.end26.3.if.then41_crit_edge, label %if.end43.3, !prof !143

if.end26.3.if.then41_crit_edge:                   ; preds = %if.end26.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end43.3:                                       ; preds = %if.end26.3
  %conv44.3 = trunc i32 %call32.3 to i8
  %arrayidx45.3 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 7, i32 3
  %23 = ptrtoint ptr %arrayidx45.3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv44.3, ptr %arrayidx45.3, align 1
  %call4.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.4)
  %cmp5.4 = icmp slt i32 %call4.4, 0
  br i1 %cmp5.4, label %if.end43.3.if.then9_crit_edge, label %if.end11.4, !prof !143

if.end43.3.if.then9_crit_edge:                    ; preds = %if.end43.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

if.end11.4:                                       ; preds = %if.end43.3
  %conv12.4 = trunc i32 %call4.4 to i8
  %arrayidx.4 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 8, i32 4
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv12.4, ptr %arrayidx.4, align 1
  %call15.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.4)
  %cmp16.4 = icmp slt i32 %call15.4, 0
  br i1 %cmp16.4, label %if.end11.4.if.then24_crit_edge, label %if.end26.4, !prof !143

if.end11.4.if.then24_crit_edge:                   ; preds = %if.end11.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then24

if.end26.4:                                       ; preds = %if.end11.4
  %conv27.4 = trunc i32 %call15.4 to i8
  %arrayidx28.4 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 6, i32 4
  %25 = ptrtoint ptr %arrayidx28.4 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv27.4, ptr %arrayidx28.4, align 1
  %call32.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.4)
  %cmp33.4 = icmp slt i32 %call32.4, 0
  br i1 %cmp33.4, label %if.end26.4.if.then41_crit_edge, label %if.end43.4, !prof !143

if.end26.4.if.then41_crit_edge:                   ; preds = %if.end26.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then41

if.end43.4:                                       ; preds = %if.end26.4
  %conv44.4 = trunc i32 %call32.4 to i8
  %arrayidx45.4 = getelementptr %struct.max1668_data, ptr %1, i32 0, i32 7, i32 4
  %26 = ptrtoint ptr %arrayidx45.4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv44.4, ptr %arrayidx45.4, align 1
  %call46 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then55, label %if.end57, !prof !143

if.then55:                                        ; preds = %if.end43.4
  call void @__sanitizer_cov_trace_pc() #10
  %27 = inttoptr i32 %call46 to ptr
  br label %abort

if.end57:                                         ; preds = %if.end43.4
  %call46.tr = trunc i32 %call46 to i16
  %conv58 = shl i16 %call46.tr, 8
  %alarms = getelementptr inbounds %struct.max1668_data, ptr %1, i32 0, i32 9
  %28 = ptrtoint ptr %alarms to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv58, ptr %alarms, align 4
  %call59 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %if.then68, label %if.end70, !prof !143

if.then68:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %29 = inttoptr i32 %call59 to ptr
  br label %abort

if.end70:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %alarms, align 4
  %32 = trunc i32 %call59 to i16
  %conv73 = or i16 %31, %32
  store i16 %conv73, ptr %alarms, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %last_updated74 = getelementptr inbounds %struct.max1668_data, ptr %1, i32 0, i32 5
  %34 = ptrtoint ptr %last_updated74 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %last_updated74, align 4
  %35 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %valid, align 4
  br label %abort

abort:                                            ; preds = %if.end70, %if.then68, %if.then55, %if.then41, %if.then24, %if.then9, %land.lhs.true.abort_crit_edge
  %ret.0 = phi ptr [ %9, %if.then9 ], [ %11, %if.then24 ], [ %13, %if.then41 ], [ %27, %if.then55 ], [ %29, %if.then68 ], [ %1, %if.end70 ], [ %1, %land.lhs.true.abort_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #8
  ret ptr %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max1668_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.max1668_data, ptr %call, i32 0, i32 7, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %mul = mul nsw i32 %conv, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_temp_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #8
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !142
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %update_lock = getelementptr inbounds %struct.max1668_data, ptr %3, i32 0, i32 3
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -128000, i32 %8)
  %cmp5 = icmp sgt i32 %8, -128000
  %div = sdiv i32 %8, 1000
  %9 = call i32 @llvm.smin.i32(i32 %div, i32 127)
  %10 = trunc i32 %9 to i8
  %conv = select i1 %cmp5, i8 %10, i8 -128
  %arrayidx = getelementptr %struct.max1668_data, ptr %3, i32 0, i32 7, i32 %1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %arrayidx, align 1
  %.tr = trunc i32 %1 to i8
  %12 = shl i8 %.tr, 1
  %conv12 = add i8 %12, 20
  %call15 = call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext %conv12, i8 noundef zeroext %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  %count.addr.0 = select i1 %cmp16, i32 %call15, i32 %count
  call void @mutex_unlock(ptr noundef %update_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.addr.0, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_temp(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max1668_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.max1668_data, ptr %call, i32 0, i32 8, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = sext i8 %4 to i32
  %mul = mul nsw i32 %conv, 1000
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max1668_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %alarms = getelementptr inbounds %struct.max1668_data, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %alarms, align 4
  %conv = zext i16 %4 to i32
  %shr = lshr i32 %conv, %1
  %and = and i32 %shr, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @show_fault(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max1668_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %alarms = getelementptr inbounds %struct.max1668_data, ptr %call, i32 0, i32 9
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %alarms, align 4
  %5 = and i16 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.end.land.end_crit_edge, label %land.rhs

if.end.land.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.max1668_data, ptr %call, i32 0, i32 8, i32 %1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %7)
  %cmp = icmp eq i8 %7, 127
  %phi.cast = zext i1 %cmp to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end.land.end_crit_edge
  %8 = phi i32 [ 0, %if.end.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.17, i32 noundef %8)
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call6, %land.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !30, !32, !34, !35, !37, !38, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !126, !128, !130}
!llvm.module.flags = !{!132, !133, !134, !135, !136, !137, !138, !139}
!llvm.ident = !{!140}

!0 = !{ptr @__param_read_only, !1, !"__param_read_only", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max1668.c", i32 50, i32 1}
!2 = !{ptr @__UNIQUE_ID_read_onlytype288, !1, !"__UNIQUE_ID_read_onlytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_read_only289, !4, !"__UNIQUE_ID_read_only289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max1668.c", i32 51, i32 1}
!5 = !{ptr @__initcall__kmod_max1668__298_444_max1668_driver_init6, !6, !"__initcall__kmod_max1668__298_444_max1668_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max1668.c", i32 444, i32 1}
!7 = !{ptr @__exitcall_max1668_driver_exit, !6, !"__exitcall_max1668_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author299, !9, !"__UNIQUE_ID_author299", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/max1668.c", i32 446, i32 1}
!10 = !{ptr @__UNIQUE_ID_description300, !11, !"__UNIQUE_ID_description300", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max1668.c", i32 447, i32 1}
!12 = !{ptr @__UNIQUE_ID_file301, !13, !"__UNIQUE_ID_file301", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max1668.c", i32 448, i32 1}
!14 = !{ptr @__UNIQUE_ID_license302, !13, !"__UNIQUE_ID_license302", i1 false, i1 false}
!15 = !{ptr @read_only, !16, !"read_only", i1 false, i1 false}
!16 = !{!"../drivers/hwmon/max1668.c", i32 49, i32 13}
!17 = !{ptr @__param_str_read_only, !1, !"__param_str_read_only", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/max1668.c", i32 436, i32 13}
!20 = !{ptr @max1668_driver, !21, !"max1668_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/max1668.c", i32 433, i32 26}
!22 = !{ptr @max1668_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/max1668.c", i32 412, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @max1668_group_common, !26, !"max1668_group_common", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max1668.c", i32 348, i32 37}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/max1668.c", i32 244, i32 8}
!29 = !{ptr @sensor_dev_attr_temp1_max, !28, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/max1668.c", i32 151, i32 22}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/max1668.c", i32 249, i32 8}
!34 = !{ptr @sensor_dev_attr_temp2_max, !33, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!35 = !{ptr @.str.5, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/max1668.c", i32 254, i32 8}
!37 = !{ptr @sensor_dev_attr_temp3_max, !36, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/max1668.c", i32 259, i32 8}
!40 = !{ptr @sensor_dev_attr_temp4_max, !39, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!41 = !{ptr @.str.7, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/max1668.c", i32 264, i32 8}
!43 = !{ptr @sensor_dev_attr_temp5_max, !42, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!44 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/max1668.c", i32 246, i32 8}
!46 = !{ptr @sensor_dev_attr_temp1_min, !45, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!47 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/max1668.c", i32 251, i32 8}
!49 = !{ptr @sensor_dev_attr_temp2_min, !48, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!50 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/max1668.c", i32 256, i32 8}
!52 = !{ptr @sensor_dev_attr_temp3_min, !51, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!53 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/max1668.c", i32 261, i32 8}
!55 = !{ptr @sensor_dev_attr_temp4_min, !54, !"sensor_dev_attr_temp4_min", i1 false, i1 false}
!56 = !{ptr @.str.12, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/max1668.c", i32 266, i32 8}
!58 = !{ptr @sensor_dev_attr_temp5_min, !57, !"sensor_dev_attr_temp5_min", i1 false, i1 false}
!59 = !{ptr @max1668_attribute_common, !60, !"max1668_attribute_common", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/max1668.c", i32 286, i32 26}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/max1668.c", i32 243, i32 8}
!63 = !{ptr @sensor_dev_attr_temp1_input, !62, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!64 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/max1668.c", i32 248, i32 8}
!66 = !{ptr @sensor_dev_attr_temp2_input, !65, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hwmon/max1668.c", i32 253, i32 8}
!69 = !{ptr @sensor_dev_attr_temp3_input, !68, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!70 = !{ptr @.str.16, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/max1668.c", i32 269, i32 8}
!72 = !{ptr @sensor_dev_attr_temp1_max_alarm, !71, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!73 = !{ptr @.str.17, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/max1668.c", i32 175, i32 22}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/max1668.c", i32 270, i32 8}
!77 = !{ptr @sensor_dev_attr_temp1_min_alarm, !76, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/max1668.c", i32 272, i32 8}
!80 = !{ptr @sensor_dev_attr_temp2_max_alarm, !79, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/max1668.c", i32 271, i32 8}
!83 = !{ptr @sensor_dev_attr_temp2_min_alarm, !82, !"sensor_dev_attr_temp2_min_alarm", i1 false, i1 false}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/max1668.c", i32 274, i32 8}
!86 = !{ptr @sensor_dev_attr_temp3_max_alarm, !85, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/max1668.c", i32 273, i32 8}
!89 = !{ptr @sensor_dev_attr_temp3_min_alarm, !88, !"sensor_dev_attr_temp3_min_alarm", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/max1668.c", i32 280, i32 8}
!92 = !{ptr @sensor_dev_attr_temp2_fault, !91, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/max1668.c", i32 281, i32 8}
!95 = !{ptr @sensor_dev_attr_temp3_fault, !94, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!96 = !{ptr @max1668_group_unique, !97, !"max1668_group_unique", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/max1668.c", i32 353, i32 37}
!98 = !{ptr @max1668_attribute_unique, !99, !"max1668_attribute_unique", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/max1668.c", i32 310, i32 26}
!100 = !{ptr @.str.25, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/max1668.c", i32 258, i32 8}
!102 = !{ptr @sensor_dev_attr_temp4_input, !101, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!103 = !{ptr @.str.26, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/max1668.c", i32 263, i32 8}
!105 = !{ptr @sensor_dev_attr_temp5_input, !104, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!106 = !{ptr @.str.27, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/max1668.c", i32 276, i32 8}
!108 = !{ptr @sensor_dev_attr_temp4_max_alarm, !107, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!109 = !{ptr @.str.28, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/max1668.c", i32 275, i32 8}
!111 = !{ptr @sensor_dev_attr_temp4_min_alarm, !110, !"sensor_dev_attr_temp4_min_alarm", i1 false, i1 false}
!112 = !{ptr @.str.29, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/hwmon/max1668.c", i32 278, i32 8}
!114 = !{ptr @sensor_dev_attr_temp5_max_alarm, !113, !"sensor_dev_attr_temp5_max_alarm", i1 false, i1 false}
!115 = !{ptr @.str.30, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/max1668.c", i32 277, i32 8}
!117 = !{ptr @sensor_dev_attr_temp5_min_alarm, !116, !"sensor_dev_attr_temp5_min_alarm", i1 false, i1 false}
!118 = !{ptr @.str.31, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/max1668.c", i32 282, i32 8}
!120 = !{ptr @sensor_dev_attr_temp4_fault, !119, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!121 = !{ptr @.str.32, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/max1668.c", i32 283, i32 8}
!123 = !{ptr @sensor_dev_attr_temp5_fault, !122, !"sensor_dev_attr_temp5_fault", i1 false, i1 false}
!124 = !{ptr @max1668_id, !125, !"max1668_id", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/max1668.c", i32 424, i32 35}
!126 = !{ptr @.str.33, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/max1668.c", i32 382, i32 15}
!128 = !{ptr @.str.34, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/max1668.c", i32 384, i32 15}
!130 = !{ptr @max1668_addr_list, !131, !"max1668_addr_list", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/max1668.c", i32 20, i32 29}
!132 = !{i32 1, !"wchar_size", i32 2}
!133 = !{i32 1, !"min_enum_size", i32 4}
!134 = !{i32 8, !"branch-target-enforcement", i32 0}
!135 = !{i32 8, !"sign-return-address", i32 0}
!136 = !{i32 8, !"sign-return-address-all", i32 0}
!137 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!138 = !{i32 7, !"uwtable", i32 1}
!139 = !{i32 7, !"frame-pointer", i32 2}
!140 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!141 = !{i8 0, i8 2}
!142 = !{!"auto-init"}
!143 = !{!"branch_weights", i32 1, i32 2000}
