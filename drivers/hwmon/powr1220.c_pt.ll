; ModuleID = '/llk/IR_all_yes/drivers/hwmon/powr1220.c_pt.bc'
source_filename = "../drivers/hwmon/powr1220.c"
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.powr1220_data = type { ptr, %struct.mutex, [14 x i8], [14 x i32], [14 x i32], [14 x i32] }

@__initcall__kmod_powr1220__288_337_powr1220_driver_init6 = internal global ptr @powr1220_driver_init, section ".initcall6.init", align 4
@powr1220_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @powr1220_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @powr1220_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_powr1220_driver_exit = internal global ptr @powr1220_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [31 x i8] c"powr1220.author=Scott Kanowitz\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [37 x i8] c"powr1220.description=POWR1220 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"powr1220.file=drivers/hwmon/powr1220\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"powr1220.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"powr1220\00", [23 x i8] zeroinitializer }, align 32
@powr1220_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"powr1220\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@powr1220_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@powr1220_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @powr1220_group, ptr null], [24 x i8] zeroinitializer }, align 32
@powr1220_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @powr1220_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@powr1220_attrs = internal global { [43 x ptr], [52 x i8] } { [43 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in0_highest, ptr @sensor_dev_attr_in1_highest, ptr @sensor_dev_attr_in2_highest, ptr @sensor_dev_attr_in3_highest, ptr @sensor_dev_attr_in4_highest, ptr @sensor_dev_attr_in5_highest, ptr @sensor_dev_attr_in6_highest, ptr @sensor_dev_attr_in7_highest, ptr @sensor_dev_attr_in8_highest, ptr @sensor_dev_attr_in9_highest, ptr @sensor_dev_attr_in10_highest, ptr @sensor_dev_attr_in11_highest, ptr @sensor_dev_attr_in12_highest, ptr @sensor_dev_attr_in13_highest, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_in10_label, ptr @sensor_dev_attr_in11_label, ptr @sensor_dev_attr_in12_label, ptr @sensor_dev_attr_in13_label, ptr null], [52 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_voltage_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_highest = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_max_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in6_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in7_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in8_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in9_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in10_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in11_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in12_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in13_label = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @powr1220_label_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_input\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_input\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_input\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_input\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_input\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_input\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_input\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in0_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in1_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in2_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in3_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in4_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in5_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in6_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in7_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in8_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"in9_highest\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in10_highest\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in11_highest\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in12_highest\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"in13_highest\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_label\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@input_names = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon1\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon2\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon3\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon4\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon5\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon6\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon7\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon8\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vmon9\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmon10\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmon11\00", [25 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vmon12\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcca\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vccinp\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_label\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_label\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_label\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_label\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_label\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in6_label\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in7_label\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in8_label\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in9_label\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in10_label\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in11_label\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in12_label\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"in13_label\00", [21 x i8] zeroinitializer }, align 32
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"powr1220_driver\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 328, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 331, i32 11 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"powr1220_ids\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 321, i32 35 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 312, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"powr1220_groups\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"powr1220_group\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 298, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"powr1220_attrs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 249, i32 26 }
@___asan_gen_.84 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.99 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_input\00", align 1
@___asan_gen_.105 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_input\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_input\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_input\00", align 1
@___asan_gen_.114 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_input\00", align 1
@___asan_gen_.117 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_input\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_input\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_input\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in0_highest\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in1_highest\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in2_highest\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in3_highest\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in4_highest\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in5_highest\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in6_highest\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in7_highest\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in8_highest\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_in9_highest\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in10_highest\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in11_highest\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in12_highest\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_in13_highest\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_label\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_label\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_label\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_label\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_label\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_label\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in6_label\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in7_label\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in8_label\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in9_label\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in10_label\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in11_label\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in12_label\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_in13_label\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 204, i32 8 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 181, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 205, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 206, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 207, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 208, i32 8 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 209, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 210, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 211, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 212, i32 8 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 213, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 214, i32 8 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 215, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 216, i32 8 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 217, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 219, i32 8 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 220, i32 8 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 221, i32 8 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 222, i32 8 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 223, i32 8 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 224, i32 8 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 225, i32 8 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 226, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 227, i32 8 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 228, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 229, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 230, i32 8 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 231, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 232, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 234, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 201, i32 22 }
@___asan_gen_.303 = private unnamed_addr constant [12 x i8] c"input_names\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 86, i32 27 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 87, i32 15 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 88, i32 15 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 89, i32 15 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 90, i32 15 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 91, i32 15 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 92, i32 15 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 93, i32 15 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 94, i32 15 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 95, i32 15 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 96, i32 15 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 97, i32 15 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 98, i32 15 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 99, i32 15 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 100, i32 15 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 235, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 236, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 237, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 238, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 239, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 240, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 241, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 242, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 243, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 244, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 245, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 246, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.385 = private constant [28 x i8] c"../drivers/hwmon/powr1220.c\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.385, i32 247, i32 8 }
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_powr1220_driver_exit, ptr @__initcall__kmod_powr1220__288_337_powr1220_driver_init6, ptr @powr1220_driver_exit, ptr @powr1220_driver, ptr @.str, ptr @powr1220_ids, ptr @powr1220_probe.__key, ptr @.str.1, ptr @powr1220_groups, ptr @powr1220_group, ptr @powr1220_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in6_input, ptr @sensor_dev_attr_in7_input, ptr @sensor_dev_attr_in8_input, ptr @sensor_dev_attr_in9_input, ptr @sensor_dev_attr_in10_input, ptr @sensor_dev_attr_in11_input, ptr @sensor_dev_attr_in12_input, ptr @sensor_dev_attr_in13_input, ptr @sensor_dev_attr_in0_highest, ptr @sensor_dev_attr_in1_highest, ptr @sensor_dev_attr_in2_highest, ptr @sensor_dev_attr_in3_highest, ptr @sensor_dev_attr_in4_highest, ptr @sensor_dev_attr_in5_highest, ptr @sensor_dev_attr_in6_highest, ptr @sensor_dev_attr_in7_highest, ptr @sensor_dev_attr_in8_highest, ptr @sensor_dev_attr_in9_highest, ptr @sensor_dev_attr_in10_highest, ptr @sensor_dev_attr_in11_highest, ptr @sensor_dev_attr_in12_highest, ptr @sensor_dev_attr_in13_highest, ptr @sensor_dev_attr_in0_label, ptr @sensor_dev_attr_in1_label, ptr @sensor_dev_attr_in2_label, ptr @sensor_dev_attr_in3_label, ptr @sensor_dev_attr_in4_label, ptr @sensor_dev_attr_in5_label, ptr @sensor_dev_attr_in6_label, ptr @sensor_dev_attr_in7_label, ptr @sensor_dev_attr_in8_label, ptr @sensor_dev_attr_in9_label, ptr @sensor_dev_attr_in10_label, ptr @sensor_dev_attr_in11_label, ptr @sensor_dev_attr_in12_label, ptr @sensor_dev_attr_in13_label, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @input_names, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [109 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @powr1220_attrs to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_highest to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in6_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in7_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in8_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in9_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in10_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in11_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in12_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in13_label to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_names to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @powr1220_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @powr1220_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @powr1220_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @powr1220_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powr1220_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #5
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %update_lock = getelementptr inbounds %struct.powr1220_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @powr1220_probe.__key) #5
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call7 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @powr1220_groups) #5
  %cmp.i.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call7 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %do.body ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powr1220_voltage_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %update_lock.i = getelementptr inbounds %struct.powr1220_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #5
  %arrayidx.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 3, i32 %1
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %5, 100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %arrayidx1.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 2, i32 %1
  %7 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1.i, align 1, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %arrayidx2.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 4, i32 %1
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000, i32 %10)
  %cmp3.i = icmp sgt i32 %10, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp7.i = icmp eq i32 %10, 0
  %or.cond.i = or i1 %cmp3.i, %cmp7.i
  %adc_range.0.i = select i1 %or.cond.i, i32 16, i32 0
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 4
  %or.i = or i32 %adc_range.0.i, %1
  %conv.i = trunc i32 %or.i to i8
  %call9.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %12, i8 noundef zeroext 9, i8 noundef zeroext %conv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.then.i.powr1220_read_adc.exit_crit_edge

