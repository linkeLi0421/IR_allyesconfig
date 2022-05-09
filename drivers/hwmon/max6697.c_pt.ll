; ModuleID = '/llk/IR_all_yes/drivers/hwmon/max6697.c_pt.bc'
source_filename = "../drivers/hwmon/max6697.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.max6697_chip_data = type { i32, i32, i32, i32, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute_2 = type { %struct.device_attribute, i8, i8 }
%struct.max6697_platform_data = type { i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.max6697_data = type { ptr, i32, ptr, i32, i32, %struct.mutex, i32, i8, [8 x [4 x i8]], i32 }

@__initcall__kmod_max6697__296_793_max6697_driver_init6 = internal global ptr @max6697_driver_init, section ".initcall6.init", align 4
@max6697_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @max6697_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max6697_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @max6697_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max6697_driver_exit = internal global ptr @max6697_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [50 x i8] c"max6697.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [54 x i8] c"max6697.description=MAX6697 temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [35 x i8] c"max6697.file=drivers/hwmon/max6697\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [20 x i8] c"max6697.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max6697\00", [24 x i8] zeroinitializer }, align 32
@max6697_of_match = internal constant { [11 x %struct.of_device_id], [532 x i8] } { [11 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6581\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6602\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6622\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6636\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6689\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 4 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6693\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 5 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6694\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 6 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6697\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 7 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6698\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 8 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max6699\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 9 to ptr) }, %struct.of_device_id zeroinitializer], [532 x i8] zeroinitializer }, align 32
@max6697_id = internal constant { [11 x %struct.i2c_device_id], [88 x i8] } { [11 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max6581\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"max6602\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"max6622\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"max6636\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"max6689\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"max6693\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"max6694\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"max6697\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"max6698\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id { [20 x i8] c"max6699\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }, %struct.i2c_device_id zeroinitializer], [88 x i8] zeroinitializer }, align 32
@max6697_chip_data = internal constant { [10 x %struct.max6697_chip_data], [48 x i8] } { [10 x %struct.max6697_chip_data] [%struct.max6697_chip_data { i32 8, i32 127, i32 255, i32 254, i8 34, ptr @max6581_alarm_map }, %struct.max6697_chip_data { i32 5, i32 2, i32 18, i32 30, i8 40, ptr null }, %struct.max6697_chip_data { i32 5, i32 2, i32 18, i32 30, i8 40, ptr null }, %struct.max6697_chip_data { i32 7, i32 2, i32 114, i32 126, i8 40, ptr null }, %struct.max6697_chip_data { i32 7, i32 2, i32 114, i32 126, i8 40, ptr null }, %struct.max6697_chip_data { i32 7, i32 2, i32 114, i32 126, i8 44, ptr null }, %struct.max6697_chip_data { i32 5, i32 2, i32 18, i32 30, i8 44, ptr null }, %struct.max6697_chip_data { i32 7, i32 2, i32 114, i32 126, i8 40, ptr null }, %struct.max6697_chip_data { i32 7, i32 2, i32 114, i32 14, i8 40, ptr null }, %struct.max6697_chip_data { i32 5, i32 2, i32 18, i32 30, i8 40, ptr null }], [48 x i8] zeroinitializer }, align 32
@max6697_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@max6697_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @max6697_group, ptr null], [24 x i8] zeroinitializer }, align 32
@max6581_alarm_map = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\00\00\01\02\03\04\05\06\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smbus-timeout-disable\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"extended-range-enable\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"beta-compensation-enable\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alert-mask\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"over-temperature-mask\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"resistance-cancellation\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"transistor-ideality\00", [44 x i8] zeroinitializer }, align 32
@max6697_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @max6697_is_visible, ptr null, ptr @max6697_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@max6697_attributes = internal global { [57 x ptr], [60 x i8] } { [57 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @dev_attr_dummy, ptr @dev_attr_dummy, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_offset, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp5_offset, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_max_alarm, ptr @sensor_dev_attr_temp6_crit, ptr @sensor_dev_attr_temp6_crit_alarm, ptr @sensor_dev_attr_temp6_fault, ptr @sensor_dev_attr_temp6_offset, ptr @sensor_dev_attr_temp7_input, ptr @sensor_dev_attr_temp7_max, ptr @sensor_dev_attr_temp7_max_alarm, ptr @sensor_dev_attr_temp7_crit, ptr @sensor_dev_attr_temp7_crit_alarm, ptr @sensor_dev_attr_temp7_fault, ptr @sensor_dev_attr_temp7_offset, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp8_max, ptr @sensor_dev_attr_temp8_max_alarm, ptr @sensor_dev_attr_temp8_crit, ptr @sensor_dev_attr_temp8_crit_alarm, ptr @sensor_dev_attr_temp8_fault, ptr @sensor_dev_attr_temp8_offset, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 22 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_dummy = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 0, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 16 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 17 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 18 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 19 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 20 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.54, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 21 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_input_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_max = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 2, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 23 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_crit = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i8 3, i8 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_offset = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @offset_show, ptr @offset_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@MAX6697_REG_TEMP_EXT = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"W\09RSTUV\00", [24 x i8] zeroinitializer }, align 32
@MAX6697_REG_TEMP = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\07\01\02\03\04\05\06\08", [24 x i8] zeroinitializer }, align 32
@MAX6697_REG_MAX = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\17\11\12\13\14\15\16\18", [24 x i8] zeroinitializer }, align 32
@MAX6697_REG_CRIT = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" !\22#$%&'", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dummy\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp2_max\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp2_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp2_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp2_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp2_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp3_max\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp3_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp3_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp3_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp3_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp4_max\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp4_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp4_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp4_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp4_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp5_max\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp5_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp5_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp5_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp5_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp6_max\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp6_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp6_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp6_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp6_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_input\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp7_max\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp7_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp7_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp7_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp7_offset\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_input\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp8_max\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp8_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp8_crit\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp8_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp8_offset\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"max6697_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 783, i32 26 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 786, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"max6697_of_match\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 738, i32 49 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"max6697_id\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 723, i32 35 }
@___asan_gen_.78 = private unnamed_addr constant [18 x i8] c"max6697_chip_data\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 101, i32 39 }
@___asan_gen_.81 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 711, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"max6697_groups\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 559, i32 1 }
@___asan_gen_.90 = private unnamed_addr constant [18 x i8] c"max6581_alarm_map\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 97, i32 17 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 568, i32 31 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 570, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 572, i32 31 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 574, i32 31 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 577, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 580, i32 31 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 587, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant [14 x i8] c"max6697_group\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 556, i32 37 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"max6697_attributes\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 489, i32 26 }
@___asan_gen_.120 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.123 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.126 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"dev_attr_dummy\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp2_max\00", align 1
@___asan_gen_.144 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp2_max_alarm\00", align 1
@___asan_gen_.147 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp2_crit\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp2_crit_alarm\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp2_offset\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp3_max\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp3_max_alarm\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp3_crit\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp3_crit_alarm\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp3_offset\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp4_max\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp4_max_alarm\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp4_crit\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp4_crit_alarm\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp4_offset\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp5_max\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp5_max_alarm\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp5_crit\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp5_crit_alarm\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_fault\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp5_offset\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp6_max\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp6_max_alarm\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp6_crit\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp6_crit_alarm\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_fault\00", align 1
@___asan_gen_.240 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp6_offset\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp7_input\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp7_max\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp7_max_alarm\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp7_crit\00", align 1
@___asan_gen_.255 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp7_crit_alarm\00", align 1
@___asan_gen_.258 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp7_fault\00", align 1
@___asan_gen_.261 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp7_offset\00", align 1
@___asan_gen_.264 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_input\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp8_max\00", align 1
@___asan_gen_.270 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp8_max_alarm\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp8_crit\00", align 1
@___asan_gen_.276 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp8_crit_alarm\00", align 1
@___asan_gen_.279 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_fault\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp8_offset\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 391, i32 8 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 265, i32 22 }
@___asan_gen_.291 = private unnamed_addr constant [21 x i8] c"MAX6697_REG_TEMP_EXT\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 30, i32 17 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"MAX6697_REG_TEMP\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 28, i32 17 }
@___asan_gen_.297 = private unnamed_addr constant [16 x i8] c"MAX6697_REG_MAX\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 32, i32 17 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"MAX6697_REG_CRIT\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 34, i32 17 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 392, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 423, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 297, i32 22 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 393, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 432, i32 8 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 458, i32 8 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 395, i32 8 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 396, i32 8 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 424, i32 8 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 397, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 433, i32 8 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 441, i32 8 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 450, i32 8 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 399, i32 8 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 400, i32 8 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 425, i32 8 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 401, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 434, i32 8 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 442, i32 8 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 451, i32 8 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 403, i32 8 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 404, i32 8 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 426, i32 8 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 405, i32 8 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 435, i32 8 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 443, i32 8 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 452, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 407, i32 8 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 408, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 427, i32 8 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 409, i32 8 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 436, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 444, i32 8 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 453, i32 8 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 411, i32 8 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 412, i32 8 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 428, i32 8 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 413, i32 8 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 437, i32 8 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 445, i32 8 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 454, i32 8 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 415, i32 8 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 416, i32 8 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 429, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 417, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 438, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 446, i32 8 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 455, i32 8 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 419, i32 8 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 420, i32 8 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 430, i32 8 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 421, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 439, i32 8 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 447, i32 8 }
@___asan_gen_.465 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.466 = private constant [27 x i8] c"../drivers/hwmon/max6697.c\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.466, i32 456, i32 8 }
@llvm.compiler.used = appending global [141 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_max6697_driver_exit, ptr @__initcall__kmod_max6697__296_793_max6697_driver_init6, ptr @max6697_driver_exit, ptr @max6697_driver, ptr @.str, ptr @max6697_of_match, ptr @max6697_id, ptr @max6697_chip_data, ptr @max6697_probe.__key, ptr @.str.1, ptr @max6697_groups, ptr @max6581_alarm_map, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @max6697_group, ptr @max6697_attributes, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @dev_attr_dummy, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp2_max, ptr @sensor_dev_attr_temp2_max_alarm, ptr @sensor_dev_attr_temp2_crit, ptr @sensor_dev_attr_temp2_crit_alarm, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp2_offset, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp3_max, ptr @sensor_dev_attr_temp3_max_alarm, ptr @sensor_dev_attr_temp3_crit, ptr @sensor_dev_attr_temp3_crit_alarm, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp3_offset, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp4_max, ptr @sensor_dev_attr_temp4_max_alarm, ptr @sensor_dev_attr_temp4_crit, ptr @sensor_dev_attr_temp4_crit_alarm, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp4_offset, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp5_max, ptr @sensor_dev_attr_temp5_max_alarm, ptr @sensor_dev_attr_temp5_crit, ptr @sensor_dev_attr_temp5_crit_alarm, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp5_offset, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp6_max, ptr @sensor_dev_attr_temp6_max_alarm, ptr @sensor_dev_attr_temp6_crit, ptr @sensor_dev_attr_temp6_crit_alarm, ptr @sensor_dev_attr_temp6_fault, ptr @sensor_dev_attr_temp6_offset, ptr @sensor_dev_attr_temp7_input, ptr @sensor_dev_attr_temp7_max, ptr @sensor_dev_attr_temp7_max_alarm, ptr @sensor_dev_attr_temp7_crit, ptr @sensor_dev_attr_temp7_crit_alarm, ptr @sensor_dev_attr_temp7_fault, ptr @sensor_dev_attr_temp7_offset, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp8_max, ptr @sensor_dev_attr_temp8_max_alarm, ptr @sensor_dev_attr_temp8_crit, ptr @sensor_dev_attr_temp8_crit_alarm, ptr @sensor_dev_attr_temp8_fault, ptr @sensor_dev_attr_temp8_offset, ptr @.str.9, ptr @.str.10, ptr @MAX6697_REG_TEMP_EXT, ptr @MAX6697_REG_TEMP, ptr @MAX6697_REG_MAX, ptr @MAX6697_REG_CRIT, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_of_match to i32), i32 2156, i32 2688, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_id to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_chip_data to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6581_alarm_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max6697_attributes to i32), i32 228, i32 288, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_dummy to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_offset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MAX6697_REG_TEMP_EXT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MAX6697_REG_TEMP to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MAX6697_REG_MAX to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @MAX6697_REG_CRIT to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max6697_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max6697_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max6697_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max6697_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max6697_probe(ptr noundef %client) #2 align 64 {
entry:
  %len.i.i = alloca i32, align 4
  %p.i = alloca %struct.max6697_platform_data, align 8
  call void @__sanitizer_cov_trace_pc() #9
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #7
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 156, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev2) #7
  %8 = ptrtoint ptr %call11 to i32
  br label %if.end14

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call ptr @i2c_match_id(ptr noundef nonnull @max6697_id, ptr noundef %client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call12, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %.sink = phi i32 [ %10, %if.else ], [ %8, %if.then9 ]
  %11 = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %.sink, ptr %11, align 4
  %arrayidx = getelementptr [10 x %struct.max6697_chip_data], ptr @max6697_chip_data, i32 0, i32 %.sink
  %chip = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 2
  %13 = ptrtoint ptr %chip to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx, ptr %chip, align 4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max6697_probe.__key) #7
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %15 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %platform_data.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p.i) #7
  %17 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 1
  %18 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 2
  %19 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 3
  %20 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 4
  %21 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 5
  %22 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 6
  %23 = getelementptr inbounds %struct.max6697_platform_data, ptr %p.i, i32 0, i32 7
  %24 = ptrtoint ptr %p.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 -1, ptr %p.i, align 8
  %25 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chip, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %tobool.not.i = icmp eq ptr %16, null
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %tobool3.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.end14
  br i1 %tobool3.not.i, label %if.then.i, label %land.lhs.true.i.if.then84.i_crit_edge

