; ModuleID = '/llk/IR_all_yes/drivers/hwmon/lineage-pem.c_pt.bc'
source_filename = "../drivers/hwmon/lineage-pem.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pem_data = type { ptr, [4 x ptr], %struct.mutex, i8, i8, i32, i32, [4 x i8], [9 x i8], [5 x i8], [5 x i8] }

@__initcall__kmod_lineage_pem__288_518_pem_driver_init6 = internal global ptr @pem_driver_init, section ".initcall6.init", align 4
@pem_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @pem_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pem_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_pem_driver_exit = internal global ptr @pem_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [54 x i8] c"lineage_pem.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [67 x i8] c"lineage_pem.description=Lineage CPL PEM hardware monitoring driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [43 x i8] c"lineage_pem.file=drivers/hwmon/lineage-pem\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [24 x i8] c"lineage_pem.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lineage_pem\00", [20 x i8] zeroinitializer }, align 32
@pem_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lineage_pem\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pem_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@pem_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 454, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Firmware revision %d.%d.%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pem_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hwmon/lineage-pem.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pem_probe._entry_ptr = internal global ptr @pem_probe._entry, section ".printk_index", align 4
@pem_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pem_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@pem_input_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pem_input_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@pem_fan_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pem_fan_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@pem_attributes = internal global { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_curr1_alarm, ptr @sensor_dev_attr_power1_alarm, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr null], [40 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_data_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 4, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 65, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 8, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 -128, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 -128, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_data_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_data_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_data_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 16, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 32, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_bool_show, ptr null }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld\0A\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@pem_get_data.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in1_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@pem_input_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_power1_input, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_data_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_power1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@pem_get_input.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"power1_input\00", [19 x i8] zeroinitializer }, align 32
@pem_fan_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_fan_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_fan_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pem_fan_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@pem_get_fan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 4, i64 6, i64 7, i64 10, i64 11]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"pem_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 510, i32 26 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 512, i32 14 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"pem_id\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 504, i32 35 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 437, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 452, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant [10 x i8] c"pem_group\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 394, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [16 x i8] c"pem_input_group\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 405, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"pem_fan_group\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 416, i32 37 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"pem_attributes\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 372, i32 26 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in1_crit_alarm\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_alarm\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_alarm\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.101 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 335, i32 8 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 299, i32 25 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 336, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 283, i32 25 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 338, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 341, i32 8 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 346, i32 8 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 351, i32 8 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 358, i32 8 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 362, i32 8 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 363, i32 8 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 364, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 365, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 367, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 369, i32 8 }
@___asan_gen_.158 = private unnamed_addr constant [21 x i8] c"pem_input_attributes\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 398, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_power1_input\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 340, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 345, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 350, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant [19 x i8] c"pem_fan_attributes\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 409, i32 26 }
@___asan_gen_.182 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 355, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 356, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.198 = private constant [31 x i8] c"../drivers/hwmon/lineage-pem.c\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.198, i32 357, i32 8 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_pem_driver_exit, ptr @__initcall__kmod_lineage_pem__288_518_pem_driver_init6, ptr @pem_driver_exit, ptr @pem_probe._entry, ptr @pem_probe._entry_ptr, ptr @pem_driver, ptr @.str, ptr @pem_id, ptr @pem_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pem_group, ptr @pem_input_group, ptr @pem_fan_group, ptr @pem_attributes, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_curr1_alarm, ptr @sensor_dev_attr_power1_alarm, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pem_input_attributes, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_power1_input, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @pem_fan_attributes, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_input_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_fan_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_attributes to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_input_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_power1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pem_fan_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @pem_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pem_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @pem_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_probe(ptr noundef %client) #2 align 64 {
entry:
  %block_buffer.i188 = alloca [32 x i8], align 1
  %block_buffer.i179 = alloca [32 x i8], align 1
  %block_buffer.i170 = alloca [32 x i8], align 4
  %block_buffer.i = alloca [32 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 50593792
  call void @__sanitizer_cov_trace_const_cmp4(i32 50593792, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 50593792
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 148, i32 noundef 3520) #5
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @pem_probe.__key) #5
  %firmware_rev = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i) #5
  %7 = call ptr @memset(ptr %block_buffer.i, i32 255, i32 32)
  %call.i168 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -35, ptr noundef nonnull %block_buffer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %cmp.i169 = icmp slt i32 %call.i168, 0
  br i1 %cmp.i169, label %if.end6.pem_read_block.exit.thread_crit_edge, label %if.end.i, !prof !115

