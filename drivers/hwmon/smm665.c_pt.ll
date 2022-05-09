; ModuleID = '/llk/IR_all_yes/drivers/hwmon/smm665.c_pt.bc'
source_filename = "../drivers/hwmon/smm665.c"
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
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.smm665_data = type { i32, i32, ptr, %struct.mutex, i8, i32, [11 x i16], i16, [11 x i32], [11 x i32], [11 x i32], [11 x i32], ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_vref = internal constant [12 x i8] c"smm665.vref\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@vref = internal global { i32, [28 x i8] } { i32 1250, [28 x i8] zeroinitializer }, align 32
@__param_vref = internal constant %struct.kernel_param { ptr @__param_str_vref, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @vref } }, section "__param", align 4
@__UNIQUE_ID_vreftype288 = internal constant [25 x i8] c"smm665.parmtype=vref:int\00", section ".modinfo", align 1
@__UNIQUE_ID_vref289 = internal constant [41 x i8] c"smm665.parm=vref:Reference voltage in mV\00", section ".modinfo", align 1
@__initcall__kmod_smm665__293_703_smm665_driver_init6 = internal global ptr @smm665_driver_init, section ".initcall6.init", align 4
@smm665_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @smm665_remove, ptr @smm665_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @smm665_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_smm665_driver_exit = internal global ptr @smm665_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author294 = internal constant [28 x i8] c"smm665.author=Guenter Roeck\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [33 x i8] c"smm665.description=SMM665 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [33 x i8] c"smm665.file=drivers/hwmon/smm665\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"smm665.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smm665\00", [25 x i8] zeroinitializer }, align 32
@smm665_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"smm465\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"smm665\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"smm665c\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"smm764\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"smm766\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@smm665_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@smm665_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @smm665_group, ptr null], [24 x i8] zeroinitializer }, align 32
@smm665_convert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/smm665.c\00", [41 x i8] zeroinitializer }, align 32
@smm665_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @smm665_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@smm665_attrs = internal global { [67 x ptr], [84 x i8] } { [67 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_lcrit, ptr @sensor_dev_attr_in2_crit, ptr @sensor_dev_attr_in2_crit_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_lcrit, ptr @sensor_dev_attr_in3_crit, ptr @sensor_dev_attr_in3_crit_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_lcrit, ptr @sensor_dev_attr_in4_crit, ptr @sensor_dev_attr_in4_crit_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_lcrit, ptr @sensor_dev_attr_in5_crit, ptr @sensor_dev_attr_in5_crit_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_lcrit, ptr @sensor_dev_attr_in6_crit, ptr @sensor_dev_attr_in6_crit_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_lcrit, ptr @sensor_dev_attr_in7_crit, ptr @sensor_dev_attr_in7_crit_alarm, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_lcrit, ptr @sensor_dev_attr_in8_crit, ptr @sensor_dev_attr_in8_crit_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_lcrit, ptr @sensor_dev_attr_in9_crit, ptr @sensor_dev_attr_in9_crit_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_lcrit, ptr @sensor_dev_attr_in10_crit, ptr @sensor_dev_attr_in10_crit_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_lcrit, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr null], [84 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 128 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 512 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 1024 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_input, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_min, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_max, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_lcrit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_lcrit, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @smm665_show_crit_alarm, ptr null }, i32 256 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@smm665_read_adc.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 51, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"smm665_read_adc\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Unexpected return code %d when setting ADC index\00", [47 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@smm665_read_adc.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.7, i8 0, i8 55, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to read ADC value: error %d\00", [61 x i8] zeroinitializer }, align 32
@smm665_read_adc.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.8, i8 0, i8 57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unexpected RADC: Expected %d got %d\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in1_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in1_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in2_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in2_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in3_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in3_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in4_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in4_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in5_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in5_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_min\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in6_max\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in6_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in6_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_min\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in7_max\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in7_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in7_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_min\00", [24 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in8_max\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in8_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in8_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_min\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in9_max\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_lcrit\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in9_crit\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"in9_crit_alarm\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_min\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"in10_max\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_lcrit\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in10_crit\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"in10_crit_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_lcrit\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@switch.table.smm665_probe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 70, i32 70, i32 185, i32 185, i32 185], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.74 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.75 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.76 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.77 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.78 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.79 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"vref\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 30, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"smm665_driver\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 694, i32 26 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 696, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant [10 x i8] c"smm665_id\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 682, i32 35 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 586, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [14 x i8] c"smm665_groups\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 306, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"smm665_group\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 563, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"smm665_attrs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 482, i32 26 }
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_lcrit\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in1_crit\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in1_crit_alarm\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_lcrit\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in2_crit\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in2_crit_alarm\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.152 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_lcrit\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in3_crit\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in3_crit_alarm\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_lcrit\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in4_crit\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in4_crit_alarm\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_lcrit\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in5_crit\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in5_crit_alarm\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_min\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in6_max\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_lcrit\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in6_crit\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in6_crit_alarm\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_min\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in7_max\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_lcrit\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in7_crit\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in7_crit_alarm\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_min\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in8_max\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_lcrit\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in8_crit\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in8_crit_alarm\00", align 1
@___asan_gen_.254 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_min\00", align 1
@___asan_gen_.260 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in9_max\00", align 1
@___asan_gen_.263 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_lcrit\00", align 1
@___asan_gen_.266 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in9_crit\00", align 1
@___asan_gen_.269 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_in9_crit_alarm\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.275 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_min\00", align 1
@___asan_gen_.278 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_in10_max\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_lcrit\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in10_crit\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_in10_crit_alarm\00", align 1
@___asan_gen_.290 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.293 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.296 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_lcrit\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 399, i32 1 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 369, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 203, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 221, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 229, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 411, i32 1 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 423, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 435, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 447, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 459, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 400, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 412, i32 1 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 424, i32 1 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 436, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 448, i32 1 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 460, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 401, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 413, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 425, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 437, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 449, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 461, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 402, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 414, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 426, i32 1 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 438, i32 1 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 450, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 462, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 403, i32 1 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 415, i32 1 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 427, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 439, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 451, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 463, i32 1 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 404, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 416, i32 1 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 428, i32 1 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 440, i32 1 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 452, i32 1 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 464, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 405, i32 1 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 417, i32 1 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 429, i32 1 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 441, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 453, i32 1 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 465, i32 1 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 406, i32 1 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 418, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 430, i32 1 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 442, i32 1 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 454, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 466, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 407, i32 1 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 419, i32 1 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 431, i32 1 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 443, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 455, i32 1 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 467, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 408, i32 1 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 420, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 432, i32 1 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 444, i32 1 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 456, i32 1 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 468, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 471, i32 1 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 472, i32 1 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 473, i32 1 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 474, i32 1 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 475, i32 1 }
@___asan_gen_.518 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private constant [26 x i8] c"../drivers/hwmon/smm665.c\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.519, i32 476, i32 1 }
@___asan_gen_.521 = private unnamed_addr constant [26 x i8] c"switch.table.smm665_probe\00", align 1
@llvm.compiler.used = appending global [158 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_vref289, ptr @__UNIQUE_ID_vreftype288, ptr @__exitcall_smm665_driver_exit, ptr @__initcall__kmod_smm665__293_703_smm665_driver_init6, ptr @__param_vref, ptr @smm665_driver_exit, ptr @vref, ptr @smm665_driver, ptr @.str, ptr @smm665_id, ptr @smm665_probe.__key, ptr @.str.1, ptr @smm665_groups, ptr @.str.2, ptr @smm665_group, ptr @smm665_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_lcrit, ptr @sensor_dev_attr_in1_crit, ptr @sensor_dev_attr_in1_crit_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_lcrit, ptr @sensor_dev_attr_in2_crit, ptr @sensor_dev_attr_in2_crit_alarm, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_lcrit, ptr @sensor_dev_attr_in3_crit, ptr @sensor_dev_attr_in3_crit_alarm, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_lcrit, ptr @sensor_dev_attr_in4_crit, ptr @sensor_dev_attr_in4_crit_alarm, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_lcrit, ptr @sensor_dev_attr_in5_crit, ptr @sensor_dev_attr_in5_crit_alarm, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in6_min, ptr @sensor_dev_attr_in6_max, ptr @sensor_dev_attr_in6_lcrit, ptr @sensor_dev_attr_in6_crit, ptr @sensor_dev_attr_in6_crit_alarm, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in7_min, ptr @sensor_dev_attr_in7_max, ptr @sensor_dev_attr_in7_lcrit, ptr @sensor_dev_attr_in7_crit, ptr @sensor_dev_attr_in7_crit_alarm, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in8_min, ptr @sensor_dev_attr_in8_max, ptr @sensor_dev_attr_in8_lcrit, ptr @sensor_dev_attr_in8_crit, ptr @sensor_dev_attr_in8_crit_alarm, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in9_min, ptr @sensor_dev_attr_in9_max, ptr @sensor_dev_attr_in9_lcrit, ptr @sensor_dev_attr_in9_crit, ptr @sensor_dev_attr_in9_crit_alarm, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in10_min, ptr @sensor_dev_attr_in10_max, ptr @sensor_dev_attr_in10_lcrit, ptr @sensor_dev_attr_in10_crit, ptr @sensor_dev_attr_in10_crit_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_lcrit, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @switch.table.smm665_probe], section "llvm.metadata"
@0 = internal global [148 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vref to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smm665_attrs to i32), i32 268, i32 352, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_lcrit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.smm665_probe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @smm665_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smm665_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @smm665_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmdreg = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cmdreg, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 7864320
  call void @__sanitizer_cov_trace_const_cmp4(i32 7864320, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 7864320
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup118_crit_edge

entry.cleanup118_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end.cleanup118_crit_edge, label %if.end4

if.end.cleanup118_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 316, i32 noundef 3520) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end4.cleanup118_crit_edge, label %if.end8

