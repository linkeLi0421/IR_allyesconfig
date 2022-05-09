; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adt7475.c_pt.bc'
source_filename = "../drivers/hwmon/adt7475.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
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
%struct.adt7475_data = type { ptr, %struct.mutex, i32, i8, i8, i8, i8, i8, i8, i8, i32, [3 x [6 x i16]], [7 x [3 x i16]], [2 x [4 x i16]], [4 x [3 x i8]], [3 x i8], [3 x i8], [3 x i8], [2 x i8], i8, i8, [9 x ptr] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adt7475__329_1925_adt7475_driver_init6 = internal global ptr @adt7475_driver_init, section ".initcall6.init", align 4
@adt7475_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adt7475_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @adt7475_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adt7475_id, ptr @adt7475_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adt7475_driver_exit = internal global ptr @adt7475_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [43 x i8] c"adt7475.author=Advanced Micro Devices, Inc\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [35 x i8] c"adt7475.description=adt7475 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [35 x i8] c"adt7475.file=drivers/hwmon/adt7475\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [20 x i8] c"adt7475.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7475\00", [24 x i8] zeroinitializer }, align 32
@adt7475_of_match = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7475\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7476\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,adt7490\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@adt7475_id = internal constant { [5 x %struct.i2c_device_id], [40 x i8] } { [5 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adt7473\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"adt7475\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"adt7476\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"adt7490\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 44, i16 45, i16 46, i16 -2], [24 x i8] zeroinitializer }, align 32
@adt7475_probe.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADT7473\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADT7475\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADT7476\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADT7490\00", [24 x i8] zeroinitializer }, align 32
@adt7475_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@adt7475_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 1633, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error configuring attenuator bypass\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"adt7475_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adt7475.c\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adt7475_probe._entry_ptr = internal global ptr @adt7475_probe._entry, section ".printk_index", align 4
@adt7475_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 1652, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Error configuring pwm polarity\0A\00", [32 x i8] zeroinitializer }, align 32
@adt7475_probe._entry_ptr.13 = internal global ptr @adt7475_probe._entry.11, section ".printk_index", align 4
@adt7475_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7475_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fan4_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fan4_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@pwm2_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @pwm2_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@in0_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @in0_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@in3_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @in3_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@in4_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @in4_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@in5_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @in5_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@vid_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @vid_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7475_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 1702, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s device, revision %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@adt7475_probe._entry_ptr.17 = internal global ptr @adt7475_probe._entry.14, section ".printk_index", align 4
@adt7475_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.7, ptr @.str.8, i32 1709, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Optional features:%s%s%s%s%s\0A\00", [34 x i8] zeroinitializer }, align 32
@adt7475_probe._entry_ptr.20 = internal global ptr @adt7475_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" in0\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" in4\00", [27 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" fan4\00", [26 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" pwm2\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" vid\00", [27 x i8] zeroinitializer }, align 32
@adt7475_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.7, ptr @.str.8, i32 1715, ptr @.str.16, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Bypassing attenuators on:%s%s%s%s\0A\00", [61 x i8] zeroinitializer }, align 32
@adt7475_probe._entry_ptr.29 = internal global ptr @adt7475_probe._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" in1\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" in3\00", [27 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,bypass-attenuator-in0\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,bypass-attenuator-in1\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,bypass-attenuator-in3\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"adi,bypass-attenuator-in4\00", [38 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adi,pwm-active-state\00", [43 x i8] zeroinitializer }, align 32
@adt7475_attrs = internal global { [65 x ptr], [92 x i8] } { [65 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_smoothing, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp2_smoothing, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp3_smoothing, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_stall_disable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_stall_disable, ptr @dev_attr_pwm_use_point2_pwm_at_crit, ptr null], [92 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 1, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 2, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 0, i8 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @point2_show, ptr @point2_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 0, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_smoothing = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_st_show, ptr @temp_st_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 1, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @point2_show, ptr @point2_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 1, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_smoothing = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_st_show, ptr @temp_st_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 2, i8 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i8 2, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point1_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_auto_point2_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @point2_show, ptr @point2_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_hyst = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_smoothing = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_st_show, ptr @temp_st_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr @tach_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 0, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr @tach_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 1, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr @tach_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 2, i8 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmfreq_show, ptr @pwmfreq_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmctrl_show, ptr @pwmctrl_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmchan_show, ptr @pwmchan_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm1_stall_disable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.94, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stall_disable_show, ptr @stall_disable_store }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.95, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.96, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmfreq_show, ptr @pwmfreq_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.97, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmctrl_show, ptr @pwmctrl_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.98, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmchan_show, ptr @pwmchan_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.99, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.100, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm3_stall_disable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.101, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stall_disable_show, ptr @stall_disable_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_pwm_use_point2_pwm_at_crit = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.102, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_use_point2_pwm_at_crit_show, ptr @pwm_use_point2_pwm_at_crit_store }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adt7473_in_scaling = internal constant { [6 x [2 x i32]], [48 x i8] } { [6 x [2 x i32]] [[2 x i32] [i32 45, i32 94], [2 x i32] [i32 175, i32 525], [2 x i32] [i32 68, i32 71], [2 x i32] [i32 93, i32 47], [2 x i32] [i32 120, i32 20], [2 x i32] [i32 45, i32 45]], [48 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_max\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in1_min\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_max\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in2_min\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_alarm\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp1_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp1_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@autorange_table = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 2000, i32 2500, i32 3330, i32 4000, i32 5000, i32 6670, i32 8000, i32 10000, i32 13330, i32 16000, i32 20000, i32 26670, i32 32000, i32 40000, i32 53330, i32 80000], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_smoothing\00", [16 x i8] zeroinitializer }, align 32
@ad7475_st_map = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 37500, i32 18800, i32 12500, i32 7500, i32 4700, i32 3100, i32 1600, i32 800], [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_min\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp2_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_smoothing\00", [16 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_min\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point1_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"temp3_auto_point2_temp\00", [41 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_smoothing\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan1_min\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan2_min\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan3_min\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm1\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm1_freq\00", [22 x i8] zeroinitializer }, align 32
@pwmfreq_table = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 11, i32 14, i32 22, i32 29, i32 35, i32 44, i32 58, i32 88, i32 22500], [60 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm1_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm1_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm1_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm1_stall_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm3\00", [27 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm3_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm3_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm3_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm3_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm3_stall_disable\00", [45 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pwm_use_point2_pwm_at_crit\00", [37 x i8] zeroinitializer }, align 32
@fan4_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.103, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.104, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr @tach_store }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.105, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tach_show, ptr null }, i8 3, i8 9 }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fan4_min\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@pwm2_attrs = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_stall_disable, ptr null], [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2 = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.106, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_freq = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.107, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmfreq_show, ptr @pwmfreq_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_enable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.108, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmctrl_show, ptr @pwmctrl_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_channels_temp = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.109, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwmchan_show, ptr @pwmchan_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point1_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.110, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 1, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_auto_point2_pwm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.111, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @pwm_show, ptr @pwm_store }, i8 1, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_pwm2_stall_disable = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.112, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @stall_disable_show, ptr @stall_disable_store }, i8 1, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pwm2\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pwm2_freq\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pwm2_enable\00", [20 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pwm2_auto_channels_temp\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point1_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pwm2_auto_point2_pwm\00", [43 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pwm2_stall_disable\00", [45 x i8] zeroinitializer }, align 32
@in0_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.113, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.114, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 0, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.115, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 0, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in0_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.116, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 0, i8 9 }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_input\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_max\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in0_min\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in0_alarm\00", [22 x i8] zeroinitializer }, align 32
@in3_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.117, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.118, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.119, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.120, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 3, i8 9 }, [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_max\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in3_min\00", [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_alarm\00", [22 x i8] zeroinitializer }, align 32
@in4_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.121, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 4, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.122, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 4, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.123, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 4, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.124, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 8, i8 9 }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_max\00", [24 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in4_min\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_alarm\00", [22 x i8] zeroinitializer }, align 32
@in5_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_alarm, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_input = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.125, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 5, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.126, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 5, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_min = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.127, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr @voltage_store }, i8 5, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in5_alarm = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.128, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @voltage_show, ptr null }, i8 31, i8 9 }, [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_input\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_max\00", [24 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"in5_min\00", [24 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in5_alarm\00", [22 x i8] zeroinitializer }, align 32
@vid_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_cpu0_vid = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.129, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @cpu0_vid_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_vrm = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.130, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @vrm_show, ptr @vrm_store }, [36 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cpu0_vid\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vrm\00", [28 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7473\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7476\00", [24 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7490\00", [24 x i8] zeroinitializer }, align 32
@adt7475_detect.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.8, ptr @.str.135, i8 1, i8 78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adt7475_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Couldn't detect an ADT7473/75/76/90 part at 0x%02x\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.pwmctrl_store = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00 \00@\00\A0\C0", [25 x i8] zeroinitializer }, align 32
@switch.table.pwmchan_store = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00 \00@\00\A0\C0", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.136 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@__sancov_gen_cov_switch_values.138 = internal global [5 x i64] [i64 3, i64 32, i64 115, i64 117, i64 118]
@__sancov_gen_cov_switch_values.139 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 4, i64 7]
@__sancov_gen_cov_switch_values.140 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 6, i64 9, i64 10]
@__sancov_gen_cov_switch_values.142 = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 6]
@__sancov_gen_cov_switch_values.143 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@__sancov_gen_cov_switch_values.147 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.148 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.149 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.150 = private unnamed_addr constant [15 x i8] c"adt7475_driver\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1725, i32 26 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1728, i32 11 }
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"adt7475_of_match\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 169, i32 49 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"adt7475_id\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 160, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 156, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1545, i32 28 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1546, i32 15 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1547, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1548, i32 15 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1549, i32 15 }
@___asan_gen_.180 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1562, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1633, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1652, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"adt7475_attr_group\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1302, i32 37 }
@___asan_gen_.213 = private unnamed_addr constant [16 x i8] c"fan4_attr_group\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1303, i32 37 }
@___asan_gen_.216 = private unnamed_addr constant [16 x i8] c"pwm2_attr_group\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1304, i32 37 }
@___asan_gen_.219 = private unnamed_addr constant [15 x i8] c"in0_attr_group\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1305, i32 37 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"in3_attr_group\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1306, i32 37 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"in4_attr_group\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1307, i32 37 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"in5_attr_group\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1308, i32 37 }
@___asan_gen_.231 = private unnamed_addr constant [15 x i8] c"vid_attr_group\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1309, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1701, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1704, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1711, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1486, i32 28 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1488, i32 28 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1490, i32 28 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1492, i32 28 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1519, i32 7 }
@___asan_gen_.294 = private unnamed_addr constant [14 x i8] c"adt7475_attrs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1178, i32 26 }
@___asan_gen_.297 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_max\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in1_min\00", align 1
@___asan_gen_.306 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_alarm\00", align 1
@___asan_gen_.309 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.312 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_max\00", align 1
@___asan_gen_.315 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in2_min\00", align 1
@___asan_gen_.318 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_alarm\00", align 1
@___asan_gen_.321 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.324 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.327 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.330 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp1_offset\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point1_temp\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp1_auto_point2_temp\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.348 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.351 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_smoothing\00", align 1
@___asan_gen_.354 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.360 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.363 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_min\00", align 1
@___asan_gen_.366 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.369 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point1_temp\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp2_auto_point2_temp\00", align 1
@___asan_gen_.375 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.378 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_crit_hyst\00", align 1
@___asan_gen_.381 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_smoothing\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.393 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.396 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_min\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.402 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point1_temp\00", align 1
@___asan_gen_.405 = private unnamed_addr constant [39 x i8] c"sensor_dev_attr_temp3_auto_point2_temp\00", align 1
@___asan_gen_.408 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.411 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_crit_hyst\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_smoothing\00", align 1
@___asan_gen_.417 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.420 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan1_min\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.429 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan2_min\00", align 1
@___asan_gen_.432 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.435 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.438 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan3_min\00", align 1
@___asan_gen_.441 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.444 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm1\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm1_freq\00", align 1
@___asan_gen_.450 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm1_enable\00", align 1
@___asan_gen_.453 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm1_auto_channels_temp\00", align 1
@___asan_gen_.456 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point1_pwm\00", align 1
@___asan_gen_.459 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm1_auto_point2_pwm\00", align 1
@___asan_gen_.462 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm1_stall_disable\00", align 1
@___asan_gen_.465 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm3\00", align 1
@___asan_gen_.468 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm3_freq\00", align 1
@___asan_gen_.471 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm3_enable\00", align 1
@___asan_gen_.474 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm3_auto_channels_temp\00", align 1
@___asan_gen_.477 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point1_pwm\00", align 1
@___asan_gen_.480 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm3_auto_point2_pwm\00", align 1
@___asan_gen_.483 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm3_stall_disable\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [36 x i8] c"dev_attr_pwm_use_point2_pwm_at_crit\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1086, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 338, i32 23 }
@___asan_gen_.495 = private unnamed_addr constant [19 x i8] c"adt7473_in_scaling\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 275, i32 18 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1087, i32 8 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1088, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1089, i32 8 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1090, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1091, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1092, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1093, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1106, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1107, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1108, i32 8 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1109, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1110, i32 8 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1111, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1112, i32 8 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1113, i32 8 }
@___asan_gen_.543 = private unnamed_addr constant [16 x i8] c"autorange_table\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 626, i32 18 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1114, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1115, i32 8 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1116, i32 8 }
@___asan_gen_.555 = private unnamed_addr constant [14 x i8] c"ad7475_st_map\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 541, i32 18 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 568, i32 23 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1117, i32 8 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1118, i32 8 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1119, i32 8 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1120, i32 8 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1121, i32 8 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1122, i32 8 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1123, i32 8 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1124, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1125, i32 8 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1126, i32 8 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1127, i32 8 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1129, i32 8 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1128, i32 8 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1130, i32 8 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1131, i32 8 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1132, i32 8 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1133, i32 8 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1134, i32 8 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1135, i32 8 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1136, i32 8 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1137, i32 8 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1138, i32 8 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1139, i32 8 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1140, i32 8 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1141, i32 8 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1142, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1143, i32 8 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1144, i32 8 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1145, i32 8 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1146, i32 8 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1150, i32 8 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1151, i32 8 }
@___asan_gen_.657 = private unnamed_addr constant [14 x i8] c"pwmfreq_table\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 964, i32 18 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1152, i32 8 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1153, i32 8 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1154, i32 8 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1155, i32 8 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1156, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1164, i32 8 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1165, i32 8 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1166, i32 8 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1167, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1168, i32 8 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1169, i32 8 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1170, i32 8 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1173, i32 8 }
@___asan_gen_.699 = private unnamed_addr constant [11 x i8] c"fan4_attrs\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1246, i32 26 }
@___asan_gen_.702 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.705 = private unnamed_addr constant [25 x i8] c"sensor_dev_attr_fan4_min\00", align 1
@___asan_gen_.708 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1147, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1148, i32 8 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1149, i32 8 }
@___asan_gen_.720 = private unnamed_addr constant [11 x i8] c"pwm2_attrs\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1253, i32 26 }
@___asan_gen_.723 = private unnamed_addr constant [21 x i8] c"sensor_dev_attr_pwm2\00", align 1
@___asan_gen_.726 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_pwm2_freq\00", align 1
@___asan_gen_.729 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_pwm2_enable\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [40 x i8] c"sensor_dev_attr_pwm2_auto_channels_temp\00", align 1
@___asan_gen_.735 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point1_pwm\00", align 1
@___asan_gen_.738 = private unnamed_addr constant [37 x i8] c"sensor_dev_attr_pwm2_auto_point2_pwm\00", align 1
@___asan_gen_.741 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_pwm2_stall_disable\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1157, i32 8 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1158, i32 8 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1159, i32 8 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1160, i32 8 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1161, i32 8 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1162, i32 8 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1163, i32 8 }
@___asan_gen_.765 = private unnamed_addr constant [10 x i8] c"in0_attrs\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1264, i32 26 }
@___asan_gen_.768 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_input\00", align 1
@___asan_gen_.771 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_max\00", align 1
@___asan_gen_.774 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in0_min\00", align 1
@___asan_gen_.777 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in0_alarm\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1082, i32 8 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1083, i32 8 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1084, i32 8 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1085, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant [10 x i8] c"in3_attrs\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1272, i32 26 }
@___asan_gen_.795 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.798 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_max\00", align 1
@___asan_gen_.801 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in3_min\00", align 1
@___asan_gen_.804 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_alarm\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1094, i32 8 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1095, i32 8 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1096, i32 8 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1097, i32 8 }
@___asan_gen_.819 = private unnamed_addr constant [10 x i8] c"in4_attrs\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1280, i32 26 }
@___asan_gen_.822 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.825 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_max\00", align 1
@___asan_gen_.828 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in4_min\00", align 1
@___asan_gen_.831 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_alarm\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1098, i32 8 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1099, i32 8 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1100, i32 8 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1101, i32 8 }
@___asan_gen_.846 = private unnamed_addr constant [10 x i8] c"in5_attrs\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1288, i32 26 }
@___asan_gen_.849 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_input\00", align 1
@___asan_gen_.852 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_max\00", align 1
@___asan_gen_.855 = private unnamed_addr constant [24 x i8] c"sensor_dev_attr_in5_min\00", align 1
@___asan_gen_.858 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in5_alarm\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1102, i32 8 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1103, i32 8 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1104, i32 8 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1105, i32 8 }
@___asan_gen_.873 = private unnamed_addr constant [10 x i8] c"vid_attrs\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1296, i32 26 }
@___asan_gen_.876 = private unnamed_addr constant [18 x i8] c"dev_attr_cpu0_vid\00", align 1
@___asan_gen_.879 = private unnamed_addr constant [13 x i8] c"dev_attr_vrm\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1176, i32 8 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1175, i32 8 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1329, i32 10 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1333, i32 10 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1335, i32 10 }
@___asan_gen_.900 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.901 = private constant [27 x i8] c"../drivers/hwmon/adt7475.c\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.901, i32 1337, i32 3 }
@___asan_gen_.903 = private unnamed_addr constant [27 x i8] c"switch.table.pwmctrl_store\00", align 1
@___asan_gen_.904 = private unnamed_addr constant [27 x i8] c"switch.table.pwmchan_store\00", align 1
@llvm.compiler.used = appending global [265 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_adt7475_driver_exit, ptr @__initcall__kmod_adt7475__329_1925_adt7475_driver_init6, ptr @adt7475_driver_exit, ptr @adt7475_probe._entry, ptr @adt7475_probe._entry.11, ptr @adt7475_probe._entry.14, ptr @adt7475_probe._entry.18, ptr @adt7475_probe._entry.27, ptr @adt7475_probe._entry_ptr, ptr @adt7475_probe._entry_ptr.13, ptr @adt7475_probe._entry_ptr.17, ptr @adt7475_probe._entry_ptr.20, ptr @adt7475_probe._entry_ptr.29, ptr @adt7475_driver, ptr @.str, ptr @adt7475_of_match, ptr @adt7475_id, ptr @normal_i2c, ptr @adt7475_probe.names, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @adt7475_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @adt7475_attr_group, ptr @fan4_attr_group, ptr @pwm2_attr_group, ptr @in0_attr_group, ptr @in3_attr_group, ptr @in4_attr_group, ptr @in5_attr_group, ptr @vid_attr_group, ptr @.str.15, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @adt7475_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_max, ptr @sensor_dev_attr_in1_min, ptr @sensor_dev_attr_in1_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_max, ptr @sensor_dev_attr_in2_min, ptr @sensor_dev_attr_in2_alarm, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_offset, ptr @sensor_dev_attr_temp1_auto_point1_temp, ptr @sensor_dev_attr_temp1_auto_point2_temp, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_smoothing, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_min, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp2_auto_point1_temp, ptr @sensor_dev_attr_temp2_auto_point2_temp, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_hyst, ptr @sensor_dev_attr_temp2_smoothing, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_min, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp3_auto_point1_temp, ptr @sensor_dev_attr_temp3_auto_point2_temp, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_hyst, ptr @sensor_dev_attr_temp3_smoothing, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan1_min, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan2_min, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan3_min, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_pwm1, ptr @sensor_dev_attr_pwm1_freq, ptr @sensor_dev_attr_pwm1_enable, ptr @sensor_dev_attr_pwm1_auto_channels_temp, ptr @sensor_dev_attr_pwm1_auto_point1_pwm, ptr @sensor_dev_attr_pwm1_auto_point2_pwm, ptr @sensor_dev_attr_pwm1_stall_disable, ptr @sensor_dev_attr_pwm3, ptr @sensor_dev_attr_pwm3_freq, ptr @sensor_dev_attr_pwm3_enable, ptr @sensor_dev_attr_pwm3_auto_channels_temp, ptr @sensor_dev_attr_pwm3_auto_point1_pwm, ptr @sensor_dev_attr_pwm3_auto_point2_pwm, ptr @sensor_dev_attr_pwm3_stall_disable, ptr @dev_attr_pwm_use_point2_pwm_at_crit, ptr @.str.37, ptr @.str.38, ptr @adt7473_in_scaling, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @autorange_table, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @ad7475_st_map, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @pwmfreq_table, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @fan4_attrs, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan4_min, ptr @sensor_dev_attr_fan4_alarm, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @pwm2_attrs, ptr @sensor_dev_attr_pwm2, ptr @sensor_dev_attr_pwm2_freq, ptr @sensor_dev_attr_pwm2_enable, ptr @sensor_dev_attr_pwm2_auto_channels_temp, ptr @sensor_dev_attr_pwm2_auto_point1_pwm, ptr @sensor_dev_attr_pwm2_auto_point2_pwm, ptr @sensor_dev_attr_pwm2_stall_disable, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @in0_attrs, ptr @sensor_dev_attr_in0_input, ptr @sensor_dev_attr_in0_max, ptr @sensor_dev_attr_in0_min, ptr @sensor_dev_attr_in0_alarm, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @in3_attrs, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in3_max, ptr @sensor_dev_attr_in3_min, ptr @sensor_dev_attr_in3_alarm, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @in4_attrs, ptr @sensor_dev_attr_in4_input, ptr @sensor_dev_attr_in4_max, ptr @sensor_dev_attr_in4_min, ptr @sensor_dev_attr_in4_alarm, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @in5_attrs, ptr @sensor_dev_attr_in5_input, ptr @sensor_dev_attr_in5_max, ptr @sensor_dev_attr_in5_min, ptr @sensor_dev_attr_in5_alarm, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @vid_attrs, ptr @dev_attr_cpu0_vid, ptr @dev_attr_vrm, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @switch.table.pwmctrl_store, ptr @switch.table.pwmchan_store], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_of_match to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_id to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan4_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in0_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in4_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in5_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7475_attrs to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_smoothing to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_smoothing to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point1_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_auto_point2_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_smoothing to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm1_stall_disable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm3_stall_disable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_pwm_use_point2_pwm_at_crit to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7473_in_scaling to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @autorange_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ad7475_st_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwmfreq_table to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fan4_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm2_attrs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_freq to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_channels_temp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point1_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_auto_point2_pwm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_pwm2_stall_disable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in0_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in0_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in3_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in4_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in5_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vid_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_cpu0_vid to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_vrm to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pwmctrl_store to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.pwmchan_store to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7475_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adt7475_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adt7475_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @adt7475_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7475_probe(ptr noundef %client) #2 align 64 {
entry:
  %states.i = alloca [3 x i32], align 4
  %prop_value.i72.i = alloca i32, align 4
  %prop_value.i62.i = alloca i32, align 4
  %prop_value.i52.i = alloca i32, align 4
  %prop_value.i42.i = alloca i32, align 4
  %prop_value.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @i2c_match_id(ptr noundef nonnull @adt7475_id, ptr noundef %client) #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 268, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @adt7475_probe.__key) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  %4 = ptrtoint ptr %call6 to i32
  br label %if.end7

if.else:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %driver_data, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then4
  %chip.0 = phi i32 [ %4, %if.then4 ], [ %6, %if.else ]
  %7 = zext i32 %chip.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %chip.0, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb9
  ]

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %has_voltage = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %8 = ptrtoint ptr %has_voltage to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 14, ptr %has_voltage, align 4
  %call8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  %and = and i32 %call8, 7
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end7
  %has_voltage10 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %has_voltage10 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 62, ptr %has_voltage10, align 4
  %call11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  %and12 = and i32 %call11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and12)
  %cmp13 = icmp eq i32 %and12, 3
  br i1 %cmp13, label %if.then14, label %sw.bb9.sw.epilog_crit_edge

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then14:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 18) #9
  %add = add i32 %call15, 3
  br label %sw.epilog

sw.default:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %has_voltage17 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %has_voltage17 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 6, ptr %has_voltage17, align 4
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  %and19 = and i32 %call18, 7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.then14, %sw.bb9.sw.epilog_crit_edge, %sw.bb
  %revision.0 = phi i32 [ %and19, %sw.default ], [ %add, %if.then14 ], [ %and12, %sw.bb9.sw.epilog_crit_edge ], [ %and, %sw.bb ]
  %call20 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 120) #9
  %and22 = and i32 %call20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.then24, label %sw.epilog.if.end25_crit_edge