land.lhs.true.i.if.then84.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %call4.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 65) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i44 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i44, label %if.then.i.max6697_init_chip.exit.thread_crit_edge, label %if.end.i

if.then.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %31 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp6.i = icmp eq i32 %32, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  %and.i45 = and i32 %call4.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool8.not.i = icmp eq i32 %and.i45, 0
  br i1 %tobool8.not.i, label %if.then7.i.if.end10.i_crit_edge, label %if.then9.i

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then9.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  %temp_offset.i = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %temp_offset.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 64, ptr %temp_offset.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then9.i, %if.then7.i.if.end10.i_crit_edge
  %call11.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 74) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.max6697_init_chip.exit.thread_crit_edge, label %cond.false.i

if.end10.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

cond.false.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i46 = tail call i32 @__sw_hweight8(i32 noundef %call11.i) #7
  %add74.i = add i32 %call.i.i46, %28
  br label %if.end20

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %and75.i = lshr i32 %call4.i, 3
  %and75.lobit.i = and i32 %and75.i, 1
  %spec.select.i = add i32 %and75.lobit.i, %28
  br label %if.end20

if.end80.i:                                       ; preds = %if.end14
  br i1 %tobool3.not.i, label %if.end80.i.if.end87.i_crit_edge, label %if.end80.i.if.then84.i_crit_edge

if.end80.i.if.then84.i_crit_edge:                 ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then84.i