if.end4.cleanup118_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.end8:                                          ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %update_lock = getelementptr inbounds %struct.smm665_data, ptr %call.i, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @smm665_probe.__key) #6
  %client9 = getelementptr inbounds %struct.smm665_data, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %client9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client9, align 4
  %call10 = tail call ptr @i2c_match_id(ptr noundef nonnull @smm665_id, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call10, i32 0, i32 1
  %8 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %driver_data, align 4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %call.i, align 4
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %addr, align 2
  %13 = and i16 %12, -121
  %14 = or i16 %13, 72
  %call12 = tail call ptr @i2c_new_dummy_device(ptr noundef %1, i16 noundef zeroext %14) #6
  %cmdreg = getelementptr inbounds %struct.smm665_data, ptr %call.i, i32 0, i32 12
  %15 = ptrtoint ptr %cmdreg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call12, ptr %cmdreg, align 4
  %cmp.i188 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %call12 to i32
  br label %cleanup118

if.end18:                                         ; preds = %if.end8
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %18)
  %19 = icmp ult i32 %18, 5
  br i1 %19, label %switch.lookup, label %if.end18.sw.epilog_crit_edge

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.smm665_probe, i32 0, i32 %18
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conversion_time21 = getelementptr inbounds %struct.smm665_data, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %conversion_time21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.load, ptr %conversion_time21, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.end18.sw.epilog_crit_edge
  %22 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmdreg, align 4
  %call23 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %23, i8 noundef zeroext -128) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %sw.epilog.out_unregister_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  br label %for.body

sw.epilog.out_unregister_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.epilog.for.body_crit_edge
  %i.0359 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %sw.epilog.for.body_crit_edge ]
  %i.0359.tr = trunc i32 %i.0359 to i8
  %24 = shl i8 %i.0359.tr, 3
  %conv.i189 = xor i8 %24, -128
  %call.i190 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i189) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %cmp.i191 = icmp slt i32 %call.i190, 0
  br i1 %cmp.i191, label %for.body.out_unregister_crit_edge, label %if.end.i

for.body.out_unregister_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end.i:                                         ; preds = %for.body
  %conv2.i = add i8 %24, -127
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.out_unregister_crit_edge, label %smm665_read16.exit

if.end.i.out_unregister_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

smm665_read16.exit:                               ; preds = %if.end.i
  %shl.i = shl i32 %call.i190, 8
  %or.i = or i32 %call3.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp31 = icmp slt i32 %or.i, 0
  br i1 %cmp31, label %smm665_read16.exit.out_unregister_crit_edge, label %if.end36, !prof !254

smm665_read16.exit.out_unregister_crit_edge:      ; preds = %smm665_read16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end36:                                         ; preds = %smm665_read16.exit
  %25 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %i.0359, label %land.end.i [
    i32 7, label %sw.bb.i
    i32 6, label %if.end36.sw.bb2.i_crit_edge
    i32 0, label %if.end36.sw.bb2.i_crit_edge361
    i32 1, label %if.end36.sw.bb2.i_crit_edge362
    i32 2, label %if.end36.sw.bb2.i_crit_edge363
    i32 3, label %if.end36.sw.bb2.i_crit_edge364
    i32 4, label %if.end36.sw.bb2.i_crit_edge365
    i32 5, label %if.end36.sw.bb2.i_crit_edge366
    i32 9, label %if.end36.sw.bb7.i_crit_edge
    i32 10, label %if.end36.sw.bb7.i_crit_edge367
    i32 8, label %sw.bb12.i
  ]

if.end36.sw.bb7.i_crit_edge367:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

if.end36.sw.bb7.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

if.end36.sw.bb2.i_crit_edge366:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge365:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge364:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge363:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge362:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge361:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end36.sw.bb2.i_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %26 = and i32 %or.i, 1023
  %27 = load i32, ptr @vref, align 4
  %narrow.i = mul nuw nsw i32 %26, 3
  %mul1.i = mul i32 %narrow.i, %27
  %div.i = sdiv i32 %mul1.i, 256
  br label %smm665_convert.exit

sw.bb2.i:                                         ; preds = %if.end36.sw.bb2.i_crit_edge, %if.end36.sw.bb2.i_crit_edge361, %if.end36.sw.bb2.i_crit_edge362, %if.end36.sw.bb2.i_crit_edge363, %if.end36.sw.bb2.i_crit_edge364, %if.end36.sw.bb2.i_crit_edge365, %if.end36.sw.bb2.i_crit_edge366
  %28 = and i32 %or.i, 1023
  %29 = load i32, ptr @vref, align 4
  %mul5.i = mul i32 %29, %28
  %div6.i = sdiv i32 %mul5.i, 256
  br label %smm665_convert.exit

sw.bb7.i:                                         ; preds = %if.end36.sw.bb7.i_crit_edge, %if.end36.sw.bb7.i_crit_edge367
  %30 = and i32 %or.i, 1023
  %31 = load i32, ptr @vref, align 4
  %mul10.i = mul i32 %31, %30
  %div11.i = sdiv i32 %mul10.i, 512
  br label %smm665_convert.exit

sw.bb12.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %conv37 = trunc i32 %or.i to i16
  %32 = and i16 %conv37, 1023
  %and14.i = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %32)
  %cmp.i192 = icmp ult i16 %32, 512
  %sub.i = or i32 %and14.i, -1024
  %cond.in.i = select i1 %cmp.i192, i32 %and14.i, i32 %sub.i
  %cond.i = mul nsw i32 %cond.in.i, 250
  br label %smm665_convert.exit

land.end.i:                                       ; preds = %if.end36
  %.b64.i = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i, label %land.end.i.smm665_convert.exit_crit_edge, label %if.then.i, !prof !255

land.end.i.smm665_convert.exit_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit

smm665_convert.exit:                              ; preds = %if.then.i, %land.end.i.smm665_convert.exit_crit_edge, %sw.bb12.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %val.0.i = phi i32 [ %cond.i, %sw.bb12.i ], [ %div11.i, %sw.bb7.i ], [ %div6.i, %sw.bb2.i ], [ %div.i, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.smm665_convert.exit_crit_edge ]
  %arrayidx = getelementptr %struct.smm665_data, ptr %call.i, i32 0, i32 9, i32 %i.0359
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %val.0.i, ptr %arrayidx, align 4
  %arrayidx39 = getelementptr %struct.smm665_data, ptr %call.i, i32 0, i32 8, i32 %i.0359
  %34 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %val.0.i, ptr %arrayidx39, align 4
  %conv.i193 = add i8 %24, -126
  %call.i194 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i193) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp.i195 = icmp slt i32 %call.i194, 0
  br i1 %cmp.i195, label %smm665_convert.exit.out_unregister_crit_edge, label %if.end.i199

smm665_convert.exit.out_unregister_crit_edge:     ; preds = %smm665_convert.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end.i199:                                      ; preds = %smm665_convert.exit
  %conv2.i196 = add i8 %24, -125
  %call3.i197 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv2.i196) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i197)
  %cmp4.i198 = icmp slt i32 %call3.i197, 0
  br i1 %cmp4.i198, label %if.end.i199.out_unregister_crit_edge, label %smm665_read16.exit204

if.end.i199.out_unregister_crit_edge:             ; preds = %if.end.i199
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

smm665_read16.exit204:                            ; preds = %if.end.i199
  %shl.i200 = shl i32 %call.i194, 8
  %or.i201 = or i32 %call3.i197, %shl.i200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i201)
  %cmp44 = icmp slt i32 %or.i201, 0
  br i1 %cmp44, label %smm665_read16.exit204.out_unregister_crit_edge, label %if.end53, !prof !254

smm665_read16.exit204.out_unregister_crit_edge:   ; preds = %smm665_read16.exit204
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end53:                                         ; preds = %smm665_read16.exit204
  %and54 = and i32 %or.i201, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else, label %if.then56

if.then56:                                        ; preds = %if.end53
  %35 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %i.0359, label %land.end.i225 [
    i32 7, label %sw.bb.i209
    i32 6, label %if.then56.sw.bb2.i213_crit_edge
    i32 0, label %if.then56.sw.bb2.i213_crit_edge368
    i32 1, label %if.then56.sw.bb2.i213_crit_edge369
    i32 2, label %if.then56.sw.bb2.i213_crit_edge370
    i32 3, label %if.then56.sw.bb2.i213_crit_edge371
    i32 4, label %if.then56.sw.bb2.i213_crit_edge372
    i32 5, label %if.then56.sw.bb2.i213_crit_edge373
    i32 9, label %if.then56.sw.bb7.i217_crit_edge
    i32 10, label %if.then56.sw.bb7.i217_crit_edge374
    i32 8, label %sw.bb12.i223
  ]

if.then56.sw.bb7.i217_crit_edge374:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i217

if.then56.sw.bb7.i217_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i217

if.then56.sw.bb2.i213_crit_edge373:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge372:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge371:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge370:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge369:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge368:               ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

if.then56.sw.bb2.i213_crit_edge:                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i213

sw.bb.i209:                                       ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %36 = and i32 %or.i201, 1023
  %37 = load i32, ptr @vref, align 4
  %narrow.i205 = mul nuw nsw i32 %36, 3
  %mul1.i207 = mul i32 %narrow.i205, %37
  %div.i208 = sdiv i32 %mul1.i207, 256
  br label %smm665_convert.exit228