sw.epilog.if.end25_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then24:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %has_pwm2 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %11 = ptrtoint ptr %has_pwm2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %has_pwm2, align 2
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %has_pwm2, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %sw.epilog.if.end25_crit_edge
  %driver_data26 = getelementptr inbounds %struct.i2c_device_id, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %driver_data26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27 = icmp eq i32 %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %revision.0)
  %cmp29 = icmp sgt i32 %revision.0, 0
  %or.cond = select i1 %cmp27, i1 %cmp29, i1 false
  br i1 %or.cond, label %if.then31, label %if.end25.if.end40_crit_edge

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %has_pwm232 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %has_pwm232 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load33 = load i8, ptr %has_pwm232, align 2
  %bf.set39 = xor i8 %bf.load33, -128
  store i8 %bf.set39, ptr %has_pwm232, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then31, %if.end25.if.end40_crit_edge
  %call41 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 125) #9
  %conv42 = trunc i32 %call41 to i8
  %config4 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 5
  %15 = ptrtoint ptr %config4 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv42, ptr %config4, align 2
  %and45 = and i32 %call41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 0
  br i1 %cmp46, label %if.then48, label %if.end40.if.end52_crit_edge

if.end40.if.end52_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then48:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %has_fan4 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %16 = ptrtoint ptr %has_fan4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load49 = load i8, ptr %has_fan4, align 2
  %bf.set51 = or i8 %bf.load49, 64
  store i8 %bf.set51, ptr %has_fan4, align 2
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %if.end40.if.end52_crit_edge
  %17 = ptrtoint ptr %driver_data26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %driver_data26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %18)
  %cmp54 = icmp eq i32 %18, 3
  br i1 %cmp54, label %if.then56, label %if.end52.if.end72_crit_edge

if.end52.if.end72_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then56:                                        ; preds = %if.end52
  %19 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %config4, align 2
  %21 = and i8 %20, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %21)
  %cmp60 = icmp eq i8 %21, 1
  %and64 = and i32 %call20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %or.cond462 = select i1 %cmp60, i1 %tobool65.not, i1 false
  br i1 %or.cond462, label %if.then66, label %if.then56.if.end72_crit_edge

if.then56.if.end72_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then66:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #11
  %has_fan467 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %22 = ptrtoint ptr %has_fan467 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load68 = load i8, ptr %has_fan467, align 2
  %bf.set70 = or i8 %bf.load68, 64
  store i8 %bf.set70, ptr %has_fan467, align 2
  br label %if.end72

if.end72:                                         ; preds = %if.then66, %if.then56.if.end72_crit_edge, %if.end52.if.end72_crit_edge
  %23 = ptrtoint ptr %driver_data26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data26, align 4
  %25 = and i32 %24, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %switch464 = icmp eq i32 %25, 2
  br i1 %switch464, label %if.then79, label %if.end72.if.end121_crit_edge

if.end72.if.end121_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then79:                                        ; preds = %if.end72
  %and81 = and i32 %call20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.then79.if.then89_crit_edge, label %lor.lhs.false83

if.then79.if.then89_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

lor.lhs.false83:                                  ; preds = %if.then79
  %26 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config4, align 2
  %28 = and i8 %27, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %28)
  %cmp87 = icmp eq i8 %28, 1
  br i1 %cmp87, label %lor.lhs.false83.if.then89_crit_edge, label %lor.lhs.false83.if.end94_crit_edge

lor.lhs.false83.if.end94_crit_edge:               ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

lor.lhs.false83.if.then89_crit_edge:              ; preds = %lor.lhs.false83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then89

if.then89:                                        ; preds = %lor.lhs.false83.if.then89_crit_edge, %if.then79.if.then89_crit_edge
  %has_voltage90 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %29 = ptrtoint ptr %has_voltage90 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %has_voltage90, align 4
  %31 = or i8 %30, 1
  store i8 %31, ptr %has_voltage90, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then89, %lor.lhs.false83.if.end94_crit_edge
  %32 = ptrtoint ptr %driver_data26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr = load i32, ptr %driver_data26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp96 = icmp eq i32 %.pr, 2
  br i1 %cmp96, label %if.then98, label %if.end94.if.end121_crit_edge

if.end94.if.end121_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end121

if.then98:                                        ; preds = %if.end94
  %call99 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 67) #9
  %and102 = and i32 %call99, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.then98.if.end109_crit_edge

if.then98.if.end109_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end109

if.then104:                                       ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #11
  %has_voltage105 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %33 = ptrtoint ptr %has_voltage105 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %has_voltage105, align 4
  %35 = or i8 %34, 16
  store i8 %35, ptr %has_voltage105, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.then98.if.end109_crit_edge
  %call110 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 124) #9
  %36 = trunc i32 %call110 to i8
  %has_vid = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %37 = ptrtoint ptr %has_vid to i32
  call void @__asan_load1_noabort(i32 %37)
  %bf.load116 = load i8, ptr %has_vid, align 2
  %38 = shl i8 %36, 1
  %39 = and i8 %38, 32
  %bf.clear119 = and i8 %bf.load116, -33
  %40 = or i8 %39, %bf.clear119
  %bf.set120 = xor i8 %40, 32
  store i8 %bf.set120, ptr %has_vid, align 2
  br label %if.end121

if.end121:                                        ; preds = %if.end109, %if.end94.if.end121_crit_edge, %if.end72.if.end121_crit_edge
  %call122 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 115) #9
  %conv123 = trunc i32 %call122 to i8
  %config2 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 4
  %41 = ptrtoint ptr %config2 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv123, ptr %config2, align 1
  %42 = zext i32 %chip.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %chip.0, label %if.end121.if.end131_crit_edge [
    i32 2, label %if.end121.if.then.i_crit_edge
    i32 3, label %if.end121.if.then.i_crit_edge477
    i32 0, label %if.end121.if.then15.i_crit_edge
    i32 1, label %if.end121.if.then15.i_crit_edge478
  ]

if.end121.if.then15.i_crit_edge478:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end121.if.then15.i_crit_edge:                  ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then15.i

if.end121.if.then.i_crit_edge477:                 ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end121.if.then.i_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end121.if.end131_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

if.then.i:                                        ; preds = %if.end121.if.then.i_crit_edge, %if.end121.if.then.i_crit_edge477
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_value.i.i) #9
  %43 = ptrtoint ptr %prop_value.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %prop_value.i.i, align 4
  %44 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %of_node, align 8
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %45, ptr noundef nonnull @.str.32, ptr noundef nonnull %prop_value.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i.set_property_bit.exit.i_crit_edge

if.then.i.set_property_bit.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_property_bit.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %prop_value.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prop_value.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool1.not.i.i = icmp eq i32 %47, 0
  %48 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %config4, align 1
  %conv8.i.i = and i8 %49, -17
  %masksel85.i = select i1 %tobool1.not.i.i, i8 0, i8 16
  %conv4.sink.i.i = or i8 %conv8.i.i, %masksel85.i
  store i8 %conv4.sink.i.i, ptr %config4, align 1
  br label %set_property_bit.exit.i

set_property_bit.exit.i:                          ; preds = %if.then.i.i, %if.then.i.set_property_bit.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_value.i.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_value.i42.i) #9
  %50 = ptrtoint ptr %prop_value.i42.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %prop_value.i42.i, align 4
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %call.i.i.i44.i = call i32 @of_property_read_variable_u32_array(ptr noundef %52, ptr noundef nonnull @.str.33, ptr noundef nonnull %prop_value.i42.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i44.i)
  %tobool.not.i45.i = icmp sgt i32 %call.i.i.i44.i, -1
  br i1 %tobool.not.i45.i, label %if.then.i50.i, label %set_property_bit.exit.i.set_property_bit.exit51.i_crit_edge

set_property_bit.exit.i.set_property_bit.exit51.i_crit_edge: ; preds = %set_property_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_property_bit.exit51.i

if.then.i50.i:                                    ; preds = %set_property_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %prop_value.i42.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %prop_value.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool1.not.i46.i = icmp eq i32 %54, 0
  %55 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %config4, align 1
  %conv8.i48.i = and i8 %56, -33
  %masksel84.i = select i1 %tobool1.not.i46.i, i8 0, i8 32
  %conv4.sink.i49.i = or i8 %conv8.i48.i, %masksel84.i
  store i8 %conv4.sink.i49.i, ptr %config4, align 1
  br label %set_property_bit.exit51.i

set_property_bit.exit51.i:                        ; preds = %if.then.i50.i, %set_property_bit.exit.i.set_property_bit.exit51.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_value.i42.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_value.i52.i) #9
  %57 = ptrtoint ptr %prop_value.i52.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %prop_value.i52.i, align 4
  %58 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %of_node, align 8
  %call.i.i.i54.i = call i32 @of_property_read_variable_u32_array(ptr noundef %59, ptr noundef nonnull @.str.34, ptr noundef nonnull %prop_value.i52.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i54.i)
  %tobool.not.i55.i = icmp sgt i32 %call.i.i.i54.i, -1
  br i1 %tobool.not.i55.i, label %if.then.i60.i, label %set_property_bit.exit51.i.set_property_bit.exit61.i_crit_edge

set_property_bit.exit51.i.set_property_bit.exit61.i_crit_edge: ; preds = %set_property_bit.exit51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_property_bit.exit61.i

if.then.i60.i:                                    ; preds = %set_property_bit.exit51.i
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %prop_value.i52.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %prop_value.i52.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool1.not.i56.i = icmp eq i32 %61, 0
  %62 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %config4, align 1
  %conv8.i58.i = and i8 %63, -65
  %masksel83.i = select i1 %tobool1.not.i56.i, i8 0, i8 64
  %conv4.sink.i59.i = or i8 %conv8.i58.i, %masksel83.i
  store i8 %conv4.sink.i59.i, ptr %config4, align 1
  br label %set_property_bit.exit61.i

set_property_bit.exit61.i:                        ; preds = %if.then.i60.i, %set_property_bit.exit51.i.set_property_bit.exit61.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_value.i52.i) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_value.i62.i) #9
  %64 = ptrtoint ptr %prop_value.i62.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %prop_value.i62.i, align 4
  %65 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %of_node, align 8
  %call.i.i.i64.i = call i32 @of_property_read_variable_u32_array(ptr noundef %66, ptr noundef nonnull @.str.35, ptr noundef nonnull %prop_value.i62.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i64.i)
  %tobool.not.i65.i = icmp sgt i32 %call.i.i.i64.i, -1
  br i1 %tobool.not.i65.i, label %if.then.i70.i, label %set_property_bit.exit61.i.set_property_bit.exit71.i_crit_edge

set_property_bit.exit61.i.set_property_bit.exit71.i_crit_edge: ; preds = %set_property_bit.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_property_bit.exit71.i

if.then.i70.i:                                    ; preds = %set_property_bit.exit61.i
  call void @__sanitizer_cov_trace_pc() #11
  %67 = ptrtoint ptr %prop_value.i62.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %prop_value.i62.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool1.not.i66.i = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %config4, align 1
  %conv8.i68.i = and i8 %70, 127
  %masksel82.i = select i1 %tobool1.not.i66.i, i8 0, i8 -128
  %conv4.sink.i69.i = or i8 %conv8.i68.i, %masksel82.i
  store i8 %conv4.sink.i69.i, ptr %config4, align 1
  br label %set_property_bit.exit71.i

set_property_bit.exit71.i:                        ; preds = %if.then.i70.i, %set_property_bit.exit61.i.set_property_bit.exit71.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_value.i62.i) #9
  %71 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %config4, align 2
  %call9.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 125, i8 noundef zeroext %72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %set_property_bit.exit71.i.do.end129_crit_edge, label %set_property_bit.exit71.i.if.end131_crit_edge

set_property_bit.exit71.i.if.end131_crit_edge:    ; preds = %set_property_bit.exit71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

set_property_bit.exit71.i.do.end129_crit_edge:    ; preds = %set_property_bit.exit71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end129

if.then15.i:                                      ; preds = %if.end121.if.then15.i_crit_edge, %if.end121.if.then15.i_crit_edge478
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_value.i72.i) #9
  %73 = ptrtoint ptr %prop_value.i72.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %prop_value.i72.i, align 4
  %74 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %of_node, align 8
  %call.i.i.i74.i = call i32 @of_property_read_variable_u32_array(ptr noundef %75, ptr noundef nonnull @.str.33, ptr noundef nonnull %prop_value.i72.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i74.i)
  %tobool.not.i75.i = icmp sgt i32 %call.i.i.i74.i, -1
  br i1 %tobool.not.i75.i, label %if.then.i80.i, label %if.then15.i.set_property_bit.exit81.i_crit_edge

if.then15.i.set_property_bit.exit81.i_crit_edge:  ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %set_property_bit.exit81.i

if.then.i80.i:                                    ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = ptrtoint ptr %prop_value.i72.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %prop_value.i72.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool1.not.i76.i = icmp eq i32 %77, 0
  %78 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %config2, align 1
  %conv8.i78.i = and i8 %79, -33
  %masksel.i = select i1 %tobool1.not.i76.i, i8 0, i8 32
  %conv4.sink.i79.i = or i8 %conv8.i78.i, %masksel.i
  store i8 %conv4.sink.i79.i, ptr %config2, align 1
  br label %set_property_bit.exit81.i

set_property_bit.exit81.i:                        ; preds = %if.then.i80.i, %if.then15.i.set_property_bit.exit81.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_value.i72.i) #9
  %80 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %config2, align 1
  %call18.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 115, i8 noundef zeroext %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %set_property_bit.exit81.i.do.end129_crit_edge, label %set_property_bit.exit81.i.if.end131_crit_edge

set_property_bit.exit81.i.if.end131_crit_edge:    ; preds = %set_property_bit.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end131

set_property_bit.exit81.i.do.end129_crit_edge:    ; preds = %set_property_bit.exit81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end129

do.end129:                                        ; preds = %set_property_bit.exit81.i.do.end129_crit_edge, %set_property_bit.exit71.i.do.end129_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.6) #12
  br label %if.end131

if.end131:                                        ; preds = %do.end129, %set_property_bit.exit81.i.if.end131_crit_edge, %set_property_bit.exit71.i.if.end131_crit_edge, %if.end121.if.end131_crit_edge
  %82 = ptrtoint ptr %config2 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %config2, align 1
  %84 = and i8 %83, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool135.not = icmp eq i8 %84, 0
  br i1 %tobool135.not, label %if.else137, label %if.end131.if.end148_crit_edge

if.end131.if.end148_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end148

if.else137:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %config4, align 2
  %and140 = lshr i8 %86, 4
  %87 = and i8 %and140, 3
  %and143 = lshr i8 %86, 3
  %88 = and i8 %and143, 24
  %or145 = or i8 %87, %88
  br label %if.end148

if.end148:                                        ; preds = %if.else137, %if.end131.if.end148_crit_edge
  %.sink = phi i8 [ %or145, %if.else137 ], [ 27, %if.end131.if.end148_crit_edge ]
  %89 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 8
  %has_voltage149 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 7
  %90 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %has_voltage149, align 4
  %and153461 = and i8 %.sink, %91
  %92 = ptrtoint ptr %89 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %and153461, ptr %89, align 1
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 0)
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 1)
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 2)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %states.i) #9
  %93 = ptrtoint ptr %states.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %states.i, align 4, !annotation !415
  %94 = getelementptr inbounds [3 x i32], ptr %states.i, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %94, align 4, !annotation !415
  %96 = getelementptr inbounds [3 x i32], ptr %states.i, i32 0, i32 2
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -1, ptr %96, align 4, !annotation !415
  %98 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %99, ptr noundef nonnull @.str.36, ptr noundef nonnull %states.i, i32 noundef 3, i32 noundef 0) #9
  %100 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not.i, label %for.body.preheader.i, label %if.end148.adt7475_set_pwm_polarity.exit_crit_edge

if.end148.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

for.body.preheader.i:                             ; preds = %if.end148
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 92) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %for.body.preheader.i.adt7475_set_pwm_polarity.exit_crit_edge, label %if.end5.i

for.body.preheader.i.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

for.cond.i:                                       ; preds = %if.end5.i
  %call1.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1.i)
  %cmp2.1.i = icmp slt i32 %call1.1.i, 0
  br i1 %cmp2.1.i, label %for.cond.i.adt7475_set_pwm_polarity.exit_crit_edge, label %if.end5.1.i

for.cond.i.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

if.end5.1.i:                                      ; preds = %for.cond.i
  %101 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %94, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool7.not.1.i = icmp eq i32 %102, 0
  %103 = trunc i32 %call1.1.i to i8
  %conv10.1.i = and i8 %103, -17
  %masksel.1.i = select i1 %tobool7.not.1.i, i8 16, i8 0
  %val.0.1.i = or i8 %masksel.1.i, %conv10.1.i
  %call16.1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 93, i8 noundef zeroext %val.0.1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.1.i)
  %tobool17.not.1.i = icmp eq i32 %call16.1.i, 0
  br i1 %tobool17.not.1.i, label %for.cond.1.i, label %if.end5.1.i.adt7475_set_pwm_polarity.exit_crit_edge

if.end5.1.i.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %if.end5.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

for.cond.1.i:                                     ; preds = %if.end5.1.i
  %call1.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 94) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2.i)
  %cmp2.2.i = icmp slt i32 %call1.2.i, 0
  br i1 %cmp2.2.i, label %for.cond.1.i.adt7475_set_pwm_polarity.exit_crit_edge, label %if.end5.2.i

for.cond.1.i.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

if.end5.2.i:                                      ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool7.not.2.i = icmp eq i32 %105, 0
  %106 = trunc i32 %call1.2.i to i8
  %conv10.2.i = and i8 %106, -17
  %masksel.2.i = select i1 %tobool7.not.2.i, i8 16, i8 0
  %val.0.2.i = or i8 %masksel.2.i, %conv10.2.i
  %call16.2.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 94, i8 noundef zeroext %val.0.2.i) #9
  br label %adt7475_set_pwm_polarity.exit

if.end5.i:                                        ; preds = %for.body.preheader.i
  %107 = ptrtoint ptr %states.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %states.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool7.not.i = icmp eq i32 %108, 0
  %109 = trunc i32 %call1.i to i8
  %conv10.i = and i8 %109, -17
  %masksel.i465 = select i1 %tobool7.not.i, i8 16, i8 0
  %val.0.i = or i8 %masksel.i465, %conv10.i
  %call16.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 92, i8 noundef zeroext %val.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %for.cond.i, label %if.end5.i.adt7475_set_pwm_polarity.exit_crit_edge

if.end5.i.adt7475_set_pwm_polarity.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %adt7475_set_pwm_polarity.exit

adt7475_set_pwm_polarity.exit:                    ; preds = %if.end5.i.adt7475_set_pwm_polarity.exit_crit_edge, %if.end5.2.i, %for.cond.1.i.adt7475_set_pwm_polarity.exit_crit_edge, %if.end5.1.i.adt7475_set_pwm_polarity.exit_crit_edge, %for.cond.i.adt7475_set_pwm_polarity.exit_crit_edge, %for.body.preheader.i.adt7475_set_pwm_polarity.exit_crit_edge, %if.end148.adt7475_set_pwm_polarity.exit_crit_edge
  %retval.0.i466 = phi i32 [ %100, %if.end148.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call1.i, %for.body.preheader.i.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call16.i, %if.end5.i.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call1.1.i, %for.cond.i.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call16.1.i, %if.end5.1.i.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call1.2.i, %for.cond.1.i.adt7475_set_pwm_polarity.exit_crit_edge ], [ %call16.2.i, %if.end5.2.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %states.i) #9
  %110 = zext i32 %retval.0.i466 to i64
  call void @__sanitizer_cov_trace_switch(i64 %110, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %retval.0.i466, label %do.end165 [
    i32 0, label %adt7475_set_pwm_polarity.exit.if.end167_crit_edge
    i32 -22, label %adt7475_set_pwm_polarity.exit.if.end167_crit_edge479
  ]

adt7475_set_pwm_polarity.exit.if.end167_crit_edge479: ; preds = %adt7475_set_pwm_polarity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

adt7475_set_pwm_polarity.exit.if.end167_crit_edge: ; preds = %adt7475_set_pwm_polarity.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end167

do.end165:                                        ; preds = %adt7475_set_pwm_polarity.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #12
  br label %if.end167

if.end167:                                        ; preds = %do.end165, %adt7475_set_pwm_polarity.exit.if.end167_crit_edge, %adt7475_set_pwm_polarity.exit.if.end167_crit_edge479
  %chip.0.off = add i32 %chip.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %chip.0.off)
  %switch = icmp ult i32 %chip.0.off, 2
  br i1 %switch, label %sw.bb168, label %if.end167.sw.epilog174_crit_edge

if.end167.sw.epilog174_crit_edge:                 ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog174

sw.bb168:                                         ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #11
  %call169 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 64) #9
  %111 = trunc i32 %call169 to i8
  %conv171 = or i8 %111, 1
  %call172 = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 64, i8 noundef zeroext %conv171) #9
  br label %sw.epilog174

sw.epilog174:                                     ; preds = %sw.bb168, %if.end167.sw.epilog174_crit_edge
  %groups = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 21
  %112 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr @adt7475_attr_group, ptr %groups, align 4
  %has_fan4176 = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 9
  %113 = ptrtoint ptr %has_fan4176 to i32
  call void @__asan_load1_noabort(i32 %113)
  %bf.load177 = load i8, ptr %has_fan4176, align 2
  %114 = and i8 %bf.load177, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool180.not = icmp eq i8 %114, 0
  br i1 %tobool180.not, label %sw.epilog174.if.end185_crit_edge, label %if.then181

sw.epilog174.if.end185_crit_edge:                 ; preds = %sw.epilog174
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end185

if.then181:                                       ; preds = %sw.epilog174
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx184 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 1
  %115 = ptrtoint ptr %arrayidx184 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @fan4_attr_group, ptr %arrayidx184, align 4
  %116 = ptrtoint ptr %has_fan4176 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load187.pr = load i8, ptr %has_fan4176, align 2
  br label %if.end185

if.end185:                                        ; preds = %if.then181, %sw.epilog174.if.end185_crit_edge
  %bf.load187 = phi i8 [ %bf.load187.pr, %if.then181 ], [ %bf.load177, %sw.epilog174.if.end185_crit_edge ]
  %group_num.0 = phi i32 [ 2, %if.then181 ], [ 1, %sw.epilog174.if.end185_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load187)
  %tobool189.not = icmp sgt i8 %bf.load187, -1
  br i1 %tobool189.not, label %if.end185.if.end194_crit_edge, label %if.then190

if.end185.if.end194_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end194

if.then190:                                       ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #11
  %inc192 = add nuw nsw i32 %group_num.0, 1
  %arrayidx193 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.0
  %117 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr @pwm2_attr_group, ptr %arrayidx193, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then190, %if.end185.if.end194_crit_edge
  %group_num.1 = phi i32 [ %inc192, %if.then190 ], [ %group_num.0, %if.end185.if.end194_crit_edge ]
  %118 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %has_voltage149, align 4
  %120 = and i8 %119, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %120)
  %tobool198.not = icmp eq i8 %120, 0
  br i1 %tobool198.not, label %if.end194.if.end203_crit_edge, label %if.then199

if.end194.if.end203_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end203

if.then199:                                       ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #11
  %inc201 = add nuw nsw i32 %group_num.1, 1
  %arrayidx202 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.1
  %121 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @in0_attr_group, ptr %arrayidx202, align 4
  br label %if.end203

if.end203:                                        ; preds = %if.then199, %if.end194.if.end203_crit_edge
  %group_num.2 = phi i32 [ %inc201, %if.then199 ], [ %group_num.1, %if.end194.if.end203_crit_edge ]
  %122 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %has_voltage149, align 4
  %124 = and i8 %123, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool207.not = icmp eq i8 %124, 0
  br i1 %tobool207.not, label %if.end203.if.end212_crit_edge, label %if.then208

if.end203.if.end212_crit_edge:                    ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end212

if.then208:                                       ; preds = %if.end203
  call void @__sanitizer_cov_trace_pc() #11
  %inc210 = add nuw nsw i32 %group_num.2, 1
  %arrayidx211 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.2
  %125 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @in3_attr_group, ptr %arrayidx211, align 4
  br label %if.end212

if.end212:                                        ; preds = %if.then208, %if.end203.if.end212_crit_edge
  %group_num.3 = phi i32 [ %inc210, %if.then208 ], [ %group_num.2, %if.end203.if.end212_crit_edge ]
  %126 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %has_voltage149, align 4
  %128 = and i8 %127, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %tobool216.not = icmp eq i8 %128, 0
  br i1 %tobool216.not, label %if.end212.if.end221_crit_edge, label %if.then217