if.end80.i.if.end87.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then84.i:                                      ; preds = %if.end80.i.if.then84.i_crit_edge, %land.lhs.true.i.if.then84.i_crit_edge
  %34 = ptrtoint ptr %p.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 0, ptr %p.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i.i) #7
  %35 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %len.i.i, align 4, !annotation !231
  %call.i.i.i = tail call ptr @of_find_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.2, ptr noundef null) #7
  %tobool.i.i.i = icmp ne ptr %call.i.i.i, null
  %frombool.i.i = zext i1 %tobool.i.i.i to i8
  %36 = ptrtoint ptr %p.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %frombool.i.i, ptr %p.i, align 8
  %call.i59.i.i = tail call ptr @of_find_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.3, ptr noundef null) #7
  %tobool.i60.i.i = icmp ne ptr %call.i59.i.i, null
  %frombool2.i.i = zext i1 %tobool.i60.i.i to i8
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool2.i.i, ptr %17, align 1
  %call.i61.i.i = tail call ptr @of_find_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.4, ptr noundef null) #7
  %tobool.i62.i.i = icmp ne ptr %call.i61.i.i, null
  %frombool4.i.i = zext i1 %tobool.i62.i.i to i8
  %38 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool4.i.i, ptr %18, align 2
  %call5.i.i = call ptr @of_get_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.5, ptr noundef nonnull %len.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not.i.i, label %if.then84.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then84.i.if.end.i.i_crit_edge:                 ; preds = %if.then84.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then84.i
  %39 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp.i.i = icmp eq i32 %40, 4
  br i1 %cmp.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call5.i.i, align 4
  %conv.i.i = trunc i32 %42 to i8
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv.i.i, ptr %19, align 1
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then84.i.if.end.i.i_crit_edge
  %call6.i.i = call ptr @of_get_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.6, ptr noundef nonnull %len.i.i) #7
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end14.i.i_crit_edge, label %land.lhs.true8.i.i

if.end.i.i.if.end14.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

land.lhs.true8.i.i:                               ; preds = %if.end.i.i
  %44 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp9.i.i = icmp eq i32 %45, 4
  br i1 %cmp9.i.i, label %if.then11.i.i, label %land.lhs.true8.i.i.if.end14.i.i_crit_edge

land.lhs.true8.i.i.if.end14.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %call6.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %call6.i.i, align 4
  %conv13.i.i = trunc i32 %47 to i8
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv13.i.i, ptr %20, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %land.lhs.true8.i.i.if.end14.i.i_crit_edge, %if.end.i.i.if.end14.i.i_crit_edge
  %call15.i.i = call ptr @of_get_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.7, ptr noundef nonnull %len.i.i) #7
  %tobool16.not.i.i = icmp eq ptr %call15.i.i, null
  br i1 %tobool16.not.i.i, label %if.end14.i.i.if.end25.i.i_crit_edge, label %if.then17.i.i

if.end14.i.i.if.end25.i.i_crit_edge:              ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i.i

if.then17.i.i:                                    ; preds = %if.end14.i.i
  %49 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %50)
  %cmp18.i.i = icmp eq i32 %50, 4
  br i1 %cmp18.i.i, label %if.then20.i.i, label %if.then17.i.i.if.end25.sink.split.i.i_crit_edge

if.then17.i.i.if.end25.sink.split.i.i_crit_edge:  ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.sink.split.i.i

if.then20.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %51 = ptrtoint ptr %call15.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %call15.i.i, align 4
  %conv22.i.i = trunc i32 %52 to i8
  br label %if.end25.sink.split.i.i

if.end25.sink.split.i.i:                          ; preds = %if.then20.i.i, %if.then17.i.i.if.end25.sink.split.i.i_crit_edge
  %conv22.sink.i.i = phi i8 [ %conv22.i.i, %if.then20.i.i ], [ -2, %if.then17.i.i.if.end25.sink.split.i.i_crit_edge ]
  %53 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv22.sink.i.i, ptr %21, align 1
  br label %if.end25.i.i

if.end25.i.i:                                     ; preds = %if.end25.sink.split.i.i, %if.end14.i.i.if.end25.i.i_crit_edge
  %call26.i.i = call ptr @of_get_property(ptr noundef nonnull %30, ptr noundef nonnull @.str.8, ptr noundef nonnull %len.i.i) #7
  %tobool27.not.i.i = icmp eq ptr %call26.i.i, null
  br i1 %tobool27.not.i.i, label %if.end25.i.i.max6697_get_config_of.exit.i_crit_edge, label %land.lhs.true28.i.i

if.end25.i.i.max6697_get_config_of.exit.i_crit_edge: ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_get_config_of.exit.i

land.lhs.true28.i.i:                              ; preds = %if.end25.i.i
  %54 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %55)
  %cmp29.i.i = icmp eq i32 %55, 8
  br i1 %cmp29.i.i, label %if.then31.i.i, label %land.lhs.true28.i.i.max6697_get_config_of.exit.i_crit_edge

land.lhs.true28.i.i.max6697_get_config_of.exit.i_crit_edge: ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_get_config_of.exit.i

if.then31.i.i:                                    ; preds = %land.lhs.true28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %call26.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %call26.i.i, align 4
  %conv33.i.i = trunc i32 %57 to i8
  %58 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv33.i.i, ptr %22, align 2
  %arrayidx34.i.i = getelementptr i32, ptr %call26.i.i, i32 1
  %59 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx34.i.i, align 4
  %conv35.i.i = trunc i32 %60 to i8
  %61 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv35.i.i, ptr %23, align 1
  br label %max6697_get_config_of.exit.i

max6697_get_config_of.exit.i:                     ; preds = %if.then31.i.i, %land.lhs.true28.i.i.max6697_get_config_of.exit.i_crit_edge, %if.end25.i.i.max6697_get_config_of.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i.i) #7
  br label %if.end87.i

if.end87.i:                                       ; preds = %max6697_get_config_of.exit.i, %if.end80.i.if.end87.i_crit_edge
  %pdata.0.sroa.phi.i = phi ptr [ %p.i, %max6697_get_config_of.exit.i ], [ %16, %if.end80.i.if.end87.i_crit_edge ]
  %62 = ptrtoint ptr %pdata.0.sroa.phi.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %pdata.0.sroa.phi.i, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool88.not.i = icmp eq i8 %63, 0
  br i1 %tobool88.not.i, label %if.end87.i.if.end95.i_crit_edge, label %land.lhs.true90.i

if.end87.i.if.end95.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end95.i

land.lhs.true90.i:                                ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_conf.i = getelementptr inbounds %struct.max6697_chip_data, ptr %26, i32 0, i32 4
  %64 = ptrtoint ptr %valid_conf.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %valid_conf.i, align 4
  %66 = and i8 %65, 32
  %67 = zext i8 %66 to i32
  br label %if.end95.i

if.end95.i:                                       ; preds = %land.lhs.true90.i, %if.end87.i.if.end95.i_crit_edge
  %reg.0.i = phi i32 [ 0, %if.end87.i.if.end95.i_crit_edge ], [ %67, %land.lhs.true90.i ]
  %extended_range_enable.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 1
  %68 = ptrtoint ptr %extended_range_enable.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %extended_range_enable.i, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool96.not.i = icmp eq i8 %69, 0
  br i1 %tobool96.not.i, label %if.end95.i.if.end106.i_crit_edge, label %land.lhs.true98.i

if.end95.i.if.end106.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

land.lhs.true98.i:                                ; preds = %if.end95.i
  %valid_conf99.i = getelementptr inbounds %struct.max6697_chip_data, ptr %26, i32 0, i32 4
  %70 = ptrtoint ptr %valid_conf99.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %valid_conf99.i, align 4
  %72 = and i8 %71, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool102.not.i = icmp eq i8 %72, 0
  br i1 %tobool102.not.i, label %land.lhs.true98.i.if.end106.i_crit_edge, label %if.then103.i

land.lhs.true98.i.if.end106.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106.i

if.then103.i:                                     ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #9
  %or104.i = or i32 %reg.0.i, 2
  %temp_offset105.i = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 4
  %73 = ptrtoint ptr %temp_offset105.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 64, ptr %temp_offset105.i, align 4
  br label %if.end106.i

if.end106.i:                                      ; preds = %if.then103.i, %land.lhs.true98.i.if.end106.i_crit_edge, %if.end95.i.if.end106.i_crit_edge
  %reg.1.i = phi i32 [ %or104.i, %if.then103.i ], [ %reg.0.i, %land.lhs.true98.i.if.end106.i_crit_edge ], [ %reg.0.i, %if.end95.i.if.end106.i_crit_edge ]
  %resistance_cancellation.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 5
  %74 = ptrtoint ptr %resistance_cancellation.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %resistance_cancellation.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool108.not.i = icmp eq i8 %75, 0
  br i1 %tobool108.not.i, label %if.end106.i.if.end117.i_crit_edge, label %land.lhs.true109.i