if.then.i.powr1220_read_adc.exit_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %powr1220_read_adc.exit

if.end12.i:                                       ; preds = %if.then.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 42949600) #5
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call14.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.powr1220_read_adc.exit.thread_crit_edge, label %if.end18.i

if.end12.i.powr1220_read_adc.exit.thread_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %powr1220_read_adc.exit.thread

if.end18.i:                                       ; preds = %if.end12.i
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call20.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end18.i.powr1220_read_adc.exit.thread_crit_edge, label %if.end24.i

if.end18.i.powr1220_read_adc.exit.thread_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %powr1220_read_adc.exit.thread

if.end24.i:                                       ; preds = %if.end18.i
  %18 = shl i32 %call20.i, 5
  %19 = lshr i32 %call14.i, 3
  %20 = and i32 %19, 536870910
  %mul.i = or i32 %18, %20
  %arrayidx26.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 5, i32 %1
  %21 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul.i, ptr %arrayidx26.i, align 4
  %arrayidx28.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 2, i32 %1
  %22 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %arrayidx28.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx.i, align 4
  %25 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %26)
  %cmp33.i = icmp sgt i32 %mul.i, %26
  br i1 %cmp33.i, label %if.then35.i, label %if.end24.i.powr1220_read_adc.exit_crit_edge