if.end212.if.end221_crit_edge:                    ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end221

if.then217:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #11
  %inc219 = add nuw nsw i32 %group_num.3, 1
  %arrayidx220 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.3
  %129 = ptrtoint ptr %arrayidx220 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @in4_attr_group, ptr %arrayidx220, align 4
  br label %if.end221

if.end221:                                        ; preds = %if.then217, %if.end212.if.end221_crit_edge
  %group_num.4 = phi i32 [ %inc219, %if.then217 ], [ %group_num.3, %if.end212.if.end221_crit_edge ]
  %130 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %has_voltage149, align 4
  %132 = and i8 %131, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool225.not = icmp eq i8 %132, 0
  br i1 %tobool225.not, label %if.end221.if.end230_crit_edge, label %if.then226

if.end221.if.end230_crit_edge:                    ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end230

if.then226:                                       ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #11
  %inc228 = add nuw nsw i32 %group_num.4, 1
  %arrayidx229 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.4
  %133 = ptrtoint ptr %arrayidx229 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @in5_attr_group, ptr %arrayidx229, align 4
  br label %if.end230

if.end230:                                        ; preds = %if.then226, %if.end221.if.end230_crit_edge
  %group_num.5 = phi i32 [ %inc228, %if.then226 ], [ %group_num.4, %if.end221.if.end230_crit_edge ]
  %134 = ptrtoint ptr %has_fan4176 to i32
  call void @__asan_load1_noabort(i32 %134)
  %bf.load232 = load i8, ptr %has_fan4176, align 2
  %135 = and i8 %bf.load232, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool235.not = icmp eq i8 %135, 0
  br i1 %tobool235.not, label %if.end230.if.end240_crit_edge, label %if.then236

if.end230.if.end240_crit_edge:                    ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end240

if.then236:                                       ; preds = %if.end230
  call void @__sanitizer_cov_trace_pc() #11
  %call237 = call zeroext i8 @vid_which_vrm() #9
  %vrm = getelementptr inbounds %struct.adt7475_data, ptr %call.i, i32 0, i32 20
  %136 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %call237, ptr %vrm, align 2
  %arrayidx239 = getelementptr %struct.adt7475_data, ptr %call.i, i32 0, i32 21, i32 %group_num.5
  %137 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @vid_attr_group, ptr %arrayidx239, align 4
  br label %if.end240

if.end240:                                        ; preds = %if.then236, %if.end230.if.end240_crit_edge
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call244 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef %groups) #9
  %cmp.i = icmp ugt ptr %call244, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then246, label %do.end251

if.then246:                                       ; preds = %if.end240
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %call244 to i32
  br label %cleanup

do.end251:                                        ; preds = %if.end240
  %139 = ptrtoint ptr %driver_data26 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %driver_data26, align 4
  %arrayidx254 = getelementptr [4 x ptr], ptr @adt7475_probe.names, i32 0, i32 %140
  %141 = ptrtoint ptr %arrayidx254 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx254, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %142, i32 noundef %revision.0) #12
  %143 = ptrtoint ptr %has_voltage149 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %has_voltage149, align 4
  %145 = and i8 %144, 17
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool258.not = icmp eq i8 %145, 0
  br i1 %tobool258.not, label %lor.lhs.false259, label %do.end251.do.end275_crit_edge

do.end251.do.end275_crit_edge:                    ; preds = %do.end251
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end275

lor.lhs.false259:                                 ; preds = %do.end251
  %146 = ptrtoint ptr %has_fan4176 to i32
  call void @__asan_load1_noabort(i32 %146)
  %bf.load261 = load i8, ptr %has_fan4176, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.load261)
  %147 = icmp ult i8 %bf.load261, 64
  br i1 %147, label %lor.lhs.false259.if.end306_crit_edge, label %lor.lhs.false259.do.end275_crit_edge

lor.lhs.false259.do.end275_crit_edge:             ; preds = %lor.lhs.false259
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end275

lor.lhs.false259.if.end306_crit_edge:             ; preds = %lor.lhs.false259
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end306

do.end275:                                        ; preds = %lor.lhs.false259.do.end275_crit_edge, %do.end251.do.end275_crit_edge
  %conv278 = zext i8 %144 to i32
  %and279 = and i32 %conv278, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and279)
  %tobool280.not = icmp eq i32 %and279, 0
  %cond = select i1 %tobool280.not, ptr @.str.22, ptr @.str.21
  %and283 = and i32 %conv278, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and283)
  %tobool284.not = icmp eq i32 %and283, 0
  %cond285 = select i1 %tobool284.not, ptr @.str.22, ptr @.str.23
  %148 = ptrtoint ptr %has_fan4176 to i32
  call void @__asan_load1_noabort(i32 %148)
  %bf.load287 = load i8, ptr %has_fan4176, align 2
  %149 = and i8 %bf.load287, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool291.not = icmp eq i8 %149, 0
  %cond292 = select i1 %tobool291.not, ptr @.str.22, ptr @.str.24
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load287)
  %tobool297.not = icmp sgt i8 %bf.load287, -1
  %cond298 = select i1 %tobool297.not, ptr @.str.22, ptr @.str.25
  %150 = and i8 %bf.load287, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %150)
  %tobool304.not = icmp eq i8 %150, 0
  %cond305 = select i1 %tobool304.not, ptr @.str.22, ptr @.str.26
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull %cond, ptr noundef nonnull %cond285, ptr noundef nonnull %cond292, ptr noundef nonnull %cond298, ptr noundef nonnull %cond305) #12
  br label %if.end306

if.end306:                                        ; preds = %do.end275, %lor.lhs.false259.if.end306_crit_edge
  %151 = ptrtoint ptr %89 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %89, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool308.not = icmp eq i8 %152, 0
  br i1 %tobool308.not, label %if.end306.if.end334_crit_edge, label %do.end312

if.end306.if.end334_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end334

do.end312:                                        ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #11
  %conv315 = zext i8 %152 to i32
  %and316 = and i32 %conv315, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  %cond318 = select i1 %tobool317.not, ptr @.str.22, ptr @.str.21
  %and321 = and i32 %conv315, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and321)
  %tobool322.not = icmp eq i32 %and321, 0
  %cond323 = select i1 %tobool322.not, ptr @.str.22, ptr @.str.30
  %and326 = and i32 %conv315, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and326)
  %tobool327.not = icmp eq i32 %and326, 0
  %cond328 = select i1 %tobool327.not, ptr @.str.22, ptr @.str.31
  %and331 = and i32 %conv315, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and331)
  %tobool332.not = icmp eq i32 %and331, 0
  %cond333 = select i1 %tobool332.not, ptr @.str.22, ptr @.str.23
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.28, ptr noundef nonnull %cond318, ptr noundef nonnull %cond323, ptr noundef nonnull %cond328, ptr noundef nonnull %cond333) #12
  br label %if.end334

if.end334:                                        ; preds = %do.end312, %if.end306.if.end334_crit_edge
  %153 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i467 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 125) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i467)
  %cmp.i468 = icmp slt i32 %call1.i467, 0
  br i1 %cmp.i468, label %if.end334.cleanup_crit_edge, label %if.end.i

if.end334.cleanup_crit_edge:                      ; preds = %if.end334
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end334
  %conv.i = trunc i32 %call1.i467 to i8
  %config4.i469 = getelementptr inbounds %struct.adt7475_data, ptr %154, i32 0, i32 5
  %155 = ptrtoint ptr %config4.i469 to i32
  call void @__asan_store1_noabort(i32 %155)
  store i8 %conv.i, ptr %config4.i469, align 2
  %call2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  %conv7.i = trunc i32 %call2.i to i8
  %config5.i = getelementptr inbounds %struct.adt7475_data, ptr %154, i32 0, i32 6
  %156 = ptrtoint ptr %config5.i to i32
  call void @__asan_store1_noabort(i32 %156)
  store i8 %conv7.i, ptr %config5.i, align 1
  %has_voltage.i = getelementptr inbounds %struct.adt7475_data, ptr %154, i32 0, i32 7
  %157 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %has_voltage.i, align 4
  %159 = and i8 %158, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %159)
  %tobool.not.i470 = icmp eq i8 %159, 0
  br i1 %tobool.not.i470, label %if.end6.i.for.inc.i_crit_edge, label %if.end12.i

if.end6.i.for.inc.i_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end12.i:                                       ; preds = %if.end6.i
  %call14.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 68) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.cleanup_crit_edge, label %if.end18.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.i:                                       ; preds = %if.end12.i
  %call14.tr.i = trunc i32 %call14.i to i16
  %conv20.i = shl i16 %call14.tr.i, 2
  %arrayidx21.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 0
  %160 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %conv20.i, ptr %arrayidx21.i, align 2
  %call25.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %if.end18.i.cleanup_crit_edge, label %if.end29.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.i:                                       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.tr.i = trunc i32 %call25.i to i16
  %conv31.i = shl i16 %call25.tr.i, 2
  %arrayidx34.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 0
  %161 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv31.i, ptr %arrayidx34.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end29.i, %if.end6.i.for.inc.i_crit_edge
  %162 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %has_voltage.i, align 4
  %164 = and i8 %163, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.1.i = icmp eq i8 %164, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end12.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end12.1.i:                                     ; preds = %for.inc.i
  %call14.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %cmp15.1.i = icmp slt i32 %call14.1.i, 0
  br i1 %cmp15.1.i, label %if.end12.1.i.cleanup_crit_edge, label %if.end18.1.i

if.end12.1.i.cleanup_crit_edge:                   ; preds = %if.end12.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.1.i:                                     ; preds = %if.end12.1.i
  %call14.tr.1.i = trunc i32 %call14.1.i to i16
  %conv20.1.i = shl i16 %call14.tr.1.i, 2
  %arrayidx21.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 1
  %165 = ptrtoint ptr %arrayidx21.1.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %conv20.1.i, ptr %arrayidx21.1.i, align 2
  %call25.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 71) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.1.i)
  %cmp26.1.i = icmp slt i32 %call25.1.i, 0
  br i1 %cmp26.1.i, label %if.end18.1.i.cleanup_crit_edge, label %if.end29.1.i

if.end18.1.i.cleanup_crit_edge:                   ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.1.i:                                     ; preds = %if.end18.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.tr.1.i = trunc i32 %call25.1.i to i16
  %conv31.1.i = shl i16 %call25.tr.1.i, 2
  %arrayidx34.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 1
  %166 = ptrtoint ptr %arrayidx34.1.i to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %conv31.1.i, ptr %arrayidx34.1.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end29.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %167 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %has_voltage.i, align 4
  %169 = and i8 %168, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.not.2.i = icmp eq i8 %169, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end12.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end12.2.i:                                     ; preds = %for.inc.1.i
  %call14.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 72) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.2.i)
  %cmp15.2.i = icmp slt i32 %call14.2.i, 0
  br i1 %cmp15.2.i, label %if.end12.2.i.cleanup_crit_edge, label %if.end18.2.i

if.end12.2.i.cleanup_crit_edge:                   ; preds = %if.end12.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.2.i:                                     ; preds = %if.end12.2.i
  %call14.tr.2.i = trunc i32 %call14.2.i to i16
  %conv20.2.i = shl i16 %call14.tr.2.i, 2
  %arrayidx21.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 2
  %170 = ptrtoint ptr %arrayidx21.2.i to i32
  call void @__asan_store2_noabort(i32 %170)
  store i16 %conv20.2.i, ptr %arrayidx21.2.i, align 2
  %call25.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.2.i)
  %cmp26.2.i = icmp slt i32 %call25.2.i, 0
  br i1 %cmp26.2.i, label %if.end18.2.i.cleanup_crit_edge, label %if.end29.2.i

if.end18.2.i.cleanup_crit_edge:                   ; preds = %if.end18.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.2.i:                                     ; preds = %if.end18.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.tr.2.i = trunc i32 %call25.2.i to i16
  %conv31.2.i = shl i16 %call25.tr.2.i, 2
  %arrayidx34.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 2
  %171 = ptrtoint ptr %arrayidx34.2.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv31.2.i, ptr %arrayidx34.2.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end29.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %172 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %has_voltage.i, align 4
  %174 = and i8 %173, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not.3.i = icmp eq i8 %174, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end12.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.end12.3.i:                                     ; preds = %for.inc.2.i
  %call14.3.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.3.i)
  %cmp15.3.i = icmp slt i32 %call14.3.i, 0
  br i1 %cmp15.3.i, label %if.end12.3.i.cleanup_crit_edge, label %if.end18.3.i

if.end12.3.i.cleanup_crit_edge:                   ; preds = %if.end12.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.3.i:                                     ; preds = %if.end12.3.i
  %call14.tr.3.i = trunc i32 %call14.3.i to i16
  %conv20.3.i = shl i16 %call14.tr.3.i, 2
  %arrayidx21.3.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 3
  %175 = ptrtoint ptr %arrayidx21.3.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv20.3.i, ptr %arrayidx21.3.i, align 2
  %call25.3.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 75) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.3.i)
  %cmp26.3.i = icmp slt i32 %call25.3.i, 0
  br i1 %cmp26.3.i, label %if.end18.3.i.cleanup_crit_edge, label %if.end29.3.i

if.end18.3.i.cleanup_crit_edge:                   ; preds = %if.end18.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.3.i:                                     ; preds = %if.end18.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.tr.3.i = trunc i32 %call25.3.i to i16
  %conv31.3.i = shl i16 %call25.tr.3.i, 2
  %arrayidx34.3.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 3
  %176 = ptrtoint ptr %arrayidx34.3.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 %conv31.3.i, ptr %arrayidx34.3.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end29.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %177 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %has_voltage.i, align 4
  %179 = and i8 %178, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %179)
  %tobool.not.4.i = icmp eq i8 %179, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end12.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.end12.4.i:                                     ; preds = %for.inc.3.i
  %call14.4.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 76) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.4.i)
  %cmp15.4.i = icmp slt i32 %call14.4.i, 0
  br i1 %cmp15.4.i, label %if.end12.4.i.cleanup_crit_edge, label %if.end18.4.i

if.end12.4.i.cleanup_crit_edge:                   ; preds = %if.end12.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18.4.i:                                     ; preds = %if.end12.4.i
  %call14.tr.4.i = trunc i32 %call14.4.i to i16
  %conv20.4.i = shl i16 %call14.tr.4.i, 2
  %arrayidx21.4.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 4
  %180 = ptrtoint ptr %arrayidx21.4.i to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %conv20.4.i, ptr %arrayidx21.4.i, align 2
  %call25.4.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 77) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.4.i)
  %cmp26.4.i = icmp slt i32 %call25.4.i, 0
  br i1 %cmp26.4.i, label %if.end18.4.i.cleanup_crit_edge, label %if.end29.4.i

if.end18.4.i.cleanup_crit_edge:                   ; preds = %if.end18.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29.4.i:                                     ; preds = %if.end18.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %call25.tr.4.i = trunc i32 %call25.4.i to i16
  %conv31.4.i = shl i16 %call25.tr.4.i, 2
  %arrayidx34.4.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 4
  %181 = ptrtoint ptr %arrayidx34.4.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv31.4.i, ptr %arrayidx34.4.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end29.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %182 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %has_voltage.i, align 4
  %184 = and i8 %183, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %184)
  %tobool38.not.i = icmp eq i8 %184, 0
  br i1 %tobool38.not.i, label %for.inc.4.i.if.end60.i_crit_edge, label %if.then39.i

for.inc.4.i.if.end60.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end60.i

if.then39.i:                                      ; preds = %for.inc.4.i
  %call40.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %if.then39.i.cleanup_crit_edge, label %if.end44.i

if.then39.i.cleanup_crit_edge:                    ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end44.i:                                       ; preds = %if.then39.i
  %call40.tr.i = trunc i32 %call40.i to i16
  %conv46.i = shl i16 %call40.tr.i, 2
  %arrayidx49.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 1, i32 5
  %185 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv46.i, ptr %arrayidx49.i, align 2
  %call50.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %cmp51.i = icmp slt i32 %call50.i, 0
  br i1 %cmp51.i, label %if.end44.i.cleanup_crit_edge, label %if.end54.i

if.end44.i.cleanup_crit_edge:                     ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end54.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #11
  %call50.tr.i = trunc i32 %call50.i to i16
  %conv56.i = shl i16 %call50.tr.i, 2
  %arrayidx59.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 11, i32 2, i32 5
  %186 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 %conv56.i, ptr %arrayidx59.i, align 2
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.end54.i, %for.inc.4.i.if.end60.i_crit_edge
  %call68.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.end60.i.cleanup_crit_edge, label %if.end72.i

if.end60.i.cleanup_crit_edge:                     ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72.i:                                       ; preds = %if.end60.i
  %call68.tr.i = trunc i32 %call68.i to i16
  %conv74.i = shl i16 %call68.tr.i, 2
  %arrayidx76.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 1, i32 0
  %187 = ptrtoint ptr %arrayidx76.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 %conv74.i, ptr %arrayidx76.i, align 2
  %call80.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 79) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.i)
  %cmp81.i = icmp slt i32 %call80.i, 0
  br i1 %cmp81.i, label %if.end72.i.cleanup_crit_edge, label %if.end84.i

if.end72.i.cleanup_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end84.i:                                       ; preds = %if.end72.i
  %call80.tr.i = trunc i32 %call80.i to i16
  %conv86.i = shl i16 %call80.tr.i, 2
  %arrayidx89.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 2, i32 0
  %188 = ptrtoint ptr %arrayidx89.i to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 %conv86.i, ptr %arrayidx89.i, align 2
  %call92.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 103) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.i)
  %cmp93.i = icmp slt i32 %call92.i, 0
  br i1 %cmp93.i, label %if.end84.i.cleanup_crit_edge, label %if.end96.i

if.end84.i.cleanup_crit_edge:                     ; preds = %if.end84.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end96.i:                                       ; preds = %if.end84.i
  %call92.tr.i = trunc i32 %call92.i to i16
  %conv98.i = shl i16 %call92.tr.i, 2
  %arrayidx101.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 4, i32 0
  %189 = ptrtoint ptr %arrayidx101.i to i32
  call void @__asan_store2_noabort(i32 %189)
  store i16 %conv98.i, ptr %arrayidx101.i, align 2
  %call104.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %cmp105.i = icmp slt i32 %call104.i, 0
  br i1 %cmp105.i, label %if.end96.i.cleanup_crit_edge, label %if.end108.i

if.end96.i.cleanup_crit_edge:                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108.i:                                      ; preds = %if.end96.i
  %call104.tr.i = trunc i32 %call104.i to i16
  %conv110.i = shl i16 %call104.tr.i, 2
  %arrayidx113.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 5, i32 0
  %190 = ptrtoint ptr %arrayidx113.i to i32
  call void @__asan_store2_noabort(i32 %190)
  store i16 %conv110.i, ptr %arrayidx113.i, align 2
  %call116.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i)
  %cmp117.i = icmp slt i32 %call116.i, 0
  br i1 %cmp117.i, label %if.end108.i.cleanup_crit_edge, label %if.end120.i

if.end108.i.cleanup_crit_edge:                    ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end120.i:                                      ; preds = %if.end108.i
  %conv121.i = trunc i32 %call116.i to i16
  %arrayidx124.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 3, i32 0
  %191 = ptrtoint ptr %arrayidx124.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv121.i, ptr %arrayidx124.i, align 2
  %call68.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.1.i)
  %cmp69.1.i = icmp slt i32 %call68.1.i, 0
  br i1 %cmp69.1.i, label %if.end120.i.cleanup_crit_edge, label %if.end72.1.i

if.end120.i.cleanup_crit_edge:                    ; preds = %if.end120.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72.1.i:                                     ; preds = %if.end120.i
  %call68.tr.1.i = trunc i32 %call68.1.i to i16
  %conv74.1.i = shl i16 %call68.tr.1.i, 2
  %arrayidx76.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 1, i32 1
  %192 = ptrtoint ptr %arrayidx76.1.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 %conv74.1.i, ptr %arrayidx76.1.i, align 2
  %call80.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.1.i)
  %cmp81.1.i = icmp slt i32 %call80.1.i, 0
  br i1 %cmp81.1.i, label %if.end72.1.i.cleanup_crit_edge, label %if.end84.1.i

if.end72.1.i.cleanup_crit_edge:                   ; preds = %if.end72.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end84.1.i:                                     ; preds = %if.end72.1.i
  %call80.tr.1.i = trunc i32 %call80.1.i to i16
  %conv86.1.i = shl i16 %call80.tr.1.i, 2
  %arrayidx89.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 2, i32 1
  %193 = ptrtoint ptr %arrayidx89.1.i to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv86.1.i, ptr %arrayidx89.1.i, align 2
  %call92.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 104) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.1.i)
  %cmp93.1.i = icmp slt i32 %call92.1.i, 0
  br i1 %cmp93.1.i, label %if.end84.1.i.cleanup_crit_edge, label %if.end96.1.i

if.end84.1.i.cleanup_crit_edge:                   ; preds = %if.end84.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end96.1.i:                                     ; preds = %if.end84.1.i
  %call92.tr.1.i = trunc i32 %call92.1.i to i16
  %conv98.1.i = shl i16 %call92.tr.1.i, 2
  %arrayidx101.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 4, i32 1
  %194 = ptrtoint ptr %arrayidx101.1.i to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %conv98.1.i, ptr %arrayidx101.1.i, align 2
  %call104.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 107) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.1.i)
  %cmp105.1.i = icmp slt i32 %call104.1.i, 0
  br i1 %cmp105.1.i, label %if.end96.1.i.cleanup_crit_edge, label %if.end108.1.i

if.end96.1.i.cleanup_crit_edge:                   ; preds = %if.end96.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108.1.i:                                    ; preds = %if.end96.1.i
  %call104.tr.1.i = trunc i32 %call104.1.i to i16
  %conv110.1.i = shl i16 %call104.tr.1.i, 2
  %arrayidx113.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 5, i32 1
  %195 = ptrtoint ptr %arrayidx113.1.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 %conv110.1.i, ptr %arrayidx113.1.i, align 2
  %call116.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 113) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.1.i)
  %cmp117.1.i = icmp slt i32 %call116.1.i, 0
  br i1 %cmp117.1.i, label %if.end108.1.i.cleanup_crit_edge, label %if.end120.1.i

if.end108.1.i.cleanup_crit_edge:                  ; preds = %if.end108.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end120.1.i:                                    ; preds = %if.end108.1.i
  %conv121.1.i = trunc i32 %call116.1.i to i16
  %arrayidx124.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 3, i32 1
  %196 = ptrtoint ptr %arrayidx124.1.i to i32
  call void @__asan_store2_noabort(i32 %196)
  store i16 %conv121.1.i, ptr %arrayidx124.1.i, align 2
  %call68.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.2.i)
  %cmp69.2.i = icmp slt i32 %call68.2.i, 0
  br i1 %cmp69.2.i, label %if.end120.1.i.cleanup_crit_edge, label %if.end72.2.i

if.end120.1.i.cleanup_crit_edge:                  ; preds = %if.end120.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end72.2.i:                                     ; preds = %if.end120.1.i
  %call68.tr.2.i = trunc i32 %call68.2.i to i16
  %conv74.2.i = shl i16 %call68.tr.2.i, 2
  %arrayidx76.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 1, i32 2
  %197 = ptrtoint ptr %arrayidx76.2.i to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv74.2.i, ptr %arrayidx76.2.i, align 2
  %call80.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.2.i)
  %cmp81.2.i = icmp slt i32 %call80.2.i, 0
  br i1 %cmp81.2.i, label %if.end72.2.i.cleanup_crit_edge, label %if.end84.2.i

if.end72.2.i.cleanup_crit_edge:                   ; preds = %if.end72.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end84.2.i:                                     ; preds = %if.end72.2.i
  %call80.tr.2.i = trunc i32 %call80.2.i to i16
  %conv86.2.i = shl i16 %call80.tr.2.i, 2
  %arrayidx89.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 2, i32 2
  %198 = ptrtoint ptr %arrayidx89.2.i to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 %conv86.2.i, ptr %arrayidx89.2.i, align 2
  %call92.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 105) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92.2.i)
  %cmp93.2.i = icmp slt i32 %call92.2.i, 0
  br i1 %cmp93.2.i, label %if.end84.2.i.cleanup_crit_edge, label %if.end96.2.i

if.end84.2.i.cleanup_crit_edge:                   ; preds = %if.end84.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end96.2.i:                                     ; preds = %if.end84.2.i
  %call92.tr.2.i = trunc i32 %call92.2.i to i16
  %conv98.2.i = shl i16 %call92.tr.2.i, 2
  %arrayidx101.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 4, i32 2
  %199 = ptrtoint ptr %arrayidx101.2.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv98.2.i, ptr %arrayidx101.2.i, align 2
  %call104.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.2.i)
  %cmp105.2.i = icmp slt i32 %call104.2.i, 0
  br i1 %cmp105.2.i, label %if.end96.2.i.cleanup_crit_edge, label %if.end108.2.i