if.end106.i.if.end117.i_crit_edge:                ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i

land.lhs.true109.i:                               ; preds = %if.end106.i
  %valid_conf110.i = getelementptr inbounds %struct.max6697_chip_data, ptr %26, i32 0, i32 4
  %76 = ptrtoint ptr %valid_conf110.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %valid_conf110.i, align 4
  %78 = and i8 %77, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool113.not.i = icmp eq i8 %78, 0
  br i1 %tobool113.not.i, label %land.lhs.true109.i.if.end117.i_crit_edge, label %if.then114.i

land.lhs.true109.i.if.end117.i_crit_edge:         ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117.i

if.then114.i:                                     ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #9
  %or115.i = or i32 %reg.1.i, 8
  %inc116.i = add i32 %28, 1
  br label %if.end117.i

if.end117.i:                                      ; preds = %if.then114.i, %land.lhs.true109.i.if.end117.i_crit_edge, %if.end106.i.if.end117.i_crit_edge
  %factor.0.i = phi i32 [ %inc116.i, %if.then114.i ], [ %28, %land.lhs.true109.i.if.end117.i_crit_edge ], [ %28, %if.end106.i.if.end117.i_crit_edge ]
  %reg.2.i = phi i32 [ %or115.i, %if.then114.i ], [ %reg.1.i, %land.lhs.true109.i.if.end117.i_crit_edge ], [ %reg.1.i, %if.end106.i.if.end117.i_crit_edge ]
  %beta_compensation.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 2
  %79 = ptrtoint ptr %beta_compensation.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %beta_compensation.i, align 1, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool118.not.i = icmp eq i8 %80, 0
  br i1 %tobool118.not.i, label %if.end117.i.if.end127.i_crit_edge, label %land.lhs.true120.i

if.end117.i.if.end127.i_crit_edge:                ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end127.i

land.lhs.true120.i:                               ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #9
  %valid_conf121.i = getelementptr inbounds %struct.max6697_chip_data, ptr %26, i32 0, i32 4
  %81 = ptrtoint ptr %valid_conf121.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %valid_conf121.i, align 4
  %83 = and i8 %82, 4
  %84 = zext i8 %83 to i32
  %85 = or i32 %reg.2.i, %84
  br label %if.end127.i

if.end127.i:                                      ; preds = %land.lhs.true120.i, %if.end117.i.if.end127.i_crit_edge
  %reg.3.i = phi i32 [ %reg.2.i, %if.end117.i.if.end127.i_crit_edge ], [ %85, %land.lhs.true120.i ]
  %conv128.i = trunc i32 %reg.3.i to i8
  %call129.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 65, i8 noundef zeroext %conv128.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129.i)
  %cmp130.i = icmp slt i32 %call129.i, 0
  br i1 %cmp130.i, label %if.end127.i.max6697_init_chip.exit.thread_crit_edge, label %if.end133.i

if.end127.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end133.i:                                      ; preds = %if.end127.i
  %alert_mask.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 3
  %86 = ptrtoint ptr %alert_mask.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %alert_mask.i, align 1
  %and135.i = lshr i8 %87, 1
  %88 = and i8 %and135.i, 63
  %and138.i = shl i8 %87, 6
  %shl.i = and i8 %and138.i, 64
  %and142.i = and i8 %87, -128
  %or139.i = or i8 %shl.i, %and142.i
  %or143.i = or i8 %or139.i, %88
  %call145.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 66, i8 noundef zeroext %or143.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %cmp146.i = icmp slt i32 %call145.i, 0
  br i1 %cmp146.i, label %if.end133.i.max6697_init_chip.exit.thread_crit_edge, label %if.end149.i

if.end133.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end149.i:                                      ; preds = %if.end133.i
  %over_temperature_mask.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 4
  %89 = ptrtoint ptr %over_temperature_mask.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %over_temperature_mask.i, align 1
  %or156.i = call i8 @llvm.fshl.i8(i8 %90, i8 %90, i8 7) #7
  %call158.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 67, i8 noundef zeroext %or156.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158.i)
  %cmp159.i = icmp slt i32 %call158.i, 0
  br i1 %cmp159.i, label %if.end149.i.max6697_init_chip.exit.thread_crit_edge, label %if.end162.i

if.end149.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end162.i:                                      ; preds = %if.end149.i
  %91 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp164.i = icmp eq i32 %92, 0
  br i1 %cmp164.i, label %cond.false258.i, label %if.end162.i.if.end20_crit_edge

if.end162.i.if.end20_crit_edge:                   ; preds = %if.end162.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

cond.false258.i:                                  ; preds = %if.end162.i
  %93 = ptrtoint ptr %resistance_cancellation.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %resistance_cancellation.i, align 1
  %95 = lshr i8 %94, 1
  %96 = zext i8 %95 to i32
  %call.i379.i = call i32 @__sw_hweight8(i32 noundef %96) #7
  %add265.i = add i32 %call.i379.i, %factor.0.i
  %97 = ptrtoint ptr %resistance_cancellation.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %resistance_cancellation.i, align 1
  %99 = lshr i8 %98, 1
  %call270.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 74, i8 noundef zeroext %99) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call270.i)
  %cmp271.i = icmp slt i32 %call270.i, 0
  br i1 %cmp271.i, label %cond.false258.i.max6697_init_chip.exit.thread_crit_edge, label %if.end274.i

cond.false258.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %cond.false258.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end274.i:                                      ; preds = %cond.false258.i
  %ideality_value.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 7
  %100 = ptrtoint ptr %ideality_value.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %ideality_value.i, align 1
  %call275.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 75, i8 noundef zeroext %101) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call275.i)
  %cmp276.i = icmp slt i32 %call275.i, 0
  br i1 %cmp276.i, label %if.end274.i.max6697_init_chip.exit.thread_crit_edge, label %if.end279.i

if.end274.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end274.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

if.end279.i:                                      ; preds = %if.end274.i
  %ideality_mask.i = getelementptr inbounds %struct.max6697_platform_data, ptr %pdata.0.sroa.phi.i, i32 0, i32 6
  %102 = ptrtoint ptr %ideality_mask.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ideality_mask.i, align 1
  %104 = lshr i8 %103, 1
  %call283.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 76, i8 noundef zeroext %104) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call283.i)
  %cmp284.i = icmp slt i32 %call283.i, 0
  br i1 %cmp284.i, label %if.end279.i.max6697_init_chip.exit.thread_crit_edge, label %if.end279.i.if.end20_crit_edge

if.end279.i.if.end20_crit_edge:                   ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.end279.i.max6697_init_chip.exit.thread_crit_edge: ; preds = %if.end279.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %max6697_init_chip.exit.thread