if.end6.pem_read_block.exit.thread_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_read_block.exit.thread

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i168)
  %cmp3.i.not = icmp eq i32 %call.i168, 4
  br i1 %cmp3.i.not, label %if.end10, label %if.end.i.pem_read_block.exit.thread_crit_edge, !prof !116

if.end.i.pem_read_block.exit.thread_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_read_block.exit.thread

pem_read_block.exit.thread:                       ; preds = %if.end.i.pem_read_block.exit.thread_crit_edge, %if.end6.pem_read_block.exit.thread_crit_edge
  %result.0.i.ph = phi i32 [ -5, %if.end.i.pem_read_block.exit.thread_crit_edge ], [ %call.i168, %if.end6.pem_read_block.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i) #5
  br label %cleanup

if.end10:                                         ; preds = %if.end.i
  %8 = ptrtoint ptr %block_buffer.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %block_buffer.i, align 4
  %10 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %9, ptr %firmware_rev, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i) #5
  %call11 = call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %do.end17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end17:                                         ; preds = %if.end10
  %11 = ptrtoint ptr %firmware_rev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %firmware_rev, align 4
  %conv = zext i8 %12 to i32
  %arrayidx20 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %14 to i32
  %arrayidx23 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 7, i32 2
  %15 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx23, align 2
  %conv24 = zext i8 %16 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.2, i32 noundef %conv, i32 noundef %conv21, i32 noundef %conv24) #8
  %groups = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pem_group, ptr %groups, align 4
  %input_string = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i170) #5
  %18 = call ptr @memset(ptr %block_buffer.i170, i32 255, i32 32)
  %call.i171 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -36, ptr noundef nonnull %block_buffer.i170) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i171)
  %cmp3.i174.not = icmp eq i32 %call.i171, 4
  br i1 %cmp3.i174.not, label %land.lhs.true, label %if.then45, !prof !117

land.lhs.true:                                    ; preds = %do.end17
  %19 = ptrtoint ptr %block_buffer.i170 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_buffer.i170, align 4
  %21 = ptrtoint ptr %input_string to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %input_string, align 1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i170) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %20)
  %tobool32.not = icmp ult i32 %20, 16777216
  br i1 %tobool32.not, label %lor.lhs.false, label %land.lhs.true.if.then42_crit_edge

land.lhs.true.if.then42_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false:                                    ; preds = %land.lhs.true
  %arrayidx34 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool36.not = icmp eq i8 %23, 0
  br i1 %tobool36.not, label %lor.lhs.false37, label %lor.lhs.false.if.then42_crit_edge

lor.lhs.false.if.then42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %arrayidx39 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 9, i32 2
  %24 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool41.not = icmp eq i8 %25, 0
  br i1 %tobool41.not, label %lor.lhs.false37.if.end74_crit_edge, label %lor.lhs.false37.if.then42_crit_edge

lor.lhs.false37.if.then42_crit_edge:              ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then42

lor.lhs.false37.if.end74_crit_edge:               ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then42:                                        ; preds = %lor.lhs.false37.if.then42_crit_edge, %lor.lhs.false.if.then42_crit_edge, %land.lhs.true.if.then42_crit_edge
  %input_length = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %input_length to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %input_length, align 4
  br label %if.end74

if.then45:                                        ; preds = %do.end17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i170) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i179) #5
  %27 = call ptr @memset(ptr %block_buffer.i179, i32 255, i32 32)
  %call.i180 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -36, ptr noundef nonnull %block_buffer.i179) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i180)
  %cmp3.i183.not = icmp eq i32 %call.i180, 5
  br i1 %cmp3.i183.not, label %land.lhs.true50, label %pem_read_block.exit187.thread, !prof !117

pem_read_block.exit187.thread:                    ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i179) #5
  br label %if.end74

land.lhs.true50:                                  ; preds = %if.then45
  %28 = call ptr @memcpy(ptr %input_string, ptr %block_buffer.i179, i32 5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i179) #5
  %29 = ptrtoint ptr %input_string to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %input_string, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool54.not = icmp eq i8 %30, 0
  br i1 %tobool54.not, label %lor.lhs.false55, label %land.lhs.true50.if.then70_crit_edge