if.end96.2.i.cleanup_crit_edge:                   ; preds = %if.end96.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end108.2.i:                                    ; preds = %if.end96.2.i
  %call104.tr.2.i = trunc i32 %call104.2.i to i16
  %conv110.2.i = shl i16 %call104.tr.2.i, 2
  %arrayidx113.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 5, i32 2
  %200 = ptrtoint ptr %arrayidx113.2.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv110.2.i, ptr %arrayidx113.2.i, align 2
  %call116.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 114) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.2.i)
  %cmp117.2.i = icmp slt i32 %call116.2.i, 0
  br i1 %cmp117.2.i, label %if.end108.2.i.cleanup_crit_edge, label %if.end136.i

if.end108.2.i.cleanup_crit_edge:                  ; preds = %if.end108.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136.i:                                      ; preds = %if.end108.2.i
  %conv121.2.i = trunc i32 %call116.2.i to i16
  %arrayidx124.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 12, i32 3, i32 2
  %201 = ptrtoint ptr %arrayidx124.2.i to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %conv121.2.i, ptr %arrayidx124.2.i, align 2
  %202 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 109) #9
  %conv.i.i = trunc i32 %call1.i.i to i16
  %arrayidx.i.i = getelementptr %struct.adt7475_data, ptr %203, i32 0, i32 12, i32 6
  %204 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv.i.i, ptr %arrayidx.i.i, align 4
  %arrayidx8.i.i = getelementptr %struct.adt7475_data, ptr %203, i32 0, i32 12, i32 6, i32 1
  %205 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %conv.i.i, ptr %arrayidx8.i.i, align 2
  %call9.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 110) #9
  %conv10.i.i = trunc i32 %call9.i.i to i16
  %arrayidx13.i.i = getelementptr %struct.adt7475_data, ptr %203, i32 0, i32 12, i32 6, i32 2
  %206 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 %conv10.i.i, ptr %arrayidx13.i.i, align 4
  %has_fan4.i = getelementptr inbounds %struct.adt7475_data, ptr %154, i32 0, i32 9
  %call.i.i471 = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i471)
  %cmp.i.i = icmp slt i32 %call.i.i471, 0
  br i1 %cmp.i.i, label %if.end136.i.cleanup_crit_edge, label %if.end.i.i

if.end136.i.cleanup_crit_edge:                    ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end136.i
  %call3.i.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 85) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.cleanup_crit_edge, label %adt7475_read_word.exit.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adt7475_read_word.exit.i:                         ; preds = %if.end.i.i
  %shl.i.i = shl i32 %call3.i.i, 8
  %or.i.i = or i32 %shl.i.i, %call.i.i471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp140.i = icmp slt i32 %or.i.i, 0
  br i1 %cmp140.i, label %adt7475_read_word.exit.i.cleanup_crit_edge, label %if.end136.1.i

adt7475_read_word.exit.i.cleanup_crit_edge:       ; preds = %adt7475_read_word.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136.1.i:                                    ; preds = %adt7475_read_word.exit.i
  %conv144.i = trunc i32 %or.i.i to i16
  %arrayidx146.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 13, i32 1, i32 0
  %207 = ptrtoint ptr %arrayidx146.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 %conv144.i, ptr %arrayidx146.i, align 2
  %call.i.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 86) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.end136.1.i.cleanup_crit_edge, label %if.end.i.1.i

if.end136.1.i.cleanup_crit_edge:                  ; preds = %if.end136.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.1.i:                                     ; preds = %if.end136.1.i
  %call3.i.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 87) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1.i)
  %cmp4.i.1.i = icmp slt i32 %call3.i.1.i, 0
  br i1 %cmp4.i.1.i, label %if.end.i.1.i.cleanup_crit_edge, label %adt7475_read_word.exit.1.i

if.end.i.1.i.cleanup_crit_edge:                   ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adt7475_read_word.exit.1.i:                       ; preds = %if.end.i.1.i
  %shl.i.1.i = shl i32 %call3.i.1.i, 8
  %or.i.1.i = or i32 %shl.i.1.i, %call.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.1.i)
  %cmp140.1.i = icmp slt i32 %or.i.1.i, 0
  br i1 %cmp140.1.i, label %adt7475_read_word.exit.1.i.cleanup_crit_edge, label %if.end136.2.i

adt7475_read_word.exit.1.i.cleanup_crit_edge:     ; preds = %adt7475_read_word.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end136.2.i:                                    ; preds = %adt7475_read_word.exit.1.i
  %conv144.1.i = trunc i32 %or.i.1.i to i16
  %arrayidx146.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 13, i32 1, i32 1
  %208 = ptrtoint ptr %arrayidx146.1.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv144.1.i, ptr %arrayidx146.1.i, align 2
  %call.i.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.end136.2.i.cleanup_crit_edge, label %if.end.i.2.i

if.end136.2.i.cleanup_crit_edge:                  ; preds = %if.end136.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.2.i:                                     ; preds = %if.end136.2.i
  %call3.i.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 89) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2.i)
  %cmp4.i.2.i = icmp slt i32 %call3.i.2.i, 0
  br i1 %cmp4.i.2.i, label %if.end.i.2.i.cleanup_crit_edge, label %adt7475_read_word.exit.2.i

if.end.i.2.i.cleanup_crit_edge:                   ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adt7475_read_word.exit.2.i:                       ; preds = %if.end.i.2.i
  %shl.i.2.i = shl i32 %call3.i.2.i, 8
  %or.i.2.i = or i32 %shl.i.2.i, %call.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.2.i)
  %cmp140.2.i = icmp slt i32 %or.i.2.i, 0
  br i1 %cmp140.2.i, label %adt7475_read_word.exit.2.i.cleanup_crit_edge, label %land.lhs.true.3.i

adt7475_read_word.exit.2.i.cleanup_crit_edge:     ; preds = %adt7475_read_word.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.3.i:                                ; preds = %adt7475_read_word.exit.2.i
  %conv144.2.i = trunc i32 %or.i.2.i to i16
  %arrayidx146.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 13, i32 1, i32 2
  %209 = ptrtoint ptr %arrayidx146.2.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 %conv144.2.i, ptr %arrayidx146.2.i, align 2
  %210 = ptrtoint ptr %has_fan4.i to i32
  call void @__asan_load1_noabort(i32 %210)
  %bf.load.3.i = load i8, ptr %has_fan4.i, align 2
  %211 = and i8 %bf.load.3.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool134.not.3.i = icmp eq i8 %211, 0
  br i1 %tobool134.not.3.i, label %land.lhs.true.3.i.if.end161.i_crit_edge, label %if.end136.3.i

land.lhs.true.3.i.if.end161.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161.i

if.end136.3.i:                                    ; preds = %land.lhs.true.3.i
  %call.i.3.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 90) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp.i.3.i, label %if.end136.3.i.cleanup_crit_edge, label %if.end.i.3.i

if.end136.3.i.cleanup_crit_edge:                  ; preds = %if.end136.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.3.i:                                     ; preds = %if.end136.3.i
  %call3.i.3.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 91) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3.i)
  %cmp4.i.3.i = icmp slt i32 %call3.i.3.i, 0
  br i1 %cmp4.i.3.i, label %if.end.i.3.i.cleanup_crit_edge, label %adt7475_read_word.exit.3.i

if.end.i.3.i.cleanup_crit_edge:                   ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

adt7475_read_word.exit.3.i:                       ; preds = %if.end.i.3.i
  %shl.i.3.i = shl i32 %call3.i.3.i, 8
  %or.i.3.i = or i32 %shl.i.3.i, %call.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.3.i)
  %cmp140.3.i = icmp slt i32 %or.i.3.i, 0
  br i1 %cmp140.3.i, label %adt7475_read_word.exit.3.i.cleanup_crit_edge, label %if.end143.3.i

adt7475_read_word.exit.3.i.cleanup_crit_edge:     ; preds = %adt7475_read_word.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end143.3.i:                                    ; preds = %adt7475_read_word.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv144.3.i = trunc i32 %or.i.3.i to i16
  %arrayidx146.3.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 13, i32 1, i32 3
  %212 = ptrtoint ptr %arrayidx146.3.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv144.3.i, ptr %arrayidx146.3.i, align 2
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.end143.3.i, %land.lhs.true.3.i.if.end161.i_crit_edge
  %call164.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.i)
  %cmp165.i = icmp slt i32 %call164.i, 0
  br i1 %cmp165.i, label %if.end161.i.cleanup_crit_edge, label %if.end168.i

if.end161.i.cleanup_crit_edge:                    ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end168.i:                                      ; preds = %if.end161.i
  %conv169.i = trunc i32 %call164.i to i8
  %arrayidx171.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 2, i32 0
  %213 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 %conv169.i, ptr %arrayidx171.i, align 1
  %call174.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 100) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.i)
  %cmp175.i = icmp slt i32 %call174.i, 0
  br i1 %cmp175.i, label %if.end168.i.cleanup_crit_edge, label %land.lhs.true156.1.i

if.end168.i.cleanup_crit_edge:                    ; preds = %if.end168.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true156.1.i:                             ; preds = %if.end168.i
  %conv179.i = trunc i32 %call174.i to i8
  %arrayidx182.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 1, i32 0
  %214 = ptrtoint ptr %arrayidx182.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 %conv179.i, ptr %arrayidx182.i, align 1
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 0) #9
  %215 = ptrtoint ptr %has_fan4.i to i32
  call void @__asan_load1_noabort(i32 %215)
  %bf.load157.1.i = load i8, ptr %has_fan4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load157.1.i)
  %tobool159.not.1.i = icmp sgt i8 %bf.load157.1.i, -1
  br i1 %tobool159.not.1.i, label %land.lhs.true156.1.i.if.end161.2.i_crit_edge, label %if.end161.1.i

land.lhs.true156.1.i.if.end161.2.i_crit_edge:     ; preds = %land.lhs.true156.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end161.2.i

if.end161.1.i:                                    ; preds = %land.lhs.true156.1.i
  %call164.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.1.i)
  %cmp165.1.i = icmp slt i32 %call164.1.i, 0
  br i1 %cmp165.1.i, label %if.end161.1.i.cleanup_crit_edge, label %if.end168.1.i

if.end161.1.i.cleanup_crit_edge:                  ; preds = %if.end161.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end168.1.i:                                    ; preds = %if.end161.1.i
  %conv169.1.i = trunc i32 %call164.1.i to i8
  %arrayidx171.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 2, i32 1
  %216 = ptrtoint ptr %arrayidx171.1.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 %conv169.1.i, ptr %arrayidx171.1.i, align 1
  %call174.1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.1.i)
  %cmp175.1.i = icmp slt i32 %call174.1.i, 0
  br i1 %cmp175.1.i, label %if.end168.1.i.cleanup_crit_edge, label %if.end178.1.i

if.end168.1.i.cleanup_crit_edge:                  ; preds = %if.end168.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end178.1.i:                                    ; preds = %if.end168.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv179.1.i = trunc i32 %call174.1.i to i8
  %arrayidx182.1.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 1, i32 1
  %217 = ptrtoint ptr %arrayidx182.1.i to i32
  call void @__asan_store1_noabort(i32 %217)
  store i8 %conv179.1.i, ptr %arrayidx182.1.i, align 1
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 1) #9
  br label %if.end161.2.i

if.end161.2.i:                                    ; preds = %if.end178.1.i, %land.lhs.true156.1.i.if.end161.2.i_crit_edge
  %call164.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164.2.i)
  %cmp165.2.i = icmp slt i32 %call164.2.i, 0
  br i1 %cmp165.2.i, label %if.end161.2.i.cleanup_crit_edge, label %if.end168.2.i

if.end161.2.i.cleanup_crit_edge:                  ; preds = %if.end161.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end168.2.i:                                    ; preds = %if.end161.2.i
  %conv169.2.i = trunc i32 %call164.2.i to i8
  %arrayidx171.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 2, i32 2
  %218 = ptrtoint ptr %arrayidx171.2.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 %conv169.2.i, ptr %arrayidx171.2.i, align 1
  %call174.2.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174.2.i)
  %cmp175.2.i = icmp slt i32 %call174.2.i, 0
  br i1 %cmp175.2.i, label %if.end168.2.i.cleanup_crit_edge, label %for.inc183.2.i

if.end168.2.i.cleanup_crit_edge:                  ; preds = %if.end168.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc183.2.i:                                   ; preds = %if.end168.2.i
  %conv179.2.i = trunc i32 %call174.2.i to i8
  %arrayidx182.2.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 14, i32 1, i32 2
  %219 = ptrtoint ptr %arrayidx182.2.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 %conv179.2.i, ptr %arrayidx182.2.i, align 1
  call fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef 2) #9
  %call186.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 95) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186.i)
  %cmp187.i = icmp slt i32 %call186.i, 0
  br i1 %cmp187.i, label %for.inc183.2.i.cleanup_crit_edge, label %if.end190.i

for.inc183.2.i.cleanup_crit_edge:                 ; preds = %for.inc183.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end190.i:                                      ; preds = %for.inc183.2.i
  %conv191.i = trunc i32 %call186.i to i8
  %range.i = getelementptr inbounds %struct.adt7475_data, ptr %154, i32 0, i32 15
  %220 = ptrtoint ptr %range.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 %conv191.i, ptr %range.i, align 2
  %call193.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call193.i)
  %cmp194.i = icmp slt i32 %call193.i, 0
  br i1 %cmp194.i, label %if.end190.i.cleanup_crit_edge, label %if.end197.i

if.end190.i.cleanup_crit_edge:                    ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end197.i:                                      ; preds = %if.end190.i
  %conv198.i = trunc i32 %call193.i to i8
  %arrayidx200.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 15, i32 1
  %221 = ptrtoint ptr %arrayidx200.i to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 %conv198.i, ptr %arrayidx200.i, align 1
  %call201.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 97) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call201.i)
  %cmp202.i = icmp slt i32 %call201.i, 0
  br i1 %cmp202.i, label %if.end197.i.cleanup_crit_edge, label %if.end205.i

if.end197.i.cleanup_crit_edge:                    ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end205.i:                                      ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv206.i = trunc i32 %call201.i to i8
  %arrayidx208.i = getelementptr %struct.adt7475_data, ptr %154, i32 0, i32 15, i32 2
  %222 = ptrtoint ptr %arrayidx208.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 %conv206.i, ptr %arrayidx208.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end205.i, %if.end197.i.cleanup_crit_edge, %if.end190.i.cleanup_crit_edge, %for.inc183.2.i.cleanup_crit_edge, %if.end168.2.i.cleanup_crit_edge, %if.end161.2.i.cleanup_crit_edge, %if.end168.1.i.cleanup_crit_edge, %if.end161.1.i.cleanup_crit_edge, %if.end168.i.cleanup_crit_edge, %if.end161.i.cleanup_crit_edge, %adt7475_read_word.exit.3.i.cleanup_crit_edge, %if.end.i.3.i.cleanup_crit_edge, %if.end136.3.i.cleanup_crit_edge, %adt7475_read_word.exit.2.i.cleanup_crit_edge, %if.end.i.2.i.cleanup_crit_edge, %if.end136.2.i.cleanup_crit_edge, %adt7475_read_word.exit.1.i.cleanup_crit_edge, %if.end.i.1.i.cleanup_crit_edge, %if.end136.1.i.cleanup_crit_edge, %adt7475_read_word.exit.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end136.i.cleanup_crit_edge, %if.end108.2.i.cleanup_crit_edge, %if.end96.2.i.cleanup_crit_edge, %if.end84.2.i.cleanup_crit_edge, %if.end72.2.i.cleanup_crit_edge, %if.end120.1.i.cleanup_crit_edge, %if.end108.1.i.cleanup_crit_edge, %if.end96.1.i.cleanup_crit_edge, %if.end84.1.i.cleanup_crit_edge, %if.end72.1.i.cleanup_crit_edge, %if.end120.i.cleanup_crit_edge, %if.end108.i.cleanup_crit_edge, %if.end96.i.cleanup_crit_edge, %if.end84.i.cleanup_crit_edge, %if.end72.i.cleanup_crit_edge, %if.end60.i.cleanup_crit_edge, %if.end44.i.cleanup_crit_edge, %if.then39.i.cleanup_crit_edge, %if.end18.4.i.cleanup_crit_edge, %if.end12.4.i.cleanup_crit_edge, %if.end18.3.i.cleanup_crit_edge, %if.end12.3.i.cleanup_crit_edge, %if.end18.2.i.cleanup_crit_edge, %if.end12.2.i.cleanup_crit_edge, %if.end18.1.i.cleanup_crit_edge, %if.end12.1.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end334.cleanup_crit_edge, %if.then246, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %138, %if.then246 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end205.i ], [ %call1.i467, %if.end334.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call40.i, %if.then39.i.cleanup_crit_edge ], [ %call50.i, %if.end44.i.cleanup_crit_edge ], [ %call186.i, %for.inc183.2.i.cleanup_crit_edge ], [ %call193.i, %if.end190.i.cleanup_crit_edge ], [ %call201.i, %if.end197.i.cleanup_crit_edge ], [ %call164.i, %if.end161.i.cleanup_crit_edge ], [ %call174.i, %if.end168.i.cleanup_crit_edge ], [ %call164.1.i, %if.end161.1.i.cleanup_crit_edge ], [ %call174.1.i, %if.end168.1.i.cleanup_crit_edge ], [ %call164.2.i, %if.end161.2.i.cleanup_crit_edge ], [ %call174.2.i, %if.end168.2.i.cleanup_crit_edge ], [ %or.i.i, %adt7475_read_word.exit.i.cleanup_crit_edge ], [ %call3.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i.i471, %if.end136.i.cleanup_crit_edge ], [ %call.i.1.i, %if.end136.1.i.cleanup_crit_edge ], [ %call3.i.1.i, %if.end.i.1.i.cleanup_crit_edge ], [ %or.i.1.i, %adt7475_read_word.exit.1.i.cleanup_crit_edge ], [ %call.i.2.i, %if.end136.2.i.cleanup_crit_edge ], [ %call3.i.2.i, %if.end.i.2.i.cleanup_crit_edge ], [ %or.i.2.i, %adt7475_read_word.exit.2.i.cleanup_crit_edge ], [ %call.i.3.i, %if.end136.3.i.cleanup_crit_edge ], [ %call3.i.3.i, %if.end.i.3.i.cleanup_crit_edge ], [ %or.i.3.i, %adt7475_read_word.exit.3.i.cleanup_crit_edge ], [ %call68.i, %if.end60.i.cleanup_crit_edge ], [ %call80.i, %if.end72.i.cleanup_crit_edge ], [ %call92.i, %if.end84.i.cleanup_crit_edge ], [ %call104.i, %if.end96.i.cleanup_crit_edge ], [ %call116.i, %if.end108.i.cleanup_crit_edge ], [ %call68.1.i, %if.end120.i.cleanup_crit_edge ], [ %call80.1.i, %if.end72.1.i.cleanup_crit_edge ], [ %call92.1.i, %if.end84.1.i.cleanup_crit_edge ], [ %call104.1.i, %if.end96.1.i.cleanup_crit_edge ], [ %call116.1.i, %if.end108.1.i.cleanup_crit_edge ], [ %call68.2.i, %if.end120.1.i.cleanup_crit_edge ], [ %call80.2.i, %if.end72.2.i.cleanup_crit_edge ], [ %call92.2.i, %if.end84.2.i.cleanup_crit_edge ], [ %call104.2.i, %if.end96.2.i.cleanup_crit_edge ], [ %call116.2.i, %if.end108.2.i.cleanup_crit_edge ], [ %call14.i, %if.end12.i.cleanup_crit_edge ], [ %call25.i, %if.end18.i.cleanup_crit_edge ], [ %call14.1.i, %if.end12.1.i.cleanup_crit_edge ], [ %call25.1.i, %if.end18.1.i.cleanup_crit_edge ], [ %call14.2.i, %if.end12.2.i.cleanup_crit_edge ], [ %call25.2.i, %if.end18.2.i.cleanup_crit_edge ], [ %call14.3.i, %if.end12.3.i.cleanup_crit_edge ], [ %call25.3.i, %if.end18.3.i.cleanup_crit_edge ], [ %call14.4.i, %if.end12.4.i.cleanup_crit_edge ], [ %call25.4.i, %if.end18.4.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7475_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 62) #9
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 65
  %and = and i32 %call3, 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 104, i32 %and)
  %cmp4.not = icmp eq i32 %and, 104
  %or.cond = select i1 %cmp.not, i1 %cmp4.not, i1 false
  br i1 %or.cond, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 61) #9
  %6 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %call7, label %if.end6.if.else18_crit_edge [
    i32 115, label %if.end6.if.end36_crit_edge
    i32 117, label %land.lhs.true
    i32 118, label %if.then17
  ]

if.end6.if.end36_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end6.if.else18_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true:                                    ; preds = %if.end6
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %7 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 46, i16 %8)
  %cmp11 = icmp eq i16 %8, 46
  br i1 %cmp11, label %land.lhs.true.if.end36_crit_edge, label %land.lhs.true.if.else18_crit_edge

land.lhs.true.if.else18_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else18

land.lhs.true.if.end36_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else18:                                        ; preds = %land.lhs.true.if.else18_crit_edge, %if.end6.if.else18_crit_edge
  %and19 = and i32 %call3, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 108, i32 %and19)
  %cmp20 = icmp eq i32 %and19, 108
  br i1 %cmp20, label %if.else18.if.end36_crit_edge, label %do.body

if.else18.if.end36_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

do.body:                                          ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7475_detect.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7475_detect, %cleanup)) #9
          to label %if.then29 [label %cleanup], !srcloc !416

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 9
  %addr30 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %9 = ptrtoint ptr %addr30 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr30, align 2
  %conv31 = zext i16 %10 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7475_detect.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.135, i32 noundef %conv31) #9
  br label %cleanup

if.end36:                                         ; preds = %if.else18.if.end36_crit_edge, %if.then17, %land.lhs.true.if.end36_crit_edge, %if.end6.if.end36_crit_edge
  %name.0 = phi ptr [ @.str.132, %if.then17 ], [ @.str.131, %if.end6.if.end36_crit_edge ], [ @.str, %land.lhs.true.if.end36_crit_edge ], [ @.str.133, %if.else18.if.end36_crit_edge ]
  %call37 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull %name.0, i32 noundef 20) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then29, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.then29 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @adt7475_read_pwm(ptr noundef %client, i32 noundef %index) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = trunc i32 %index to i8
  %conv = add i8 %2, 92
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv) #9
  %conv2 = trunc i32 %call1 to i8
  %arrayidx3 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 14, i32 3, i32 %index
  %3 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv2, ptr %arrayidx3, align 1
  %conv7 = lshr i32 %call1, 5
  %4 = and i32 %conv7, 7
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %4, label %if.else47 [
    i32 3, label %if.then
    i32 7, label %if.then12
    i32 4, label %if.then18
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 16, i32 %index
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx9, align 1
  br label %if.end64

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx14 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 16, i32 %index
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %arrayidx14, align 1
  br label %if.end64

if.then18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 14
  %arrayidx21 = getelementptr [3 x i8], ptr %pwm, i32 0, i32 %index
  %8 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx21, align 1
  %9 = or i8 %conv2, -32
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx3, align 1
  %call38 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext 0) #9
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx3, align 1
  %call44 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv, i8 noundef zeroext %12) #9
  %arrayidx46 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 16, i32 %index
  %13 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %arrayidx46, align 1
  br label %if.end64

if.else47:                                        ; preds = %entry
  %arrayidx49 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 16, i32 %index
  %14 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %arrayidx49, align 1
  %15 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %4, label %if.else47.if.end64_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb51
    i32 2, label %sw.bb54
    i32 5, label %sw.bb57
    i32 6, label %sw.bb60
  ]

if.else47.if.end64_crit_edge:                     ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

sw.bb:                                            ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx50 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %index
  %16 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx50, align 1
  br label %if.end64

sw.bb51:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx53 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %index
  %17 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 2, ptr %arrayidx53, align 1
  br label %if.end64

sw.bb54:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx56 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %index
  %18 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 4, ptr %arrayidx56, align 1
  br label %if.end64

sw.bb57:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx59 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %index
  %19 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 6, ptr %arrayidx59, align 1
  br label %if.end64

sw.bb60:                                          ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx62 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %index
  %20 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 7, ptr %arrayidx62, align 1
  br label %if.end64