max6697_init_chip.exit.thread:                    ; preds = %if.end279.i.max6697_init_chip.exit.thread_crit_edge, %if.end274.i.max6697_init_chip.exit.thread_crit_edge, %cond.false258.i.max6697_init_chip.exit.thread_crit_edge, %if.end149.i.max6697_init_chip.exit.thread_crit_edge, %if.end133.i.max6697_init_chip.exit.thread_crit_edge, %if.end127.i.max6697_init_chip.exit.thread_crit_edge, %if.end10.i.max6697_init_chip.exit.thread_crit_edge, %if.then.i.max6697_init_chip.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call283.i, %if.end279.i.max6697_init_chip.exit.thread_crit_edge ], [ %call275.i, %if.end274.i.max6697_init_chip.exit.thread_crit_edge ], [ %call270.i, %cond.false258.i.max6697_init_chip.exit.thread_crit_edge ], [ %call158.i, %if.end149.i.max6697_init_chip.exit.thread_crit_edge ], [ %call145.i, %if.end133.i.max6697_init_chip.exit.thread_crit_edge ], [ %call129.i, %if.end127.i.max6697_init_chip.exit.thread_crit_edge ], [ %call11.i, %if.end10.i.max6697_init_chip.exit.thread_crit_edge ], [ %call4.i, %if.then.i.max6697_init_chip.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end279.i.if.end20_crit_edge, %if.end162.i.if.end20_crit_edge, %if.else.i, %cond.false.i
  %factor.1.i = phi i32 [ %add265.i, %if.end279.i.if.end20_crit_edge ], [ %factor.0.i, %if.end162.i.if.end20_crit_edge ], [ %add74.i, %cond.false.i ], [ %spec.select.i, %if.else.i ]
  %mul.i = mul i32 %factor.1.i, 156
  %update_interval.i = getelementptr inbounds %struct.max6697_data, ptr %call.i, i32 0, i32 3
  %105 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %mul.i, ptr %update_interval.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p.i) #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call21 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @max6697_groups) #7
  %cmp.i.i47 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  %106 = ptrtoint ptr %call21 to i32
  %spec.select.i48 = select i1 %cmp.i.i47, i32 %106, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %max6697_init_chip.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i48, %if.end20 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.i.ph, %max6697_init_chip.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @max6697_is_visible(ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %chip2 = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip2, align 4
  %div = sdiv i32 %index, 7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp.not = icmp slt i32 %div, %5
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = mul i32 %div, 7
  %rem.decomposed = sub i32 %index, %6
  %7 = zext i32 %rem.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem.decomposed, label %if.end.if.end21_crit_edge [
    i32 3, label %if.end.land.lhs.true_crit_edge
    i32 4, label %if.end.land.lhs.true_crit_edge36
    i32 5, label %land.lhs.true8
    i32 6, label %if.then15
  ]

if.end.land.lhs.true_crit_edge36:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge36
  %have_crit = getelementptr inbounds %struct.max6697_chip_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %have_crit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %have_crit, align 4
  %shl = shl nuw i32 1, %div
  %and = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true8:                                   ; preds = %if.end
  %have_fault = getelementptr inbounds %struct.max6697_chip_data, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %have_fault to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %have_fault, align 4
  %shl9 = shl nuw i32 1, %div
  %and10 = and i32 %11, %shl9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %land.lhs.true8.cleanup_crit_edge, label %land.lhs.true8.if.end21_crit_edge

land.lhs.true8.if.end21_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end
  %type = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp16.not = icmp ne i32 %13, 0
  %index.off = add i32 %index, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %index.off)
  %14 = icmp ult i32 %index.off, 13
  %or.cond = or i1 %14, %cmp16.not
  br i1 %or.cond, label %if.then15.cleanup_crit_edge, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.then15.if.end21_crit_edge, %land.lhs.true8.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %15 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then15.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %16, %if.end21 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max6697_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.max6697_data, ptr %call, i32 0, i32 8, i32 %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %4 to i32
  %temp_offset = getelementptr inbounds %struct.max6697_data, ptr %call, i32 0, i32 4
  %5 = ptrtoint ptr %temp_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temp_offset, align 4
  %sub = sub i32 %conv, %6
  %shl = shl i32 %sub, 3
  %arrayidx8 = getelementptr %struct.max6697_data, ptr %call, i32 0, i32 8, i32 %1, i32 1
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx8, align 1
  %9 = lshr i8 %8, 5
  %10 = zext i8 %9 to i32
  %or = or i32 %shl, %10
  %mul = mul i32 %or, 125
  %call10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call10, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @max6697_update_device(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %valid = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %valid, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %last_updated = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %update_interval to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %update_interval, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %9) #7
  %add = add i32 %call2.i, %7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.abort_crit_edge

land.lhs.true.abort_crit_edge:                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %chip = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp3153 = icmp sgt i32 %14, 0
  br i1 %cmp3153, label %if.end.for.body_crit_edge, label %if.end.for.cond74.preheader_crit_edge

if.end.for.cond74.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.cond74.preheader:                             ; preds = %for.inc.for.cond74.preheader_crit_edge, %if.end.for.cond74.preheader_crit_edge
  %call80 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 68) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %for.cond74.preheader.if.then89_crit_edge, label %if.end91, !prof !233

for.cond74.preheader.if.then89_crit_edge:         ; preds = %for.cond74.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %15 = phi ptr [ %39, %for.inc.for.body_crit_edge ], [ %12, %if.end.for.body_crit_edge ]
  %i.0154 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %have_ext = getelementptr inbounds %struct.max6697_chip_data, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %have_ext to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %have_ext, align 4
  %shl = shl nuw i32 1, %i.0154
  %and = and i32 %17, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %for.body.if.end16_crit_edge, label %if.then6

for.body.if.end16_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then6:                                         ; preds = %for.body
  %arrayidx = getelementptr [8 x i8], ptr @MAX6697_REG_TEMP_EXT, i32 0, i32 %i.0154
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %call7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then11, label %if.end13, !prof !233

if.then11:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %20 = inttoptr i32 %call7 to ptr
  br label %abort

if.end13:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %call7 to i8
  %arrayidx15 = getelementptr %struct.max6697_data, ptr %1, i32 0, i32 8, i32 %i.0154, i32 1
  %21 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %arrayidx15, align 1
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %for.body.if.end16_crit_edge
  %arrayidx17 = getelementptr [8 x i8], ptr @MAX6697_REG_TEMP, i32 0, i32 %i.0154
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx17, align 1
  %call18 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then27, label %if.end29, !prof !233

if.then27:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %24 = inttoptr i32 %call18 to ptr
  br label %abort

if.end29:                                         ; preds = %if.end16
  %conv30 = trunc i32 %call18 to i8
  %arrayidx32 = getelementptr %struct.max6697_data, ptr %1, i32 0, i32 8, i32 %i.0154
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv30, ptr %arrayidx32, align 1
  %arrayidx34 = getelementptr [8 x i8], ptr @MAX6697_REG_MAX, i32 0, i32 %i.0154
  %26 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx34, align 1
  %call35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.then44, label %if.end46, !prof !233

if.then44:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %28 = inttoptr i32 %call35 to ptr
  br label %abort

if.end46:                                         ; preds = %if.end29
  %conv47 = trunc i32 %call35 to i8
  %arrayidx50 = getelementptr %struct.max6697_data, ptr %1, i32 0, i32 8, i32 %i.0154, i32 2
  %29 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv47, ptr %arrayidx50, align 1
  %30 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chip, align 4
  %have_crit = getelementptr inbounds %struct.max6697_chip_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %have_crit to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %have_crit, align 4
  %and53 = and i32 %33, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %if.end46.for.inc_crit_edge, label %if.then55

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then55:                                        ; preds = %if.end46
  %arrayidx56 = getelementptr [8 x i8], ptr @MAX6697_REG_CRIT, i32 0, i32 %i.0154
  %34 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx56, align 1
  %call57 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.then66, label %if.end68, !prof !233

if.then66:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %36 = inttoptr i32 %call57 to ptr
  br label %abort

if.end68:                                         ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #9
  %conv69 = trunc i32 %call57 to i8
  %arrayidx72 = getelementptr %struct.max6697_data, ptr %1, i32 0, i32 8, i32 %i.0154, i32 3
  %37 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv69, ptr %arrayidx72, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.end68, %if.end46.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0154, 1
  %38 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chip, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %cmp3 = icmp slt i32 %inc, %41
  br i1 %cmp3, label %for.inc.for.body_crit_edge, label %for.inc.for.cond74.preheader_crit_edge

for.inc.for.cond74.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond74.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.then89:                                        ; preds = %if.end91.1.if.then89_crit_edge, %if.end91.if.then89_crit_edge, %for.cond74.preheader.if.then89_crit_edge
  %call80.lcssa = phi i32 [ %call80, %for.cond74.preheader.if.then89_crit_edge ], [ %call80.1, %if.end91.if.then89_crit_edge ], [ %call80.2, %if.end91.1.if.then89_crit_edge ]
  %42 = inttoptr i32 %call80.lcssa to ptr
  br label %abort

if.end91:                                         ; preds = %for.cond74.preheader
  %call80.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.1)
  %cmp81.1 = icmp slt i32 %call80.1, 0
  br i1 %cmp81.1, label %if.end91.if.then89_crit_edge, label %if.end91.1, !prof !233