sw.bb2.i213:                                      ; preds = %if.then56.sw.bb2.i213_crit_edge, %if.then56.sw.bb2.i213_crit_edge368, %if.then56.sw.bb2.i213_crit_edge369, %if.then56.sw.bb2.i213_crit_edge370, %if.then56.sw.bb2.i213_crit_edge371, %if.then56.sw.bb2.i213_crit_edge372, %if.then56.sw.bb2.i213_crit_edge373
  %38 = and i32 %or.i201, 1023
  %39 = load i32, ptr @vref, align 4
  %mul5.i211 = mul i32 %39, %38
  %div6.i212 = sdiv i32 %mul5.i211, 256
  br label %smm665_convert.exit228

sw.bb7.i217:                                      ; preds = %if.then56.sw.bb7.i217_crit_edge, %if.then56.sw.bb7.i217_crit_edge374
  %40 = and i32 %or.i201, 1023
  %41 = load i32, ptr @vref, align 4
  %mul10.i215 = mul i32 %41, %40
  %div11.i216 = sdiv i32 %mul10.i215, 512
  br label %smm665_convert.exit228

sw.bb12.i223:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %conv57 = trunc i32 %or.i201 to i16
  %42 = and i16 %conv57, 1023
  %and14.i218 = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %42)
  %cmp.i219 = icmp ult i16 %42, 512
  %sub.i220 = or i32 %and14.i218, -1024
  %cond.in.i221 = select i1 %cmp.i219, i32 %and14.i218, i32 %sub.i220
  %cond.i222 = mul nsw i32 %cond.in.i221, 250
  br label %smm665_convert.exit228

land.end.i225:                                    ; preds = %if.then56
  %.b64.i224 = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i224, label %land.end.i225.smm665_convert.exit228_crit_edge, label %if.then.i226, !prof !255

land.end.i225.smm665_convert.exit228_crit_edge:   ; preds = %land.end.i225
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit228

if.then.i226:                                     ; preds = %land.end.i225
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit228

smm665_convert.exit228:                           ; preds = %if.then.i226, %land.end.i225.smm665_convert.exit228_crit_edge, %sw.bb12.i223, %sw.bb7.i217, %sw.bb2.i213, %sw.bb.i209
  %val.0.i227 = phi i32 [ %cond.i222, %sw.bb12.i223 ], [ %div11.i216, %sw.bb7.i217 ], [ %div6.i212, %sw.bb2.i213 ], [ %div.i208, %sw.bb.i209 ], [ 0, %if.then.i226 ], [ 0, %land.end.i225.smm665_convert.exit228_crit_edge ]
  %43 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %val.0.i227, ptr %arrayidx39, align 4
  br label %if.end65

if.else:                                          ; preds = %if.end53
  %44 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %i.0359, label %land.end.i249 [
    i32 7, label %sw.bb.i233
    i32 6, label %if.else.sw.bb2.i237_crit_edge
    i32 0, label %if.else.sw.bb2.i237_crit_edge375
    i32 1, label %if.else.sw.bb2.i237_crit_edge376
    i32 2, label %if.else.sw.bb2.i237_crit_edge377
    i32 3, label %if.else.sw.bb2.i237_crit_edge378
    i32 4, label %if.else.sw.bb2.i237_crit_edge379
    i32 5, label %if.else.sw.bb2.i237_crit_edge380
    i32 9, label %if.else.sw.bb7.i241_crit_edge
    i32 10, label %if.else.sw.bb7.i241_crit_edge381
    i32 8, label %sw.bb12.i247
  ]

if.else.sw.bb7.i241_crit_edge381:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i241

if.else.sw.bb7.i241_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i241

if.else.sw.bb2.i237_crit_edge380:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge379:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge378:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge377:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge376:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge375:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

if.else.sw.bb2.i237_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i237

sw.bb.i233:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %45 = and i32 %or.i201, 1023
  %46 = load i32, ptr @vref, align 4
  %narrow.i229 = mul nuw nsw i32 %45, 3
  %mul1.i231 = mul i32 %narrow.i229, %46
  %div.i232 = sdiv i32 %mul1.i231, 256
  br label %smm665_convert.exit252

sw.bb2.i237:                                      ; preds = %if.else.sw.bb2.i237_crit_edge, %if.else.sw.bb2.i237_crit_edge375, %if.else.sw.bb2.i237_crit_edge376, %if.else.sw.bb2.i237_crit_edge377, %if.else.sw.bb2.i237_crit_edge378, %if.else.sw.bb2.i237_crit_edge379, %if.else.sw.bb2.i237_crit_edge380
  %47 = and i32 %or.i201, 1023
  %48 = load i32, ptr @vref, align 4
  %mul5.i235 = mul i32 %48, %47
  %div6.i236 = sdiv i32 %mul5.i235, 256
  br label %smm665_convert.exit252

sw.bb7.i241:                                      ; preds = %if.else.sw.bb7.i241_crit_edge, %if.else.sw.bb7.i241_crit_edge381
  %49 = and i32 %or.i201, 1023
  %50 = load i32, ptr @vref, align 4
  %mul10.i239 = mul i32 %50, %49
  %div11.i240 = sdiv i32 %mul10.i239, 512
  br label %smm665_convert.exit252

sw.bb12.i247:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv61 = trunc i32 %or.i201 to i16
  %51 = and i16 %conv61, 1023
  %and14.i242 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %51)
  %cmp.i243 = icmp ult i16 %51, 512
  %sub.i244 = or i32 %and14.i242, -1024
  %cond.in.i245 = select i1 %cmp.i243, i32 %and14.i242, i32 %sub.i244
  %cond.i246 = mul nsw i32 %cond.in.i245, 250
  br label %smm665_convert.exit252

land.end.i249:                                    ; preds = %if.else
  %.b64.i248 = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i248, label %land.end.i249.smm665_convert.exit252_crit_edge, label %if.then.i250, !prof !255

land.end.i249.smm665_convert.exit252_crit_edge:   ; preds = %land.end.i249
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit252

if.then.i250:                                     ; preds = %land.end.i249
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit252

smm665_convert.exit252:                           ; preds = %if.then.i250, %land.end.i249.smm665_convert.exit252_crit_edge, %sw.bb12.i247, %sw.bb7.i241, %sw.bb2.i237, %sw.bb.i233
  %val.0.i251 = phi i32 [ %cond.i246, %sw.bb12.i247 ], [ %div11.i240, %sw.bb7.i241 ], [ %div6.i236, %sw.bb2.i237 ], [ %div.i232, %sw.bb.i233 ], [ 0, %if.then.i250 ], [ 0, %land.end.i249.smm665_convert.exit252_crit_edge ]
  %52 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %val.0.i251, ptr %arrayidx, align 4
  br label %if.end65

if.end65:                                         ; preds = %smm665_convert.exit252, %smm665_convert.exit228
  %conv.i253 = add i8 %24, -124
  %call.i254 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i253) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i254)
  %cmp.i255 = icmp slt i32 %call.i254, 0
  br i1 %cmp.i255, label %if.end65.out_unregister_crit_edge, label %if.end.i259

if.end65.out_unregister_crit_edge:                ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end.i259:                                      ; preds = %if.end65
  %conv2.i256 = add i8 %24, -123
  %call3.i257 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv2.i256) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i257)
  %cmp4.i258 = icmp slt i32 %call3.i257, 0
  br i1 %cmp4.i258, label %if.end.i259.out_unregister_crit_edge, label %smm665_read16.exit264

if.end.i259.out_unregister_crit_edge:             ; preds = %if.end.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

smm665_read16.exit264:                            ; preds = %if.end.i259
  %shl.i260 = shl i32 %call.i254, 8
  %or.i261 = or i32 %call3.i257, %shl.i260
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i261)
  %cmp70 = icmp slt i32 %or.i261, 0
  br i1 %cmp70, label %smm665_read16.exit264.out_unregister_crit_edge, label %if.end79, !prof !254

smm665_read16.exit264.out_unregister_crit_edge:   ; preds = %smm665_read16.exit264
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end79:                                         ; preds = %smm665_read16.exit264
  %53 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %i.0359, label %land.end.i285 [
    i32 7, label %sw.bb.i269
    i32 6, label %if.end79.sw.bb2.i273_crit_edge
    i32 0, label %if.end79.sw.bb2.i273_crit_edge382
    i32 1, label %if.end79.sw.bb2.i273_crit_edge383
    i32 2, label %if.end79.sw.bb2.i273_crit_edge384
    i32 3, label %if.end79.sw.bb2.i273_crit_edge385
    i32 4, label %if.end79.sw.bb2.i273_crit_edge386
    i32 5, label %if.end79.sw.bb2.i273_crit_edge387
    i32 9, label %if.end79.sw.bb7.i277_crit_edge
    i32 10, label %if.end79.sw.bb7.i277_crit_edge388
    i32 8, label %sw.bb12.i283
  ]

if.end79.sw.bb7.i277_crit_edge388:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i277

if.end79.sw.bb7.i277_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i277

if.end79.sw.bb2.i273_crit_edge387:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge386:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge385:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge384:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge383:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge382:                ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

if.end79.sw.bb2.i273_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i273

sw.bb.i269:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %54 = and i32 %or.i261, 1023
  %55 = load i32, ptr @vref, align 4
  %narrow.i265 = mul nuw nsw i32 %54, 3
  %mul1.i267 = mul i32 %narrow.i265, %55
  %div.i268 = sdiv i32 %mul1.i267, 256
  br label %smm665_convert.exit288