land.lhs.true50.if.then70_crit_edge:              ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

lor.lhs.false55:                                  ; preds = %land.lhs.true50
  %arrayidx57 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 9, i32 1
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool59.not = icmp eq i8 %32, 0
  br i1 %tobool59.not, label %lor.lhs.false60, label %lor.lhs.false55.if.then70_crit_edge

lor.lhs.false55.if.then70_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

lor.lhs.false60:                                  ; preds = %lor.lhs.false55
  %arrayidx62 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 9, i32 2
  %33 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx62, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool64.not = icmp eq i8 %34, 0
  br i1 %tobool64.not, label %lor.lhs.false65, label %lor.lhs.false60.if.then70_crit_edge

lor.lhs.false60.if.then70_crit_edge:              ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

lor.lhs.false65:                                  ; preds = %lor.lhs.false60
  %arrayidx67 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 9, i32 3
  %35 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx67, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool69.not = icmp eq i8 %36, 0
  br i1 %tobool69.not, label %lor.lhs.false65.if.end74_crit_edge, label %lor.lhs.false65.if.then70_crit_edge

lor.lhs.false65.if.then70_crit_edge:              ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then70

lor.lhs.false65.if.end74_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.then70:                                        ; preds = %lor.lhs.false65.if.then70_crit_edge, %lor.lhs.false60.if.then70_crit_edge, %lor.lhs.false55.if.then70_crit_edge, %land.lhs.true50.if.then70_crit_edge
  %input_length71 = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 5
  %37 = ptrtoint ptr %input_length71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 5, ptr %input_length71, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %lor.lhs.false65.if.end74_crit_edge, %pem_read_block.exit187.thread, %if.then42, %lor.lhs.false37.if.end74_crit_edge
  %input_length75 = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %input_length75 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %input_length75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool76.not = icmp eq i32 %39, 0
  br i1 %tobool76.not, label %if.end74.if.end81_crit_edge, label %if.then77

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then77:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx80 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @pem_input_group, ptr %arrayidx80, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then77, %if.end74.if.end81_crit_edge
  %idx.0 = phi i32 [ 2, %if.then77 ], [ 1, %if.end74.if.end81_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i188) #5
  %41 = call ptr @memset(ptr %block_buffer.i188, i32 255, i32 32)
  %call.i189 = call i32 @i2c_smbus_read_block_data(ptr noundef %client, i8 noundef zeroext -31, ptr noundef nonnull %block_buffer.i188) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i189)
  %cmp3.i192.not = icmp eq i32 %call.i189, 5
  br i1 %cmp3.i192.not, label %land.lhs.true85, label %pem_read_block.exit196.thread, !prof !117

pem_read_block.exit196.thread:                    ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i188) #5
  br label %if.end109

land.lhs.true85:                                  ; preds = %if.end81
  %fan_speed = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 10
  %42 = call ptr @memcpy(ptr %fan_speed, ptr %block_buffer.i188, i32 5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i188) #5
  %43 = ptrtoint ptr %fan_speed to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %fan_speed, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool89.not = icmp eq i8 %44, 0
  br i1 %tobool89.not, label %lor.lhs.false90, label %land.lhs.true85.if.then105_crit_edge

land.lhs.true85.if.then105_crit_edge:             ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then105

lor.lhs.false90:                                  ; preds = %land.lhs.true85
  %arrayidx92 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx92, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool94.not = icmp eq i8 %46, 0
  br i1 %tobool94.not, label %lor.lhs.false95, label %lor.lhs.false90.if.then105_crit_edge

lor.lhs.false90.if.then105_crit_edge:             ; preds = %lor.lhs.false90
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then105

lor.lhs.false95:                                  ; preds = %lor.lhs.false90
  %arrayidx97 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 10, i32 2
  %47 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx97, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool99.not = icmp eq i8 %48, 0
  br i1 %tobool99.not, label %lor.lhs.false100, label %lor.lhs.false95.if.then105_crit_edge

lor.lhs.false95.if.then105_crit_edge:             ; preds = %lor.lhs.false95
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then105

lor.lhs.false100:                                 ; preds = %lor.lhs.false95
  %arrayidx102 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 10, i32 3
  %49 = ptrtoint ptr %arrayidx102 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx102, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool104.not = icmp eq i8 %50, 0
  br i1 %tobool104.not, label %lor.lhs.false100.if.end109_crit_edge, label %lor.lhs.false100.if.then105_crit_edge