if.end91.if.then89_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.end91.1:                                       ; preds = %if.end91
  %call80.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 70) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80.2)
  %cmp81.2 = icmp slt i32 %call80.2, 0
  br i1 %cmp81.2, label %if.end91.1.if.then89_crit_edge, label %if.end91.2, !prof !233

if.end91.1.if.then89_crit_edge:                   ; preds = %if.end91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then89

if.end91.2:                                       ; preds = %if.end91.1
  call void @__sanitizer_cov_trace_pc() #9
  %43 = shl i32 %call80, 16
  %44 = shl i32 %call80.1, 8
  %shl92.2 = or i32 %43, %44
  %or.2 = or i32 %call80.2, %shl92.2
  %alarms96 = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 9
  %45 = ptrtoint ptr %alarms96 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.2, ptr %alarms96, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %last_updated97 = getelementptr inbounds %struct.max6697_data, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %last_updated97 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %last_updated97, align 4
  %48 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %valid, align 4
  br label %abort

abort:                                            ; preds = %if.end91.2, %if.then89, %if.then66, %if.then44, %if.then27, %if.then11, %land.lhs.true.abort_crit_edge
  %ret.0 = phi ptr [ %20, %if.then11 ], [ %24, %if.then27 ], [ %28, %if.then44 ], [ %36, %if.then66 ], [ %42, %if.then89 ], [ %1, %if.end91.2 ], [ %1, %land.lhs.true.abort_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  ret ptr %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index5, align 4
  %call = tail call fastcc ptr @max6697_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %arrayidx10 = getelementptr %struct.max6697_data, ptr %call, i32 0, i32 8, i32 %conv, i32 %conv6
  %5 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %6 to i32
  %temp_offset = getelementptr inbounds %struct.max6697_data, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %temp_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp_offset, align 4
  %sub = sub i32 %conv11, %8
  %mul = mul i32 %sub, 1000
  %call12 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %call12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr1 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 2
  %0 = ptrtoint ptr %nr1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nr1, align 1
  %index5 = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index5 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index5, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %temp, align 4, !annotation !231
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv6 = zext i8 %3 to i32
  %conv = zext i8 %1 to i32
  %update_lock = getelementptr inbounds %struct.max6697_data, ptr %5, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp10 = icmp sgt i32 %8, 0
  %cond.in.v = select i1 %cmp10, i32 500, i32 -500
  %cond.in = add i32 %cond.in.v, %8
  %cond = sdiv i32 %cond.in, 1000
  %temp_offset = getelementptr inbounds %struct.max6697_data, ptr %5, i32 0, i32 4
  %9 = ptrtoint ptr %temp_offset to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %temp_offset, align 4
  %add19 = add i32 %cond, %10
  %11 = call i32 @llvm.smax.i32(i32 %add19, i32 0)
  %type = getelementptr inbounds %struct.max6697_data, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp27 = icmp eq i32 %13, 0
  %cond29 = select i1 %cmp27, i32 255, i32 127
  %14 = call i32 @llvm.umin.i32(i32 %11, i32 %cond29)
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %temp, align 4
  %conv37 = trunc i32 %14 to i8
  %arrayidx39 = getelementptr %struct.max6697_data, ptr %5, i32 0, i32 8, i32 %conv, i32 %conv6
  %16 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv37, ptr %arrayidx39, align 1
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp40 = icmp eq i8 %3, 2
  %MAX6697_REG_MAX.pn = select i1 %cmp40, ptr @MAX6697_REG_MAX, ptr @MAX6697_REG_CRIT
  %cond49.in.in = getelementptr [8 x i8], ptr %MAX6697_REG_MAX.pn, i32 0, i32 %conv
  %19 = ptrtoint ptr %cond49.in.in to i32
  call void @__asan_load1_noabort(i32 %19)
  %cond49.in86 = load i8, ptr %cond49.in.in, align 1
  %20 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %temp, align 4
  %conv51 = trunc i32 %21 to i8
  %call52 = call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext %cond49.in86, i8 noundef zeroext %conv51) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp54 = icmp slt i32 %call52, 0
  %cond59 = select i1 %cmp54, i32 %call52, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond59, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index1, align 4
  %call = tail call fastcc ptr @max6697_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %chip = getelementptr inbounds %struct.max6697_data, ptr %call, i32 0, i32 2
  %3 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip, align 4
  %alarm_map = getelementptr inbounds %struct.max6697_chip_data, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %alarm_map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alarm_map, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %6, i32 %1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %8 to i32
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %index.0 = phi i32 [ %conv, %if.then4 ], [ %1, %if.end.if.end7_crit_edge ]
  %alarms = getelementptr inbounds %struct.max6697_data, ptr %call, i32 0, i32 9
  %9 = ptrtoint ptr %alarms to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %alarms, align 4
  %shr = lshr i32 %10, %index.0
  %and = and i32 %shr, 1
  %call8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.13, i32 noundef %and)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call8, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
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
  %update_lock = getelementptr inbounds %struct.max6697_data, ptr %3, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.end7.thread, label %if.else

if.end7.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cond.end

if.else:                                          ; preds = %entry
  %sub = add i32 %1, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %call2, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end7.thread21, label %if.end7

if.end7.thread21:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cond.false

if.end7:                                          ; preds = %if.else
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %7, i8 noundef zeroext 77) #7
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9 = icmp slt i32 %call5, 0
  br i1 %cmp9, label %if.end7.cond.end_crit_edge, label %if.end7.cond.false_crit_edge

if.end7.cond.false_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

if.end7.cond.end_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end7.cond.false_crit_edge, %if.end7.thread21
  %ret.024 = phi i32 [ 0, %if.end7.thread21 ], [ %call5, %if.end7.cond.false_crit_edge ]
  %shl.i.i = shl i32 %ret.024, 24
  %shr.i.i = ashr exact i32 %shl.i.i, 24
  %mul.i = mul nsw i32 %shr.i.i, 250
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %mul.i)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end7.cond.end_crit_edge, %if.end7.thread
  %cond = phi i32 [ %call11, %cond.false ], [ %call5, %if.end7.cond.end_crit_edge ], [ %call2, %if.end7.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @offset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !231
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %1 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index1, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %update_lock = getelementptr inbounds %struct.max6697_data, ptr %4, i32 0, i32 5
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call3 = call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext 78) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.abort_crit_edge, label %if.end6

if.end.abort_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

if.end6:                                          ; preds = %if.end
  %sub = add i32 %2, -1
  %shl = shl nuw i32 1, %sub
  %and = and i32 %call3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %temp, align 4
  %9 = call i32 @llvm.smax.i32(i32 %8, i32 -31750)
  %10 = call i32 @llvm.smin.i32(i32 %9, i32 31750)
  %11 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp sgt i32 %9, 0
  %cond28.in.v = select i1 %cmp16, i32 125, i32 -125
  %cond28.in = add nsw i32 %cond28.in.v, %10
  %cond28.lhs.trunc = trunc i32 %cond28.in to i16
  %cond28107 = sdiv i16 %cond28.lhs.trunc, 250
  %cond28.in.off = add nsw i32 %cond28.in, 249
  call void @__sanitizer_cov_trace_const_cmp4(i32 499, i32 %cond28.in.off)
  %12 = icmp ult i32 %cond28.in.off, 499
  br i1 %12, label %if.then31, label %if.end47

if.then31:                                        ; preds = %if.end6
  br i1 %tobool.not, label %if.then31.if.end40_crit_edge, label %if.then33

if.then31.if.end40_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.then33:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %neg = xor i32 %shl, -1
  %and37 = and i32 %call3, %neg
  %conv38 = trunc i32 %and37 to i8
  %call39 = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 78, i8 noundef zeroext %conv38) #7
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %if.then31.if.end40_crit_edge
  %ret.0 = phi i32 [ %call39, %if.then33 ], [ %call.i, %if.then31.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp41 = icmp slt i32 %ret.0, 0
  %ret.0.count = select i1 %cmp41, i32 %ret.0, i32 %count
  br label %abort

if.end47:                                         ; preds = %if.end6
  br i1 %tobool.not, label %if.then49, label %if.end47.if.end59_crit_edge

if.end47.if.end59_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then49:                                        ; preds = %if.end47
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %or = or i32 %call3, %shl
  %conv53 = trunc i32 %or to i8
  %call54 = call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 78, i8 noundef zeroext %conv53) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then49.abort_crit_edge, label %if.then49.if.end59_crit_edge