sw.bb2.i273:                                      ; preds = %if.end79.sw.bb2.i273_crit_edge, %if.end79.sw.bb2.i273_crit_edge382, %if.end79.sw.bb2.i273_crit_edge383, %if.end79.sw.bb2.i273_crit_edge384, %if.end79.sw.bb2.i273_crit_edge385, %if.end79.sw.bb2.i273_crit_edge386, %if.end79.sw.bb2.i273_crit_edge387
  %56 = and i32 %or.i261, 1023
  %57 = load i32, ptr @vref, align 4
  %mul5.i271 = mul i32 %57, %56
  %div6.i272 = sdiv i32 %mul5.i271, 256
  br label %smm665_convert.exit288

sw.bb7.i277:                                      ; preds = %if.end79.sw.bb7.i277_crit_edge, %if.end79.sw.bb7.i277_crit_edge388
  %58 = and i32 %or.i261, 1023
  %59 = load i32, ptr @vref, align 4
  %mul10.i275 = mul i32 %59, %58
  %div11.i276 = sdiv i32 %mul10.i275, 512
  br label %smm665_convert.exit288

sw.bb12.i283:                                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %conv80 = trunc i32 %or.i261 to i16
  %60 = and i16 %conv80, 1023
  %and14.i278 = zext i16 %60 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %60)
  %cmp.i279 = icmp ult i16 %60, 512
  %sub.i280 = or i32 %and14.i278, -1024
  %cond.in.i281 = select i1 %cmp.i279, i32 %and14.i278, i32 %sub.i280
  %cond.i282 = mul nsw i32 %cond.in.i281, 250
  br label %smm665_convert.exit288

land.end.i285:                                    ; preds = %if.end79
  %.b64.i284 = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i284, label %land.end.i285.smm665_convert.exit288_crit_edge, label %if.then.i286, !prof !255

land.end.i285.smm665_convert.exit288_crit_edge:   ; preds = %land.end.i285
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit288

if.then.i286:                                     ; preds = %land.end.i285
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit288

smm665_convert.exit288:                           ; preds = %if.then.i286, %land.end.i285.smm665_convert.exit288_crit_edge, %sw.bb12.i283, %sw.bb7.i277, %sw.bb2.i273, %sw.bb.i269
  %val.0.i287 = phi i32 [ %cond.i282, %sw.bb12.i283 ], [ %div11.i276, %sw.bb7.i277 ], [ %div6.i272, %sw.bb2.i273 ], [ %div.i268, %sw.bb.i269 ], [ 0, %if.then.i286 ], [ 0, %land.end.i285.smm665_convert.exit288_crit_edge ]
  %arrayidx82 = getelementptr %struct.smm665_data, ptr %call.i, i32 0, i32 11, i32 %i.0359
  %61 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %val.0.i287, ptr %arrayidx82, align 4
  %arrayidx83 = getelementptr %struct.smm665_data, ptr %call.i, i32 0, i32 10, i32 %i.0359
  %62 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %val.0.i287, ptr %arrayidx83, align 4
  %conv.i289 = add i8 %24, -122
  %call.i290 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv.i289) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i290)
  %cmp.i291 = icmp slt i32 %call.i290, 0
  br i1 %cmp.i291, label %smm665_convert.exit288.out_unregister_crit_edge, label %if.end.i295

smm665_convert.exit288.out_unregister_crit_edge:  ; preds = %smm665_convert.exit288
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end.i295:                                      ; preds = %smm665_convert.exit288
  %conv2.i292 = add i8 %24, -121
  %call3.i293 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv2.i292) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i293)
  %cmp4.i294 = icmp slt i32 %call3.i293, 0
  br i1 %cmp4.i294, label %if.end.i295.out_unregister_crit_edge, label %smm665_read16.exit300

if.end.i295.out_unregister_crit_edge:             ; preds = %if.end.i295
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

smm665_read16.exit300:                            ; preds = %if.end.i295
  %shl.i296 = shl i32 %call.i290, 8
  %or.i297 = or i32 %call3.i293, %shl.i296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i297)
  %cmp88 = icmp slt i32 %or.i297, 0
  br i1 %cmp88, label %smm665_read16.exit300.out_unregister_crit_edge, label %if.end97, !prof !254

smm665_read16.exit300.out_unregister_crit_edge:   ; preds = %smm665_read16.exit300
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_unregister

if.end97:                                         ; preds = %smm665_read16.exit300
  %and98 = and i32 %or.i297, 45056
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool99.not = icmp eq i32 %and98, 0
  br i1 %tobool99.not, label %if.else105, label %if.then100

if.then100:                                       ; preds = %if.end97
  %63 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.77)
  switch i32 %i.0359, label %land.end.i321 [
    i32 7, label %sw.bb.i305
    i32 6, label %if.then100.sw.bb2.i309_crit_edge
    i32 0, label %if.then100.sw.bb2.i309_crit_edge389
    i32 1, label %if.then100.sw.bb2.i309_crit_edge390
    i32 2, label %if.then100.sw.bb2.i309_crit_edge391
    i32 3, label %if.then100.sw.bb2.i309_crit_edge392
    i32 4, label %if.then100.sw.bb2.i309_crit_edge393
    i32 5, label %if.then100.sw.bb2.i309_crit_edge394
    i32 9, label %if.then100.sw.bb7.i313_crit_edge
    i32 10, label %if.then100.sw.bb7.i313_crit_edge395
    i32 8, label %sw.bb12.i319
  ]

if.then100.sw.bb7.i313_crit_edge395:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i313

if.then100.sw.bb7.i313_crit_edge:                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i313

if.then100.sw.bb2.i309_crit_edge394:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge393:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge392:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge391:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge390:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge389:              ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

if.then100.sw.bb2.i309_crit_edge:                 ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i309

sw.bb.i305:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %64 = and i32 %or.i297, 1023
  %65 = load i32, ptr @vref, align 4
  %narrow.i301 = mul nuw nsw i32 %64, 3
  %mul1.i303 = mul i32 %narrow.i301, %65
  %div.i304 = sdiv i32 %mul1.i303, 256
  br label %smm665_convert.exit324

sw.bb2.i309:                                      ; preds = %if.then100.sw.bb2.i309_crit_edge, %if.then100.sw.bb2.i309_crit_edge389, %if.then100.sw.bb2.i309_crit_edge390, %if.then100.sw.bb2.i309_crit_edge391, %if.then100.sw.bb2.i309_crit_edge392, %if.then100.sw.bb2.i309_crit_edge393, %if.then100.sw.bb2.i309_crit_edge394
  %66 = and i32 %or.i297, 1023
  %67 = load i32, ptr @vref, align 4
  %mul5.i307 = mul i32 %67, %66
  %div6.i308 = sdiv i32 %mul5.i307, 256
  br label %smm665_convert.exit324

sw.bb7.i313:                                      ; preds = %if.then100.sw.bb7.i313_crit_edge, %if.then100.sw.bb7.i313_crit_edge395
  %68 = and i32 %or.i297, 1023
  %69 = load i32, ptr @vref, align 4
  %mul10.i311 = mul i32 %69, %68
  %div11.i312 = sdiv i32 %mul10.i311, 512
  br label %smm665_convert.exit324

sw.bb12.i319:                                     ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %conv101 = trunc i32 %or.i297 to i16
  %70 = and i16 %conv101, 1023
  %and14.i314 = zext i16 %70 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %70)
  %cmp.i315 = icmp ult i16 %70, 512
  %sub.i316 = or i32 %and14.i314, -1024
  %cond.in.i317 = select i1 %cmp.i315, i32 %and14.i314, i32 %sub.i316
  %cond.i318 = mul nsw i32 %cond.in.i317, 250
  br label %smm665_convert.exit324

land.end.i321:                                    ; preds = %if.then100
  %.b64.i320 = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i320, label %land.end.i321.smm665_convert.exit324_crit_edge, label %if.then.i322, !prof !255

land.end.i321.smm665_convert.exit324_crit_edge:   ; preds = %land.end.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit324

if.then.i322:                                     ; preds = %land.end.i321
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit324

smm665_convert.exit324:                           ; preds = %if.then.i322, %land.end.i321.smm665_convert.exit324_crit_edge, %sw.bb12.i319, %sw.bb7.i313, %sw.bb2.i309, %sw.bb.i305
  %val.0.i323 = phi i32 [ %cond.i318, %sw.bb12.i319 ], [ %div11.i312, %sw.bb7.i313 ], [ %div6.i308, %sw.bb2.i309 ], [ %div.i304, %sw.bb.i305 ], [ 0, %if.then.i322 ], [ 0, %land.end.i321.smm665_convert.exit324_crit_edge ]
  %71 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %val.0.i323, ptr %arrayidx83, align 4
  br label %for.inc

if.else105:                                       ; preds = %if.end97
  %72 = zext i32 %i.0359 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.78)
  switch i32 %i.0359, label %land.end.i345 [
    i32 7, label %sw.bb.i329
    i32 6, label %if.else105.sw.bb2.i333_crit_edge
    i32 0, label %if.else105.sw.bb2.i333_crit_edge396
    i32 1, label %if.else105.sw.bb2.i333_crit_edge397
    i32 2, label %if.else105.sw.bb2.i333_crit_edge398
    i32 3, label %if.else105.sw.bb2.i333_crit_edge399
    i32 4, label %if.else105.sw.bb2.i333_crit_edge400
    i32 5, label %if.else105.sw.bb2.i333_crit_edge401
    i32 9, label %if.else105.sw.bb7.i337_crit_edge
    i32 10, label %if.else105.sw.bb7.i337_crit_edge402
    i32 8, label %sw.bb12.i343
  ]

if.else105.sw.bb7.i337_crit_edge402:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i337