lor.lhs.false100.if.then105_crit_edge:            ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then105

lor.lhs.false100.if.end109_crit_edge:             ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end109

if.then105:                                       ; preds = %lor.lhs.false100.if.then105_crit_edge, %lor.lhs.false95.if.then105_crit_edge, %lor.lhs.false90.if.then105_crit_edge, %land.lhs.true85.if.then105_crit_edge
  %fans_supported = getelementptr inbounds %struct.pem_data, ptr %call.i, i32 0, i32 4
  %51 = ptrtoint ptr %fans_supported to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %fans_supported, align 1
  %arrayidx108 = getelementptr %struct.pem_data, ptr %call.i, i32 0, i32 1, i32 %idx.0
  %52 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @pem_fan_group, ptr %arrayidx108, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then105, %lor.lhs.false100.if.end109_crit_edge, %pem_read_block.exit196.thread
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call113 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #5
  %cmp.i.i = icmp ugt ptr %call113, inttoptr (i32 -4096 to ptr)
  %53 = ptrtoint ptr %call113 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %53, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %if.end10.cleanup_crit_edge, %pem_read_block.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end109 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ %result.0.i.ph, %pem_read_block.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_block_data(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_data_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pem_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %land.end.i [
    i32 4, label %sw.bb.i
    i32 6, label %sw.bb4.i
    i32 7, label %sw.bb8.i
    i32 10, label %if.end.pem_get_data.exit_crit_edge
    i32 11, label %sw.bb13.i
  ]

if.end.pem_get_data.exit_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_get_data.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 8, i32 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 8, i32 5
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %add3.i = or i32 %shl.i, %conv.i
  %mul.i = mul nuw nsw i32 %add3.i, 5
  %div1.i = lshr i32 %mul.i, 1
  br label %pem_get_data.exit

sw.bb4.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx5.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 8, i32 6
  %8 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5.i, align 1
  %conv6.i = zext i8 %9 to i32
  %mul7.i = mul nuw nsw i32 %conv6.i, 200
  br label %pem_get_data.exit

sw.bb8.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 8, i32 7
  %10 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %11 to i32
  %mul11.i = mul nuw nsw i32 %conv10.i, 1000
  br label %pem_get_data.exit

sw.bb13.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_get_data.exit

land.end.i:                                       ; preds = %if.end
  %.b2.i = load i1, ptr @pem_get_data.__already_done, align 1
  br i1 %.b2.i, label %land.end.i.pem_get_data.exit_crit_edge, label %if.then.i, !prof !116

land.end.i.pem_get_data.exit_crit_edge:           ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_get_data.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pem_get_data.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 222, i32 noundef 9, ptr noundef null) #5
  br label %pem_get_data.exit

pem_get_data.exit:                                ; preds = %if.then.i, %land.end.i.pem_get_data.exit_crit_edge, %sw.bb13.i, %sw.bb8.i, %sw.bb4.i, %sw.bb.i, %if.end.pem_get_data.exit_crit_edge
  %val.0.i = phi i32 [ 107000, %sw.bb13.i ], [ %mul11.i, %sw.bb8.i ], [ %mul7.i, %sw.bb4.i ], [ %div1.i, %sw.bb.i ], [ 97000, %if.end.pem_get_data.exit_crit_edge ], [ 0, %if.then.i ], [ 0, %land.end.i.pem_get_data.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %val.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %pem_get_data.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %pem_get_data.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pem_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %block_buffer.i77 = alloca [32 x i8], align 1
  %block_buffer.i68 = alloca [32 x i8], align 1
  %block_buffer.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #5
  %last_updated = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 6
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
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %abort

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %data_string = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i) #5
  %9 = call ptr @memset(ptr %block_buffer.i, i32 255, i32 32)
  %call.i = call i32 @i2c_smbus_read_block_data(ptr noundef %3, i8 noundef zeroext -48, ptr noundef nonnull %block_buffer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then6_crit_edge, label %if.end.i, !prof !115

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i)
  %cmp3.i.not = icmp eq i32 %call.i, 9
  br i1 %cmp3.i.not, label %if.end, label %if.end.i.if.then6_crit_edge, !prof !116

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then6