if.then49.if.end59_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then49.abort_crit_edge:                        ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %abort

if.end59:                                         ; preds = %if.then49.if.end59_crit_edge, %if.end47.if.end59_crit_edge
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %4, align 4
  %conv61 = trunc i16 %cond28107 to i8
  %call62 = call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 77, i8 noundef zeroext %conv61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  %call62.count = select i1 %cmp63, i32 %call62, i32 %count
  br label %abort

abort:                                            ; preds = %if.end59, %if.then49.abort_crit_edge, %if.end40, %if.end.abort_crit_edge
  %ret.1 = phi i32 [ %ret.0.count, %if.end40 ], [ %call62.count, %if.end59 ], [ %call54, %if.then49.abort_crit_edge ], [ %call3, %if.end.abort_crit_edge ]
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %abort, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %abort ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.fshl.i8(i8, i8, i8) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !62, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !136, !137, !139, !140, !142, !143, !145, !146, !148, !149, !151, !152, !154, !155, !157, !158, !160, !161, !163, !164, !166, !167, !169, !170, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__initcall__kmod_max6697__296_793_max6697_driver_init6, !1, !"__initcall__kmod_max6697__296_793_max6697_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/max6697.c", i32 793, i32 1}
!2 = !{ptr @__exitcall_max6697_driver_exit, !1, !"__exitcall_max6697_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/max6697.c", i32 795, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/max6697.c", i32 796, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/max6697.c", i32 797, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/max6697.c", i32 786, i32 11}
!12 = !{ptr @max6697_driver, !13, !"max6697_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/max6697.c", i32 783, i32 26}
!14 = !{ptr @max6697_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/max6697.c", i32 711, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @max6697_chip_data, !18, !"max6697_chip_data", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/max6697.c", i32 101, i32 39}
!19 = !{ptr @max6581_alarm_map, !20, !"max6581_alarm_map", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/max6697.c", i32 97, i32 17}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/hwmon/max6697.c", i32 568, i32 31}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/hwmon/max6697.c", i32 570, i32 31}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/max6697.c", i32 572, i32 31}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/max6697.c", i32 574, i32 31}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/max6697.c", i32 577, i32 31}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/max6697.c", i32 580, i32 31}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/max6697.c", i32 587, i32 31}
!35 = !{ptr @max6697_groups, !36, !"max6697_groups", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/max6697.c", i32 559, i32 1}
!37 = !{ptr @max6697_group, !38, !"max6697_group", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/max6697.c", i32 556, i32 37}
!39 = !{ptr @max6697_attributes, !40, !"max6697_attributes", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/max6697.c", i32 489, i32 26}
!41 = !{ptr @.str.9, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/max6697.c", i32 391, i32 8}
!43 = !{ptr @sensor_dev_attr_temp1_input, !42, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!44 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/max6697.c", i32 265, i32 22}
!46 = !{ptr @MAX6697_REG_TEMP_EXT, !47, !"MAX6697_REG_TEMP_EXT", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/max6697.c", i32 30, i32 17}
!48 = !{ptr @MAX6697_REG_TEMP, !49, !"MAX6697_REG_TEMP", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/max6697.c", i32 28, i32 17}
!50 = !{ptr @MAX6697_REG_MAX, !51, !"MAX6697_REG_MAX", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/max6697.c", i32 32, i32 17}
!52 = !{ptr @MAX6697_REG_CRIT, !53, !"MAX6697_REG_CRIT", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/max6697.c", i32 34, i32 17}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/hwmon/max6697.c", i32 392, i32 8}
!56 = !{ptr @sensor_dev_attr_temp1_max, !55, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!57 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/hwmon/max6697.c", i32 423, i32 8}
!59 = !{ptr @sensor_dev_attr_temp1_max_alarm, !58, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!60 = !{ptr @.str.13, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/max6697.c", i32 297, i32 22}
!62 = !{ptr @.str.14, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/max6697.c", i32 393, i32 8}
!64 = !{ptr @sensor_dev_attr_temp1_crit, !63, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!65 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/max6697.c", i32 432, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !66, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/max6697.c", i32 458, i32 8}
!70 = !{ptr @dev_attr_dummy, !69, !"dev_attr_dummy", i1 false, i1 false}
!71 = !{ptr @.str.17, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/max6697.c", i32 395, i32 8}
!73 = !{ptr @sensor_dev_attr_temp2_input, !72, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/max6697.c", i32 396, i32 8}
!76 = !{ptr @sensor_dev_attr_temp2_max, !75, !"sensor_dev_attr_temp2_max", i1 false, i1 false}
!77 = !{ptr @.str.19, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/max6697.c", i32 424, i32 8}
!79 = !{ptr @sensor_dev_attr_temp2_max_alarm, !78, !"sensor_dev_attr_temp2_max_alarm", i1 false, i1 false}
!80 = !{ptr @.str.20, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/max6697.c", i32 397, i32 8}
!82 = !{ptr @sensor_dev_attr_temp2_crit, !81, !"sensor_dev_attr_temp2_crit", i1 false, i1 false}
!83 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/max6697.c", i32 433, i32 8}
!85 = !{ptr @sensor_dev_attr_temp2_crit_alarm, !84, !"sensor_dev_attr_temp2_crit_alarm", i1 false, i1 false}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/max6697.c", i32 441, i32 8}
!88 = !{ptr @sensor_dev_attr_temp2_fault, !87, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!89 = !{ptr @.str.23, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/max6697.c", i32 450, i32 8}
!91 = !{ptr @sensor_dev_attr_temp2_offset, !90, !"sensor_dev_attr_temp2_offset", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/max6697.c", i32 399, i32 8}
!94 = !{ptr @sensor_dev_attr_temp3_input, !93, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!95 = !{ptr @.str.25, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/max6697.c", i32 400, i32 8}
!97 = !{ptr @sensor_dev_attr_temp3_max, !96, !"sensor_dev_attr_temp3_max", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/max6697.c", i32 425, i32 8}
!100 = !{ptr @sensor_dev_attr_temp3_max_alarm, !99, !"sensor_dev_attr_temp3_max_alarm", i1 false, i1 false}
!101 = !{ptr @.str.27, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/max6697.c", i32 401, i32 8}
!103 = !{ptr @sensor_dev_attr_temp3_crit, !102, !"sensor_dev_attr_temp3_crit", i1 false, i1 false}
!104 = !{ptr @.str.28, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/max6697.c", i32 434, i32 8}
!106 = !{ptr @sensor_dev_attr_temp3_crit_alarm, !105, !"sensor_dev_attr_temp3_crit_alarm", i1 false, i1 false}
!107 = !{ptr @.str.29, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/max6697.c", i32 442, i32 8}
!109 = !{ptr @sensor_dev_attr_temp3_fault, !108, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/max6697.c", i32 451, i32 8}
!112 = !{ptr @sensor_dev_attr_temp3_offset, !111, !"sensor_dev_attr_temp3_offset", i1 false, i1 false}
!113 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/max6697.c", i32 403, i32 8}
!115 = !{ptr @sensor_dev_attr_temp4_input, !114, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!116 = !{ptr @.str.32, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/max6697.c", i32 404, i32 8}
!118 = !{ptr @sensor_dev_attr_temp4_max, !117, !"sensor_dev_attr_temp4_max", i1 false, i1 false}
!119 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/hwmon/max6697.c", i32 426, i32 8}
!121 = !{ptr @sensor_dev_attr_temp4_max_alarm, !120, !"sensor_dev_attr_temp4_max_alarm", i1 false, i1 false}
!122 = !{ptr @.str.34, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/hwmon/max6697.c", i32 405, i32 8}
!124 = !{ptr @sensor_dev_attr_temp4_crit, !123, !"sensor_dev_attr_temp4_crit", i1 false, i1 false}
!125 = !{ptr @.str.35, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/hwmon/max6697.c", i32 435, i32 8}
!127 = !{ptr @sensor_dev_attr_temp4_crit_alarm, !126, !"sensor_dev_attr_temp4_crit_alarm", i1 false, i1 false}
!128 = !{ptr @.str.36, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/hwmon/max6697.c", i32 443, i32 8}
!130 = !{ptr @sensor_dev_attr_temp4_fault, !129, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/hwmon/max6697.c", i32 452, i32 8}
!133 = !{ptr @sensor_dev_attr_temp4_offset, !132, !"sensor_dev_attr_temp4_offset", i1 false, i1 false}
!134 = !{ptr @.str.38, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/max6697.c", i32 407, i32 8}
!136 = !{ptr @sensor_dev_attr_temp5_input, !135, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!137 = !{ptr @.str.39, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/hwmon/max6697.c", i32 408, i32 8}
!139 = !{ptr @sensor_dev_attr_temp5_max, !138, !"sensor_dev_attr_temp5_max", i1 false, i1 false}
!140 = !{ptr @.str.40, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/max6697.c", i32 427, i32 8}
!142 = !{ptr @sensor_dev_attr_temp5_max_alarm, !141, !"sensor_dev_attr_temp5_max_alarm", i1 false, i1 false}
!143 = !{ptr @.str.41, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/hwmon/max6697.c", i32 409, i32 8}
!145 = !{ptr @sensor_dev_attr_temp5_crit, !144, !"sensor_dev_attr_temp5_crit", i1 false, i1 false}
!146 = !{ptr @.str.42, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/max6697.c", i32 436, i32 8}
!148 = !{ptr @sensor_dev_attr_temp5_crit_alarm, !147, !"sensor_dev_attr_temp5_crit_alarm", i1 false, i1 false}
!149 = !{ptr @.str.43, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/hwmon/max6697.c", i32 444, i32 8}
!151 = !{ptr @sensor_dev_attr_temp5_fault, !150, !"sensor_dev_attr_temp5_fault", i1 false, i1 false}
!152 = !{ptr @.str.44, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/hwmon/max6697.c", i32 453, i32 8}
!154 = !{ptr @sensor_dev_attr_temp5_offset, !153, !"sensor_dev_attr_temp5_offset", i1 false, i1 false}
!155 = !{ptr @.str.45, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/hwmon/max6697.c", i32 411, i32 8}
!157 = !{ptr @sensor_dev_attr_temp6_input, !156, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!158 = !{ptr @.str.46, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/hwmon/max6697.c", i32 412, i32 8}
!160 = !{ptr @sensor_dev_attr_temp6_max, !159, !"sensor_dev_attr_temp6_max", i1 false, i1 false}
!161 = !{ptr @.str.47, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/hwmon/max6697.c", i32 428, i32 8}
!163 = !{ptr @sensor_dev_attr_temp6_max_alarm, !162, !"sensor_dev_attr_temp6_max_alarm", i1 false, i1 false}
!164 = !{ptr @.str.48, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/hwmon/max6697.c", i32 413, i32 8}
!166 = !{ptr @sensor_dev_attr_temp6_crit, !165, !"sensor_dev_attr_temp6_crit", i1 false, i1 false}
!167 = !{ptr @.str.49, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/hwmon/max6697.c", i32 437, i32 8}
!169 = !{ptr @sensor_dev_attr_temp6_crit_alarm, !168, !"sensor_dev_attr_temp6_crit_alarm", i1 false, i1 false}
!170 = !{ptr @.str.50, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/hwmon/max6697.c", i32 445, i32 8}
!172 = !{ptr @sensor_dev_attr_temp6_fault, !171, !"sensor_dev_attr_temp6_fault", i1 false, i1 false}
!173 = !{ptr @.str.51, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/hwmon/max6697.c", i32 454, i32 8}
!175 = !{ptr @sensor_dev_attr_temp6_offset, !174, !"sensor_dev_attr_temp6_offset", i1 false, i1 false}
!176 = !{ptr @.str.52, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/hwmon/max6697.c", i32 415, i32 8}
!178 = !{ptr @sensor_dev_attr_temp7_input, !177, !"sensor_dev_attr_temp7_input", i1 false, i1 false}
!179 = !{ptr @.str.53, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/hwmon/max6697.c", i32 416, i32 8}
!181 = !{ptr @sensor_dev_attr_temp7_max, !180, !"sensor_dev_attr_temp7_max", i1 false, i1 false}
!182 = !{ptr @.str.54, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/hwmon/max6697.c", i32 429, i32 8}
!184 = !{ptr @sensor_dev_attr_temp7_max_alarm, !183, !"sensor_dev_attr_temp7_max_alarm", i1 false, i1 false}
!185 = !{ptr @.str.55, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/hwmon/max6697.c", i32 417, i32 8}
!187 = !{ptr @sensor_dev_attr_temp7_crit, !186, !"sensor_dev_attr_temp7_crit", i1 false, i1 false}
!188 = !{ptr @.str.56, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/hwmon/max6697.c", i32 438, i32 8}
!190 = !{ptr @sensor_dev_attr_temp7_crit_alarm, !189, !"sensor_dev_attr_temp7_crit_alarm", i1 false, i1 false}
!191 = !{ptr @.str.57, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/hwmon/max6697.c", i32 446, i32 8}
!193 = !{ptr @sensor_dev_attr_temp7_fault, !192, !"sensor_dev_attr_temp7_fault", i1 false, i1 false}
!194 = !{ptr @.str.58, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/hwmon/max6697.c", i32 455, i32 8}
!196 = !{ptr @sensor_dev_attr_temp7_offset, !195, !"sensor_dev_attr_temp7_offset", i1 false, i1 false}
!197 = !{ptr @.str.59, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/hwmon/max6697.c", i32 419, i32 8}
!199 = !{ptr @sensor_dev_attr_temp8_input, !198, !"sensor_dev_attr_temp8_input", i1 false, i1 false}
!200 = !{ptr @.str.60, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/hwmon/max6697.c", i32 420, i32 8}
!202 = !{ptr @sensor_dev_attr_temp8_max, !201, !"sensor_dev_attr_temp8_max", i1 false, i1 false}
!203 = !{ptr @.str.61, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/hwmon/max6697.c", i32 430, i32 8}
!205 = !{ptr @sensor_dev_attr_temp8_max_alarm, !204, !"sensor_dev_attr_temp8_max_alarm", i1 false, i1 false}
!206 = !{ptr @.str.62, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/hwmon/max6697.c", i32 421, i32 8}
!208 = !{ptr @sensor_dev_attr_temp8_crit, !207, !"sensor_dev_attr_temp8_crit", i1 false, i1 false}
!209 = !{ptr @.str.63, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/hwmon/max6697.c", i32 439, i32 8}
!211 = !{ptr @sensor_dev_attr_temp8_crit_alarm, !210, !"sensor_dev_attr_temp8_crit_alarm", i1 false, i1 false}
!212 = !{ptr @.str.64, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/hwmon/max6697.c", i32 447, i32 8}
!214 = !{ptr @sensor_dev_attr_temp8_fault, !213, !"sensor_dev_attr_temp8_fault", i1 false, i1 false}
!215 = !{ptr @.str.65, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/hwmon/max6697.c", i32 456, i32 8}
!217 = !{ptr @sensor_dev_attr_temp8_offset, !216, !"sensor_dev_attr_temp8_offset", i1 false, i1 false}
!218 = !{ptr @max6697_of_match, !219, !"max6697_of_match", i1 false, i1 false}
!219 = !{!"../drivers/hwmon/max6697.c", i32 738, i32 49}
!220 = !{ptr @max6697_id, !221, !"max6697_id", i1 false, i1 false}
!221 = !{!"../drivers/hwmon/max6697.c", i32 723, i32 35}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{!"auto-init"}
!232 = !{i8 0, i8 2}
!233 = !{!"branch_weights", i32 1, i32 2000}