if.else105.sw.bb7.i337_crit_edge:                 ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i337

if.else105.sw.bb2.i333_crit_edge401:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge400:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge399:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge398:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge397:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge396:              ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

if.else105.sw.bb2.i333_crit_edge:                 ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i333

sw.bb.i329:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  %73 = and i32 %or.i297, 1023
  %74 = load i32, ptr @vref, align 4
  %narrow.i325 = mul nuw nsw i32 %73, 3
  %mul1.i327 = mul i32 %narrow.i325, %74
  %div.i328 = sdiv i32 %mul1.i327, 256
  br label %smm665_convert.exit348

sw.bb2.i333:                                      ; preds = %if.else105.sw.bb2.i333_crit_edge, %if.else105.sw.bb2.i333_crit_edge396, %if.else105.sw.bb2.i333_crit_edge397, %if.else105.sw.bb2.i333_crit_edge398, %if.else105.sw.bb2.i333_crit_edge399, %if.else105.sw.bb2.i333_crit_edge400, %if.else105.sw.bb2.i333_crit_edge401
  %75 = and i32 %or.i297, 1023
  %76 = load i32, ptr @vref, align 4
  %mul5.i331 = mul i32 %76, %75
  %div6.i332 = sdiv i32 %mul5.i331, 256
  br label %smm665_convert.exit348

sw.bb7.i337:                                      ; preds = %if.else105.sw.bb7.i337_crit_edge, %if.else105.sw.bb7.i337_crit_edge402
  %77 = and i32 %or.i297, 1023
  %78 = load i32, ptr @vref, align 4
  %mul10.i335 = mul i32 %78, %77
  %div11.i336 = sdiv i32 %mul10.i335, 512
  br label %smm665_convert.exit348

sw.bb12.i343:                                     ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #8
  %conv106 = trunc i32 %or.i297 to i16
  %79 = and i16 %conv106, 1023
  %and14.i338 = zext i16 %79 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %79)
  %cmp.i339 = icmp ult i16 %79, 512
  %sub.i340 = or i32 %and14.i338, -1024
  %cond.in.i341 = select i1 %cmp.i339, i32 %and14.i338, i32 %sub.i340
  %cond.i342 = mul nsw i32 %cond.in.i341, 250
  br label %smm665_convert.exit348

land.end.i345:                                    ; preds = %if.else105
  %.b64.i344 = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i344, label %land.end.i345.smm665_convert.exit348_crit_edge, label %if.then.i346, !prof !255

land.end.i345.smm665_convert.exit348_crit_edge:   ; preds = %land.end.i345
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit348

if.then.i346:                                     ; preds = %land.end.i345
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit348

smm665_convert.exit348:                           ; preds = %if.then.i346, %land.end.i345.smm665_convert.exit348_crit_edge, %sw.bb12.i343, %sw.bb7.i337, %sw.bb2.i333, %sw.bb.i329
  %val.0.i347 = phi i32 [ %cond.i342, %sw.bb12.i343 ], [ %div11.i336, %sw.bb7.i337 ], [ %div6.i332, %sw.bb2.i333 ], [ %div.i328, %sw.bb.i329 ], [ 0, %if.then.i346 ], [ 0, %land.end.i345.smm665_convert.exit348_crit_edge ]
  %80 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %val.0.i347, ptr %arrayidx82, align 4
  br label %for.inc

for.inc:                                          ; preds = %smm665_convert.exit348, %smm665_convert.exit324
  %inc = add nuw nsw i32 %i.0359, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call112 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @smm665_groups) #6
  %cmp.i349 = icmp ugt ptr %call112, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i349, label %if.then114, label %for.end.cleanup118_crit_edge

for.end.cleanup118_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup118

if.then114:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %call112 to i32
  br label %out_unregister

out_unregister:                                   ; preds = %if.then114, %smm665_read16.exit300.out_unregister_crit_edge, %if.end.i295.out_unregister_crit_edge, %smm665_convert.exit288.out_unregister_crit_edge, %smm665_read16.exit264.out_unregister_crit_edge, %if.end.i259.out_unregister_crit_edge, %if.end65.out_unregister_crit_edge, %smm665_read16.exit204.out_unregister_crit_edge, %if.end.i199.out_unregister_crit_edge, %smm665_convert.exit.out_unregister_crit_edge, %smm665_read16.exit.out_unregister_crit_edge, %if.end.i.out_unregister_crit_edge, %for.body.out_unregister_crit_edge, %sw.epilog.out_unregister_crit_edge
  %ret.0 = phi i32 [ -19, %sw.epilog.out_unregister_crit_edge ], [ %81, %if.then114 ], [ -19, %smm665_read16.exit.out_unregister_crit_edge ], [ -19, %smm665_read16.exit204.out_unregister_crit_edge ], [ -19, %smm665_read16.exit264.out_unregister_crit_edge ], [ -19, %smm665_read16.exit300.out_unregister_crit_edge ], [ -19, %for.body.out_unregister_crit_edge ], [ -19, %if.end.i.out_unregister_crit_edge ], [ -19, %smm665_convert.exit.out_unregister_crit_edge ], [ -19, %if.end.i199.out_unregister_crit_edge ], [ -19, %if.end65.out_unregister_crit_edge ], [ -19, %if.end.i259.out_unregister_crit_edge ], [ -19, %smm665_convert.exit288.out_unregister_crit_edge ], [ -19, %if.end.i295.out_unregister_crit_edge ]
  %82 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %cmdreg, align 4
  tail call void @i2c_unregister_device(ptr noundef %83) #6
  br label %cleanup118

cleanup118:                                       ; preds = %out_unregister, %for.end.cleanup118_crit_edge, %if.then15, %if.end4.cleanup118_crit_edge, %if.end.cleanup118_crit_edge, %entry.cleanup118_crit_edge
  %retval.0 = phi i32 [ %16, %if.then15 ], [ %ret.0, %out_unregister ], [ -19, %entry.cleanup118_crit_edge ], [ -19, %if.end.cleanup118_crit_edge ], [ -12, %if.end4.cleanup118_crit_edge ], [ 0, %for.end.cleanup118_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_input(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smm665_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.smm665_data, ptr %call, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %5 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %2, label %land.end.i [
    i32 7, label %sw.bb.i
    i32 6, label %if.end.sw.bb2.i_crit_edge
    i32 0, label %if.end.sw.bb2.i_crit_edge13
    i32 1, label %if.end.sw.bb2.i_crit_edge14
    i32 2, label %if.end.sw.bb2.i_crit_edge15
    i32 3, label %if.end.sw.bb2.i_crit_edge16
    i32 4, label %if.end.sw.bb2.i_crit_edge17
    i32 5, label %if.end.sw.bb2.i_crit_edge18
    i32 9, label %if.end.sw.bb7.i_crit_edge
    i32 10, label %if.end.sw.bb7.i_crit_edge19
    i32 8, label %sw.bb12.i
  ]

if.end.sw.bb7.i_crit_edge19:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

if.end.sw.bb7.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb7.i

if.end.sw.bb2.i_crit_edge18:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge16:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge15:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge14:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge13:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

if.end.sw.bb2.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2.i

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = and i16 %4, 1023
  %7 = load i32, ptr @vref, align 4
  %narrow.i = mul nuw nsw i16 %6, 3
  %mul.i = zext i16 %narrow.i to i32
  %mul1.i = mul i32 %7, %mul.i
  %div.i = sdiv i32 %mul1.i, 256
  br label %smm665_convert.exit

sw.bb2.i:                                         ; preds = %if.end.sw.bb2.i_crit_edge, %if.end.sw.bb2.i_crit_edge13, %if.end.sw.bb2.i_crit_edge14, %if.end.sw.bb2.i_crit_edge15, %if.end.sw.bb2.i_crit_edge16, %if.end.sw.bb2.i_crit_edge17, %if.end.sw.bb2.i_crit_edge18
  %8 = and i16 %4, 1023
  %and4.i = zext i16 %8 to i32
  %9 = load i32, ptr @vref, align 4
  %mul5.i = mul i32 %9, %and4.i
  %div6.i = sdiv i32 %mul5.i, 256
  br label %smm665_convert.exit

sw.bb7.i:                                         ; preds = %if.end.sw.bb7.i_crit_edge, %if.end.sw.bb7.i_crit_edge19
  %10 = and i16 %4, 1023
  %and9.i = zext i16 %10 to i32
  %11 = load i32, ptr @vref, align 4
  %mul10.i = mul i32 %11, %and9.i
  %div11.i = sdiv i32 %mul10.i, 512
  br label %smm665_convert.exit

sw.bb12.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %12 = and i16 %4, 1023
  %and14.i = zext i16 %12 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 512, i16 %12)
  %cmp.i12 = icmp ult i16 %12, 512
  %sub.i = or i32 %and14.i, -1024
  %cond.in.i = select i1 %cmp.i12, i32 %and14.i, i32 %sub.i
  %cond.i = mul nsw i32 %cond.in.i, 250
  br label %smm665_convert.exit

land.end.i:                                       ; preds = %if.end
  %.b64.i = load i1, ptr @smm665_convert.__already_done, align 1
  br i1 %.b64.i, label %land.end.i.smm665_convert.exit_crit_edge, label %if.then.i, !prof !255

land.end.i.smm665_convert.exit_crit_edge:         ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %smm665_convert.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @smm665_convert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 306, i32 noundef 9, ptr noundef null) #6
  br label %smm665_convert.exit