if.then6:                                         ; preds = %if.end.i.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %result.0.i.ph = phi i32 [ -5, %if.end.i.if.then6_crit_edge ], [ %call.i, %if.then.if.then6_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i) #5
  %10 = inttoptr i32 %result.0.i.ph to ptr
  br label %abort

if.end:                                           ; preds = %if.end.i
  %11 = call ptr @memcpy(ptr %data_string, ptr %block_buffer.i, i32 9)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i) #5
  %input_length = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %input_length to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %input_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool8.not = icmp eq i32 %13, 0
  br i1 %tobool8.not, label %if.end.if.end23_crit_edge, label %if.then9

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then9:                                         ; preds = %if.end
  %input_string = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 9
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i68) #5
  %14 = call ptr @memset(ptr %block_buffer.i68, i32 255, i32 32)
  %call.i69 = call i32 @i2c_smbus_read_block_data(ptr noundef %3, i8 noundef zeroext -36, ptr noundef nonnull %block_buffer.i68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp.i70, label %if.then9.if.then20_crit_edge, label %if.end.i73, !prof !115

if.then9.if.then20_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

if.end.i73:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %call.i69)
  %cmp2.i71 = icmp eq i32 %call.i69, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i69, i32 %13)
  %cmp3.i72 = icmp ne i32 %call.i69, %13
  %spec.select.i = or i1 %cmp2.i71, %cmp3.i72
  br i1 %spec.select.i, label %if.end.i73.if.then20_crit_edge, label %pem_read_block.exit76, !prof !115

if.end.i73.if.then20_crit_edge:                   ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then20

pem_read_block.exit76:                            ; preds = %if.end.i73
  call void @__sanitizer_cov_trace_pc() #7
  %15 = call ptr @memcpy(ptr %input_string, ptr %block_buffer.i68, i32 %13)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i68) #5
  br label %if.end23

if.then20:                                        ; preds = %if.end.i73.if.then20_crit_edge, %if.then9.if.then20_crit_edge
  %result.0.i75.ph = phi i32 [ -5, %if.end.i73.if.then20_crit_edge ], [ %call.i69, %if.then9.if.then20_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i68) #5
  %16 = inttoptr i32 %result.0.i75.ph to ptr
  br label %abort

if.end23:                                         ; preds = %pem_read_block.exit76, %if.end.if.end23_crit_edge
  %fans_supported = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %fans_supported to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %fans_supported, align 1, !range !118
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool24.not = icmp eq i8 %18, 0
  br i1 %tobool24.not, label %if.end23.if.end38_crit_edge, label %if.then25

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then25:                                        ; preds = %if.end23
  %fan_speed = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %block_buffer.i77) #5
  %19 = call ptr @memset(ptr %block_buffer.i77, i32 255, i32 32)
  %call.i78 = call i32 @i2c_smbus_read_block_data(ptr noundef %3, i8 noundef zeroext -31, ptr noundef nonnull %block_buffer.i77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %cmp.i79 = icmp slt i32 %call.i78, 0
  br i1 %cmp.i79, label %if.then25.if.then35_crit_edge, label %if.end.i82, !prof !115

if.then25.if.then35_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

if.end.i82:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i78)
  %cmp3.i81.not = icmp eq i32 %call.i78, 5
  br i1 %cmp3.i81.not, label %pem_read_block.exit85, label %if.end.i82.if.then35_crit_edge, !prof !116

if.end.i82.if.then35_crit_edge:                   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then35

pem_read_block.exit85:                            ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #7
  %20 = call ptr @memcpy(ptr %fan_speed, ptr %block_buffer.i77, i32 5)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i77) #5
  br label %if.end38

if.then35:                                        ; preds = %if.end.i82.if.then35_crit_edge, %if.then25.if.then35_crit_edge
  %result.0.i84.ph = phi i32 [ -5, %if.end.i82.if.then35_crit_edge ], [ %call.i78, %if.then25.if.then35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %block_buffer.i77) #5
  %21 = inttoptr i32 %result.0.i84.ph to ptr
  br label %abort