if.end64:                                         ; preds = %sw.bb60, %sw.bb57, %sw.bb54, %sw.bb51, %sw.bb, %if.else47.if.end64_crit_edge, %if.then18, %if.then12, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @vid_which_vrm() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %cond = icmp eq i8 %2, 9
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alarms, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %conv3 = zext i8 %6 to i32
  %shr = lshr i32 %4, %conv3
  %and = and i32 %shr, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %and)
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %conv = zext i8 %2 to i32
  %index6 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %index6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index6, align 4
  %idxprom7 = zext i8 %8 to i32
  %arrayidx8 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 11, i32 %conv, i32 %idxprom7
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx8, align 2
  %bypass_attn = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 8
  %11 = ptrtoint ptr %bypass_attn to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %bypass_attn, align 1
  %conv.i = zext i8 %12 to i32
  %shl.i = shl nuw i32 1, %idxprom7
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %cmp.not.i = icmp eq i16 %10, 0
  %conv1.i = zext i16 %10 to i32
  %mul.i = mul nuw nsw i32 %conv1.i, 2250
  %add.i = add nuw nsw i32 %mul.i, 512
  %div753.i = lshr i32 %add.i, 10
  %cond.i = select i1 %cmp.not.i, i32 0, i32 %div753.i
  br label %reg2volt.exit

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [6 x [2 x i32]], ptr @adt7473_in_scaling, i32 0, i32 %idxprom7
  %conv11.i = zext i16 %10 to i32
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %arrayidx13.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %15 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx13.i, align 4
  %add14.i = add i32 %16, %14
  %mul15.i = mul nuw nsw i32 %conv11.i, 2250
  %mul16.i = mul i32 %mul15.i, %add14.i
  %mul19.i = shl i32 %16, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul16.i)
  %cmp21.i = icmp slt i32 %mul16.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul19.i)
  %cmp23.i = icmp sgt i32 %mul19.i, 0
  %cmp25.i = xor i1 %cmp23.i, %cmp21.i
  %add29.pn.v.v.i = select i1 %cmp25.i, i32 2, i32 -2
  %add29.pn.v.i = sdiv i32 %mul19.i, %add29.pn.v.v.i
  %add29.pn.i = add i32 %mul16.i, %add29.pn.v.i
  %cond36.i = sdiv i32 %add29.pn.i, %mul19.i
  br label %reg2volt.exit

reg2volt.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %cond.i, %if.then.i ], [ %cond36.i, %if.end.i ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %retval.0.i)
  br label %cleanup

cleanup:                                          ; preds = %reg2volt.exit, %sw.bb, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %sw.bb ], [ %call12, %reg2volt.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @adt7475_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %measure_updated = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %measure_updated to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %measure_updated, align 4
  %add = add i32 %3, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %valid, align 4, !range !417
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end9_crit_edge

lor.lhs.false.if.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %7 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 66) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp slt i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.if.then3_crit_edge, label %if.end.i

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i:                                         ; preds = %if.then
  %shl.i = shl i32 %call2.i, 8
  %alarms.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 10
  %11 = ptrtoint ptr %alarms.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %alarms.i, align 4
  %call3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 65) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end.i.if.then3_crit_edge, label %if.end6.i

if.end.i.if.then3_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end6.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %alarms.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %alarms.i, align 4
  %or.i = or i32 %13, %call3.i
  store i32 %or.i, ptr %alarms.i, align 4
  %call8.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 119) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end6.i.if.then3_crit_edge, label %if.end11.i

if.end6.i.if.then3_crit_edge:                     ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end11.i:                                       ; preds = %if.end6.i
  %call13.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.if.then3_crit_edge, label %if.end17.i

if.end11.i.if.then3_crit_edge:                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end17.i:                                       ; preds = %if.end11.i
  %conv.i = shl i32 %call8.i, 8
  %or19.i = or i32 %call13.i, %conv.i
  %has_voltage.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 7
  %voltage.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 11
  %14 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_voltage.i, align 4
  %16 = and i8 %15, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.end17.i.for.inc.i_crit_edge, label %if.end26.i

if.end17.i.for.inc.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.end17.i
  %call28.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end26.i.if.then3_crit_edge, label %if.end32.i

if.end26.i.if.then3_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl33.i = shl i32 %call28.i, 2
  %and35.i = and i32 %call13.i, 3
  %or36.i = or i32 %shl33.i, %and35.i
  %conv37.i = trunc i32 %or36.i to i16
  %17 = ptrtoint ptr %voltage.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv37.i, ptr %voltage.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end32.i, %if.end17.i.for.inc.i_crit_edge
  %18 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %has_voltage.i, align 4
  %20 = and i8 %19, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.1.i = icmp eq i8 %20, 0
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %if.end26.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.1.i

if.end26.1.i:                                     ; preds = %for.inc.i
  %call28.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.1.i)
  %cmp29.1.i = icmp slt i32 %call28.1.i, 0
  br i1 %cmp29.1.i, label %if.end26.1.i.if.then3_crit_edge, label %if.end32.1.i

if.end26.1.i.if.then3_crit_edge:                  ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end32.1.i:                                     ; preds = %if.end26.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl33.1.i = shl i32 %call28.1.i, 2
  %shr.1.i = lshr i32 %call13.i, 2
  %and35.1.i = and i32 %shr.1.i, 3
  %or36.1.i = or i32 %shl33.1.i, %and35.1.i
  %conv37.1.i = trunc i32 %or36.1.i to i16
  %arrayidx38.1.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 11, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx38.1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv37.1.i, ptr %arrayidx38.1.i, align 2
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.end32.1.i, %for.inc.i.for.inc.1.i_crit_edge
  %22 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_voltage.i, align 4
  %24 = and i8 %23, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.2.i = icmp eq i8 %24, 0
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %if.end26.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.2.i

if.end26.2.i:                                     ; preds = %for.inc.1.i
  %call28.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.2.i)
  %cmp29.2.i = icmp slt i32 %call28.2.i, 0
  br i1 %cmp29.2.i, label %if.end26.2.i.if.then3_crit_edge, label %if.end32.2.i

if.end26.2.i.if.then3_crit_edge:                  ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end32.2.i:                                     ; preds = %if.end26.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl33.2.i = shl i32 %call28.2.i, 2
  %shr.2.i = lshr i32 %call13.i, 4
  %and35.2.i = and i32 %shr.2.i, 3
  %or36.2.i = or i32 %shl33.2.i, %and35.2.i
  %conv37.2.i = trunc i32 %or36.2.i to i16
  %arrayidx38.2.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 11, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx38.2.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv37.2.i, ptr %arrayidx38.2.i, align 2
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.end32.2.i, %for.inc.1.i.for.inc.2.i_crit_edge
  %26 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %has_voltage.i, align 4
  %28 = and i8 %27, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.3.i = icmp eq i8 %28, 0
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %if.end26.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.3.i

if.end26.3.i:                                     ; preds = %for.inc.2.i
  %call28.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.3.i)
  %cmp29.3.i = icmp slt i32 %call28.3.i, 0
  br i1 %cmp29.3.i, label %if.end26.3.i.if.then3_crit_edge, label %if.end32.3.i

if.end26.3.i.if.then3_crit_edge:                  ; preds = %if.end26.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end32.3.i:                                     ; preds = %if.end26.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl33.3.i = shl i32 %call28.3.i, 2
  %shr.3.i = lshr i32 %call13.i, 6
  %and35.3.i = and i32 %shr.3.i, 3
  %or36.3.i = or i32 %shl33.3.i, %and35.3.i
  %conv37.3.i = trunc i32 %or36.3.i to i16
  %arrayidx38.3.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 11, i32 0, i32 3
  %29 = ptrtoint ptr %arrayidx38.3.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv37.3.i, ptr %arrayidx38.3.i, align 2
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.end32.3.i, %for.inc.2.i.for.inc.3.i_crit_edge
  %30 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %has_voltage.i, align 4
  %32 = and i8 %31, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.4.i = icmp eq i8 %32, 0
  br i1 %tobool.not.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge, label %if.end26.4.i

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.4.i

if.end26.4.i:                                     ; preds = %for.inc.3.i
  %call28.4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.4.i)
  %cmp29.4.i = icmp slt i32 %call28.4.i, 0
  br i1 %cmp29.4.i, label %if.end26.4.i.if.then3_crit_edge, label %if.end32.4.i

if.end26.4.i.if.then3_crit_edge:                  ; preds = %if.end26.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end32.4.i:                                     ; preds = %if.end26.4.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl33.4.i = shl i32 %call28.4.i, 2
  %shr.4.i = lshr i32 %or19.i, 8
  %and35.4.i = and i32 %shr.4.i, 3
  %or36.4.i = or i32 %shl33.4.i, %and35.4.i
  %conv37.4.i = trunc i32 %or36.4.i to i16
  %arrayidx38.4.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 11, i32 0, i32 4
  %33 = ptrtoint ptr %arrayidx38.4.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv37.4.i, ptr %arrayidx38.4.i, align 2
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.end32.4.i, %for.inc.3.i.for.inc.4.i_crit_edge
  %call45.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.i)
  %cmp46.i = icmp slt i32 %call45.i, 0
  br i1 %cmp46.i, label %for.inc.4.i.if.then3_crit_edge, label %if.end49.i

for.inc.4.i.if.then3_crit_edge:                   ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end49.i:                                       ; preds = %for.inc.4.i
  %temp.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 12
  %shl50.i = shl i32 %call45.i, 2
  %shr54.i = lshr i32 %or19.i, 10
  %and55.i = and i32 %shr54.i, 3
  %or56.i = or i32 %shl50.i, %and55.i
  %conv57.i = trunc i32 %or56.i to i16
  %34 = ptrtoint ptr %temp.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv57.i, ptr %temp.i, align 2
  %call45.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.1.i)
  %cmp46.1.i = icmp slt i32 %call45.1.i, 0
  br i1 %cmp46.1.i, label %if.end49.i.if.then3_crit_edge, label %if.end49.1.i

if.end49.i.if.then3_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end49.1.i:                                     ; preds = %if.end49.i
  %shl50.1.i = shl i32 %call45.1.i, 2
  %shr54.1.i = lshr i32 %or19.i, 12
  %and55.1.i = and i32 %shr54.1.i, 3
  %or56.1.i = or i32 %shl50.1.i, %and55.1.i
  %conv57.1.i = trunc i32 %or56.1.i to i16
  %arrayidx59.1.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 12, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx59.1.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv57.1.i, ptr %arrayidx59.1.i, align 2
  %call45.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 39) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45.2.i)
  %cmp46.2.i = icmp slt i32 %call45.2.i, 0
  br i1 %cmp46.2.i, label %if.end49.1.i.if.then3_crit_edge, label %if.end49.2.i

if.end49.1.i.if.then3_crit_edge:                  ; preds = %if.end49.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end49.2.i:                                     ; preds = %if.end49.1.i
  %shl50.2.i = shl i32 %call45.2.i, 2
  %conv34.i = lshr i32 %or19.i, 14
  %shr54.2.i = and i32 %conv34.i, 3
  %or56.2.i = or i32 %shl50.2.i, %shr54.2.i
  %conv57.2.i = trunc i32 %or56.2.i to i16
  %arrayidx59.2.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 12, i32 0, i32 2
  %36 = ptrtoint ptr %arrayidx59.2.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv57.2.i, ptr %arrayidx59.2.i, align 2
  %37 = ptrtoint ptr %has_voltage.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %has_voltage.i, align 4
  %39 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool66.not.i = icmp eq i8 %39, 0
  br i1 %tobool66.not.i, label %if.end49.2.i.if.end105.i_crit_edge, label %if.then67.i

if.end49.2.i.if.end105.i_crit_edge:               ; preds = %if.end49.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

if.then67.i:                                      ; preds = %if.end49.2.i
  %call68.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -127) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.then67.i.if.then3_crit_edge, label %if.end72.i

if.then67.i.if.then3_crit_edge:                   ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end72.i:                                       ; preds = %if.then67.i
  %shl73.i = shl i32 %call68.i, 24
  %40 = ptrtoint ptr %alarms.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %alarms.i, align 4
  %or75.i = or i32 %41, %shl73.i
  store i32 %or75.i, ptr %alarms.i, align 4
  %call76.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp slt i32 %call76.i, 0
  br i1 %cmp77.i, label %if.end72.i.if.then3_crit_edge, label %if.end80.i

if.end72.i.if.then3_crit_edge:                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end80.i:                                       ; preds = %if.end72.i
  %call82.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82.i)
  %cmp83.i = icmp slt i32 %call82.i, 0
  br i1 %cmp83.i, label %if.end80.i.if.then3_crit_edge, label %if.end86.i

if.end80.i.if.then3_crit_edge:                    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end86.i:                                       ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #11
  %shl87.i = shl i32 %call82.i, 2
  %conv88.i = lshr i32 %call76.i, 4
  %and90.i = and i32 %conv88.i, 3
  %or91.i = or i32 %shl87.i, %and90.i
  %conv92.i = trunc i32 %or91.i to i16
  %arrayidx95.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 11, i32 0, i32 5
  %42 = ptrtoint ptr %arrayidx95.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %conv92.i, ptr %arrayidx95.i, align 2
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.end86.i, %if.end49.2.i.if.end105.i_crit_edge
  %has_fan4.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 9
  %tach.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 13
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end105.i.if.then3_crit_edge, label %if.end.i.i

if.end105.i.if.then3_crit_edge:                   ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.i:                                       ; preds = %if.end105.i
  %call3.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %cmp4.i.i = icmp slt i32 %call3.i.i, 0
  br i1 %cmp4.i.i, label %if.end.i.i.if.then3_crit_edge, label %adt7475_read_word.exit.i

if.end.i.i.if.then3_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

adt7475_read_word.exit.i:                         ; preds = %if.end.i.i
  %shl.i.i = shl i32 %call3.i.i, 8
  %or.i.i = or i32 %shl.i.i, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp109.i = icmp slt i32 %or.i.i, 0
  br i1 %cmp109.i, label %adt7475_read_word.exit.i.if.then3_crit_edge, label %if.end105.1.i

adt7475_read_word.exit.i.if.then3_crit_edge:      ; preds = %adt7475_read_word.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end105.1.i:                                    ; preds = %adt7475_read_word.exit.i
  %conv113.i = trunc i32 %or.i.i to i16
  %43 = ptrtoint ptr %tach.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv113.i, ptr %tach.i, align 2
  %call.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %cmp.i.1.i = icmp slt i32 %call.i.1.i, 0
  br i1 %cmp.i.1.i, label %if.end105.1.i.if.then3_crit_edge, label %if.end.i.1.i

if.end105.1.i.if.then3_crit_edge:                 ; preds = %if.end105.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.1.i:                                     ; preds = %if.end105.1.i
  %call3.i.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.1.i)
  %cmp4.i.1.i = icmp slt i32 %call3.i.1.i, 0
  br i1 %cmp4.i.1.i, label %if.end.i.1.i.if.then3_crit_edge, label %adt7475_read_word.exit.1.i

if.end.i.1.i.if.then3_crit_edge:                  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

adt7475_read_word.exit.1.i:                       ; preds = %if.end.i.1.i
  %shl.i.1.i = shl i32 %call3.i.1.i, 8
  %or.i.1.i = or i32 %shl.i.1.i, %call.i.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.1.i)
  %cmp109.1.i = icmp slt i32 %or.i.1.i, 0
  br i1 %cmp109.1.i, label %adt7475_read_word.exit.1.i.if.then3_crit_edge, label %if.end105.2.i

adt7475_read_word.exit.1.i.if.then3_crit_edge:    ; preds = %adt7475_read_word.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end105.2.i:                                    ; preds = %adt7475_read_word.exit.1.i
  %conv113.1.i = trunc i32 %or.i.1.i to i16
  %arrayidx115.1.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 13, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx115.1.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv113.1.i, ptr %arrayidx115.1.i, align 2
  %call.i.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %cmp.i.2.i = icmp slt i32 %call.i.2.i, 0
  br i1 %cmp.i.2.i, label %if.end105.2.i.if.then3_crit_edge, label %if.end.i.2.i

if.end105.2.i.if.then3_crit_edge:                 ; preds = %if.end105.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.2.i:                                     ; preds = %if.end105.2.i
  %call3.i.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 45) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.2.i)
  %cmp4.i.2.i = icmp slt i32 %call3.i.2.i, 0
  br i1 %cmp4.i.2.i, label %if.end.i.2.i.if.then3_crit_edge, label %adt7475_read_word.exit.2.i

if.end.i.2.i.if.then3_crit_edge:                  ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

adt7475_read_word.exit.2.i:                       ; preds = %if.end.i.2.i
  %shl.i.2.i = shl i32 %call3.i.2.i, 8
  %or.i.2.i = or i32 %shl.i.2.i, %call.i.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.2.i)
  %cmp109.2.i = icmp slt i32 %or.i.2.i, 0
  br i1 %cmp109.2.i, label %adt7475_read_word.exit.2.i.if.then3_crit_edge, label %land.lhs.true.3.i

adt7475_read_word.exit.2.i.if.then3_crit_edge:    ; preds = %adt7475_read_word.exit.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

land.lhs.true.3.i:                                ; preds = %adt7475_read_word.exit.2.i
  %conv113.2.i = trunc i32 %or.i.2.i to i16
  %arrayidx115.2.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 13, i32 0, i32 2
  %45 = ptrtoint ptr %arrayidx115.2.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv113.2.i, ptr %arrayidx115.2.i, align 2
  %46 = ptrtoint ptr %has_fan4.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.3.i = load i8, ptr %has_fan4.i, align 2
  %47 = and i8 %bf.load.3.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool103.not.3.i = icmp eq i8 %47, 0
  br i1 %tobool103.not.3.i, label %land.lhs.true.3.i.if.end130.i_crit_edge, label %if.end105.3.i

land.lhs.true.3.i.if.end130.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.i

if.end105.3.i:                                    ; preds = %land.lhs.true.3.i
  %call.i.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %cmp.i.3.i = icmp slt i32 %call.i.3.i, 0
  br i1 %cmp.i.3.i, label %if.end105.3.i.if.then3_crit_edge, label %if.end.i.3.i

if.end105.3.i.if.then3_crit_edge:                 ; preds = %if.end105.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.i.3.i:                                     ; preds = %if.end105.3.i
  %call3.i.3.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 47) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.3.i)
  %cmp4.i.3.i = icmp slt i32 %call3.i.3.i, 0
  br i1 %cmp4.i.3.i, label %if.end.i.3.i.if.then3_crit_edge, label %adt7475_read_word.exit.3.i

if.end.i.3.i.if.then3_crit_edge:                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

adt7475_read_word.exit.3.i:                       ; preds = %if.end.i.3.i
  %shl.i.3.i = shl i32 %call3.i.3.i, 8
  %or.i.3.i = or i32 %shl.i.3.i, %call.i.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.3.i)
  %cmp109.3.i = icmp slt i32 %or.i.3.i, 0
  br i1 %cmp109.3.i, label %adt7475_read_word.exit.3.i.if.then3_crit_edge, label %if.end112.3.i

adt7475_read_word.exit.3.i.if.then3_crit_edge:    ; preds = %adt7475_read_word.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end112.3.i:                                    ; preds = %adt7475_read_word.exit.3.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv113.3.i = trunc i32 %or.i.3.i to i16
  %arrayidx115.3.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 13, i32 0, i32 3
  %48 = ptrtoint ptr %arrayidx115.3.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv113.3.i, ptr %arrayidx115.3.i, align 2
  br label %if.end130.i

if.end130.i:                                      ; preds = %if.end112.3.i, %land.lhs.true.3.i.if.end130.i_crit_edge
  %call133.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.i)
  %cmp134.i = icmp slt i32 %call133.i, 0
  br i1 %cmp134.i, label %if.end130.i.if.then3_crit_edge, label %land.lhs.true125.1.i

if.end130.i.if.then3_crit_edge:                   ; preds = %if.end130.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

land.lhs.true125.1.i:                             ; preds = %if.end130.i
  %pwm.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 14
  %conv138.i = trunc i32 %call133.i to i8
  %49 = ptrtoint ptr %pwm.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv138.i, ptr %pwm.i, align 1
  %50 = ptrtoint ptr %has_fan4.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load126.1.i = load i8, ptr %has_fan4.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load126.1.i)
  %tobool128.not.1.i = icmp sgt i8 %bf.load126.1.i, -1
  br i1 %tobool128.not.1.i, label %land.lhs.true125.1.i.if.end130.2.i_crit_edge, label %if.end130.1.i

land.lhs.true125.1.i.if.end130.2.i_crit_edge:     ; preds = %land.lhs.true125.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130.2.i

if.end130.1.i:                                    ; preds = %land.lhs.true125.1.i
  %call133.1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.1.i)
  %cmp134.1.i = icmp slt i32 %call133.1.i, 0
  br i1 %cmp134.1.i, label %if.end130.1.i.if.then3_crit_edge, label %if.end137.1.i

if.end130.1.i.if.then3_crit_edge:                 ; preds = %if.end130.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end137.1.i:                                    ; preds = %if.end130.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv138.1.i = trunc i32 %call133.1.i to i8
  %arrayidx140.1.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 14, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx140.1.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv138.1.i, ptr %arrayidx140.1.i, align 1
  br label %if.end130.2.i

if.end130.2.i:                                    ; preds = %if.end137.1.i, %land.lhs.true125.1.i.if.end130.2.i_crit_edge
  %call133.2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call133.2.i)
  %cmp134.2.i = icmp slt i32 %call133.2.i, 0
  br i1 %cmp134.2.i, label %if.end130.2.i.if.then3_crit_edge, label %for.inc141.2.i

if.end130.2.i.if.then3_crit_edge:                 ; preds = %if.end130.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

for.inc141.2.i:                                   ; preds = %if.end130.2.i
  %conv138.2.i = trunc i32 %call133.2.i to i8
  %arrayidx140.2.i = getelementptr %struct.adt7475_data, ptr %8, i32 0, i32 14, i32 0, i32 2
  %52 = ptrtoint ptr %arrayidx140.2.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv138.2.i, ptr %arrayidx140.2.i, align 1
  %53 = ptrtoint ptr %has_fan4.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %bf.load144.i = load i8, ptr %has_fan4.i, align 2
  %54 = and i8 %bf.load144.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool147.not.i = icmp eq i8 %54, 0
  br i1 %tobool147.not.i, label %for.inc141.2.i.if.end_crit_edge, label %if.then148.i

for.inc141.2.i.if.end_crit_edge:                  ; preds = %for.inc141.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then148.i:                                     ; preds = %for.inc141.2.i
  %call149.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 67) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %cmp150.i = icmp slt i32 %call149.i, 0
  br i1 %cmp150.i, label %if.then148.i.if.then3_crit_edge, label %if.end153.i

if.then148.i.if.then3_crit_edge:                  ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end153.i:                                      ; preds = %if.then148.i
  call void @__sanitizer_cov_trace_pc() #11
  %55 = trunc i32 %call149.i to i8
  %conv155.i = and i8 %55, 63
  %vid.i = getelementptr inbounds %struct.adt7475_data, ptr %8, i32 0, i32 19
  %56 = ptrtoint ptr %vid.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv155.i, ptr %vid.i, align 1
  br label %if.end

if.then3:                                         ; preds = %if.then148.i.if.then3_crit_edge, %if.end130.2.i.if.then3_crit_edge, %if.end130.1.i.if.then3_crit_edge, %if.end130.i.if.then3_crit_edge, %adt7475_read_word.exit.3.i.if.then3_crit_edge, %if.end.i.3.i.if.then3_crit_edge, %if.end105.3.i.if.then3_crit_edge, %adt7475_read_word.exit.2.i.if.then3_crit_edge, %if.end.i.2.i.if.then3_crit_edge, %if.end105.2.i.if.then3_crit_edge, %adt7475_read_word.exit.1.i.if.then3_crit_edge, %if.end.i.1.i.if.then3_crit_edge, %if.end105.1.i.if.then3_crit_edge, %adt7475_read_word.exit.i.if.then3_crit_edge, %if.end.i.i.if.then3_crit_edge, %if.end105.i.if.then3_crit_edge, %if.end80.i.if.then3_crit_edge, %if.end72.i.if.then3_crit_edge, %if.then67.i.if.then3_crit_edge, %if.end49.1.i.if.then3_crit_edge, %if.end49.i.if.then3_crit_edge, %for.inc.4.i.if.then3_crit_edge, %if.end26.4.i.if.then3_crit_edge, %if.end26.3.i.if.then3_crit_edge, %if.end26.2.i.if.then3_crit_edge, %if.end26.1.i.if.then3_crit_edge, %if.end26.i.if.then3_crit_edge, %if.end11.i.if.then3_crit_edge, %if.end6.i.if.then3_crit_edge, %if.end.i.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call28.4.i, %if.end26.4.i.if.then3_crit_edge ], [ %call28.3.i, %if.end26.3.i.if.then3_crit_edge ], [ %call28.2.i, %if.end26.2.i.if.then3_crit_edge ], [ %call28.1.i, %if.end26.1.i.if.then3_crit_edge ], [ %call28.i, %if.end26.i.if.then3_crit_edge ], [ %call45.2.i, %if.end49.1.i.if.then3_crit_edge ], [ %call45.1.i, %if.end49.i.if.then3_crit_edge ], [ %call45.i, %for.inc.4.i.if.then3_crit_edge ], [ %or.i.3.i, %adt7475_read_word.exit.3.i.if.then3_crit_edge ], [ %call3.i.3.i, %if.end.i.3.i.if.then3_crit_edge ], [ %call.i.3.i, %if.end105.3.i.if.then3_crit_edge ], [ %or.i.2.i, %adt7475_read_word.exit.2.i.if.then3_crit_edge ], [ %call3.i.2.i, %if.end.i.2.i.if.then3_crit_edge ], [ %call.i.2.i, %if.end105.2.i.if.then3_crit_edge ], [ %or.i.1.i, %adt7475_read_word.exit.1.i.if.then3_crit_edge ], [ %call3.i.1.i, %if.end.i.1.i.if.then3_crit_edge ], [ %call.i.1.i, %if.end105.1.i.if.then3_crit_edge ], [ %call.i.i, %if.end105.i.if.then3_crit_edge ], [ %call3.i.i, %if.end.i.i.if.then3_crit_edge ], [ %or.i.i, %adt7475_read_word.exit.i.if.then3_crit_edge ], [ %call133.2.i, %if.end130.2.i.if.then3_crit_edge ], [ %call133.1.i, %if.end130.1.i.if.then3_crit_edge ], [ %call133.i, %if.end130.i.if.then3_crit_edge ], [ %call149.i, %if.then148.i.if.then3_crit_edge ], [ %call82.i, %if.end80.i.if.then3_crit_edge ], [ %call76.i, %if.end72.i.if.then3_crit_edge ], [ %call68.i, %if.then67.i.if.then3_crit_edge ], [ %call13.i, %if.end11.i.if.then3_crit_edge ], [ %call8.i, %if.end6.i.if.then3_crit_edge ], [ %call3.i, %if.end.i.if.then3_crit_edge ], [ %call2.i, %if.then.if.then3_crit_edge ]
  %valid4 = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 3
  %57 = ptrtoint ptr %valid4 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %valid4, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %58 = inttoptr i32 %retval.0.i.ph to ptr
  br label %cleanup