smm665_convert.exit:                              ; preds = %if.then.i, %land.end.i.smm665_convert.exit_crit_edge, %sw.bb12.i, %sw.bb7.i, %sw.bb2.i, %sw.bb.i
  %val.0.i = phi i32 [ %cond.i, %sw.bb12.i ], [ %div11.i, %sw.bb7.i ], [ %div6.i, %sw.bb2.i ], [ %div.i, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.smm665_convert.exit_crit_edge ]
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %val.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %smm665_convert.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %smm665_convert.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @smm665_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %update_lock = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #6
  %last_updated = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !256
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.abort_crit_edge

lor.lhs.false.abort_crit_edge:                    ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %abort

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -127) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then6_crit_edge, label %if.end.i

if.then.if.then6_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.end.i:                                         ; preds = %if.then
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.if.then6_crit_edge, label %smm665_read16.exit

if.end.i.if.then6_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

smm665_read16.exit:                               ; preds = %if.end.i
  %shl.i = shl i32 %call.i, 8
  %or.i = or i32 %call3.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp3 = icmp slt i32 %or.i, 0
  br i1 %cmp3, label %smm665_read16.exit.if.then6_crit_edge, label %if.end, !prof !254

smm665_read16.exit.if.then6_crit_edge:            ; preds = %smm665_read16.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then6

if.then6:                                         ; preds = %smm665_read16.exit.if.then6_crit_edge, %if.end.i.if.then6_crit_edge, %if.then.if.then6_crit_edge
  %retval.0.i51 = phi i32 [ %or.i, %smm665_read16.exit.if.then6_crit_edge ], [ %call3.i, %if.end.i.if.then6_crit_edge ], [ %call.i, %if.then.if.then6_crit_edge ]
  %9 = inttoptr i32 %retval.0.i51 to ptr
  br label %abort

if.end:                                           ; preds = %smm665_read16.exit
  %conv = trunc i32 %or.i to i16
  %faults = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %faults to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %faults, align 2
  %call10 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.end.if.then19_crit_edge, label %if.end21, !prof !254

if.end.if.then19_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.then19:                                        ; preds = %if.end21.9.if.then19_crit_edge, %if.end21.8.if.then19_crit_edge, %if.end21.7.if.then19_crit_edge, %if.end21.6.if.then19_crit_edge, %if.end21.5.if.then19_crit_edge, %if.end21.4.if.then19_crit_edge, %if.end21.3.if.then19_crit_edge, %if.end21.2.if.then19_crit_edge, %if.end21.1.if.then19_crit_edge, %if.end21.if.then19_crit_edge, %if.end.if.then19_crit_edge
  %call10.lcssa = phi i32 [ %call10, %if.end.if.then19_crit_edge ], [ %call10.1, %if.end21.if.then19_crit_edge ], [ %call10.2, %if.end21.1.if.then19_crit_edge ], [ %call10.3, %if.end21.2.if.then19_crit_edge ], [ %call10.4, %if.end21.3.if.then19_crit_edge ], [ %call10.5, %if.end21.4.if.then19_crit_edge ], [ %call10.6, %if.end21.5.if.then19_crit_edge ], [ %call10.7, %if.end21.6.if.then19_crit_edge ], [ %call10.8, %if.end21.7.if.then19_crit_edge ], [ %call10.9, %if.end21.8.if.then19_crit_edge ], [ %call10.10, %if.end21.9.if.then19_crit_edge ]
  %11 = inttoptr i32 %call10.lcssa to ptr
  br label %abort

if.end21:                                         ; preds = %if.end
  %conv22 = trunc i32 %call10 to i16
  %arrayidx = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 0
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv22, ptr %arrayidx, align 2
  %call10.1 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp11.1, label %if.end21.if.then19_crit_edge, label %if.end21.1, !prof !254

if.end21.if.then19_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.1:                                       ; preds = %if.end21
  %conv22.1 = trunc i32 %call10.1 to i16
  %arrayidx.1 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv22.1, ptr %arrayidx.1, align 2
  %call10.2 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp11.2 = icmp slt i32 %call10.2, 0
  br i1 %cmp11.2, label %if.end21.1.if.then19_crit_edge, label %if.end21.2, !prof !254

if.end21.1.if.then19_crit_edge:                   ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.2:                                       ; preds = %if.end21.1
  %conv22.2 = trunc i32 %call10.2 to i16
  %arrayidx.2 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv22.2, ptr %arrayidx.2, align 2
  %call10.3 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3)
  %cmp11.3 = icmp slt i32 %call10.3, 0
  br i1 %cmp11.3, label %if.end21.2.if.then19_crit_edge, label %if.end21.3, !prof !254

if.end21.2.if.then19_crit_edge:                   ; preds = %if.end21.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.3:                                       ; preds = %if.end21.2
  %conv22.3 = trunc i32 %call10.3 to i16
  %arrayidx.3 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 3
  %15 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv22.3, ptr %arrayidx.3, align 2
  %call10.4 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4)
  %cmp11.4 = icmp slt i32 %call10.4, 0
  br i1 %cmp11.4, label %if.end21.3.if.then19_crit_edge, label %if.end21.4, !prof !254

if.end21.3.if.then19_crit_edge:                   ; preds = %if.end21.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.4:                                       ; preds = %if.end21.3
  %conv22.4 = trunc i32 %call10.4 to i16
  %arrayidx.4 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv22.4, ptr %arrayidx.4, align 2
  %call10.5 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.5)
  %cmp11.5 = icmp slt i32 %call10.5, 0
  br i1 %cmp11.5, label %if.end21.4.if.then19_crit_edge, label %if.end21.5, !prof !254

if.end21.4.if.then19_crit_edge:                   ; preds = %if.end21.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.5:                                       ; preds = %if.end21.4
  %conv22.5 = trunc i32 %call10.5 to i16
  %arrayidx.5 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 5
  %17 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv22.5, ptr %arrayidx.5, align 2
  %call10.6 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.6)
  %cmp11.6 = icmp slt i32 %call10.6, 0
  br i1 %cmp11.6, label %if.end21.5.if.then19_crit_edge, label %if.end21.6, !prof !254

if.end21.5.if.then19_crit_edge:                   ; preds = %if.end21.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.6:                                       ; preds = %if.end21.5
  %conv22.6 = trunc i32 %call10.6 to i16
  %arrayidx.6 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 6
  %18 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv22.6, ptr %arrayidx.6, align 2
  %call10.7 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.7)
  %cmp11.7 = icmp slt i32 %call10.7, 0
  br i1 %cmp11.7, label %if.end21.6.if.then19_crit_edge, label %if.end21.7, !prof !254

if.end21.6.if.then19_crit_edge:                   ; preds = %if.end21.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.7:                                       ; preds = %if.end21.6
  %conv22.7 = trunc i32 %call10.7 to i16
  %arrayidx.7 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 7
  %19 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv22.7, ptr %arrayidx.7, align 2
  %call10.8 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 8)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.8)
  %cmp11.8 = icmp slt i32 %call10.8, 0
  br i1 %cmp11.8, label %if.end21.7.if.then19_crit_edge, label %if.end21.8, !prof !254

if.end21.7.if.then19_crit_edge:                   ; preds = %if.end21.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.8:                                       ; preds = %if.end21.7
  %conv22.8 = trunc i32 %call10.8 to i16
  %arrayidx.8 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 8
  %20 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv22.8, ptr %arrayidx.8, align 2
  %call10.9 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.9)
  %cmp11.9 = icmp slt i32 %call10.9, 0
  br i1 %cmp11.9, label %if.end21.8.if.then19_crit_edge, label %if.end21.9, !prof !254

if.end21.8.if.then19_crit_edge:                   ; preds = %if.end21.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.9:                                       ; preds = %if.end21.8
  %conv22.9 = trunc i32 %call10.9 to i16
  %arrayidx.9 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 9
  %21 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv22.9, ptr %arrayidx.9, align 2
  %call10.10 = tail call fastcc i32 @smm665_read_adc(ptr noundef %1, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.10)
  %cmp11.10 = icmp slt i32 %call10.10, 0
  br i1 %cmp11.10, label %if.end21.9.if.then19_crit_edge, label %if.end21.10, !prof !254

if.end21.9.if.then19_crit_edge:                   ; preds = %if.end21.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then19

if.end21.10:                                      ; preds = %if.end21.9
  call void @__sanitizer_cov_trace_pc() #8
  %conv22.10 = trunc i32 %call10.10 to i16
  %arrayidx.10 = getelementptr %struct.smm665_data, ptr %1, i32 0, i32 6, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv22.10, ptr %arrayidx.10, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %last_updated, align 4
  %valid24 = getelementptr inbounds %struct.smm665_data, ptr %1, i32 0, i32 4
  %25 = ptrtoint ptr %valid24 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %valid24, align 4
  br label %abort

abort:                                            ; preds = %if.end21.10, %if.then19, %if.then6, %lor.lhs.false.abort_crit_edge
  %ret.1 = phi ptr [ %1, %lor.lhs.false.abort_crit_edge ], [ %9, %if.then6 ], [ %11, %if.then19 ], [ %1, %if.end21.10 ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #6
  ret ptr %ret.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smm665_read_adc(ptr nocapture noundef readonly %data, i32 noundef %adc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdreg = getelementptr inbounds %struct.smm665_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %cmdreg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cmdreg, align 4
  %adc.tr = trunc i32 %adc to i8
  %conv = shl i8 %adc.tr, 3
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call)
  %cmp.not = icmp eq i32 %call, -6
  br i1 %cmp.not, label %cond.false18, label %do.body

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smm665_read_adc.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smm665_read_adc, %do.end)) #6
          to label %if.then6 [label %do.end], !srcloc !257

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smm665_read_adc.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %call) #6
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  %spec.select = select i1 %cmp7, i32 %call, i32 -5
  br label %cleanup