if.end24.i.powr1220_read_adc.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %powr1220_read_adc.exit

if.then35.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i, ptr %arrayidx2.i, align 4
  br label %powr1220_read_adc.exit

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx40.i = getelementptr %struct.powr1220_data, ptr %3, i32 0, i32 5, i32 %1
  %28 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx40.i, align 4
  br label %powr1220_read_adc.exit

powr1220_read_adc.exit.thread:                    ; preds = %if.end18.i.powr1220_read_adc.exit.thread_crit_edge, %if.end12.i.powr1220_read_adc.exit.thread_crit_edge
  %result.0.i.ph = phi i32 [ %call20.i, %if.end18.i.powr1220_read_adc.exit.thread_crit_edge ], [ %call14.i, %if.end12.i.powr1220_read_adc.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  br label %cleanup

powr1220_read_adc.exit:                           ; preds = %if.else.i, %if.then35.i, %if.end24.i.powr1220_read_adc.exit_crit_edge, %if.then.i.powr1220_read_adc.exit_crit_edge
  %result.0.i = phi i32 [ %call9.i, %if.then.i.powr1220_read_adc.exit_crit_edge ], [ %mul.i, %if.then35.i ], [ %mul.i, %if.end24.i.powr1220_read_adc.exit_crit_edge ], [ %29, %if.else.i ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0.i)
  %cmp = icmp slt i32 %result.0.i, 0
  br i1 %cmp, label %powr1220_read_adc.exit.cleanup_crit_edge, label %if.end

powr1220_read_adc.exit.cleanup_crit_edge:         ; preds = %powr1220_read_adc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %powr1220_read_adc.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %result.0.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %powr1220_read_adc.exit.cleanup_crit_edge, %powr1220_read_adc.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %result.0.i, %powr1220_read_adc.exit.cleanup_crit_edge ], [ %result.0.i.ph, %powr1220_read_adc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powr1220_max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.powr1220_data, ptr %1, i32 0, i32 4, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %5)
  ret i32 %call1
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @powr1220_label_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %dev_attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %dev_attr, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr [14 x ptr], ptr @input_names, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.32, ptr noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 109)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !33, !35, !36, !38, !39, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !77, !78, !80, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182}
!llvm.module.flags = !{!184, !185, !186, !187, !188, !189, !190, !191}
!llvm.ident = !{!192}