if.end:                                           ; preds = %if.end153.i, %for.inc141.2.i.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = ptrtoint ptr %measure_updated to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %measure_updated, align 4
  %valid8 = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 3
  %61 = ptrtoint ptr %valid8 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %valid8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end, %lor.lhs.false.if.end9_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then3
  %retval.0 = phi ptr [ %58, %if.then3 ], [ %1, %if.end9 ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @voltage_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %conv = zext i8 %6 to i32
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %bypass_attn = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %bypass_attn to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bypass_attn, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl nuw i32 1, %conv
  %and.i = and i32 %shl.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = shl i32 %8, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp.i = icmp sgt i32 %mul.i, 0
  %cond.in.v.i = select i1 %cmp.i, i32 1125, i32 -1125
  %cond.in.i = add i32 %cond.in.v.i, %mul.i
  %cond.i = sdiv i32 %cond.in.i, 2250
  br label %volt2reg.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr [6 x [2 x i32]], ptr @adt7473_in_scaling, i32 0, i32 %conv
  %arrayidx10.i = getelementptr i32, ptr %arrayidx.i, i32 1
  %11 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx10.i, align 4
  %mul11.i = shl i32 %8, 10
  %mul12.i = mul i32 %12, %mul11.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add16.i = add i32 %14, %12
  %mul17.i = mul i32 %add16.i, 2250
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul12.i)
  %cmp19.i = icmp slt i32 %mul12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul17.i)
  %cmp21.i = icmp sgt i32 %mul17.i, 0
  %cmp23.i = xor i1 %cmp19.i, %cmp21.i
  %add27.pn.v.v.i = select i1 %cmp23.i, i32 2, i32 -2
  %add27.pn.v.i = sdiv i32 %mul17.i, %add27.pn.v.v.i
  %add27.pn.i = add i32 %add27.pn.v.i, %mul12.i
  %cond34.i = sdiv i32 %add27.pn.i, %mul17.i
  br label %volt2reg.exit

volt2reg.exit:                                    ; preds = %if.else.i, %if.then.i
  %reg.0.i = phi i32 [ %cond.i, %if.then.i ], [ %cond34.i, %if.else.i ]
  %15 = call i32 @llvm.smax.i32(i32 %reg.0.i, i32 0) #9
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 1023) #9
  %17 = trunc i32 %16 to i16
  %conv50.i = and i16 %17, 1020
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx6 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 11, i32 %idxprom, i32 %conv
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv50.i, ptr %arrayidx6, align 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %22)
  %cmp = icmp ult i8 %22, 5
  %23 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %24)
  %cmp13 = icmp eq i8 %24, 1
  br i1 %cmp, label %if.then10, label %if.else25

if.then10:                                        ; preds = %volt2reg.exit
  %mul = shl nuw nsw i8 %22, 1
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %add = add nuw nsw i8 %mul, 68
  br label %if.end33

if.else:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %add22 = add nuw nsw i8 %mul, 69
  br label %if.end33

if.else25:                                        ; preds = %volt2reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %. = select i1 %cmp13, i8 -124, i8 -122
  br label %if.end33

if.end33:                                         ; preds = %if.else25, %if.else, %if.then15
  %reg.0 = phi i8 [ %add, %if.then15 ], [ %add22, %if.else ], [ %., %if.else25 ]
  %25 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %nr, align 1
  %idxprom36 = zext i8 %26 to i32
  %idxprom39 = zext i8 %22 to i32
  %arrayidx40 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 11, i32 %idxprom36, i32 %idxprom39
  %27 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx40, align 2
  %29 = lshr i16 %28, 2
  %conv42 = trunc i16 %29 to i8
  %call43 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv42) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end33 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr, align 1
  %3 = zext i8 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.141)
  switch i8 %2, label %sw.default [
    i8 6, label %sw.bb
    i8 3, label %sw.bb20
    i8 9, label %sw.bb39
    i8 10, label %sw.bb44
  ]

sw.bb:                                            ; preds = %if.end
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %4 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %5 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %idxprom4 = zext i8 %7 to i32
  %arrayidx5 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 12, i32 %idxprom, i32 %idxprom4
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx5, align 2
  %conv6 = zext i16 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  %10 = lshr i32 %conv6, 4
  %out.0.in = select i1 %cmp.not, i32 %conv6, i32 %10
  %out.0 = and i32 %out.0.in, 15
  %arrayidx17 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 12, i32 5, i32 %idxprom4
  %11 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx17, align 2
  %config5.i = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %config5.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %config5.i, align 1
  %15 = and i8 %14, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  %conv8.i = zext i16 %12 to i32
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %12)
  %cmp.i92 = icmp ugt i16 %12, 511
  %16 = mul nuw nsw i32 %conv8.i, 250
  %mul.i = add nsw i32 %16, -256000
  %spec.select.i = select i1 %cmp.i92, i32 %mul.i, i32 %16
  br label %reg2temp.exit

if.else7.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %17 = mul nuw nsw i32 %conv8.i, 250
  %mul10.i = add nsw i32 %17, -64000
  br label %reg2temp.exit

reg2temp.exit:                                    ; preds = %if.else7.i, %if.then.i
  %retval.0.i = phi i32 [ %mul10.i, %if.else7.i ], [ %spec.select.i, %if.then.i ]
  %mul.neg = mul nsw i32 %out.0, -1000
  %sub = add nsw i32 %retval.0.i, %mul.neg
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock21 = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock21, i32 noundef 0) #9
  %18 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %nr, align 1
  %idxprom24 = zext i8 %19 to i32
  %index26 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %20 = ptrtoint ptr %index26 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %index26, align 4
  %idxprom27 = zext i8 %21 to i32
  %arrayidx28 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 12, i32 %idxprom24, i32 %idxprom27
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx28, align 2
  %conv29 = zext i16 %23 to i32
  %sext = shl i32 %conv29, 24
  %conv30 = ashr exact i32 %sext, 24
  %config5 = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 6
  %24 = ptrtoint ptr %config5 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config5, align 1
  %26 = and i8 %25, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not = icmp eq i8 %26, 0
  %out.1.v = select i1 %tobool.not, i32 500, i32 1000
  %out.1 = mul nsw i32 %out.1.v, %conv30
  tail call void @mutex_unlock(ptr noundef %lock21) #9
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %alarms, align 4
  %index40 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %29 = ptrtoint ptr %index40 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %index40, align 4
  %conv41 = zext i8 %30 to i32
  %add = add nuw nsw i32 %conv41, 4
  %shr42 = lshr i32 %28, %add
  %and43 = and i32 %shr42, 1
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alarms45 = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 10
  %31 = ptrtoint ptr %alarms45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alarms45, align 4
  %index46 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %33 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %index46, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool48.not = icmp eq i8 %34, 0
  %cond = select i1 %tobool48.not, i32 16384, i32 32768
  %and49 = and i32 %cond, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50 = icmp ne i32 %and49, 0
  %lnot.ext = zext i1 %tobool50 to i32
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %conv = zext i8 %2 to i32
  %index56 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %35 = ptrtoint ptr %index56 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %index56, align 4
  %idxprom57 = zext i8 %36 to i32
  %arrayidx58 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 12, i32 %conv, i32 %idxprom57
  %37 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx58, align 2
  %config5.i93 = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 6
  %39 = ptrtoint ptr %config5.i93 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %config5.i93, align 1
  %41 = and i8 %40, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i94 = icmp eq i8 %41, 0
  %conv8.i95 = zext i16 %38 to i32
  br i1 %tobool.not.i94, label %if.else7.i101, label %if.then.i99

if.then.i99:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %38)
  %cmp.i96 = icmp ugt i16 %38, 511
  %42 = mul nuw nsw i32 %conv8.i95, 250
  %mul.i97 = add nsw i32 %42, -256000
  %spec.select.i98 = select i1 %cmp.i96, i32 %mul.i97, i32 %42
  br label %sw.epilog

if.else7.i101:                                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %43 = mul nuw nsw i32 %conv8.i95, 250
  %mul10.i100 = add nsw i32 %43, -64000
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else7.i101, %if.then.i99, %sw.bb44, %sw.bb39, %sw.bb20, %reg2temp.exit
  %out.2 = phi i32 [ %lnot.ext, %sw.bb44 ], [ %and43, %sw.bb39 ], [ %out.1, %sw.bb20 ], [ %sub, %reg2temp.exit ], [ %mul10.i100, %if.else7.i101 ], [ %spec.select.i98, %if.then.i99 ]
  %call60 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %out.2)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call60, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 124) #9
  %conv = trunc i32 %call3 to i8
  %config5 = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %config5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %config5, align 1
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.142)
  switch i8 %7, label %sw.default [
    i8 3, label %sw.bb
    i8 6, label %sw.bb45
  ]

sw.bb:                                            ; preds = %if.end
  %and = and i32 %call3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %11 = call i32 @llvm.smax.i32(i32 %10, i32 -63000)
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %12 = call i32 @llvm.smin.i32(i32 %11, i32 127000)
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %val, align 4
  %div = sdiv i32 %12, 1000
  %conv18 = trunc i32 %div to i16
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %index, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx20 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 3, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv18, ptr %arrayidx20, align 2
  %conv21 = trunc i32 %div to i8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %17 = call i32 @llvm.smin.i32(i32 %11, i32 64000)
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %val, align 4
  %div36 = sdiv i32 %17, 500
  %conv37 = trunc i32 %div36 to i16
  %index40 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %19 = ptrtoint ptr %index40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %index40, align 4
  %idxprom41 = zext i8 %20 to i32
  %arrayidx42 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 3, i32 %idxprom41
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv37, ptr %arrayidx42, align 2
  %conv43 = trunc i32 %div36 to i8
  br label %sw.epilog

sw.bb45:                                          ; preds = %if.end
  %index46 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %22 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %index46, align 4
  %add = add i8 %23, 106
  %call49 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add) #9
  %call49.tr = trunc i32 %call49 to i16
  %conv50 = shl i16 %call49.tr, 2
  %24 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %index46, align 4
  %idxprom54 = zext i8 %25 to i32
  %arrayidx55 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 5, i32 %idxprom54
  %26 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv50, ptr %arrayidx55, align 2
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %driver_data.i.i.i, align 4
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 109) #9
  %conv.i = trunc i32 %call1.i to i16
  %arrayidx.i = getelementptr %struct.adt7475_data, ptr %28, i32 0, i32 12, i32 6
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv.i, ptr %arrayidx.i, align 4
  %arrayidx8.i = getelementptr %struct.adt7475_data, ptr %28, i32 0, i32 12, i32 6, i32 1
  %30 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i, ptr %arrayidx8.i, align 2
  %call9.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 110) #9
  %conv10.i = trunc i32 %call9.i to i16
  %arrayidx13.i = getelementptr %struct.adt7475_data, ptr %28, i32 0, i32 12, i32 6, i32 2
  %31 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv10.i, ptr %arrayidx13.i, align 4
  %32 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %index46, align 4
  %idxprom59 = zext i8 %33 to i32
  %arrayidx60 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 5, i32 %idxprom59
  %34 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx60, align 2
  %36 = ptrtoint ptr %config5 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %config5, align 1
  %38 = and i8 %37, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i = icmp eq i8 %38, 0
  %conv8.i = zext i16 %35 to i32
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %35)
  %cmp.i = icmp ugt i16 %35, 511
  %39 = mul nuw nsw i32 %conv8.i, 250
  %mul.i = add nsw i32 %39, -256000
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %39
  br label %reg2temp.exit

if.else7.i:                                       ; preds = %sw.bb45
  call void @__sanitizer_cov_trace_pc() #11
  %40 = mul nuw nsw i32 %conv8.i, 250
  %mul10.i = add nsw i32 %40, -64000
  br label %reg2temp.exit

reg2temp.exit:                                    ; preds = %if.else7.i, %if.then.i
  %retval.0.i = phi i32 [ %mul10.i, %if.else7.i ], [ %spec.select.i, %if.then.i ]
  %41 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %val, align 4
  %sub = add nsw i32 %retval.0.i, -15000
  %43 = call i32 @llvm.smax.i32(i32 %42, i32 %sub)
  %44 = call i32 @llvm.smin.i32(i32 %43, i32 %retval.0.i)
  %sub76 = sub nsw i32 %retval.0.i, %44
  %div77 = sdiv i32 %sub76, 1000
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div77, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %33)
  %cmp80.not = icmp eq i8 %33, 1
  br i1 %cmp80.not, label %if.else100, label %if.then82

if.then82:                                        ; preds = %reg2temp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx87 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 6, i32 %idxprom59
  %46 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx87, align 2
  %48 = and i16 %47, 240
  store i16 %48, ptr %arrayidx87, align 2
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %51 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %index46, align 4
  %idxprom96 = zext i8 %52 to i32
  %arrayidx97 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 6, i32 %idxprom96
  %53 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx97, align 2
  %.tr = trunc i32 %50 to i16
  %55 = shl i16 %.tr, 4
  %56 = and i16 %55, 240
  %conv99 = or i16 %56, %54
  store i16 %conv99, ptr %arrayidx97, align 2
  br label %if.end118

if.else100:                                       ; preds = %reg2temp.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx105 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 6, i32 1
  %57 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %arrayidx105, align 2
  %59 = and i16 %58, 15
  store i16 %59, ptr %arrayidx105, align 2
  %60 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %val, align 4
  %62 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %index46, align 4
  %idxprom113 = zext i8 %63 to i32
  %arrayidx114 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 6, i32 %idxprom113
  %64 = ptrtoint ptr %arrayidx114 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx114, align 2
  %66 = trunc i32 %61 to i16
  %67 = and i16 %66, 15
  %conv117 = or i16 %67, %65
  store i16 %conv117, ptr %arrayidx114, align 2
  br label %if.end118

if.end118:                                        ; preds = %if.else100, %if.then82
  %68 = ptrtoint ptr %index46 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %index46, align 4
  %idxprom122 = zext i8 %69 to i32
  %arrayidx123 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 6, i32 %idxprom122
  %70 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx123, align 2
  %conv124 = trunc i16 %71 to i8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %72 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %val, align 4
  %74 = and i8 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i248 = icmp eq i8 %74, 0
  br i1 %tobool.not.i248, label %if.then.i249, label %if.else.i

if.then.i249:                                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  %75 = call i32 @llvm.smax.i32(i32 %73, i32 -64000) #9
  %76 = call i32 @llvm.smin.i32(i32 %75, i32 191000) #9
  %add.i = add nsw i32 %76, 64500
  br label %temp2reg.exit

if.else.i:                                        ; preds = %sw.default
  %77 = call i32 @llvm.smax.i32(i32 %73, i32 -128000) #9
  %78 = call i32 @llvm.smin.i32(i32 %77, i32 127000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -500, i32 %78)
  %cmp24.i = icmp slt i32 %78, -500
  br i1 %cmp24.i, label %if.then26.i, label %if.else30.i

if.then26.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add27.i = add nsw i32 %78, 256500
  br label %temp2reg.exit

if.else30.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %add31.i = add nsw i32 %78, 500
  br label %temp2reg.exit

temp2reg.exit:                                    ; preds = %if.else30.i, %if.then26.i, %if.then.i249
  %ret.0.in.in.i = phi i32 [ %add27.i, %if.then26.i ], [ %add31.i, %if.else30.i ], [ %add.i, %if.then.i249 ]
  %ret.0.in51.i = udiv i32 %ret.0.in.in.i, 1000
  %ret.0.in.tr.i = trunc i32 %ret.0.in51.i to i16
  %conv36.i = shl nuw nsw i16 %ret.0.in.tr.i, 2
  %idxprom128 = zext i8 %7 to i32
  %index130 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %79 = ptrtoint ptr %index130 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %index130, align 4
  %idxprom131 = zext i8 %80 to i32
  %arrayidx132 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 %idxprom128, i32 %idxprom131
  %81 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv36.i, ptr %arrayidx132, align 2
  %82 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %nr, align 1
  %idxprom135 = zext i8 %83 to i32
  %84 = load i8, ptr %index130, align 4
  %idxprom138 = zext i8 %84 to i32
  %arrayidx139 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 %idxprom135, i32 %idxprom138
  %85 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %arrayidx139, align 2
  %87 = lshr i16 %86, 2
  %conv141 = trunc i16 %87 to i8
  br label %sw.epilog

sw.epilog:                                        ; preds = %temp2reg.exit, %if.end118, %if.else, %if.then8
  %out.0 = phi i8 [ %conv141, %temp2reg.exit ], [ %conv124, %if.end118 ], [ %conv21, %if.then8 ], [ %conv43, %if.else ]
  %88 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %nr, align 1
  %90 = zext i8 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.143)
  switch i8 %89, label %sw.epilog.sw.epilog178_crit_edge [
    i8 1, label %sw.bb144
    i8 2, label %sw.bb149
    i8 3, label %sw.bb155
    i8 4, label %sw.bb160
    i8 5, label %sw.bb165
    i8 6, label %sw.bb170
  ]

sw.epilog.sw.epilog178_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog178

sw.bb144:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index145 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %91 = ptrtoint ptr %index145 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %index145, align 4
  %mul = shl i8 %92, 1
  %add147 = add i8 %mul, 78
  br label %sw.epilog178

sw.bb149:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index150 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %93 = ptrtoint ptr %index150 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %index150, align 4
  %mul152 = shl i8 %94, 1
  %add153 = add i8 %mul152, 79
  br label %sw.epilog178

sw.bb155:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index156 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %95 = ptrtoint ptr %index156 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %index156, align 4
  %add158 = add i8 %96, 112
  br label %sw.epilog178

sw.bb160:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index161 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %97 = ptrtoint ptr %index161 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %index161, align 4
  %add163 = add i8 %98, 103
  br label %sw.epilog178

sw.bb165:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index166 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %99 = ptrtoint ptr %index166 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %index166, align 4
  %add168 = add i8 %100, 106
  br label %sw.epilog178

sw.bb170:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %index171 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %101 = ptrtoint ptr %index171 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %index171, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %102)
  %cmp173.not = icmp eq i8 %102, 2
  %.246 = select i1 %cmp173.not, i8 110, i8 109
  br label %sw.epilog178

sw.epilog178:                                     ; preds = %sw.bb170, %sw.bb165, %sw.bb160, %sw.bb155, %sw.bb149, %sw.bb144, %sw.epilog.sw.epilog178_crit_edge
  %reg.0 = phi i8 [ 0, %sw.epilog.sw.epilog178_crit_edge ], [ %add168, %sw.bb165 ], [ %add163, %sw.bb160 ], [ %add158, %sw.bb155 ], [ %add153, %sw.bb149 ], [ %add147, %sw.bb144 ], [ %.246, %sw.bb170 ]
  %call179 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %out.0) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog178, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %sw.epilog178 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @point2_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 15, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = lshr i8 %4, 4
  %6 = zext i8 %5 to i32
  %arrayidx6 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 12, i32 4, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx6, align 2
  %config5.i = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %config5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %config5.i, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  %conv8.i = zext i16 %8 to i32
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %8)
  %cmp.i21 = icmp ugt i16 %8, 511
  %12 = mul nuw nsw i32 %conv8.i, 250
  %mul.i = add nsw i32 %12, -256000
  %spec.select.i = select i1 %cmp.i21, i32 %mul.i, i32 %12
  br label %reg2temp.exit

if.else7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %13 = mul nuw nsw i32 %conv8.i, 250
  %mul10.i = add nsw i32 %13, -64000
  br label %reg2temp.exit

reg2temp.exit:                                    ; preds = %if.else7.i, %if.then.i
  %retval.0.i = phi i32 [ %mul10.i, %if.else7.i ], [ %spec.select.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %arrayidx9 = getelementptr [16 x i32], ptr @autorange_table, i32 0, i32 %6
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %add = add i32 %15, %retval.0.i
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %add)
  br label %cleanup

cleanup:                                          ; preds = %reg2temp.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call10, %reg2temp.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @point2_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 124) #9
  %conv = trunc i32 %call3 to i8
  %config5 = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %config5 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %config5, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %6 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %index, align 4
  %add = add i8 %7, 103
  %call6 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add) #9
  %call6.tr = trunc i32 %call6 to i16
  %conv7 = shl i16 %call6.tr, 2
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx10 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 4, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv7, ptr %arrayidx10, align 2
  %11 = load i8, ptr %index, align 4
  %add13 = add i8 %11, 95
  %call15 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add13) #9
  %conv16 = trunc i32 %call15 to i8
  %12 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index, align 4
  %idxprom18 = zext i8 %13 to i32
  %arrayidx19 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom18
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %arrayidx19, align 1
  %15 = load i8, ptr %index, align 4
  %idxprom23 = zext i8 %15 to i32
  %arrayidx24 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 12, i32 4, i32 %idxprom23
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx24, align 2
  %18 = ptrtoint ptr %config5 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config5, align 1
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  %conv8.i = zext i16 %17 to i32
  br i1 %tobool.not.i, label %if.else7.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp2(i16 511, i16 %17)
  %cmp.i = icmp ugt i16 %17, 511
  %21 = mul nuw nsw i32 %conv8.i, 250
  %mul.i = add nsw i32 %21, -256000
  %spec.select.i = select i1 %cmp.i, i32 %mul.i, i32 %21
  br label %reg2temp.exit

if.else7.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %22 = mul nuw nsw i32 %conv8.i, 250
  %mul10.i = add nsw i32 %22, -64000
  br label %reg2temp.exit