cond.false18:                                     ; preds = %entry
  %conversion_time = getelementptr inbounds %struct.smm665_data, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %conversion_time to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %conversion_time, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %4(i32 noundef %3) #6
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %1, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %5 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #6
  %conv1.i = zext i16 %5 to i32
  %cond.i = select i1 %cmp.i, i32 %call.i, i32 %conv1.i
  br i1 %cmp.i, label %do.body25, label %if.end44

do.body25:                                        ; preds = %cond.false18
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smm665_read_adc.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smm665_read_adc, %cleanup)) #6
          to label %if.then39 [label %cleanup], !srcloc !257

if.then39:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #8
  %dev40 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smm665_read_adc.__UNIQUE_ID_ddebug291, ptr noundef %dev40, ptr noundef nonnull @.str.7, i32 noundef %cond.i) #6
  br label %cleanup

if.end44:                                         ; preds = %cond.false18
  %6 = lshr i32 %cond.i, 11
  %and = and i32 %6, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %adc)
  %cmp45.not = icmp eq i32 %and, %adc
  br i1 %cmp45.not, label %if.end67, label %do.body48

do.body48:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @smm665_read_adc.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@smm665_read_adc, %cleanup)) #6
          to label %if.then62 [label %cleanup], !srcloc !257

if.then62:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #8
  %dev63 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @smm665_read_adc.__UNIQUE_ID_ddebug292, ptr noundef %dev63, ptr noundef nonnull @.str.8, i32 noundef %adc, i32 noundef %and) #6
  br label %cleanup

if.end67:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  %and68 = and i32 %cond.i, 1023
  br label %cleanup