if.end38:                                         ; preds = %pem_read_block.exit85, %if.end23.if.end38_crit_edge
  %call39 = call i32 @i2c_smbus_write_byte(ptr noundef %3, i8 noundef zeroext 3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_updated, align 4
  %valid41 = getelementptr inbounds %struct.pem_data, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %valid41 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %valid41, align 4
  br label %abort

abort:                                            ; preds = %if.end38, %if.then35, %if.then20, %if.then6, %lor.lhs.false.abort_crit_edge
  %ret.1 = phi ptr [ %1, %lor.lhs.false.abort_crit_edge ], [ %10, %if.then6 ], [ %16, %if.then20 ], [ %21, %if.then35 ], [ %1, %if.end38 ]
  call void @mutex_unlock(ptr noundef %update_lock) #5
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_bool_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pem_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.pem_data, ptr %call, i32 0, i32 8, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %da, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %and12 = and i8 %6, %4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and12)
  %tobool = icmp ne i8 %and12, 0
  %lnot.ext = zext i1 %tobool to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %lnot.ext) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call6, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pem_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %2, label %land.end.i [
    i32 0, label %if.then.i
    i32 1, label %if.end12.i
  ]

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %input_string = getelementptr inbounds %struct.pem_data, ptr %call, i32 0, i32 9
  %4 = ptrtoint ptr %input_string to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %input_string, align 1
  %conv.i = zext i8 %5 to i32
  %arrayidx1.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 9, i32 1
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx1.i, align 1
  %conv2.i = zext i8 %7 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %add3.i = or i32 %shl.i, %conv.i
  %8 = mul nuw nsw i32 %add3.i, 1000
  %mul.i = add nsw i32 %8, -75000
  br label %pem_get_input.exit

if.end12.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx13.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %10 to i32
  %arrayidx16.i = getelementptr %struct.pem_data, ptr %call, i32 0, i32 9, i32 3
  %11 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %12 to i32
  %shl18.i = shl nuw nsw i32 %conv17.i, 8
  %add19.i = or i32 %shl18.i, %conv14.i
  %mul20.i = mul i32 %add19.i, 1000000
  br label %pem_get_input.exit

land.end.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @pem_get_input.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.pem_get_input.exit_crit_edge, label %if.then26.i, !prof !116

land.end.i.pem_get_input.exit_crit_edge:          ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_get_input.exit

if.then26.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pem_get_input.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 245, i32 noundef 9, ptr noundef null) #5
  br label %pem_get_input.exit

pem_get_input.exit:                               ; preds = %if.then26.i, %land.end.i.pem_get_input.exit_crit_edge, %if.end12.i, %if.then.i
  %val.0.i = phi i32 [ %mul20.i, %if.end12.i ], [ %mul.i, %if.then.i ], [ 0, %if.then26.i ], [ 0, %land.end.i.pem_get_input.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %val.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %pem_get_input.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %pem_get_input.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pem_fan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pem_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %index.off.i = add i32 %2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %index.off.i)
  %switch.i = icmp ult i32 %index.off.i, 3
  br i1 %switch.i, label %sw.bb.i, label %land.end.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %fan_speed = getelementptr inbounds %struct.pem_data, ptr %call, i32 0, i32 10
  %arrayidx.i = getelementptr i8, ptr %fan_speed, i32 %2
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 100
  br label %pem_get_fan.exit

land.end.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @pem_get_fan.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.pem_get_fan.exit_crit_edge, label %if.then.i, !prof !116

land.end.i.pem_get_fan.exit_crit_edge:            ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %pem_get_fan.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pem_get_fan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 262, i32 noundef 9, ptr noundef null) #5
  br label %pem_get_fan.exit

pem_get_fan.exit:                                 ; preds = %if.then.i, %land.end.i.pem_get_fan.exit_crit_edge, %sw.bb.i
  %val.0.i = phi i32 [ %mul.i, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.pem_get_fan.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %val.0.i) #5
  br label %cleanup