reg2temp.exit:                                    ; preds = %if.else7.i, %if.then.i
  %retval.0.i = phi i32 [ %mul10.i, %if.else7.i ], [ %spec.select.i, %if.then.i ]
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  %add26 = add nsw i32 %retval.0.i, 2000
  %25 = call i32 @llvm.smax.i32(i32 %24, i32 %add26)
  %add29 = add nsw i32 %retval.0.i, 80000
  %26 = call i32 @llvm.smin.i32(i32 %25, i32 %add29)
  %sub = sub nsw i32 %26, %retval.0.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %reg2temp.exit
  %__fc_i.0 = phi i32 [ 0, %reg2temp.exit ], [ %add40, %for.body.for.cond_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %__fc_i.0)
  %exitcond.not = icmp eq i32 %__fc_i.0, 15
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx39 = getelementptr i32, ptr @autorange_table, i32 %__fc_i.0
  %27 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx39, align 4
  %add40 = add nuw nsw i32 %__fc_i.0, 1
  %arrayidx41 = getelementptr i32, ptr @autorange_table, i32 %add40
  %29 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx41, align 4
  %add42 = add i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add42)
  %cmp44.inv = icmp slt i32 %add42, 1
  %cond58.in.v = select i1 %cmp44.inv, i32 -1, i32 1
  %cond58.in = add i32 %cond58.in.v, %add42
  %cond58 = sdiv i32 %cond58.in, 2
  %cmp59.not = icmp sgt i32 %sub, %cond58
  br i1 %cmp59.not, label %for.body.for.cond_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.for.end_crit_edge
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %__fc_i.0, ptr %val, align 4
  %arrayidx67 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom23
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx67, align 1
  %34 = and i8 %33, 15
  store i8 %34, ptr %arrayidx67, align 1
  %35 = load i32, ptr %val, align 4
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %index, align 4
  %idxprom73 = zext i8 %37 to i32
  %arrayidx74 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom73
  %38 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx74, align 1
  %.tr = trunc i32 %35 to i8
  %40 = shl i8 %.tr, 4
  %conv76 = or i8 %40, %39
  store i8 %conv76, ptr %arrayidx74, align 1
  %41 = load i8, ptr %index, align 4
  %conv78 = zext i8 %41 to i32
  %add79 = add i8 %41, 95
  %arrayidx84 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %conv78
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx84, align 1
  %call85 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add79, i8 noundef zeroext %43) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_st_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.144)
  switch i8 %3, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %enh_acoustics = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 18
  %5 = ptrtoint ptr %enh_acoustics to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %enh_acoustics, align 1
  %7 = and i8 %6, 15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx4 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 18, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx4, align 1
  %10 = lshr i8 %9, 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx9 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 18, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx9, align 1
  %13 = and i8 %12, 15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  %val.0.in = phi i8 [ %13, %sw.default ], [ %10, %sw.bb2 ], [ %7, %sw.bb ]
  %val.0 = zext i8 %val.0.in to i32
  %and12 = and i32 %val.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool.not = icmp eq i32 %and12, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %and13 = and i32 %val.0, 7
  %arrayidx14 = getelementptr [8 x i32], ptr @ad7475_st_map, i32 0, i32 %and13
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx14, align 4
  %call15 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %15)
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %16 = call ptr @memcpy(ptr %buf, ptr @.str.57, i32 3)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call15, %if.then ], [ 2, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_st_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.145)
  switch i8 %6, label %sw.default [
    i8 0, label %if.end.sw.epilog_crit_edge
    i8 1, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ 99, %sw.default ], [ 99, %sw.bb3 ], [ 98, %if.end.sw.epilog_crit_edge ]
  %shift.0 = phi i32 [ 4, %sw.default ], [ 0, %sw.bb3 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %idx.0 = phi i32 [ 1, %sw.default ], [ 1, %sw.bb3 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %sw.epilog.if.end27_crit_edge, label %for.cond.preheader

sw.epilog.if.end27_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.cond.preheader:                               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 28150, i32 %9)
  %cmp22.not = icmp ult i32 %9, 28150
  br i1 %cmp22.not, label %for.cond.1, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 15650, i32 %9)
  %cmp22.not.1 = icmp ult i32 %9, 15650
  br i1 %cmp22.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %9)
  %cmp22.not.2 = icmp ult i32 %9, 10000
  br i1 %cmp22.not.2, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6100, i32 %9)
  %cmp22.not.3 = icmp ult i32 %9, 6100
  br i1 %cmp22.not.3, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3900, i32 %9)
  %cmp22.not.4 = icmp ult i32 %9, 3900
  br i1 %cmp22.not.4, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2350, i32 %9)
  %cmp22.not.5 = icmp ult i32 %9, 2350
  br i1 %cmp22.not.5, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %9)
  %cmp22.not.6 = icmp ult i32 %9, 1200
  %spec.select = select i1 %cmp22.not.6, i32 15, i32 14
  br label %for.end

for.end:                                          ; preds = %for.cond.6, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %__fc_i.0.lcssa = phi i32 [ 8, %for.cond.preheader.for.end_crit_edge ], [ 9, %for.cond.1.for.end_crit_edge ], [ 10, %for.cond.2.for.end_crit_edge ], [ 11, %for.cond.3.for.end_crit_edge ], [ 12, %for.cond.4.for.end_crit_edge ], [ 13, %for.cond.5.for.end_crit_edge ], [ %spec.select, %for.cond.6 ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %__fc_i.0.lcssa, ptr %val, align 4
  br label %if.end27

if.end27:                                         ; preds = %for.end, %sw.epilog.if.end27_crit_edge
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %shl = shl nuw nsw i32 15, %shift.0
  %arrayidx28 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 18, i32 %idx.0
  %11 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx28, align 1
  %13 = trunc i32 %shl to i8
  %14 = xor i8 %13, -1
  %conv30 = and i8 %12, %14
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %shl31 = shl i32 %16, %shift.0
  %17 = trunc i32 %shl31 to i8
  %conv36 = or i8 %conv30, %17
  store i8 %conv36, ptr %arrayidx28, align 1
  %call39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %conv36) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end27 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tach_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %2)
  %cmp = icmp eq i8 %2, 9
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %alarms = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 10
  %3 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alarms, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %conv5 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv5, 10
  %shr = lshr i32 %4, %add
  %and = and i32 %shr, 1
  br label %if.end11

if.else:                                          ; preds = %if.end
  %conv = zext i8 %2 to i32
  %index7 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %index7 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index7, align 4
  %idxprom8 = zext i8 %8 to i32
  %arrayidx9 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 13, i32 %conv, i32 %idxprom8
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx9, align 2
  %11 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %10, label %if.end.i [
    i16 0, label %if.else.if.end11_crit_edge
    i16 -1, label %if.else.if.end11_crit_edge21
  ]

if.else.if.end11_crit_edge21:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i16 %10 to i32
  %div.i = udiv i32 5400000, %conv.i
  br label %if.end11

if.end11:                                         ; preds = %if.end.i, %if.else.if.end11_crit_edge, %if.else.if.end11_crit_edge21, %if.then4
  %out.0 = phi i32 [ %and, %if.then4 ], [ %div.i, %if.end.i ], [ 0, %if.else.if.end11_crit_edge ], [ 0, %if.else.if.end11_crit_edge21 ]
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %out.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call12, %if.end11 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tach_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp eq i32 %6, 0
  br i1 %cmp.i, label %if.end.rpm2tach.exit_crit_edge, label %if.end.i

if.end.rpm2tach.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %rpm2tach.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700001, i32 %6)
  %cmp1.i = icmp ult i32 %6, 2700001
  br i1 %cmp1.i, label %cond.end.i, label %if.end.i.cond.end.thread.i_crit_edge

if.end.i.cond.end.thread.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.i:                                       ; preds = %if.end.i
  %div.i = udiv i32 5400000, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %6)
  %cmp3.i = icmp ugt i32 %6, 82
  br i1 %cmp3.i, label %cond.end.i.cond.end.thread.i_crit_edge, label %cond.end.i._crit_edge

cond.end.i._crit_edge:                            ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %7

cond.end.i.cond.end.thread.i_crit_edge:           ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.thread.i

cond.end.thread.i:                                ; preds = %cond.end.i.cond.end.thread.i_crit_edge, %if.end.i.cond.end.thread.i_crit_edge
  %cond15.i = phi i32 [ %div.i, %cond.end.i.cond.end.thread.i_crit_edge ], [ 1, %if.end.i.cond.end.thread.i_crit_edge ]
  br label %7

7:                                                ; preds = %cond.end.thread.i, %cond.end.i._crit_edge
  %8 = phi i32 [ %cond15.i, %cond.end.thread.i ], [ 65535, %cond.end.i._crit_edge ]
  %conv.i = trunc i32 %8 to i16
  br label %rpm2tach.exit

rpm2tach.exit:                                    ; preds = %7, %if.end.rpm2tach.exit_crit_edge
  %retval.0.i = phi i16 [ %conv.i, %7 ], [ 0, %if.end.rpm2tach.exit_crit_edge ]
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 4
  %idxprom = zext i8 %10 to i32
  %arrayidx4 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 13, i32 1, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %retval.0.i, ptr %arrayidx4, align 2
  %12 = load i8, ptr %index, align 4
  %conv = zext i8 %12 to i32
  %mul = shl i8 %12, 1
  %add = add i8 %mul, 84
  %arrayidx10 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 13, i32 1, i32 %conv
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx10, align 2
  %conv.i21 = add i8 %mul, 85
  %15 = lshr i16 %14, 8
  %conv2.i = trunc i16 %15 to i8
  %call.i22 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv.i21, i8 noundef zeroext %conv2.i) #9
  %conv5.i = trunc i16 %14 to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add, i8 noundef zeroext %conv5.i) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %rpm2tach.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %rpm2tach.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %1 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %nr, align 1
  %idxprom = zext i8 %2 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %index, align 4
  %idxprom3 = zext i8 %4 to i32
  %arrayidx4 = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 14, i32 %idxprom, i32 %idxprom3
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx4, align 1
  %conv = zext i8 %6 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %5 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %nr, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.147)
  switch i8 %6, label %if.end.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb23
    i8 2, label %sw.bb28
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %index, align 4
  %add = add i8 %9, 92
  %call5 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add) #9
  %conv6 = trunc i32 %call5 to i8
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %index, align 4
  %idxprom = zext i8 %11 to i32
  %arrayidx8 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 14, i32 3, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv6, ptr %arrayidx8, align 1
  %13 = load i8, ptr %index, align 4
  %idxprom12 = zext i8 %13 to i32
  %arrayidx13 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 14, i32 3, i32 %idxprom12
  %14 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -33, i8 %15)
  %cmp.not = icmp ugt i8 %15, -33
  br i1 %cmp.not, label %if.end18, label %sw.bb.cleanup.sink.split_crit_edge

sw.bb.cleanup.sink.split_crit_edge:               ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end18:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %add21 = add i8 %13, 48
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %index24 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %16 = ptrtoint ptr %index24 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %index24, align 4
  %add26 = add i8 %17, 100
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %index29 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %18 = ptrtoint ptr %index29 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index29, align 4
  %add31 = add i8 %19, 56
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %sw.bb23, %if.end18, %if.end.sw.epilog_crit_edge
  %reg.0 = phi i8 [ 0, %if.end.sw.epilog_crit_edge ], [ %add31, %sw.bb28 ], [ %add26, %sw.bb23 ], [ %add21, %if.end18 ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %22 = call i32 @llvm.smax.i32(i32 %21, i32 0)
  %23 = call i32 @llvm.umin.i32(i32 %22, i32 255)
  %conv43 = trunc i32 %23 to i8
  %24 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nr, align 1
  %idxprom46 = zext i8 %25 to i32
  %index48 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %26 = ptrtoint ptr %index48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %index48, align 4
  %idxprom49 = zext i8 %27 to i32
  %arrayidx50 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 14, i32 %idxprom46, i32 %idxprom49
  %28 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv43, ptr %arrayidx50, align 1
  %29 = load i8, ptr %nr, align 1
  %idxprom53 = zext i8 %29 to i32
  %30 = load i8, ptr %index48, align 4
  %idxprom56 = zext i8 %30 to i32
  %arrayidx57 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 14, i32 %idxprom53, i32 %idxprom56
  %31 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx57, align 1
  %call58 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %reg.0, i8 noundef zeroext %32) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.epilog, %sw.bb.cleanup.sink.split_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmfreq_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 15, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %5 = and i8 %4, 15
  %6 = tail call i8 @llvm.umin.i8(i8 %5, i8 8)
  %7 = zext i8 %6 to i32
  %arrayidx12 = getelementptr [9 x i32], ptr @pwmfreq_table, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call13, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmfreq_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %6)
  %cmp15.not = icmp sgt i32 %6, 13
  br i1 %cmp15.not, label %for.cond.1, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %6)
  %cmp15.not.1 = icmp ugt i32 %6, 18
  br i1 %cmp15.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 26, i32 %6)
  %cmp15.not.2 = icmp ugt i32 %6, 26
  br i1 %cmp15.not.2, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %6)
  %cmp15.not.3 = icmp ugt i32 %6, 32
  br i1 %cmp15.not.3, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %6)
  %cmp15.not.4 = icmp ugt i32 %6, 40
  br i1 %cmp15.not.4, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 51, i32 %6)
  %cmp15.not.5 = icmp ugt i32 %6, 51
  br i1 %cmp15.not.5, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 73, i32 %6)
  %cmp15.not.6 = icmp ugt i32 %6, 73
  br i1 %cmp15.not.6, label %for.cond.7, label %for.cond.6.for.end_crit_edge

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 11294, i32 %6)
  %cmp15.not.7 = icmp ugt i32 %6, 11294
  %spec.select = select i1 %cmp15.not.7, i8 8, i8 7
  br label %for.end

for.end:                                          ; preds = %for.cond.7, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %__fc_i.0.lcssa = phi i8 [ 0, %if.end.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 2, %for.cond.2.for.end_crit_edge ], [ 3, %for.cond.3.for.end_crit_edge ], [ 4, %for.cond.4.for.end_crit_edge ], [ 5, %for.cond.5.for.end_crit_edge ], [ 6, %for.cond.6.for.end_crit_edge ], [ %spec.select, %for.cond.7 ]
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %add21 = add i8 %8, 95
  %call23 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %add21) #9
  %conv24 = trunc i32 %call23 to i8
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %index, align 4
  %idxprom = zext i8 %10 to i32
  %arrayidx26 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom
  %11 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv24, ptr %arrayidx26, align 1
  %12 = load i8, ptr %index, align 4
  %idxprom29 = zext i8 %12 to i32
  %arrayidx30 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom29
  %13 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx30, align 1
  %15 = and i8 %14, -16
  store i8 %15, ptr %arrayidx30, align 1
  %16 = load i8, ptr %index, align 4
  %idxprom35 = zext i8 %16 to i32
  %arrayidx36 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %idxprom35
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx36, align 1
  %conv38 = or i8 %18, %__fc_i.0.lcssa
  store i8 %conv38, ptr %arrayidx36, align 1
  %19 = load i8, ptr %index, align 4
  %conv40 = zext i8 %19 to i32
  %add41 = add i8 %19, 95
  %arrayidx46 = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 15, i32 %conv40
  %20 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx46, align 1
  %call47 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %add41, i8 noundef zeroext %21) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmctrl_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 16, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmctrl_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %conv = zext i8 %6 to i32
  call fastcc void @adt7475_read_pwm(ptr noundef %3, i32 noundef %conv)
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %conv4 = zext i8 %8 to i32
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %arrayidx = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 17, i32 %conv4
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %15 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %10, label %if.end.hw_set_pwm.exit.thread_crit_edge [
    i32 0, label %if.end._crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
  ]

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %20

if.end.hw_set_pwm.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %20

sw.bb2.i:                                         ; preds = %if.end
  %switch.tableidx = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %switch.tableidx)
  %16 = icmp ult i8 %switch.tableidx, 7
  br i1 %16, label %switch.hole_check, label %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge

sw.bb2.i.hw_set_pwm.exit.thread_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

switch.hole_check:                                ; preds = %sw.bb2.i
  %switch.shifted = lshr i8 107, %switch.tableidx
  %17 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.lobit.not = icmp eq i8 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.hw_set_pwm.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.hw_set_pwm.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %18 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.pwmctrl_store, i32 0, i32 %18
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %19)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %20

20:                                               ; preds = %switch.lookup, %sw.bb1.i, %if.end._crit_edge
  %val.0.i = phi i8 [ -32, %sw.bb1.i ], [ 96, %if.end._crit_edge ], [ %switch.load, %switch.lookup ]
  %conv.i = trunc i32 %10 to i8
  %arrayidx.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 16, i32 %conv4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv.i, ptr %arrayidx.i, align 1
  %arrayidx13.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 17, i32 %conv4
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %12, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 14, i32 3, i32 %conv4
  %23 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx15.i, align 1
  %25 = and i8 %24, 31
  %or.i = or i8 %25, %val.0.i
  store i8 %or.i, ptr %arrayidx15.i, align 1
  %conv24.i = add i8 %8, 92
  %call28.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv24.i, i8 noundef zeroext %or.i) #9
  br label %hw_set_pwm.exit.thread

hw_set_pwm.exit.thread:                           ; preds = %20, %switch.hole_check.hw_set_pwm.exit.thread_crit_edge, %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge, %if.end.hw_set_pwm.exit.thread_crit_edge
  %26 = phi i32 [ %count, %20 ], [ -22, %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge ], [ -22, %if.end.hw_set_pwm.exit.thread_crit_edge ], [ -22, %switch.hole_check.hw_set_pwm.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %hw_set_pwm.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %hw_set_pwm.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmchan_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %index, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr %struct.adt7475_data, ptr %call, i32 0, i32 17, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwmchan_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %conv = zext i8 %6 to i32
  call fastcc void @adt7475_read_pwm(ptr noundef %3, i32 noundef %conv)
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %conv4 = zext i8 %8 to i32
  %arrayidx = getelementptr %struct.adt7475_data, ptr %1, i32 0, i32 16, i32 %conv4
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %13 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %driver_data.i.i.i, align 4
  %15 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %10, label %if.end.hw_set_pwm.exit.thread_crit_edge [
    i8 0, label %if.end._crit_edge
    i8 1, label %sw.bb1.i
    i8 2, label %sw.bb2.i
  ]

if.end._crit_edge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

if.end.hw_set_pwm.exit.thread_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %19

sw.bb2.i:                                         ; preds = %if.end
  %switch.tableidx = add i32 %12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 7
  br i1 %16, label %switch.hole_check, label %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge

sw.bb2.i.hw_set_pwm.exit.thread_crit_edge:        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

switch.hole_check:                                ; preds = %sw.bb2.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 107, %switch.maskindex
  %17 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.lobit.not = icmp eq i8 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.hw_set_pwm.exit.thread_crit_edge, label %switch.lookup

switch.hole_check.hw_set_pwm.exit.thread_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %hw_set_pwm.exit.thread

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.pwmchan_store, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %19

19:                                               ; preds = %switch.lookup, %sw.bb1.i, %if.end._crit_edge
  %val.0.i = phi i8 [ -32, %sw.bb1.i ], [ 96, %if.end._crit_edge ], [ %switch.load, %switch.lookup ]
  %arrayidx.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 16, i32 %conv4
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %10, ptr %arrayidx.i, align 1
  %conv11.i = trunc i32 %12 to i8
  %arrayidx13.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 17, i32 %conv4
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv11.i, ptr %arrayidx13.i, align 1
  %arrayidx15.i = getelementptr %struct.adt7475_data, ptr %14, i32 0, i32 14, i32 3, i32 %conv4
  %22 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx15.i, align 1
  %24 = and i8 %23, 31
  %or.i = or i8 %24, %val.0.i
  store i8 %or.i, ptr %arrayidx15.i, align 1
  %conv24.i = add i8 %8, 92
  %call28.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %conv24.i, i8 noundef zeroext %or.i) #9
  br label %hw_set_pwm.exit.thread

hw_set_pwm.exit.thread:                           ; preds = %19, %switch.hole_check.hw_set_pwm.exit.thread_crit_edge, %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge, %if.end.hw_set_pwm.exit.thread_crit_edge
  %25 = phi i32 [ %count, %19 ], [ -22, %sw.bb2.i.hw_set_pwm.exit.thread_crit_edge ], [ -22, %if.end.hw_set_pwm.exit.thread_crit_edge ], [ -22, %switch.hole_check.hw_set_pwm.exit.thread_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %hw_set_pwm.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %25, %hw_set_pwm.exit.thread ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stall_disable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %conv = zext i8 %3 to i32
  %shl = shl i32 32, %conv
  %enh_acoustics = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %enh_acoustics to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enh_acoustics, align 1
  %conv2 = zext i8 %5 to i32
  %and = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %lnot.ext)
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stall_disable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %6 to i32
  %shl = shl i32 32, %conv
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %enh_acoustics = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %enh_acoustics to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enh_acoustics, align 1
  %9 = trunc i32 %shl to i8
  %10 = xor i8 %9, -1
  %conv6 = and i8 %8, %10
  store i8 %conv6, ptr %enh_acoustics, align 1
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.end.if.end14_crit_edge, label %if.then8

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv13 = or i8 %8, %9
  %13 = ptrtoint ptr %enh_acoustics to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13, ptr %enh_acoustics, align 1
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %if.end.if.end14_crit_edge
  %14 = ptrtoint ptr %enh_acoustics to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enh_acoustics, align 1
  %call17 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 98, i8 noundef zeroext %15) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end14 ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_use_point2_pwm_at_crit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %config4 = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 5
  %1 = ptrtoint ptr %config4 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %config4, align 2
  %3 = lshr i8 %2, 3
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pwm_use_point2_pwm_at_crit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %switch = icmp ult i32 %6, 2
  br i1 %switch, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %lock = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call6 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 125) #9
  %conv = trunc i32 %call6 to i8
  %config4 = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  %conv14 = and i8 %conv, -9
  %masksel = select i1 %tobool7.not, i8 0, i8 8
  %storemerge = or i8 %masksel, %conv14
  %9 = ptrtoint ptr %config4 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %storemerge, ptr %config4, align 2
  %call17 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext 125, i8 noundef zeroext %storemerge) #9
  call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpu0_vid_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @adt7475_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %vid = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 19
  %1 = ptrtoint ptr %vid to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %vid, align 1
  %conv = zext i8 %2 to i32
  %vrm = getelementptr inbounds %struct.adt7475_data, ptr %call, i32 0, i32 20
  %3 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %vrm, align 2
  %call3 = tail call i32 @vid_from_reg(i32 noundef %conv, i8 noundef zeroext %4) #9
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %call3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vid_from_reg(i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %vrm = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %vrm to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vrm, align 2
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.38, i32 noundef %conv)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vrm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
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
  store i32 -1, ptr %val, align 4, !annotation !415
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #9
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
  %5 = icmp ugt i32 %4, 255
  br i1 %5, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %4 to i8
  %vrm = getelementptr inbounds %struct.adt7475_data, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %vrm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %vrm, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !52, !53, !54, !56, !57, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !95, !96, !98, !99, !101, !102, !104, !105, !107, !108, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !125, !126, !128, !130, !131, !133, !134, !136, !137, !139, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !158, !159, !161, !162, !164, !165, !167, !168, !170, !171, !173, !174, !176, !177, !179, !180, !182, !183, !185, !186, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !224, !225, !227, !228, !230, !231, !233, !234, !236, !237, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !282, !284, !285, !287, !288, !290, !291, !293, !295, !297, !298, !300, !301, !303, !304, !306, !307, !309, !310, !312, !313, !315, !316, !318, !320, !322, !323, !325, !326, !328, !329, !331, !332, !334, !336, !338, !339, !341, !342, !344, !345, !347, !348, !350, !352, !354, !355, !357, !358, !360, !361, !363, !364, !366, !368, !370, !371, !373, !374, !376, !377, !379, !380, !382, !384, !386, !387, !389, !390, !392, !394, !396, !398, !400, !402, !403, !404}
!llvm.module.flags = !{!406, !407, !408, !409, !410, !411, !412, !413}
!llvm.ident = !{!414}