cleanup:                                          ; preds = %if.end67, %if.then62, %do.body48, %if.then39, %do.body25, %do.end
  %retval.0 = phi i32 [ %spec.select, %do.end ], [ %and68, %if.end67 ], [ %call.i, %if.then39 ], [ -5, %if.then62 ], [ %call.i, %do.body25 ], [ -5, %do.body48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_min(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.smm665_data, ptr %3, i32 0, i32 9, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_max(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.smm665_data, ptr %3, i32 0, i32 11, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_lcrit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.smm665_data, ptr %3, i32 0, i32 8, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_crit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i = getelementptr %struct.smm665_data, ptr %3, i32 0, i32 10, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.4, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smm665_show_crit_alarm(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @smm665_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %faults = getelementptr inbounds %struct.smm665_data, ptr %call, i32 0, i32 7
  %1 = ptrtoint ptr %faults to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %faults, align 2
  %conv = zext i16 %2 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = lshr i32 %conv, %4
  %6 = and i32 %5, 1
  %call5 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 148)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !240, !242, !243}
!llvm.module.flags = !{!245, !246, !247, !248, !249, !250, !251, !252}
!llvm.ident = !{!253}

!0 = !{ptr @__param_vref, !1, !"__param_vref", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/smm665.c", i32 31, i32 1}
!2 = !{ptr @__UNIQUE_ID_vreftype288, !1, !"__UNIQUE_ID_vreftype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_vref289, !4, !"__UNIQUE_ID_vref289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/smm665.c", i32 32, i32 1}
!5 = !{ptr @__initcall__kmod_smm665__293_703_smm665_driver_init6, !6, !"__initcall__kmod_smm665__293_703_smm665_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/smm665.c", i32 703, i32 1}
!7 = !{ptr @__exitcall_smm665_driver_exit, !6, !"__exitcall_smm665_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author294, !9, !"__UNIQUE_ID_author294", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/smm665.c", i32 705, i32 1}
!10 = !{ptr @__UNIQUE_ID_description295, !11, !"__UNIQUE_ID_description295", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/smm665.c", i32 706, i32 1}
!12 = !{ptr @__UNIQUE_ID_file296, !13, !"__UNIQUE_ID_file296", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/smm665.c", i32 707, i32 1}
!14 = !{ptr @__UNIQUE_ID_license297, !13, !"__UNIQUE_ID_license297", i1 false, i1 false}
!15 = !{ptr @__param_str_vref, !1, !"__param_str_vref", i1 false, i1 false}
!16 = !{ptr @vref, !17, !"vref", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/smm665.c", i32 30, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/smm665.c", i32 696, i32 14}
!20 = !{ptr @smm665_driver, !21, !"smm665_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/smm665.c", i32 694, i32 26}
!22 = !{ptr @smm665_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/smm665.c", i32 586, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/smm665.c", i32 306, i32 3}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @smm665_groups, !29, !"smm665_groups", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/smm665.c", i32 563, i32 1}
!30 = !{ptr @smm665_group, !29, !"smm665_group", i1 false, i1 false}
!31 = !{ptr @smm665_attrs, !32, !"smm665_attrs", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/smm665.c", i32 482, i32 26}
!33 = !{ptr @.str.3, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/smm665.c", i32 399, i32 1}
!35 = !{ptr @sensor_dev_attr_in1_input, !34, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/smm665.c", i32 369, i32 25}
!38 = !{ptr @.str.5, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/smm665.c", i32 203, i32 3}
!40 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @smm665_read_adc.__UNIQUE_ID_ddebug290, !39, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!42 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/smm665.c", i32 221, i32 3}
!44 = !{ptr @smm665_read_adc.__UNIQUE_ID_ddebug291, !43, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!45 = !{ptr @.str.8, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/smm665.c", i32 229, i32 3}
!47 = !{ptr @smm665_read_adc.__UNIQUE_ID_ddebug292, !46, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/smm665.c", i32 411, i32 1}
!50 = !{ptr @sensor_dev_attr_in1_min, !49, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!51 = !{ptr @.str.10, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/smm665.c", i32 423, i32 1}
!53 = !{ptr @sensor_dev_attr_in1_max, !52, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/smm665.c", i32 435, i32 1}
!56 = !{ptr @sensor_dev_attr_in1_lcrit, !55, !"sensor_dev_attr_in1_lcrit", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/smm665.c", i32 447, i32 1}
!59 = !{ptr @sensor_dev_attr_in1_crit, !58, !"sensor_dev_attr_in1_crit", i1 false, i1 false}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/smm665.c", i32 459, i32 1}
!62 = !{ptr @sensor_dev_attr_in1_crit_alarm, !61, !"sensor_dev_attr_in1_crit_alarm", i1 false, i1 false}
!63 = !{ptr @.str.14, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/smm665.c", i32 400, i32 1}
!65 = !{ptr @sensor_dev_attr_in2_input, !64, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!66 = !{ptr @.str.15, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/smm665.c", i32 412, i32 1}
!68 = !{ptr @sensor_dev_attr_in2_min, !67, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/smm665.c", i32 424, i32 1}
!71 = !{ptr @sensor_dev_attr_in2_max, !70, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!72 = !{ptr @.str.17, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/smm665.c", i32 436, i32 1}
!74 = !{ptr @sensor_dev_attr_in2_lcrit, !73, !"sensor_dev_attr_in2_lcrit", i1 false, i1 false}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/smm665.c", i32 448, i32 1}
!77 = !{ptr @sensor_dev_attr_in2_crit, !76, !"sensor_dev_attr_in2_crit", i1 false, i1 false}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/smm665.c", i32 460, i32 1}
!80 = !{ptr @sensor_dev_attr_in2_crit_alarm, !79, !"sensor_dev_attr_in2_crit_alarm", i1 false, i1 false}
!81 = !{ptr @.str.20, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/smm665.c", i32 401, i32 1}
!83 = !{ptr @sensor_dev_attr_in3_input, !82, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!84 = !{ptr @.str.21, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/smm665.c", i32 413, i32 1}
!86 = !{ptr @sensor_dev_attr_in3_min, !85, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!87 = !{ptr @.str.22, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/smm665.c", i32 425, i32 1}
!89 = !{ptr @sensor_dev_attr_in3_max, !88, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/smm665.c", i32 437, i32 1}
!92 = !{ptr @sensor_dev_attr_in3_lcrit, !91, !"sensor_dev_attr_in3_lcrit", i1 false, i1 false}
!93 = !{ptr @.str.24, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/smm665.c", i32 449, i32 1}
!95 = !{ptr @sensor_dev_attr_in3_crit, !94, !"sensor_dev_attr_in3_crit", i1 false, i1 false}
!96 = !{ptr @.str.25, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/smm665.c", i32 461, i32 1}
!98 = !{ptr @sensor_dev_attr_in3_crit_alarm, !97, !"sensor_dev_attr_in3_crit_alarm", i1 false, i1 false}
!99 = !{ptr @.str.26, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/smm665.c", i32 402, i32 1}
!101 = !{ptr @sensor_dev_attr_in4_input, !100, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!102 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/smm665.c", i32 414, i32 1}
!104 = !{ptr @sensor_dev_attr_in4_min, !103, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!105 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/smm665.c", i32 426, i32 1}
!107 = !{ptr @sensor_dev_attr_in4_max, !106, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!108 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/smm665.c", i32 438, i32 1}
!110 = !{ptr @sensor_dev_attr_in4_lcrit, !109, !"sensor_dev_attr_in4_lcrit", i1 false, i1 false}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/smm665.c", i32 450, i32 1}
!113 = !{ptr @sensor_dev_attr_in4_crit, !112, !"sensor_dev_attr_in4_crit", i1 false, i1 false}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/smm665.c", i32 462, i32 1}
!116 = !{ptr @sensor_dev_attr_in4_crit_alarm, !115, !"sensor_dev_attr_in4_crit_alarm", i1 false, i1 false}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/smm665.c", i32 403, i32 1}
!119 = !{ptr @sensor_dev_attr_in5_input, !118, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!120 = !{ptr @.str.33, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/smm665.c", i32 415, i32 1}
!122 = !{ptr @sensor_dev_attr_in5_min, !121, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!123 = !{ptr @.str.34, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/smm665.c", i32 427, i32 1}
!125 = !{ptr @sensor_dev_attr_in5_max, !124, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!126 = !{ptr @.str.35, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/smm665.c", i32 439, i32 1}
!128 = !{ptr @sensor_dev_attr_in5_lcrit, !127, !"sensor_dev_attr_in5_lcrit", i1 false, i1 false}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/smm665.c", i32 451, i32 1}
!131 = !{ptr @sensor_dev_attr_in5_crit, !130, !"sensor_dev_attr_in5_crit", i1 false, i1 false}
!132 = !{ptr @.str.37, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/hwmon/smm665.c", i32 463, i32 1}
!134 = !{ptr @sensor_dev_attr_in5_crit_alarm, !133, !"sensor_dev_attr_in5_crit_alarm", i1 false, i1 false}
!135 = !{ptr @.str.38, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/smm665.c", i32 404, i32 1}
!137 = !{ptr @sensor_dev_attr_in6_input, !136, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!138 = !{ptr @.str.39, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/smm665.c", i32 416, i32 1}
!140 = !{ptr @sensor_dev_attr_in6_min, !139, !"sensor_dev_attr_in6_min", i1 false, i1 false}
!141 = !{ptr @.str.40, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/smm665.c", i32 428, i32 1}
!143 = !{ptr @sensor_dev_attr_in6_max, !142, !"sensor_dev_attr_in6_max", i1 false, i1 false}
!144 = !{ptr @.str.41, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/smm665.c", i32 440, i32 1}
!146 = !{ptr @sensor_dev_attr_in6_lcrit, !145, !"sensor_dev_attr_in6_lcrit", i1 false, i1 false}
!147 = !{ptr @.str.42, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/smm665.c", i32 452, i32 1}
!149 = !{ptr @sensor_dev_attr_in6_crit, !148, !"sensor_dev_attr_in6_crit", i1 false, i1 false}
!150 = !{ptr @.str.43, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/smm665.c", i32 464, i32 1}
!152 = !{ptr @sensor_dev_attr_in6_crit_alarm, !151, !"sensor_dev_attr_in6_crit_alarm", i1 false, i1 false}
!153 = !{ptr @.str.44, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/smm665.c", i32 405, i32 1}
!155 = !{ptr @sensor_dev_attr_in7_input, !154, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!156 = !{ptr @.str.45, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/smm665.c", i32 417, i32 1}
!158 = !{ptr @sensor_dev_attr_in7_min, !157, !"sensor_dev_attr_in7_min", i1 false, i1 false}
!159 = !{ptr @.str.46, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/smm665.c", i32 429, i32 1}
!161 = !{ptr @sensor_dev_attr_in7_max, !160, !"sensor_dev_attr_in7_max", i1 false, i1 false}
!162 = !{ptr @.str.47, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/smm665.c", i32 441, i32 1}
!164 = !{ptr @sensor_dev_attr_in7_lcrit, !163, !"sensor_dev_attr_in7_lcrit", i1 false, i1 false}
!165 = !{ptr @.str.48, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/smm665.c", i32 453, i32 1}
!167 = !{ptr @sensor_dev_attr_in7_crit, !166, !"sensor_dev_attr_in7_crit", i1 false, i1 false}
!168 = !{ptr @.str.49, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/smm665.c", i32 465, i32 1}
!170 = !{ptr @sensor_dev_attr_in7_crit_alarm, !169, !"sensor_dev_attr_in7_crit_alarm", i1 false, i1 false}
!171 = !{ptr @.str.50, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/smm665.c", i32 406, i32 1}
!173 = !{ptr @sensor_dev_attr_in8_input, !172, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!174 = !{ptr @.str.51, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/smm665.c", i32 418, i32 1}
!176 = !{ptr @sensor_dev_attr_in8_min, !175, !"sensor_dev_attr_in8_min", i1 false, i1 false}
!177 = !{ptr @.str.52, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/smm665.c", i32 430, i32 1}
!179 = !{ptr @sensor_dev_attr_in8_max, !178, !"sensor_dev_attr_in8_max", i1 false, i1 false}
!180 = !{ptr @.str.53, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/smm665.c", i32 442, i32 1}
!182 = !{ptr @sensor_dev_attr_in8_lcrit, !181, !"sensor_dev_attr_in8_lcrit", i1 false, i1 false}
!183 = !{ptr @.str.54, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/smm665.c", i32 454, i32 1}
!185 = !{ptr @sensor_dev_attr_in8_crit, !184, !"sensor_dev_attr_in8_crit", i1 false, i1 false}
!186 = !{ptr @.str.55, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/smm665.c", i32 466, i32 1}
!188 = !{ptr @sensor_dev_attr_in8_crit_alarm, !187, !"sensor_dev_attr_in8_crit_alarm", i1 false, i1 false}
!189 = !{ptr @.str.56, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/smm665.c", i32 407, i32 1}
!191 = !{ptr @sensor_dev_attr_in9_input, !190, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!192 = !{ptr @.str.57, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/smm665.c", i32 419, i32 1}
!194 = !{ptr @sensor_dev_attr_in9_min, !193, !"sensor_dev_attr_in9_min", i1 false, i1 false}
!195 = !{ptr @.str.58, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/smm665.c", i32 431, i32 1}
!197 = !{ptr @sensor_dev_attr_in9_max, !196, !"sensor_dev_attr_in9_max", i1 false, i1 false}
!198 = !{ptr @.str.59, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/smm665.c", i32 443, i32 1}
!200 = !{ptr @sensor_dev_attr_in9_lcrit, !199, !"sensor_dev_attr_in9_lcrit", i1 false, i1 false}
!201 = !{ptr @.str.60, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/smm665.c", i32 455, i32 1}
!203 = !{ptr @sensor_dev_attr_in9_crit, !202, !"sensor_dev_attr_in9_crit", i1 false, i1 false}
!204 = !{ptr @.str.61, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/smm665.c", i32 467, i32 1}
!206 = !{ptr @sensor_dev_attr_in9_crit_alarm, !205, !"sensor_dev_attr_in9_crit_alarm", i1 false, i1 false}
!207 = !{ptr @.str.62, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/smm665.c", i32 408, i32 1}
!209 = !{ptr @sensor_dev_attr_in10_input, !208, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!210 = !{ptr @.str.63, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/smm665.c", i32 420, i32 1}
!212 = !{ptr @sensor_dev_attr_in10_min, !211, !"sensor_dev_attr_in10_min", i1 false, i1 false}
!213 = !{ptr @.str.64, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/smm665.c", i32 432, i32 1}
!215 = !{ptr @sensor_dev_attr_in10_max, !214, !"sensor_dev_attr_in10_max", i1 false, i1 false}
!216 = !{ptr @.str.65, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/smm665.c", i32 444, i32 1}
!218 = !{ptr @sensor_dev_attr_in10_lcrit, !217, !"sensor_dev_attr_in10_lcrit", i1 false, i1 false}
!219 = !{ptr @.str.66, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/smm665.c", i32 456, i32 1}
!221 = !{ptr @sensor_dev_attr_in10_crit, !220, !"sensor_dev_attr_in10_crit", i1 false, i1 false}
!222 = !{ptr @.str.67, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/smm665.c", i32 468, i32 1}
!224 = !{ptr @sensor_dev_attr_in10_crit_alarm, !223, !"sensor_dev_attr_in10_crit_alarm", i1 false, i1 false}
!225 = !{ptr @.str.68, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/smm665.c", i32 471, i32 1}
!227 = !{ptr @sensor_dev_attr_temp1_input, !226, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!228 = !{ptr @.str.69, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/smm665.c", i32 472, i32 1}
!230 = !{ptr @sensor_dev_attr_temp1_min, !229, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!231 = !{ptr @.str.70, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/smm665.c", i32 473, i32 1}
!233 = !{ptr @sensor_dev_attr_temp1_max, !232, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!234 = !{ptr @.str.71, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/smm665.c", i32 474, i32 1}
!236 = !{ptr @sensor_dev_attr_temp1_lcrit, !235, !"sensor_dev_attr_temp1_lcrit", i1 false, i1 false}
!237 = !{ptr @.str.72, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/smm665.c", i32 475, i32 1}
!239 = !{ptr @sensor_dev_attr_temp1_crit, !238, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!240 = !{ptr @.str.73, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/hwmon/smm665.c", i32 476, i32 1}
!242 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !241, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!243 = !{ptr @smm665_id, !244, !"smm665_id", i1 false, i1 false}
!244 = !{!"../drivers/hwmon/smm665.c", i32 682, i32 35}
!245 = !{i32 1, !"wchar_size", i32 2}
!246 = !{i32 1, !"min_enum_size", i32 4}
!247 = !{i32 8, !"branch-target-enforcement", i32 0}
!248 = !{i32 8, !"sign-return-address", i32 0}
!249 = !{i32 8, !"sign-return-address-all", i32 0}
!250 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!251 = !{i32 7, !"uwtable", i32 1}
!252 = !{i32 7, !"frame-pointer", i32 2}
!253 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!254 = !{!"branch_weights", i32 1, i32 2000}
!255 = !{!"branch_weights", i32 2000, i32 1}
!256 = !{i8 0, i8 2}
!257 = !{i64 2148710373, i64 2148710378, i64 2148710391, i64 2148710435, i64 2148710469, i64 2148710490}