cleanup:                                          ; preds = %pem_get_fan.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %pem_get_fan.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !32, !34, !36, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !78, !80, !81, !83, !85, !86, !88, !89, !91, !93, !95, !96, !98, !100, !101, !103, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_lineage_pem__288_518_pem_driver_init6, !1, !"__initcall__kmod_lineage_pem__288_518_pem_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/lineage-pem.c", i32 518, i32 1}
!2 = !{ptr @__exitcall_pem_driver_exit, !1, !"__exitcall_pem_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/lineage-pem.c", i32 520, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/lineage-pem.c", i32 521, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/lineage-pem.c", i32 522, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/lineage-pem.c", i32 512, i32 14}
!12 = !{ptr @pem_driver, !13, !"pem_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/lineage-pem.c", i32 510, i32 26}
!14 = !{ptr @pem_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/lineage-pem.c", i32 437, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/lineage-pem.c", i32 452, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @pem_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @pem_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @pem_group, !26, !"pem_group", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/lineage-pem.c", i32 394, i32 37}
!27 = !{ptr @pem_attributes, !28, !"pem_attributes", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/lineage-pem.c", i32 372, i32 26}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/lineage-pem.c", i32 335, i32 8}
!31 = !{ptr @sensor_dev_attr_in1_input, !30, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hwmon/lineage-pem.c", i32 299, i32 25}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/lineage-pem.c", i32 222, i32 3}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/lineage-pem.c", i32 336, i32 8}
!38 = !{ptr @sensor_dev_attr_in1_alarm, !37, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/lineage-pem.c", i32 283, i32 25}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/lineage-pem.c", i32 338, i32 8}
!43 = !{ptr @sensor_dev_attr_in1_crit_alarm, !42, !"sensor_dev_attr_in1_crit_alarm", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/lineage-pem.c", i32 341, i32 8}
!46 = !{ptr @sensor_dev_attr_in2_alarm, !45, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/lineage-pem.c", i32 346, i32 8}
!49 = !{ptr @sensor_dev_attr_curr1_alarm, !48, !"sensor_dev_attr_curr1_alarm", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/lineage-pem.c", i32 351, i32 8}
!52 = !{ptr @sensor_dev_attr_power1_alarm, !51, !"sensor_dev_attr_power1_alarm", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/lineage-pem.c", i32 358, i32 8}
!55 = !{ptr @sensor_dev_attr_fan1_alarm, !54, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/lineage-pem.c", i32 362, i32 8}
!58 = !{ptr @sensor_dev_attr_temp1_input, !57, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/lineage-pem.c", i32 363, i32 8}
!61 = !{ptr @sensor_dev_attr_temp1_max, !60, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!62 = !{ptr @.str.18, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/lineage-pem.c", i32 364, i32 8}
!64 = !{ptr @sensor_dev_attr_temp1_crit, !63, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/lineage-pem.c", i32 365, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_alarm, !66, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/lineage-pem.c", i32 367, i32 8}
!70 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !69, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/lineage-pem.c", i32 369, i32 8}
!73 = !{ptr @sensor_dev_attr_temp1_fault, !72, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!74 = !{ptr @pem_input_group, !75, !"pem_input_group", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/lineage-pem.c", i32 405, i32 37}
!76 = !{ptr @pem_input_attributes, !77, !"pem_input_attributes", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/lineage-pem.c", i32 398, i32 26}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/lineage-pem.c", i32 340, i32 8}
!80 = !{ptr @sensor_dev_attr_in2_input, !79, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!81 = distinct !{null, !82, !"__already_done", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/lineage-pem.c", i32 245, i32 3}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/lineage-pem.c", i32 345, i32 8}
!85 = !{ptr @sensor_dev_attr_curr1_input, !84, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!86 = !{ptr @.str.24, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/lineage-pem.c", i32 350, i32 8}
!88 = !{ptr @sensor_dev_attr_power1_input, !87, !"sensor_dev_attr_power1_input", i1 false, i1 false}
!89 = !{ptr @pem_fan_group, !90, !"pem_fan_group", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/lineage-pem.c", i32 416, i32 37}
!91 = !{ptr @pem_fan_attributes, !92, !"pem_fan_attributes", i1 false, i1 false}
!92 = !{!"../drivers/hwmon/lineage-pem.c", i32 409, i32 26}
!93 = !{ptr @.str.25, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/lineage-pem.c", i32 355, i32 8}
!95 = !{ptr @sensor_dev_attr_fan1_input, !94, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/lineage-pem.c", i32 262, i32 3}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/lineage-pem.c", i32 356, i32 8}
!100 = !{ptr @sensor_dev_attr_fan2_input, !99, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/lineage-pem.c", i32 357, i32 8}
!103 = !{ptr @sensor_dev_attr_fan3_input, !102, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!104 = !{ptr @pem_id, !105, !"pem_id", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/lineage-pem.c", i32 504, i32 35}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"branch_weights", i32 2000, i32 1}
!117 = !{!"branch_weights", i32 4000000, i32 4001}
!118 = !{i8 0, i8 2}