!0 = !{ptr @__initcall__kmod_adt7475__329_1925_adt7475_driver_init6, !1, !"__initcall__kmod_adt7475__329_1925_adt7475_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adt7475.c", i32 1925, i32 1}
!2 = !{ptr @__exitcall_adt7475_driver_exit, !1, !"__exitcall_adt7475_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author330, !4, !"__UNIQUE_ID_author330", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adt7475.c", i32 1927, i32 1}
!5 = !{ptr @__UNIQUE_ID_description331, !6, !"__UNIQUE_ID_description331", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adt7475.c", i32 1928, i32 1}
!7 = !{ptr @__UNIQUE_ID_file332, !8, !"__UNIQUE_ID_file332", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adt7475.c", i32 1929, i32 1}
!9 = !{ptr @__UNIQUE_ID_license333, !8, !"__UNIQUE_ID_license333", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adt7475.c", i32 1728, i32 11}
!12 = !{ptr @adt7475_driver, !13, !"adt7475_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adt7475.c", i32 1725, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adt7475.c", i32 1546, i32 15}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/adt7475.c", i32 1547, i32 15}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/adt7475.c", i32 1548, i32 15}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adt7475.c", i32 1549, i32 15}
!22 = !{ptr @adt7475_probe.names, !23, !"names", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/adt7475.c", i32 1545, i32 28}
!24 = !{ptr @adt7475_probe.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/adt7475.c", i32 1562, i32 2}
!26 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/adt7475.c", i32 1633, i32 3}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @adt7475_probe._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @adt7475_probe._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/adt7475.c", i32 1652, i32 3}
!37 = !{ptr @adt7475_probe._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @adt7475_probe._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/adt7475.c", i32 1701, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @adt7475_probe._entry.14, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @adt7475_probe._entry_ptr.17, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/adt7475.c", i32 1704, i32 3}
!46 = !{ptr @adt7475_probe._entry.18, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @adt7475_probe._entry_ptr.20, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.24, !45, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/adt7475.c", i32 1711, i32 3}
!56 = !{ptr @adt7475_probe._entry.27, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @adt7475_probe._entry_ptr.29, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.31, !55, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/adt7475.c", i32 1486, i32 28}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/adt7475.c", i32 1488, i32 28}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/hwmon/adt7475.c", i32 1490, i32 28}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/adt7475.c", i32 1492, i32 28}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/adt7475.c", i32 1519, i32 7}
!70 = !{ptr @adt7475_attr_group, !71, !"adt7475_attr_group", i1 false, i1 false}
!71 = !{!"../drivers/hwmon/adt7475.c", i32 1302, i32 37}
!72 = !{ptr @adt7475_attrs, !73, !"adt7475_attrs", i1 false, i1 false}
!73 = !{!"../drivers/hwmon/adt7475.c", i32 1178, i32 26}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/adt7475.c", i32 1086, i32 8}
!76 = !{ptr @sensor_dev_attr_in1_input, !75, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/adt7475.c", i32 338, i32 23}
!79 = !{ptr @adt7473_in_scaling, !80, !"adt7473_in_scaling", i1 false, i1 false}
!80 = !{!"../drivers/hwmon/adt7475.c", i32 275, i32 18}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/hwmon/adt7475.c", i32 1087, i32 8}
!83 = !{ptr @sensor_dev_attr_in1_max, !82, !"sensor_dev_attr_in1_max", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/hwmon/adt7475.c", i32 1088, i32 8}
!86 = !{ptr @sensor_dev_attr_in1_min, !85, !"sensor_dev_attr_in1_min", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hwmon/adt7475.c", i32 1089, i32 8}
!89 = !{ptr @sensor_dev_attr_in1_alarm, !88, !"sensor_dev_attr_in1_alarm", i1 false, i1 false}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/hwmon/adt7475.c", i32 1090, i32 8}
!92 = !{ptr @sensor_dev_attr_in2_input, !91, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!93 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/adt7475.c", i32 1091, i32 8}
!95 = !{ptr @sensor_dev_attr_in2_max, !94, !"sensor_dev_attr_in2_max", i1 false, i1 false}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/adt7475.c", i32 1092, i32 8}
!98 = !{ptr @sensor_dev_attr_in2_min, !97, !"sensor_dev_attr_in2_min", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/hwmon/adt7475.c", i32 1093, i32 8}
!101 = !{ptr @sensor_dev_attr_in2_alarm, !100, !"sensor_dev_attr_in2_alarm", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/adt7475.c", i32 1106, i32 8}
!104 = !{ptr @sensor_dev_attr_temp1_input, !103, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/hwmon/adt7475.c", i32 1107, i32 8}
!107 = !{ptr @sensor_dev_attr_temp1_alarm, !106, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/hwmon/adt7475.c", i32 1108, i32 8}
!110 = !{ptr @sensor_dev_attr_temp1_fault, !109, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/adt7475.c", i32 1109, i32 8}
!113 = !{ptr @sensor_dev_attr_temp1_max, !112, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/hwmon/adt7475.c", i32 1110, i32 8}
!116 = !{ptr @sensor_dev_attr_temp1_min, !115, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/hwmon/adt7475.c", i32 1111, i32 8}
!119 = !{ptr @sensor_dev_attr_temp1_offset, !118, !"sensor_dev_attr_temp1_offset", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/adt7475.c", i32 1112, i32 8}
!122 = !{ptr @sensor_dev_attr_temp1_auto_point1_temp, !121, !"sensor_dev_attr_temp1_auto_point1_temp", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/hwmon/adt7475.c", i32 1113, i32 8}
!125 = !{ptr @sensor_dev_attr_temp1_auto_point2_temp, !124, !"sensor_dev_attr_temp1_auto_point2_temp", i1 false, i1 false}
!126 = !{ptr @autorange_table, !127, !"autorange_table", i1 false, i1 false}
!127 = !{!"../drivers/hwmon/adt7475.c", i32 626, i32 18}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/adt7475.c", i32 1114, i32 8}
!130 = !{ptr @sensor_dev_attr_temp1_crit, !129, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!131 = !{ptr @.str.55, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/adt7475.c", i32 1115, i32 8}
!133 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !132, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/adt7475.c", i32 1116, i32 8}
!136 = !{ptr @sensor_dev_attr_temp1_smoothing, !135, !"sensor_dev_attr_temp1_smoothing", i1 false, i1 false}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/adt7475.c", i32 568, i32 23}
!139 = !{ptr @ad7475_st_map, !140, !"ad7475_st_map", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/adt7475.c", i32 541, i32 18}
!141 = !{ptr @.str.58, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/hwmon/adt7475.c", i32 1117, i32 8}
!143 = !{ptr @sensor_dev_attr_temp2_input, !142, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!144 = !{ptr @.str.59, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/adt7475.c", i32 1118, i32 8}
!146 = !{ptr @sensor_dev_attr_temp2_alarm, !145, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!147 = !{ptr @.str.60, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/hwmon/adt7475.c", i32 1119, i32 8}
!149 = !{ptr @sensor_dev_attr_temp2_max, !148, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!150 = !{ptr @.str.61, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/adt7475.c", i32 1120, i32 8}
!152 = !{ptr @sensor_dev_attr_temp2_min, !151, !"sensor_dev_attr_temp2_min", i1 false, i1 false}
!153 = !{ptr @.str.62, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/hwmon/adt7475.c", i32 1121, i32 8}
!155 = !{ptr @sensor_dev_attr_temp2_offset, !154, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/hwmon/adt7475.c", i32 1122, i32 8}
!158 = !{ptr @sensor_dev_attr_temp2_auto_point1_temp, !157, !"sensor_dev_attr_temp2_auto_point1_temp", i1 false, i1 false}
!159 = !{ptr @.str.64, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/hwmon/adt7475.c", i32 1123, i32 8}
!161 = !{ptr @sensor_dev_attr_temp2_auto_point2_temp, !160, !"sensor_dev_attr_temp2_auto_point2_temp", i1 false, i1 false}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/hwmon/adt7475.c", i32 1124, i32 8}
!164 = !{ptr @sensor_dev_attr_temp2_crit, !163, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!165 = !{ptr @.str.66, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/hwmon/adt7475.c", i32 1125, i32 8}
!167 = !{ptr @sensor_dev_attr_temp2_crit_hyst, !166, !"sensor_dev_attr_temp2_crit_hyst", i1 false, i1 false}
!168 = !{ptr @.str.67, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/hwmon/adt7475.c", i32 1126, i32 8}
!170 = !{ptr @sensor_dev_attr_temp2_smoothing, !169, !"sensor_dev_attr_temp2_smoothing", i1 false, i1 false}
!171 = !{ptr @.str.68, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/hwmon/adt7475.c", i32 1127, i32 8}
!173 = !{ptr @sensor_dev_attr_temp3_input, !172, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!174 = !{ptr @.str.69, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/hwmon/adt7475.c", i32 1129, i32 8}
!176 = !{ptr @sensor_dev_attr_temp3_fault, !175, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!177 = !{ptr @.str.70, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/hwmon/adt7475.c", i32 1128, i32 8}
!179 = !{ptr @sensor_dev_attr_temp3_alarm, !178, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!180 = !{ptr @.str.71, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/hwmon/adt7475.c", i32 1130, i32 8}
!182 = !{ptr @sensor_dev_attr_temp3_max, !181, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!183 = !{ptr @.str.72, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/hwmon/adt7475.c", i32 1131, i32 8}
!185 = !{ptr @sensor_dev_attr_temp3_min, !184, !"sensor_dev_attr_temp3_min", i1 false, i1 false}
!186 = !{ptr @.str.73, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/hwmon/adt7475.c", i32 1132, i32 8}
!188 = !{ptr @sensor_dev_attr_temp3_offset, !187, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!189 = !{ptr @.str.74, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/hwmon/adt7475.c", i32 1133, i32 8}
!191 = !{ptr @sensor_dev_attr_temp3_auto_point1_temp, !190, !"sensor_dev_attr_temp3_auto_point1_temp", i1 false, i1 false}
!192 = !{ptr @.str.75, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/hwmon/adt7475.c", i32 1134, i32 8}
!194 = !{ptr @sensor_dev_attr_temp3_auto_point2_temp, !193, !"sensor_dev_attr_temp3_auto_point2_temp", i1 false, i1 false}
!195 = !{ptr @.str.76, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/hwmon/adt7475.c", i32 1135, i32 8}
!197 = !{ptr @sensor_dev_attr_temp3_crit, !196, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!198 = !{ptr @.str.77, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/hwmon/adt7475.c", i32 1136, i32 8}
!200 = !{ptr @sensor_dev_attr_temp3_crit_hyst, !199, !"sensor_dev_attr_temp3_crit_hyst", i1 false, i1 false}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/hwmon/adt7475.c", i32 1137, i32 8}
!203 = !{ptr @sensor_dev_attr_temp3_smoothing, !202, !"sensor_dev_attr_temp3_smoothing", i1 false, i1 false}
!204 = !{ptr @.str.79, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/hwmon/adt7475.c", i32 1138, i32 8}
!206 = !{ptr @sensor_dev_attr_fan1_input, !205, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!207 = !{ptr @.str.80, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/hwmon/adt7475.c", i32 1139, i32 8}
!209 = !{ptr @sensor_dev_attr_fan1_min, !208, !"sensor_dev_attr_fan1_min", i1 false, i1 false}
!210 = !{ptr @.str.81, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/hwmon/adt7475.c", i32 1140, i32 8}
!212 = !{ptr @sensor_dev_attr_fan1_alarm, !211, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!213 = !{ptr @.str.82, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/hwmon/adt7475.c", i32 1141, i32 8}
!215 = !{ptr @sensor_dev_attr_fan2_input, !214, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!216 = !{ptr @.str.83, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/hwmon/adt7475.c", i32 1142, i32 8}
!218 = !{ptr @sensor_dev_attr_fan2_min, !217, !"sensor_dev_attr_fan2_min", i1 false, i1 false}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/adt7475.c", i32 1143, i32 8}
!221 = !{ptr @sensor_dev_attr_fan2_alarm, !220, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!222 = !{ptr @.str.85, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/hwmon/adt7475.c", i32 1144, i32 8}
!224 = !{ptr @sensor_dev_attr_fan3_input, !223, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!225 = !{ptr @.str.86, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/hwmon/adt7475.c", i32 1145, i32 8}
!227 = !{ptr @sensor_dev_attr_fan3_min, !226, !"sensor_dev_attr_fan3_min", i1 false, i1 false}
!228 = !{ptr @.str.87, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/hwmon/adt7475.c", i32 1146, i32 8}
!230 = !{ptr @sensor_dev_attr_fan3_alarm, !229, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!231 = !{ptr @.str.88, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/hwmon/adt7475.c", i32 1150, i32 8}
!233 = !{ptr @sensor_dev_attr_pwm1, !232, !"sensor_dev_attr_pwm1", i1 false, i1 false}
!234 = !{ptr @.str.89, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/hwmon/adt7475.c", i32 1151, i32 8}
!236 = !{ptr @sensor_dev_attr_pwm1_freq, !235, !"sensor_dev_attr_pwm1_freq", i1 false, i1 false}
!237 = !{ptr @pwmfreq_table, !238, !"pwmfreq_table", i1 false, i1 false}
!238 = !{!"../drivers/hwmon/adt7475.c", i32 964, i32 18}
!239 = !{ptr @.str.90, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/adt7475.c", i32 1152, i32 8}
!241 = !{ptr @sensor_dev_attr_pwm1_enable, !240, !"sensor_dev_attr_pwm1_enable", i1 false, i1 false}
!242 = !{ptr @.str.91, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/adt7475.c", i32 1153, i32 8}
!244 = !{ptr @sensor_dev_attr_pwm1_auto_channels_temp, !243, !"sensor_dev_attr_pwm1_auto_channels_temp", i1 false, i1 false}
!245 = !{ptr @.str.92, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/adt7475.c", i32 1154, i32 8}
!247 = !{ptr @sensor_dev_attr_pwm1_auto_point1_pwm, !246, !"sensor_dev_attr_pwm1_auto_point1_pwm", i1 false, i1 false}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/adt7475.c", i32 1155, i32 8}
!250 = !{ptr @sensor_dev_attr_pwm1_auto_point2_pwm, !249, !"sensor_dev_attr_pwm1_auto_point2_pwm", i1 false, i1 false}
!251 = !{ptr @.str.94, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/adt7475.c", i32 1156, i32 8}
!253 = !{ptr @sensor_dev_attr_pwm1_stall_disable, !252, !"sensor_dev_attr_pwm1_stall_disable", i1 false, i1 false}
!254 = !{ptr @.str.95, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/adt7475.c", i32 1164, i32 8}
!256 = !{ptr @sensor_dev_attr_pwm3, !255, !"sensor_dev_attr_pwm3", i1 false, i1 false}
!257 = !{ptr @.str.96, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/adt7475.c", i32 1165, i32 8}
!259 = !{ptr @sensor_dev_attr_pwm3_freq, !258, !"sensor_dev_attr_pwm3_freq", i1 false, i1 false}
!260 = !{ptr @.str.97, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/adt7475.c", i32 1166, i32 8}
!262 = !{ptr @sensor_dev_attr_pwm3_enable, !261, !"sensor_dev_attr_pwm3_enable", i1 false, i1 false}
!263 = !{ptr @.str.98, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/adt7475.c", i32 1167, i32 8}
!265 = !{ptr @sensor_dev_attr_pwm3_auto_channels_temp, !264, !"sensor_dev_attr_pwm3_auto_channels_temp", i1 false, i1 false}
!266 = !{ptr @.str.99, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/adt7475.c", i32 1168, i32 8}
!268 = !{ptr @sensor_dev_attr_pwm3_auto_point1_pwm, !267, !"sensor_dev_attr_pwm3_auto_point1_pwm", i1 false, i1 false}
!269 = !{ptr @.str.100, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/adt7475.c", i32 1169, i32 8}
!271 = !{ptr @sensor_dev_attr_pwm3_auto_point2_pwm, !270, !"sensor_dev_attr_pwm3_auto_point2_pwm", i1 false, i1 false}
!272 = !{ptr @.str.101, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/adt7475.c", i32 1170, i32 8}
!274 = !{ptr @sensor_dev_attr_pwm3_stall_disable, !273, !"sensor_dev_attr_pwm3_stall_disable", i1 false, i1 false}
!275 = !{ptr @.str.102, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/adt7475.c", i32 1173, i32 8}
!277 = !{ptr @dev_attr_pwm_use_point2_pwm_at_crit, !276, !"dev_attr_pwm_use_point2_pwm_at_crit", i1 false, i1 false}
!278 = !{ptr @fan4_attr_group, !279, !"fan4_attr_group", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/adt7475.c", i32 1303, i32 37}
!280 = !{ptr @fan4_attrs, !281, !"fan4_attrs", i1 false, i1 false}
!281 = !{!"../drivers/hwmon/adt7475.c", i32 1246, i32 26}
!282 = !{ptr @.str.103, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/hwmon/adt7475.c", i32 1147, i32 8}
!284 = !{ptr @sensor_dev_attr_fan4_input, !283, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!285 = !{ptr @.str.104, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/hwmon/adt7475.c", i32 1148, i32 8}
!287 = !{ptr @sensor_dev_attr_fan4_min, !286, !"sensor_dev_attr_fan4_min", i1 false, i1 false}
!288 = !{ptr @.str.105, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/hwmon/adt7475.c", i32 1149, i32 8}
!290 = !{ptr @sensor_dev_attr_fan4_alarm, !289, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!291 = !{ptr @pwm2_attr_group, !292, !"pwm2_attr_group", i1 false, i1 false}
!292 = !{!"../drivers/hwmon/adt7475.c", i32 1304, i32 37}
!293 = !{ptr @pwm2_attrs, !294, !"pwm2_attrs", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/adt7475.c", i32 1253, i32 26}
!295 = !{ptr @.str.106, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/adt7475.c", i32 1157, i32 8}
!297 = !{ptr @sensor_dev_attr_pwm2, !296, !"sensor_dev_attr_pwm2", i1 false, i1 false}
!298 = !{ptr @.str.107, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/hwmon/adt7475.c", i32 1158, i32 8}
!300 = !{ptr @sensor_dev_attr_pwm2_freq, !299, !"sensor_dev_attr_pwm2_freq", i1 false, i1 false}
!301 = !{ptr @.str.108, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/hwmon/adt7475.c", i32 1159, i32 8}
!303 = !{ptr @sensor_dev_attr_pwm2_enable, !302, !"sensor_dev_attr_pwm2_enable", i1 false, i1 false}
!304 = !{ptr @.str.109, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/hwmon/adt7475.c", i32 1160, i32 8}
!306 = !{ptr @sensor_dev_attr_pwm2_auto_channels_temp, !305, !"sensor_dev_attr_pwm2_auto_channels_temp", i1 false, i1 false}
!307 = !{ptr @.str.110, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/hwmon/adt7475.c", i32 1161, i32 8}
!309 = !{ptr @sensor_dev_attr_pwm2_auto_point1_pwm, !308, !"sensor_dev_attr_pwm2_auto_point1_pwm", i1 false, i1 false}
!310 = !{ptr @.str.111, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/hwmon/adt7475.c", i32 1162, i32 8}
!312 = !{ptr @sensor_dev_attr_pwm2_auto_point2_pwm, !311, !"sensor_dev_attr_pwm2_auto_point2_pwm", i1 false, i1 false}
!313 = !{ptr @.str.112, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/hwmon/adt7475.c", i32 1163, i32 8}
!315 = !{ptr @sensor_dev_attr_pwm2_stall_disable, !314, !"sensor_dev_attr_pwm2_stall_disable", i1 false, i1 false}
!316 = !{ptr @in0_attr_group, !317, !"in0_attr_group", i1 false, i1 false}
!317 = !{!"../drivers/hwmon/adt7475.c", i32 1305, i32 37}
!318 = !{ptr @in0_attrs, !319, !"in0_attrs", i1 false, i1 false}
!319 = !{!"../drivers/hwmon/adt7475.c", i32 1264, i32 26}
!320 = !{ptr @.str.113, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/hwmon/adt7475.c", i32 1082, i32 8}
!322 = !{ptr @sensor_dev_attr_in0_input, !321, !"sensor_dev_attr_in0_input", i1 false, i1 false}
!323 = !{ptr @.str.114, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/hwmon/adt7475.c", i32 1083, i32 8}
!325 = !{ptr @sensor_dev_attr_in0_max, !324, !"sensor_dev_attr_in0_max", i1 false, i1 false}
!326 = !{ptr @.str.115, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/hwmon/adt7475.c", i32 1084, i32 8}
!328 = !{ptr @sensor_dev_attr_in0_min, !327, !"sensor_dev_attr_in0_min", i1 false, i1 false}
!329 = !{ptr @.str.116, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/hwmon/adt7475.c", i32 1085, i32 8}
!331 = !{ptr @sensor_dev_attr_in0_alarm, !330, !"sensor_dev_attr_in0_alarm", i1 false, i1 false}
!332 = !{ptr @in3_attr_group, !333, !"in3_attr_group", i1 false, i1 false}
!333 = !{!"../drivers/hwmon/adt7475.c", i32 1306, i32 37}
!334 = !{ptr @in3_attrs, !335, !"in3_attrs", i1 false, i1 false}
!335 = !{!"../drivers/hwmon/adt7475.c", i32 1272, i32 26}
!336 = !{ptr @.str.117, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/hwmon/adt7475.c", i32 1094, i32 8}
!338 = !{ptr @sensor_dev_attr_in3_input, !337, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!339 = !{ptr @.str.118, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/hwmon/adt7475.c", i32 1095, i32 8}
!341 = !{ptr @sensor_dev_attr_in3_max, !340, !"sensor_dev_attr_in3_max", i1 false, i1 false}
!342 = !{ptr @.str.119, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/hwmon/adt7475.c", i32 1096, i32 8}
!344 = !{ptr @sensor_dev_attr_in3_min, !343, !"sensor_dev_attr_in3_min", i1 false, i1 false}
!345 = !{ptr @.str.120, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/hwmon/adt7475.c", i32 1097, i32 8}
!347 = !{ptr @sensor_dev_attr_in3_alarm, !346, !"sensor_dev_attr_in3_alarm", i1 false, i1 false}
!348 = !{ptr @in4_attr_group, !349, !"in4_attr_group", i1 false, i1 false}
!349 = !{!"../drivers/hwmon/adt7475.c", i32 1307, i32 37}
!350 = !{ptr @in4_attrs, !351, !"in4_attrs", i1 false, i1 false}
!351 = !{!"../drivers/hwmon/adt7475.c", i32 1280, i32 26}
!352 = !{ptr @.str.121, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/hwmon/adt7475.c", i32 1098, i32 8}
!354 = !{ptr @sensor_dev_attr_in4_input, !353, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!355 = !{ptr @.str.122, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/hwmon/adt7475.c", i32 1099, i32 8}
!357 = !{ptr @sensor_dev_attr_in4_max, !356, !"sensor_dev_attr_in4_max", i1 false, i1 false}
!358 = !{ptr @.str.123, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/hwmon/adt7475.c", i32 1100, i32 8}
!360 = !{ptr @sensor_dev_attr_in4_min, !359, !"sensor_dev_attr_in4_min", i1 false, i1 false}
!361 = !{ptr @.str.124, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/hwmon/adt7475.c", i32 1101, i32 8}
!363 = !{ptr @sensor_dev_attr_in4_alarm, !362, !"sensor_dev_attr_in4_alarm", i1 false, i1 false}
!364 = !{ptr @in5_attr_group, !365, !"in5_attr_group", i1 false, i1 false}
!365 = !{!"../drivers/hwmon/adt7475.c", i32 1308, i32 37}
!366 = !{ptr @in5_attrs, !367, !"in5_attrs", i1 false, i1 false}
!367 = !{!"../drivers/hwmon/adt7475.c", i32 1288, i32 26}
!368 = !{ptr @.str.125, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/hwmon/adt7475.c", i32 1102, i32 8}
!370 = !{ptr @sensor_dev_attr_in5_input, !369, !"sensor_dev_attr_in5_input", i1 false, i1 false}
!371 = !{ptr @.str.126, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/hwmon/adt7475.c", i32 1103, i32 8}
!373 = !{ptr @sensor_dev_attr_in5_max, !372, !"sensor_dev_attr_in5_max", i1 false, i1 false}
!374 = !{ptr @.str.127, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/hwmon/adt7475.c", i32 1104, i32 8}
!376 = !{ptr @sensor_dev_attr_in5_min, !375, !"sensor_dev_attr_in5_min", i1 false, i1 false}
!377 = !{ptr @.str.128, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/hwmon/adt7475.c", i32 1105, i32 8}
!379 = !{ptr @sensor_dev_attr_in5_alarm, !378, !"sensor_dev_attr_in5_alarm", i1 false, i1 false}
!380 = !{ptr @vid_attr_group, !381, !"vid_attr_group", i1 false, i1 false}
!381 = !{!"../drivers/hwmon/adt7475.c", i32 1309, i32 37}
!382 = !{ptr @vid_attrs, !383, !"vid_attrs", i1 false, i1 false}
!383 = !{!"../drivers/hwmon/adt7475.c", i32 1296, i32 26}
!384 = !{ptr @.str.129, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/hwmon/adt7475.c", i32 1176, i32 8}
!386 = !{ptr @dev_attr_cpu0_vid, !385, !"dev_attr_cpu0_vid", i1 false, i1 false}
!387 = !{ptr @.str.130, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/hwmon/adt7475.c", i32 1175, i32 8}
!389 = !{ptr @dev_attr_vrm, !388, !"dev_attr_vrm", i1 false, i1 false}
!390 = !{ptr @adt7475_of_match, !391, !"adt7475_of_match", i1 false, i1 false}
!391 = !{!"../drivers/hwmon/adt7475.c", i32 169, i32 49}
!392 = !{ptr @adt7475_id, !393, !"adt7475_id", i1 false, i1 false}
!393 = !{!"../drivers/hwmon/adt7475.c", i32 160, i32 35}
!394 = !{ptr @.str.131, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/hwmon/adt7475.c", i32 1329, i32 10}
!396 = !{ptr @.str.132, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/hwmon/adt7475.c", i32 1333, i32 10}
!398 = !{ptr @.str.133, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/hwmon/adt7475.c", i32 1335, i32 10}
!400 = !{ptr @.str.134, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/hwmon/adt7475.c", i32 1337, i32 3}
!402 = !{ptr @.str.135, !401, !"<string literal>", i1 false, i1 false}
!403 = !{ptr @adt7475_detect.__UNIQUE_ID_ddebug328, !401, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!404 = !{ptr @normal_i2c, !405, !"normal_i2c", i1 false, i1 false}
!405 = !{!"../drivers/hwmon/adt7475.c", i32 156, i32 29}
!406 = !{i32 1, !"wchar_size", i32 2}
!407 = !{i32 1, !"min_enum_size", i32 4}
!408 = !{i32 8, !"branch-target-enforcement", i32 0}
!409 = !{i32 8, !"sign-return-address", i32 0}
!410 = !{i32 8, !"sign-return-address-all", i32 0}
!411 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!412 = !{i32 7, !"uwtable", i32 1}
!413 = !{i32 7, !"frame-pointer", i32 2}
!414 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!415 = !{!"auto-init"}
!416 = !{i64 2149003076, i64 2149003081, i64 2149003094, i64 2149003138, i64 2149003172, i64 2149003193}
!417 = !{i8 0, i8 2}