!0 = !{ptr @__initcall__kmod_powr1220__288_337_powr1220_driver_init6, !1, !"__initcall__kmod_powr1220__288_337_powr1220_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/powr1220.c", i32 337, i32 1}
!2 = !{ptr @__exitcall_powr1220_driver_exit, !1, !"__exitcall_powr1220_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/powr1220.c", i32 339, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/powr1220.c", i32 340, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/powr1220.c", i32 341, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/powr1220.c", i32 331, i32 11}
!12 = !{ptr @powr1220_driver, !13, !"powr1220_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/powr1220.c", i32 328, i32 26}
!14 = !{ptr @powr1220_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/powr1220.c", i32 312, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @powr1220_groups, !18, !"powr1220_groups", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/powr1220.c", i32 298, i32 1}
!19 = !{ptr @powr1220_group, !18, !"powr1220_group", i1 false, i1 false}
!20 = !{ptr @powr1220_attrs, !21, !"powr1220_attrs", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/powr1220.c", i32 249, i32 26}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/powr1220.c", i32 204, i32 8}
!24 = !{ptr @sensor_dev_attr_in0_input, !23, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/powr1220.c", i32 181, i32 22}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/powr1220.c", i32 205, i32 8}
!29 = !{ptr @sensor_dev_attr_in1_input, !28, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/powr1220.c", i32 206, i32 8}
!32 = !{ptr @sensor_dev_attr_in2_input, !31, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/powr1220.c", i32 207, i32 8}
!35 = !{ptr @sensor_dev_attr_in3_input, !34, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!36 = !{ptr @.str.7, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/powr1220.c", i32 208, i32 8}
!38 = !{ptr @sensor_dev_attr_in4_input, !37, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/powr1220.c", i32 209, i32 8}
!41 = !{ptr @sensor_dev_attr_in5_input, !40, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/powr1220.c", i32 210, i32 8}
!44 = !{ptr @sensor_dev_attr_in6_input, !43, !"sensor_dev_attr_in6_input", i1 false, i1 false}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/powr1220.c", i32 211, i32 8}
!47 = !{ptr @sensor_dev_attr_in7_input, !46, !"sensor_dev_attr_in7_input", i1 false, i1 false}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/powr1220.c", i32 212, i32 8}
!50 = !{ptr @sensor_dev_attr_in8_input, !49, !"sensor_dev_attr_in8_input", i1 false, i1 false}
!51 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/powr1220.c", i32 213, i32 8}
!53 = !{ptr @sensor_dev_attr_in9_input, !52, !"sensor_dev_attr_in9_input", i1 false, i1 false}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/powr1220.c", i32 214, i32 8}
!56 = !{ptr @sensor_dev_attr_in10_input, !55, !"sensor_dev_attr_in10_input", i1 false, i1 false}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/powr1220.c", i32 215, i32 8}
!59 = !{ptr @sensor_dev_attr_in11_input, !58, !"sensor_dev_attr_in11_input", i1 false, i1 false}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/powr1220.c", i32 216, i32 8}
!62 = !{ptr @sensor_dev_attr_in12_input, !61, !"sensor_dev_attr_in12_input", i1 false, i1 false}
!63 = !{ptr @.str.16, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/powr1220.c", i32 217, i32 8}
!65 = !{ptr @sensor_dev_attr_in13_input, !64, !"sensor_dev_attr_in13_input", i1 false, i1 false}
!66 = !{ptr @.str.17, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/powr1220.c", i32 219, i32 8}
!68 = !{ptr @sensor_dev_attr_in0_highest, !67, !"sensor_dev_attr_in0_highest", i1 false, i1 false}
!69 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/powr1220.c", i32 220, i32 8}
!71 = !{ptr @sensor_dev_attr_in1_highest, !70, !"sensor_dev_attr_in1_highest", i1 false, i1 false}
!72 = !{ptr @.str.19, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/powr1220.c", i32 221, i32 8}
!74 = !{ptr @sensor_dev_attr_in2_highest, !73, !"sensor_dev_attr_in2_highest", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hwmon/powr1220.c", i32 222, i32 8}
!77 = !{ptr @sensor_dev_attr_in3_highest, !76, !"sensor_dev_attr_in3_highest", i1 false, i1 false}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/hwmon/powr1220.c", i32 223, i32 8}
!80 = !{ptr @sensor_dev_attr_in4_highest, !79, !"sensor_dev_attr_in4_highest", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/powr1220.c", i32 224, i32 8}
!83 = !{ptr @sensor_dev_attr_in5_highest, !82, !"sensor_dev_attr_in5_highest", i1 false, i1 false}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/powr1220.c", i32 225, i32 8}
!86 = !{ptr @sensor_dev_attr_in6_highest, !85, !"sensor_dev_attr_in6_highest", i1 false, i1 false}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/powr1220.c", i32 226, i32 8}
!89 = !{ptr @sensor_dev_attr_in7_highest, !88, !"sensor_dev_attr_in7_highest", i1 false, i1 false}
!90 = !{ptr @.str.25, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/powr1220.c", i32 227, i32 8}
!92 = !{ptr @sensor_dev_attr_in8_highest, !91, !"sensor_dev_attr_in8_highest", i1 false, i1 false}
!93 = !{ptr @.str.26, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/powr1220.c", i32 228, i32 8}
!95 = !{ptr @sensor_dev_attr_in9_highest, !94, !"sensor_dev_attr_in9_highest", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/powr1220.c", i32 229, i32 8}
!98 = !{ptr @sensor_dev_attr_in10_highest, !97, !"sensor_dev_attr_in10_highest", i1 false, i1 false}
!99 = !{ptr @.str.28, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/powr1220.c", i32 230, i32 8}
!101 = !{ptr @sensor_dev_attr_in11_highest, !100, !"sensor_dev_attr_in11_highest", i1 false, i1 false}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/powr1220.c", i32 231, i32 8}
!104 = !{ptr @sensor_dev_attr_in12_highest, !103, !"sensor_dev_attr_in12_highest", i1 false, i1 false}
!105 = !{ptr @.str.30, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/powr1220.c", i32 232, i32 8}
!107 = !{ptr @sensor_dev_attr_in13_highest, !106, !"sensor_dev_attr_in13_highest", i1 false, i1 false}
!108 = !{ptr @.str.31, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/powr1220.c", i32 234, i32 8}
!110 = !{ptr @sensor_dev_attr_in0_label, !109, !"sensor_dev_attr_in0_label", i1 false, i1 false}
!111 = !{ptr @.str.32, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/powr1220.c", i32 201, i32 22}
!113 = !{ptr @.str.33, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/powr1220.c", i32 87, i32 15}
!115 = !{ptr @.str.34, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/hwmon/powr1220.c", i32 88, i32 15}
!117 = !{ptr @.str.35, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/powr1220.c", i32 89, i32 15}
!119 = !{ptr @.str.36, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/powr1220.c", i32 90, i32 15}
!121 = !{ptr @.str.37, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/powr1220.c", i32 91, i32 15}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/powr1220.c", i32 92, i32 15}
!125 = !{ptr @.str.39, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/powr1220.c", i32 93, i32 15}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/powr1220.c", i32 94, i32 15}
!129 = !{ptr @.str.41, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/powr1220.c", i32 95, i32 15}
!131 = !{ptr @.str.42, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/powr1220.c", i32 96, i32 15}
!133 = !{ptr @.str.43, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/powr1220.c", i32 97, i32 15}
!135 = !{ptr @.str.44, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/hwmon/powr1220.c", i32 98, i32 15}
!137 = !{ptr @.str.45, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/powr1220.c", i32 99, i32 15}
!139 = !{ptr @.str.46, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/powr1220.c", i32 100, i32 15}
!141 = !{ptr @input_names, !142, !"input_names", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/powr1220.c", i32 86, i32 27}
!143 = !{ptr @.str.47, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/powr1220.c", i32 235, i32 8}
!145 = !{ptr @sensor_dev_attr_in1_label, !144, !"sensor_dev_attr_in1_label", i1 false, i1 false}
!146 = !{ptr @.str.48, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/powr1220.c", i32 236, i32 8}
!148 = !{ptr @sensor_dev_attr_in2_label, !147, !"sensor_dev_attr_in2_label", i1 false, i1 false}
!149 = !{ptr @.str.49, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/powr1220.c", i32 237, i32 8}
!151 = !{ptr @sensor_dev_attr_in3_label, !150, !"sensor_dev_attr_in3_label", i1 false, i1 false}
!152 = !{ptr @.str.50, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/powr1220.c", i32 238, i32 8}
!154 = !{ptr @sensor_dev_attr_in4_label, !153, !"sensor_dev_attr_in4_label", i1 false, i1 false}
!155 = !{ptr @.str.51, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/powr1220.c", i32 239, i32 8}
!157 = !{ptr @sensor_dev_attr_in5_label, !156, !"sensor_dev_attr_in5_label", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/powr1220.c", i32 240, i32 8}
!160 = !{ptr @sensor_dev_attr_in6_label, !159, !"sensor_dev_attr_in6_label", i1 false, i1 false}
!161 = !{ptr @.str.53, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/powr1220.c", i32 241, i32 8}
!163 = !{ptr @sensor_dev_attr_in7_label, !162, !"sensor_dev_attr_in7_label", i1 false, i1 false}
!164 = !{ptr @.str.54, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/powr1220.c", i32 242, i32 8}
!166 = !{ptr @sensor_dev_attr_in8_label, !165, !"sensor_dev_attr_in8_label", i1 false, i1 false}
!167 = !{ptr @.str.55, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/powr1220.c", i32 243, i32 8}
!169 = !{ptr @sensor_dev_attr_in9_label, !168, !"sensor_dev_attr_in9_label", i1 false, i1 false}
!170 = !{ptr @.str.56, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/powr1220.c", i32 244, i32 8}
!172 = !{ptr @sensor_dev_attr_in10_label, !171, !"sensor_dev_attr_in10_label", i1 false, i1 false}
!173 = !{ptr @.str.57, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/powr1220.c", i32 245, i32 8}
!175 = !{ptr @sensor_dev_attr_in11_label, !174, !"sensor_dev_attr_in11_label", i1 false, i1 false}
!176 = !{ptr @.str.58, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/powr1220.c", i32 246, i32 8}
!178 = !{ptr @sensor_dev_attr_in12_label, !177, !"sensor_dev_attr_in12_label", i1 false, i1 false}
!179 = !{ptr @.str.59, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/powr1220.c", i32 247, i32 8}
!181 = !{ptr @sensor_dev_attr_in13_label, !180, !"sensor_dev_attr_in13_label", i1 false, i1 false}
!182 = !{ptr @powr1220_ids, !183, !"powr1220_ids", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/powr1220.c", i32 321, i32 35}
!184 = !{i32 1, !"wchar_size", i32 2}
!185 = !{i32 1, !"min_enum_size", i32 4}
!186 = !{i32 8, !"branch-target-enforcement", i32 0}
!187 = !{i32 8, !"sign-return-address", i32 0}
!188 = !{i32 8, !"sign-return-address-all", i32 0}
!189 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!190 = !{i32 7, !"uwtable", i32 1}
!191 = !{i32 7, !"frame-pointer", i32 2}
!192 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!193 = !{i8 0, i8 2}
