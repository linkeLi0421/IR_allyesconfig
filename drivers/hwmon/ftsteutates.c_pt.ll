; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ftsteutates.c_pt.bc'
source_filename = "../drivers/hwmon/ftsteutates.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fts_data = type { ptr, %struct.mutex, %struct.mutex, i32, %struct.watchdog_device, i32, i8, [4 x i8], [16 x i8], i8, i8, [8 x i8], [8 x i8], i8 }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }

@__initcall__kmod_ftsteutates__294_828_fts_driver_init6 = internal global ptr @fts_driver_init, section ".initcall6.init", align 4
@fts_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr @fts_remove, ptr @fts_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @fts_id, ptr @fts_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_fts_driver_exit = internal global ptr @fts_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [68 x i8] c"ftsteutates.author=Thilo Cestonaro <thilo.cestonaro@ts.fujitsu.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [44 x i8] c"ftsteutates.description=FTS Teutates driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [43 x i8] c"ftsteutates.file=drivers/hwmon/ftsteutates\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [24 x i8] c"ftsteutates.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ftsteutates\00", [20 x i8] zeroinitializer }, align 32
@fts_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ftsteutates\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [2 x i16], [28 x i8] } { [2 x i16] [i16 115, i16 -2], [28 x i8] zeroinitializer }, align 32
@fts_probe.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fts_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/hwmon/ftsteutates.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No Baseboard Management Controller\0A\00", [60 x i8] zeroinitializer }, align 32
@fts_probe.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -62, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No fujitsu board\0A\00", [46 x i8] zeroinitializer }, align 32
@fts_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@fts_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->access_lock\00", [45 x i8] zeroinitializer }, align 32
@fts_attr_groups = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @fts_voltage_attr_group, ptr @fts_temp_attr_group, ptr @fts_fan_attr_group, ptr null], [16 x i8] zeroinitializer }, align 32
@fts_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 809, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Detected FTS Teutates chip, revision: %d.%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fts_probe._entry_ptr = internal global ptr @fts_probe._entry, section ".printk_index", align 4
@fts_voltage_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fts_voltage_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fts_temp_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fts_temp_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fts_fan_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @fts_fan_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@fts_voltage_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr null], [44 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @in_value_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@fts_read_byte.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 26, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fts_read_byte\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"page select - page: 0x%.02x\0A\00", [35 x i8] zeroinitializer }, align 32
@fts_read_byte.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 28, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"read - reg: 0x%.02x: val: 0x%.02x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in3_input\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in4_input\00", [22 x i8] zeroinitializer }, align 32
@fts_temp_attrs = internal global { [49 x ptr], [60 x i8] } { [49 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp7_input, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp9_input, ptr @sensor_dev_attr_temp10_input, ptr @sensor_dev_attr_temp11_input, ptr @sensor_dev_attr_temp12_input, ptr @sensor_dev_attr_temp13_input, ptr @sensor_dev_attr_temp14_input, ptr @sensor_dev_attr_temp15_input, ptr @sensor_dev_attr_temp16_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp6_fault, ptr @sensor_dev_attr_temp7_fault, ptr @sensor_dev_attr_temp8_fault, ptr @sensor_dev_attr_temp9_fault, ptr @sensor_dev_attr_temp10_fault, ptr @sensor_dev_attr_temp11_fault, ptr @sensor_dev_attr_temp12_fault, ptr @sensor_dev_attr_temp13_fault, ptr @sensor_dev_attr_temp14_fault, ptr @sensor_dev_attr_temp15_fault, ptr @sensor_dev_attr_temp16_fault, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp4_alarm, ptr @sensor_dev_attr_temp5_alarm, ptr @sensor_dev_attr_temp6_alarm, ptr @sensor_dev_attr_temp7_alarm, ptr @sensor_dev_attr_temp8_alarm, ptr @sensor_dev_attr_temp9_alarm, ptr @sensor_dev_attr_temp10_alarm, ptr @sensor_dev_attr_temp11_alarm, ptr @sensor_dev_attr_temp12_alarm, ptr @sensor_dev_attr_temp13_alarm, ptr @sensor_dev_attr_temp14_alarm, ptr @sensor_dev_attr_temp15_alarm, ptr @sensor_dev_attr_temp16_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.25, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp9_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp10_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp11_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp12_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp13_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.31, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp14_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp15_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.33, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp16_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.34, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_value_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.37, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.38, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.39, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.40, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.41, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.42, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.43, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp9_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.44, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp10_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.45, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp11_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.46, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp12_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.47, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp13_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.48, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp14_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.49, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp15_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.50, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp16_fault = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_fault_show, ptr null }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.52, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.56, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.57, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.58, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.59, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.60, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.61, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp9_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.62, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp10_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.63, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 9 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp11_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.64, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 10 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp12_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.65, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 11 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp13_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.66, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 12 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp14_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.67, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 13 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp15_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.68, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 14 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp16_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_alarm_show, ptr @temp_alarm_store }, i32 15 }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_input\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_input\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_input\00", [20 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_input\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_input\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_input\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_input\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_input\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_input\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_input\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_input\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_input\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_input\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_input\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_input\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_fault\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_fault\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@fts_write_byte.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.14, i8 0, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fts_write_byte\00", [17 x i8] zeroinitializer }, align 32
@fts_write_byte.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 0, i8 34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"write - reg: 0x%.02x: val: 0x%.02x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp2_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp3_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp4_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp5_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp6_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp7_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp8_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp9_alarm\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp10_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp11_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp12_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp13_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp14_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp15_alarm\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"temp16_alarm\00", [19 x i8] zeroinitializer }, align 32
@fts_fan_attrs = internal global { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan1_source, ptr @sensor_dev_attr_fan2_source, ptr @sensor_dev_attr_fan3_source, ptr @sensor_dev_attr_fan4_source, ptr @sensor_dev_attr_fan5_source, ptr @sensor_dev_attr_fan6_source, ptr @sensor_dev_attr_fan7_source, ptr @sensor_dev_attr_fan8_source, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.70, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.74, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.75, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.76, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.77, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_value_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.78, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.79, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.80, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.81, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.82, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.83, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.84, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_source = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.85, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_source_show, ptr null }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.86, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan2_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.87, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan3_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.88, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan4_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.89, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan5_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.90, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan6_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.91, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 5 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan7_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.92, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fan8_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.93, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @fan_alarm_show, ptr @fan_alarm_store }, i32 7 }, [32 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_input\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_input\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_input\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_input\00", [21 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_input\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_input\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_input\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_input\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan1_source\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan2_source\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan3_source\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan4_source\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan5_source\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan6_source\00", [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan7_source\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fan8_source\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan1_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan2_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan3_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan4_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan5_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan6_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan7_alarm\00", [21 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"fan8_alarm\00", [21 x i8] zeroinitializer }, align 32
@fts_wd_info = internal constant { %struct.watchdog_info, [56 x i8] } { %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"FTS Teutates Hardware Watchdog\00\00" }, [56 x i8] zeroinitializer }, align 32
@fts_wd_ops = internal constant { %struct.watchdog_ops, [56 x i8] } { %struct.watchdog_ops { ptr null, ptr @fts_wd_start, ptr @fts_wd_stop, ptr null, ptr null, ptr @fts_wd_set_timeout, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"fts_driver\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 816, i32 26 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 819, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"fts_id\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 53, i32 35 }
@___asan_gen_.103 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 51, i32 29 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 773, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 778, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 787, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 788, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [16 x i8] c"fts_attr_groups\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 701, i32 38 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 808, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [23 x i8] c"fts_voltage_attr_group\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 689, i32 37 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"fts_temp_attr_group\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 693, i32 37 }
@___asan_gen_.151 = private unnamed_addr constant [19 x i8] c"fts_fan_attr_group\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 697, i32 37 }
@___asan_gen_.154 = private unnamed_addr constant [18 x i8] c"fts_voltage_attrs\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 681, i32 26 }
@___asan_gen_.157 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in3_input\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in4_input\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 677, i32 8 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 356, i32 22 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 106, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 113, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 678, i32 8 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 679, i32 8 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 680, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"fts_temp_attrs\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 564, i32 26 }
@___asan_gen_.196 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_input\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_input\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_input\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_input\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_input\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp7_input\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_input\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp9_input\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp10_input\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp11_input\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp12_input\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp13_input\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp14_input\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp15_input\00", align 1
@___asan_gen_.241 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp16_input\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_fault\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_fault\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_fault\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_fault\00", align 1
@___asan_gen_.256 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_fault\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_fault\00", align 1
@___asan_gen_.262 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp7_fault\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_fault\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp9_fault\00", align 1
@___asan_gen_.271 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp10_fault\00", align 1
@___asan_gen_.274 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp11_fault\00", align 1
@___asan_gen_.277 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp12_fault\00", align 1
@___asan_gen_.280 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp13_fault\00", align 1
@___asan_gen_.283 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp14_fault\00", align 1
@___asan_gen_.286 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp15_fault\00", align 1
@___asan_gen_.289 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp16_fault\00", align 1
@___asan_gen_.292 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.295 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp2_alarm\00", align 1
@___asan_gen_.298 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp3_alarm\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp4_alarm\00", align 1
@___asan_gen_.304 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp5_alarm\00", align 1
@___asan_gen_.307 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp6_alarm\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp7_alarm\00", align 1
@___asan_gen_.313 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp8_alarm\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp9_alarm\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp10_alarm\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp11_alarm\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp12_alarm\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp13_alarm\00", align 1
@___asan_gen_.331 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp14_alarm\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp15_alarm\00", align 1
@___asan_gen_.337 = private unnamed_addr constant [29 x i8] c"sensor_dev_attr_temp16_alarm\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 513, i32 8 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 514, i32 8 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 515, i32 8 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 516, i32 8 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 517, i32 8 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 518, i32 8 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 519, i32 8 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 520, i32 8 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 521, i32 8 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 522, i32 8 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 523, i32 8 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 524, i32 8 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 525, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 526, i32 8 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 527, i32 8 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 528, i32 8 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 530, i32 8 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 385, i32 22 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 531, i32 8 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 532, i32 8 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 533, i32 8 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 534, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 535, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 536, i32 8 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 537, i32 8 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 538, i32 8 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 539, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 540, i32 8 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 541, i32 8 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 542, i32 8 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 543, i32 8 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 544, i32 8 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 545, i32 8 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 547, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 129, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 135, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 548, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 549, i32 8 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 550, i32 8 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 551, i32 8 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 552, i32 8 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 553, i32 8 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 554, i32 8 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 555, i32 8 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 556, i32 8 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 557, i32 8 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 558, i32 8 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 559, i32 8 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 560, i32 8 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 561, i32 8 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 562, i32 8 }
@___asan_gen_.493 = private unnamed_addr constant [14 x i8] c"fts_fan_attrs\00", align 1
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 646, i32 26 }
@___asan_gen_.496 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_input\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_input\00", align 1
@___asan_gen_.502 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_input\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_input\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_input\00", align 1
@___asan_gen_.511 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_input\00", align 1
@___asan_gen_.514 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_input\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_input\00", align 1
@___asan_gen_.520 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan1_source\00", align 1
@___asan_gen_.523 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan2_source\00", align 1
@___asan_gen_.526 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan3_source\00", align 1
@___asan_gen_.529 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan4_source\00", align 1
@___asan_gen_.532 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan5_source\00", align 1
@___asan_gen_.535 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan6_source\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan7_source\00", align 1
@___asan_gen_.541 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_fan8_source\00", align 1
@___asan_gen_.544 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan1_alarm\00", align 1
@___asan_gen_.547 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan2_alarm\00", align 1
@___asan_gen_.550 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan3_alarm\00", align 1
@___asan_gen_.553 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan4_alarm\00", align 1
@___asan_gen_.556 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan5_alarm\00", align 1
@___asan_gen_.559 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan6_alarm\00", align 1
@___asan_gen_.562 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan7_alarm\00", align 1
@___asan_gen_.565 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_fan8_alarm\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 619, i32 8 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 620, i32 8 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 621, i32 8 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 622, i32 8 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 623, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 624, i32 8 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 625, i32 8 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 626, i32 8 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 628, i32 8 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 629, i32 8 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 630, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 631, i32 8 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 632, i32 8 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 633, i32 8 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 634, i32 8 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 635, i32 8 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 637, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 638, i32 8 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 639, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 640, i32 8 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 641, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 642, i32 8 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 643, i32 8 }
@___asan_gen_.637 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 644, i32 8 }
@___asan_gen_.640 = private unnamed_addr constant [12 x i8] c"fts_wd_info\00", align 1
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 292, i32 35 }
@___asan_gen_.643 = private unnamed_addr constant [11 x i8] c"fts_wd_ops\00", align 1
@___asan_gen_.644 = private constant [31 x i8] c"../drivers/hwmon/ftsteutates.c\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.644, i32 297, i32 34 }
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_fts_driver_exit, ptr @__initcall__kmod_ftsteutates__294_828_fts_driver_init6, ptr @fts_driver_exit, ptr @fts_probe._entry, ptr @fts_probe._entry_ptr, ptr @fts_driver, ptr @.str, ptr @fts_id, ptr @normal_i2c, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fts_probe.__key, ptr @.str.5, ptr @fts_probe.__key.6, ptr @.str.7, ptr @fts_attr_groups, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @fts_voltage_attr_group, ptr @fts_temp_attr_group, ptr @fts_fan_attr_group, ptr @fts_voltage_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in3_input, ptr @sensor_dev_attr_in4_input, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @fts_temp_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp2_input, ptr @sensor_dev_attr_temp3_input, ptr @sensor_dev_attr_temp4_input, ptr @sensor_dev_attr_temp5_input, ptr @sensor_dev_attr_temp6_input, ptr @sensor_dev_attr_temp7_input, ptr @sensor_dev_attr_temp8_input, ptr @sensor_dev_attr_temp9_input, ptr @sensor_dev_attr_temp10_input, ptr @sensor_dev_attr_temp11_input, ptr @sensor_dev_attr_temp12_input, ptr @sensor_dev_attr_temp13_input, ptr @sensor_dev_attr_temp14_input, ptr @sensor_dev_attr_temp15_input, ptr @sensor_dev_attr_temp16_input, ptr @sensor_dev_attr_temp1_fault, ptr @sensor_dev_attr_temp2_fault, ptr @sensor_dev_attr_temp3_fault, ptr @sensor_dev_attr_temp4_fault, ptr @sensor_dev_attr_temp5_fault, ptr @sensor_dev_attr_temp6_fault, ptr @sensor_dev_attr_temp7_fault, ptr @sensor_dev_attr_temp8_fault, ptr @sensor_dev_attr_temp9_fault, ptr @sensor_dev_attr_temp10_fault, ptr @sensor_dev_attr_temp11_fault, ptr @sensor_dev_attr_temp12_fault, ptr @sensor_dev_attr_temp13_fault, ptr @sensor_dev_attr_temp14_fault, ptr @sensor_dev_attr_temp15_fault, ptr @sensor_dev_attr_temp16_fault, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_temp2_alarm, ptr @sensor_dev_attr_temp3_alarm, ptr @sensor_dev_attr_temp4_alarm, ptr @sensor_dev_attr_temp5_alarm, ptr @sensor_dev_attr_temp6_alarm, ptr @sensor_dev_attr_temp7_alarm, ptr @sensor_dev_attr_temp8_alarm, ptr @sensor_dev_attr_temp9_alarm, ptr @sensor_dev_attr_temp10_alarm, ptr @sensor_dev_attr_temp11_alarm, ptr @sensor_dev_attr_temp12_alarm, ptr @sensor_dev_attr_temp13_alarm, ptr @sensor_dev_attr_temp14_alarm, ptr @sensor_dev_attr_temp15_alarm, ptr @sensor_dev_attr_temp16_alarm, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @fts_fan_attrs, ptr @sensor_dev_attr_fan1_input, ptr @sensor_dev_attr_fan2_input, ptr @sensor_dev_attr_fan3_input, ptr @sensor_dev_attr_fan4_input, ptr @sensor_dev_attr_fan5_input, ptr @sensor_dev_attr_fan6_input, ptr @sensor_dev_attr_fan7_input, ptr @sensor_dev_attr_fan8_input, ptr @sensor_dev_attr_fan1_source, ptr @sensor_dev_attr_fan2_source, ptr @sensor_dev_attr_fan3_source, ptr @sensor_dev_attr_fan4_source, ptr @sensor_dev_attr_fan5_source, ptr @sensor_dev_attr_fan6_source, ptr @sensor_dev_attr_fan7_source, ptr @sensor_dev_attr_fan8_source, ptr @sensor_dev_attr_fan1_alarm, ptr @sensor_dev_attr_fan2_alarm, ptr @sensor_dev_attr_fan3_alarm, ptr @sensor_dev_attr_fan4_alarm, ptr @sensor_dev_attr_fan5_alarm, ptr @sensor_dev_attr_fan6_alarm, ptr @sensor_dev_attr_fan7_alarm, ptr @sensor_dev_attr_fan8_alarm, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @fts_wd_info, ptr @fts_wd_ops], section "llvm.metadata"
@0 = internal global [184 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_attr_groups to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_voltage_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_temp_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_fan_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_voltage_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_temp_attrs to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp9_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp10_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp11_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp12_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp13_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp14_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp15_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp16_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp9_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp10_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp11_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp12_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp13_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp14_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp15_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp16_fault to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp9_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp10_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp11_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp12_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp13_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp14_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp15_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp16_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_fan_attrs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_source to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan2_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan3_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan4_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan5_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan6_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan7_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fan8_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_wd_info to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fts_wd_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @fts_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fts_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @fts_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wdd = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 4
  tail call void @watchdog_unregister_device(ptr noundef %wdd) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %addr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 115, i16 %1)
  %cmp.not = icmp eq i16 %1, 115
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #7
  %sext = shl i32 %call, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext)
  %cmp4 = icmp sgt i32 %sext, 0
  %and = and i32 %call, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp7 = icmp eq i32 %and, 16
  %or.cond = and i1 %cmp4, %cmp7
  br i1 %or.cond, label %if.then9, label %do.body18

if.then9:                                         ; preds = %if.end
  %and11 = and i32 %call, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and11)
  %cond = icmp eq i32 %and11, 1
  br i1 %cond, label %if.end37, label %do.body

do.body:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_probe.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_probe, %cleanup)) #7
          to label %if.then16 [label %cleanup], !srcloc !310

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_probe.__UNIQUE_ID_ddebug292, ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  br label %cleanup

do.body18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_probe.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_probe, %cleanup)) #7
          to label %if.then32 [label %cleanup], !srcloc !310

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %dev33 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_probe.__UNIQUE_ID_ddebug293, ptr noundef %dev33, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end37:                                         ; preds = %if.then9
  %dev38 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev38, i32 noundef 344, i32 noundef 3520) #7
  %tobool40.not = icmp eq ptr %call.i, null
  br i1 %tobool40.not, label %if.end37.cleanup_crit_edge, label %do.body43

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body43:                                        ; preds = %if.end37
  %update_lock = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @fts_probe.__key) #7
  %access_lock = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %access_lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @fts_probe.__key.6) #7
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %call.i, align 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call51 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %do.body43.cleanup_crit_edge, label %if.end55

do.body43.cleanup_crit_edge:                      ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end55:                                         ; preds = %do.body43
  %call58 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev38, ptr noundef nonnull @.str, ptr noundef nonnull %call.i, ptr noundef nonnull @fts_attr_groups) #7
  %cmp.i = icmp ugt ptr %call58, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then60, label %if.end62

if.then60:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call58 to i32
  br label %cleanup

if.end62:                                         ; preds = %if.end55
  %wdd.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4
  %driver_data.i.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 16
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  %call.i105 = tail call fastcc i32 @fts_read_byte(ptr noundef %7, i16 noundef zeroext 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp.i106 = icmp slt i32 %call.i105, 0
  br i1 %cmp.i106, label %if.end62.cleanup_crit_edge, label %if.end.i

if.end62.cleanup_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp1.i = icmp eq i32 %call.i105, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i
  %resolution1.i.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %resolution1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %resolution1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i.i = icmp eq i32 %9, 1
  br i1 %cmp.i.i, label %if.then2.i.if.end6.i_crit_edge, label %if.end.i.i

if.then2.i.if.end6.i_crit_edge:                   ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.i.i:                                       ; preds = %if.then2.i
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 4
  %call.i.i = tail call fastcc i32 @fts_read_byte(ptr noundef %11, i16 noundef zeroext 20609) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp2.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp2.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i.i
  %and.i.i = and i32 %call.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.end12.i.i, label %if.end4.i.i.cleanup.sink.split.i.i_crit_edge

if.end4.i.i.cleanup.sink.split.i.i_crit_edge:     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end12.i.i:                                     ; preds = %if.end4.i.i
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %14 = trunc i32 %call.i.i to i8
  %conv.i.i = or i8 %14, 2
  %call18.i.i = tail call fastcc i32 @fts_write_byte(ptr noundef %13, i16 noundef zeroext 20609, i8 noundef zeroext %conv.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i.i)
  %cmp19.i.i = icmp slt i32 %call18.i.i, 0
  br i1 %cmp19.i.i, label %if.end12.i.i.cleanup_crit_edge, label %if.end12.i.i.cleanup.sink.split.i.i_crit_edge

if.end12.i.i.cleanup.sink.split.i.i_crit_edge:    ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i.i

if.end12.i.i.cleanup_crit_edge:                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i.i:                           ; preds = %if.end12.i.i.cleanup.sink.split.i.i_crit_edge, %if.end4.i.i.cleanup.sink.split.i.i_crit_edge
  %15 = ptrtoint ptr %resolution1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %resolution1.i.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %cleanup.sink.split.i.i, %if.then2.i.if.end6.i_crit_edge
  %timeout8.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 7
  %16 = ptrtoint ptr %timeout8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 60, ptr %timeout8.i, align 4
  br label %fts_watchdog_init.exit

if.else.i:                                        ; preds = %if.end.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  %call10.i = tail call fastcc i32 @fts_read_byte(ptr noundef %18, i16 noundef zeroext 20609) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp slt i32 %call10.i, 0
  br i1 %cmp11.i, label %if.else.i.cleanup_crit_edge, label %if.end13.i

if.else.i.cleanup_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call10.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 60, i32 1
  %resolution.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %resolution.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond.i, ptr %resolution.i, align 4
  %mul.i = mul i32 %cond.i, %call.i105
  %timeout17.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 7
  %20 = ptrtoint ptr %timeout17.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul.i, ptr %timeout17.i, align 4
  %status.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 18
  tail call void @_set_bit(i32 noundef 3, ptr noundef %status.i) #7
  br label %fts_watchdog_init.exit

fts_watchdog_init.exit:                           ; preds = %if.end13.i, %if.end6.i
  %info.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 3
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @fts_wd_info, ptr %info.i, align 4
  %ops.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @fts_wd_ops, ptr %ops.i, align 4
  %23 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %24, i32 0, i32 4
  %parent.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev.i, ptr %parent.i, align 4
  %min_timeout.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 9
  %26 = ptrtoint ptr %min_timeout.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %min_timeout.i, align 4
  %max_hw_heartbeat_ms.i = getelementptr inbounds %struct.fts_data, ptr %call.i, i32 0, i32 4, i32 12
  %27 = ptrtoint ptr %max_hw_heartbeat_ms.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 15300000, ptr %max_hw_heartbeat_ms.i, align 4
  %call27.i = tail call i32 @watchdog_register_device(ptr noundef %wdd.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool64.not = icmp eq i32 %call27.i, 0
  br i1 %tobool64.not, label %do.end69, label %fts_watchdog_init.exit.cleanup_crit_edge

fts_watchdog_init.exit.cleanup_crit_edge:         ; preds = %fts_watchdog_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end69:                                         ; preds = %fts_watchdog_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and72 = lshr i32 %call51, 4
  %28 = and i32 %and72, 15
  %and74 = and i32 %call51, 15
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev38, ptr noundef nonnull @.str.8, i32 noundef %28, i32 noundef %and74) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end69, %fts_watchdog_init.exit.cleanup_crit_edge, %if.else.i.cleanup_crit_edge, %if.end12.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end62.cleanup_crit_edge, %if.then60, %do.body43.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.then32, %do.body18, %if.then16, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then60 ], [ 0, %do.end69 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then16 ], [ -19, %if.then32 ], [ -12, %if.end37.cleanup_crit_edge ], [ %call51, %do.body43.cleanup_crit_edge ], [ %call27.i, %fts_watchdog_init.exit.cleanup_crit_edge ], [ -19, %do.body ], [ -19, %do.body18 ], [ %call.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call18.i.i, %if.end12.i.i.cleanup_crit_edge ], [ %call10.i, %if.else.i.cleanup_crit_edge ], [ %call.i105, %if.end62.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 43, i32 %call)
  %cmp = icmp slt i32 %call, 43
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 23
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 52
  br i1 %cmp6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 14) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 84
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 17
  br i1 %cmp14.not, label %if.end16, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @fts_id, i32 noundef 20) #7
  %flags = getelementptr inbounds %struct.i2c_board_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 0, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @in_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fts_data, ptr %1, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fts_update_device(ptr noundef %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %update_lock = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_updated, align 4
  %add = add i32 %1, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 6
  %3 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %valid, align 4, !range !311
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.exit_crit_edge

land.lhs.true.exit_crit_edge:                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call = tail call fastcc i32 @fts_read_byte(ptr noundef %6, i16 noundef zeroext 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %if.end.exit_crit_edge, label %if.end3

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end3:                                          ; preds = %if.end
  %and = and i32 %call, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %valid6 = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 6
  %and.lobit = lshr exact i32 %and, 1
  %7 = trunc i32 %and.lobit to i8
  %8 = ptrtoint ptr %valid6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %valid6, align 4
  br i1 %tobool4.not, label %if.end3.exit_crit_edge, label %if.end14, !prof !312

if.end3.exit_crit_edge:                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end14:                                         ; preds = %if.end3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call16 = tail call fastcc i32 @fts_read_byte(ptr noundef %10, i16 noundef zeroext 21)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.exit_crit_edge, label %if.end19

if.end14.exit_crit_edge:                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end19:                                         ; preds = %if.end14
  %conv = trunc i32 %call16 to i8
  %fan_present = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 10
  %11 = ptrtoint ptr %fan_present to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %fan_present, align 2
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  %call21 = tail call fastcc i32 @fts_read_byte(ptr noundef %13, i16 noundef zeroext 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.exit_crit_edge, label %if.end25

if.end19.exit_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end25:                                         ; preds = %if.end19
  %conv26 = trunc i32 %call21 to i8
  %fan_alarm = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 13
  %14 = ptrtoint ptr %fan_alarm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26, ptr %fan_alarm, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25
  %i.0159 = phi i32 [ 0, %if.end25 ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %fan_present to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %fan_present, align 2
  %conv30 = zext i8 %16 to i32
  %shl = shl nuw nsw i32 1, %i.0159
  %and31 = and i32 %shl, %conv30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %for.body
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = trunc i32 %i.0159 to i16
  %conv36 = add i16 %19, 32
  %call37 = tail call fastcc i32 @fts_read_byte(ptr noundef %18, i16 noundef zeroext %conv36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.then33.exit_crit_edge, label %if.end41

if.then33.exit_crit_edge:                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end41:                                         ; preds = %if.then33
  %conv42 = trunc i32 %call37 to i8
  %arrayidx = getelementptr %struct.fts_data, ptr %data, i32 0, i32 11, i32 %i.0159
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv42, ptr %arrayidx, align 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %conv45 = add i16 %19, 48
  %call46 = tail call fastcc i32 @fts_read_byte(ptr noundef %22, i16 noundef zeroext %conv45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.end41.exit_crit_edge, label %if.end50

if.end41.exit_crit_edge:                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %conv51 = trunc i32 %call46 to i8
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx54 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 11, i32 %i.0159
  %23 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx54, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.end50
  %conv51.sink = phi i8 [ %conv51, %if.end50 ], [ 0, %if.else ]
  %arrayidx52 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 12, i32 %i.0159
  %24 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv51.sink, ptr %arrayidx52, align 1
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  %25 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data, align 4
  %call59 = tail call fastcc i32 @fts_read_byte(ptr noundef %26, i16 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %cmp60 = icmp slt i32 %call59, 0
  br i1 %cmp60, label %for.end.exit_crit_edge, label %if.end63

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end63:                                         ; preds = %for.end
  %conv64 = trunc i32 %call59 to i8
  %temp_alarm = getelementptr inbounds %struct.fts_data, ptr %data, i32 0, i32 9
  %27 = ptrtoint ptr %temp_alarm to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv64, ptr %temp_alarm, align 1
  br label %for.body68

for.body68:                                       ; preds = %if.end76.for.body68_crit_edge, %if.end63
  %i.1161 = phi i32 [ 0, %if.end63 ], [ %inc80, %if.end76.for.body68_crit_edge ]
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %30 = trunc i32 %i.1161 to i16
  %conv71 = add i16 %30, 64
  %call72 = tail call fastcc i32 @fts_read_byte(ptr noundef %29, i16 noundef zeroext %conv71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %for.body68.exit_crit_edge, label %if.end76

for.body68.exit_crit_edge:                        ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end76:                                         ; preds = %for.body68
  %conv77 = trunc i32 %call72 to i8
  %arrayidx78 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 8, i32 %i.1161
  %31 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv77, ptr %arrayidx78, align 1
  %inc80 = add nuw nsw i32 %i.1161, 1
  %exitcond167.not = icmp eq i32 %inc80, 16
  br i1 %exitcond167.not, label %for.body85.preheader, label %if.end76.for.body68_crit_edge

if.end76.for.body68_crit_edge:                    ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body68

for.body85.preheader:                             ; preds = %if.end76
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data, align 4
  %call89 = tail call fastcc i32 @fts_read_byte(ptr noundef %33, i16 noundef zeroext 24)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %for.body85.preheader.exit_crit_edge, label %if.end93

for.body85.preheader.exit_crit_edge:              ; preds = %for.body85.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end93:                                         ; preds = %for.body85.preheader
  %conv94 = trunc i32 %call89 to i8
  %arrayidx95 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 7, i32 0
  %34 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv94, ptr %arrayidx95, align 1
  %35 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data, align 4
  %call89.1 = tail call fastcc i32 @fts_read_byte(ptr noundef %36, i16 noundef zeroext 25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.1)
  %cmp90.1 = icmp slt i32 %call89.1, 0
  br i1 %cmp90.1, label %if.end93.exit_crit_edge, label %if.end93.1

if.end93.exit_crit_edge:                          ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end93.1:                                       ; preds = %if.end93
  %conv94.1 = trunc i32 %call89.1 to i8
  %arrayidx95.1 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %arrayidx95.1 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv94.1, ptr %arrayidx95.1, align 1
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 4
  %call89.2 = tail call fastcc i32 @fts_read_byte(ptr noundef %39, i16 noundef zeroext 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.2)
  %cmp90.2 = icmp slt i32 %call89.2, 0
  br i1 %cmp90.2, label %if.end93.1.exit_crit_edge, label %if.end93.2

if.end93.1.exit_crit_edge:                        ; preds = %if.end93.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end93.2:                                       ; preds = %if.end93.1
  %conv94.2 = trunc i32 %call89.2 to i8
  %arrayidx95.2 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 7, i32 2
  %40 = ptrtoint ptr %arrayidx95.2 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv94.2, ptr %arrayidx95.2, align 1
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 4
  %call89.3 = tail call fastcc i32 @fts_read_byte(ptr noundef %42, i16 noundef zeroext 27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.3)
  %cmp90.3 = icmp slt i32 %call89.3, 0
  br i1 %cmp90.3, label %if.end93.2.exit_crit_edge, label %if.end93.3

if.end93.2.exit_crit_edge:                        ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end93.3:                                       ; preds = %if.end93.2
  call void @__sanitizer_cov_trace_pc() #9
  %conv94.3 = trunc i32 %call89.3 to i8
  %arrayidx95.3 = getelementptr %struct.fts_data, ptr %data, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %arrayidx95.3 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv94.3, ptr %arrayidx95.3, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %45 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %last_updated, align 4
  br label %exit

exit:                                             ; preds = %if.end93.3, %if.end93.2.exit_crit_edge, %if.end93.1.exit_crit_edge, %if.end93.exit_crit_edge, %for.body85.preheader.exit_crit_edge, %for.body68.exit_crit_edge, %for.end.exit_crit_edge, %if.end41.exit_crit_edge, %if.then33.exit_crit_edge, %if.end19.exit_crit_edge, %if.end14.exit_crit_edge, %if.end3.exit_crit_edge, %if.end.exit_crit_edge, %land.lhs.true.exit_crit_edge
  %err.0 = phi i32 [ %call, %if.end.exit_crit_edge ], [ %call16, %if.end14.exit_crit_edge ], [ %call21, %if.end19.exit_crit_edge ], [ %call59, %for.end.exit_crit_edge ], [ 0, %if.end93.3 ], [ 0, %land.lhs.true.exit_crit_edge ], [ -11, %if.end3.exit_crit_edge ], [ %call89, %for.body85.preheader.exit_crit_edge ], [ %call89.1, %if.end93.exit_crit_edge ], [ %call89.2, %if.end93.1.exit_crit_edge ], [ %call89.3, %if.end93.2.exit_crit_edge ], [ %call72, %for.body68.exit_crit_edge ], [ %call46, %if.end41.exit_crit_edge ], [ %call37, %if.then33.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  ret i32 %err.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fts_read_byte(ptr noundef %client, i16 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %reg, 8
  %conv1 = trunc i16 %0 to i8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.fts_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_read_byte.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_read_byte, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = zext i16 %0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_read_byte.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 127, i8 noundef zeroext %conv1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.error_crit_edge, label %if.end11

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = trunc i16 %reg to i8
  %call15 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %conv14) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_read_byte.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_read_byte, %error)) #7
          to label %if.then30 [label %error], !srcloc !310

if.then30:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i16 %reg, 255
  %conv32 = zext i16 %3 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_read_byte.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %conv32, i32 noundef %call15) #7
  br label %error

error:                                            ; preds = %if.then30, %if.end11, %do.end.error_crit_edge
  %ret.0 = phi i32 [ %call8, %do.end.error_crit_edge ], [ %call15, %if.then30 ], [ %call15, %if.end11 ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fts_data, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_fault_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fts_data, ptr %1, i32 0, i32 8, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp3 = icmp eq i8 %5, 0
  %conv4 = zext i1 %cmp3 to i32
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %conv4)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %temp_alarm = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %temp_alarm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %temp_alarm, align 1
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %conv, %3
  %7 = and i32 %6, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_alarm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ret) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call7 = call fastcc i32 @fts_read_byte(ptr noundef %6, i16 noundef zeroext 1665)
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = trunc i32 %call7 to i8
  %conv16 = or i8 %10, 1
  %call17 = call fastcc i32 @fts_write_byte(ptr noundef %9, i16 noundef zeroext 1665, i8 noundef zeroext %conv16)
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call17, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.error_crit_edge, label %if.end21

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %valid = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid, align 4
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %count, ptr %ret, align 4
  br label %error

error:                                            ; preds = %if.end21, %if.end11.error_crit_edge, %if.end6.error_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #7
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %error ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fts_write_byte(ptr noundef %client, i16 noundef zeroext %reg, i8 noundef zeroext %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = lshr i16 %reg, 8
  %conv1 = trunc i16 %0 to i8
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.fts_data, ptr %2, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_write_byte.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_write_byte, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !310

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv7 = zext i16 %0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_write_byte.__UNIQUE_ID_ddebug290, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 127, i8 noundef zeroext %conv1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end.error_crit_edge, label %if.end11

do.end.error_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fts_write_byte.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fts_write_byte, %do.end34)) #7
          to label %if.then28 [label %do.end34], !srcloc !310

if.then28:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %3 = and i16 %reg, 255
  %conv30 = zext i16 %3 to i32
  %conv31 = zext i8 %value to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fts_write_byte.__UNIQUE_ID_ddebug291, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %conv30, i32 noundef %conv31) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then28, %if.end11
  %conv35 = trunc i16 %reg to i8
  %call36 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %conv35, i8 noundef zeroext %value) #7
  br label %error

error:                                            ; preds = %do.end34, %do.end.error_crit_edge
  %ret.0 = phi i32 [ %call8, %do.end.error_crit_edge ], [ %call36, %do.end34 ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_value_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fts_data, ptr %1, i32 0, i32 11, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_source_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fts_data, ptr %1, i32 0, i32 12, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.12, i32 noundef %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %devattr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %devattr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %fan_alarm = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %fan_alarm to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fan_alarm, align 1
  %conv = zext i8 %5 to i32
  %6 = lshr i32 %conv, %3
  %7 = and i32 %6, 1
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.36, i32 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fan_alarm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %devattr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #7
  %call2 = tail call fastcc i32 @fts_update_device(ptr noundef %1)
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %ret) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %if.end6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  %update_lock = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call7 = call fastcc i32 @fts_read_byte(ptr noundef %6, i16 noundef zeroext 18561)
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end6.error_crit_edge, label %if.end11

if.end6.error_crit_edge:                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end11:                                         ; preds = %if.end6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = trunc i32 %call7 to i8
  %conv16 = or i8 %10, 1
  %call17 = call fastcc i32 @fts_write_byte(ptr noundef %9, i16 noundef zeroext 18561, i8 noundef zeroext %conv16)
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call17, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end11.error_crit_edge, label %if.end21

if.end11.error_crit_edge:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.end21:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %valid = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %valid, align 4
  %13 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %count, ptr %ret, align 4
  br label %error

error:                                            ; preds = %if.end21, %if.end11.error_crit_edge, %if.end6.error_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock) #7
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %error, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %error ], [ %call2, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_wd_start(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %timeout = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %4 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timeout, align 4
  %resolution = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %resolution to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resolution, align 4
  %conv1 = and i32 %7, 255
  %div = udiv i32 %5, %conv1
  %conv2 = trunc i32 %div to i8
  %call3 = tail call fastcc i32 @fts_write_byte(ptr noundef %3, i16 noundef zeroext 11, i8 noundef zeroext %conv2)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_wd_stop(ptr nocapture noundef readonly %wdd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call fastcc i32 @fts_write_byte(ptr noundef %3, i16 noundef zeroext 11, i8 noundef zeroext 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fts_wd_set_timeout(ptr nocapture noundef %wdd, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 16
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %timeout)
  %cmp = icmp ugt i32 %timeout, 255
  %sub = add i32 %timeout, 59
  %2 = urem i32 %sub, 60
  %mul = sub i32 %sub, %2
  %timeout.addr.0 = select i1 %cmp, i32 %mul, i32 %timeout
  %resolution.0 = select i1 %cmp, i32 60, i32 1
  %resolution1.i = getelementptr inbounds %struct.fts_data, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %resolution1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resolution1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %resolution.0)
  %cmp.i = icmp eq i32 %4, %resolution.0
  br i1 %cmp.i, label %entry.if.end4_crit_edge, label %if.end.i

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %call.i = tail call fastcc i32 @fts_read_byte(ptr noundef %6, i16 noundef zeroext 20609) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp2.i = icmp slt i32 %call.i, 0
  br i1 %cmp2.i, label %if.end.i.cleanup_crit_edge, label %if.end4.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %7 = select i1 %cmp, i1 true, i1 %tobool.not.i
  %or.cond.not.i = xor i1 %7, true
  %or.cond42.i = select i1 %cmp, i1 %tobool.not.i, i1 false
  %or.cond43.i = select i1 %or.cond.not.i, i1 true, i1 %or.cond42.i
  br i1 %or.cond43.i, label %if.end4.i.cleanup.sink.split.i_crit_edge, label %if.end12.i

if.end4.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end12.i:                                       ; preds = %if.end4.i
  %and15.i = and i32 %call.i, 253
  %masksel.i = select i1 %cmp, i32 0, i32 2
  %ret.0.i = or i32 %and15.i, %masksel.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %conv.i = trunc i32 %ret.0.i to i8
  %call18.i = tail call fastcc i32 @fts_write_byte(ptr noundef %9, i16 noundef zeroext 20609, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end12.i.cleanup_crit_edge, label %if.end12.i.cleanup.sink.split.i_crit_edge

if.end12.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split.i:                             ; preds = %if.end12.i.cleanup.sink.split.i_crit_edge, %if.end4.i.cleanup.sink.split.i_crit_edge
  %10 = ptrtoint ptr %resolution1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %resolution.0, ptr %resolution1.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %cleanup.sink.split.i, %entry.if.end4_crit_edge
  %timeout5 = getelementptr inbounds %struct.watchdog_device, ptr %wdd, i32 0, i32 7
  %11 = ptrtoint ptr %timeout5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %timeout.addr.0, ptr %timeout5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end12.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call18.i, %if.end12.i.cleanup_crit_edge ], [ %call.i, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 184)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !24, !25, !27, !28, !30, !31, !32, !33, !34, !36, !38, !40, !42, !43, !45, !47, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !118, !120, !121, !123, !124, !126, !127, !129, !130, !132, !133, !135, !136, !138, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !160, !162, !163, !165, !166, !168, !169, !171, !172, !174, !175, !177, !178, !180, !181, !183, !184, !186, !187, !189, !190, !192, !193, !195, !196, !198, !199, !201, !202, !204, !205, !207, !208, !210, !211, !213, !214, !216, !217, !219, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !251, !253, !254, !256, !257, !259, !260, !262, !263, !265, !266, !268, !269, !271, !272, !274, !275, !277, !278, !280, !281, !283, !284, !286, !287, !289, !290, !292, !293, !295, !297, !299}
!llvm.module.flags = !{!301, !302, !303, !304, !305, !306, !307, !308}
!llvm.ident = !{!309}

!0 = !{ptr @__initcall__kmod_ftsteutates__294_828_fts_driver_init6, !1, !"__initcall__kmod_ftsteutates__294_828_fts_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ftsteutates.c", i32 828, i32 1}
!2 = !{ptr @__exitcall_fts_driver_exit, !1, !"__exitcall_fts_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ftsteutates.c", i32 830, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ftsteutates.c", i32 831, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ftsteutates.c", i32 832, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ftsteutates.c", i32 819, i32 11}
!12 = !{ptr @fts_driver, !13, !"fts_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ftsteutates.c", i32 816, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ftsteutates.c", i32 773, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @fts_probe.__UNIQUE_ID_ddebug292, !15, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ftsteutates.c", i32 778, i32 3}
!21 = !{ptr @fts_probe.__UNIQUE_ID_ddebug293, !20, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!22 = !{ptr @fts_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ftsteutates.c", i32 787, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fts_probe.__key.6, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ftsteutates.c", i32 788, i32 2}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ftsteutates.c", i32 808, i32 2}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @fts_probe._entry, !29, !"_entry", i1 false, i1 false}
!33 = !{ptr @fts_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @fts_attr_groups, !35, !"fts_attr_groups", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ftsteutates.c", i32 701, i32 38}
!36 = !{ptr @fts_voltage_attr_group, !37, !"fts_voltage_attr_group", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/ftsteutates.c", i32 689, i32 37}
!38 = !{ptr @fts_voltage_attrs, !39, !"fts_voltage_attrs", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ftsteutates.c", i32 681, i32 26}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/ftsteutates.c", i32 677, i32 8}
!42 = !{ptr @sensor_dev_attr_in1_input, !41, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ftsteutates.c", i32 356, i32 22}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ftsteutates.c", i32 106, i32 2}
!47 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @fts_read_byte.__UNIQUE_ID_ddebug288, !46, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!49 = !{ptr @.str.15, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/hwmon/ftsteutates.c", i32 113, i32 2}
!51 = !{ptr @fts_read_byte.__UNIQUE_ID_ddebug289, !50, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/hwmon/ftsteutates.c", i32 678, i32 8}
!54 = !{ptr @sensor_dev_attr_in2_input, !53, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/ftsteutates.c", i32 679, i32 8}
!57 = !{ptr @sensor_dev_attr_in3_input, !56, !"sensor_dev_attr_in3_input", i1 false, i1 false}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/ftsteutates.c", i32 680, i32 8}
!60 = !{ptr @sensor_dev_attr_in4_input, !59, !"sensor_dev_attr_in4_input", i1 false, i1 false}
!61 = !{ptr @fts_temp_attr_group, !62, !"fts_temp_attr_group", i1 false, i1 false}
!62 = !{!"../drivers/hwmon/ftsteutates.c", i32 693, i32 37}
!63 = !{ptr @fts_temp_attrs, !64, !"fts_temp_attrs", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/ftsteutates.c", i32 564, i32 26}
!65 = !{ptr @.str.19, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/ftsteutates.c", i32 513, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_input, !66, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/ftsteutates.c", i32 514, i32 8}
!70 = !{ptr @sensor_dev_attr_temp2_input, !69, !"sensor_dev_attr_temp2_input", i1 false, i1 false}
!71 = !{ptr @.str.21, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/ftsteutates.c", i32 515, i32 8}
!73 = !{ptr @sensor_dev_attr_temp3_input, !72, !"sensor_dev_attr_temp3_input", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/ftsteutates.c", i32 516, i32 8}
!76 = !{ptr @sensor_dev_attr_temp4_input, !75, !"sensor_dev_attr_temp4_input", i1 false, i1 false}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/ftsteutates.c", i32 517, i32 8}
!79 = !{ptr @sensor_dev_attr_temp5_input, !78, !"sensor_dev_attr_temp5_input", i1 false, i1 false}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/ftsteutates.c", i32 518, i32 8}
!82 = !{ptr @sensor_dev_attr_temp6_input, !81, !"sensor_dev_attr_temp6_input", i1 false, i1 false}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/ftsteutates.c", i32 519, i32 8}
!85 = !{ptr @sensor_dev_attr_temp7_input, !84, !"sensor_dev_attr_temp7_input", i1 false, i1 false}
!86 = !{ptr @.str.26, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/ftsteutates.c", i32 520, i32 8}
!88 = !{ptr @sensor_dev_attr_temp8_input, !87, !"sensor_dev_attr_temp8_input", i1 false, i1 false}
!89 = !{ptr @.str.27, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/ftsteutates.c", i32 521, i32 8}
!91 = !{ptr @sensor_dev_attr_temp9_input, !90, !"sensor_dev_attr_temp9_input", i1 false, i1 false}
!92 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/ftsteutates.c", i32 522, i32 8}
!94 = !{ptr @sensor_dev_attr_temp10_input, !93, !"sensor_dev_attr_temp10_input", i1 false, i1 false}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/hwmon/ftsteutates.c", i32 523, i32 8}
!97 = !{ptr @sensor_dev_attr_temp11_input, !96, !"sensor_dev_attr_temp11_input", i1 false, i1 false}
!98 = !{ptr @.str.30, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/hwmon/ftsteutates.c", i32 524, i32 8}
!100 = !{ptr @sensor_dev_attr_temp12_input, !99, !"sensor_dev_attr_temp12_input", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/hwmon/ftsteutates.c", i32 525, i32 8}
!103 = !{ptr @sensor_dev_attr_temp13_input, !102, !"sensor_dev_attr_temp13_input", i1 false, i1 false}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/ftsteutates.c", i32 526, i32 8}
!106 = !{ptr @sensor_dev_attr_temp14_input, !105, !"sensor_dev_attr_temp14_input", i1 false, i1 false}
!107 = !{ptr @.str.33, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/ftsteutates.c", i32 527, i32 8}
!109 = !{ptr @sensor_dev_attr_temp15_input, !108, !"sensor_dev_attr_temp15_input", i1 false, i1 false}
!110 = !{ptr @.str.34, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/ftsteutates.c", i32 528, i32 8}
!112 = !{ptr @sensor_dev_attr_temp16_input, !111, !"sensor_dev_attr_temp16_input", i1 false, i1 false}
!113 = !{ptr @.str.35, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/ftsteutates.c", i32 530, i32 8}
!115 = !{ptr @sensor_dev_attr_temp1_fault, !114, !"sensor_dev_attr_temp1_fault", i1 false, i1 false}
!116 = !{ptr @.str.36, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/ftsteutates.c", i32 385, i32 22}
!118 = !{ptr @.str.37, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/hwmon/ftsteutates.c", i32 531, i32 8}
!120 = !{ptr @sensor_dev_attr_temp2_fault, !119, !"sensor_dev_attr_temp2_fault", i1 false, i1 false}
!121 = !{ptr @.str.38, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/hwmon/ftsteutates.c", i32 532, i32 8}
!123 = !{ptr @sensor_dev_attr_temp3_fault, !122, !"sensor_dev_attr_temp3_fault", i1 false, i1 false}
!124 = !{ptr @.str.39, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/ftsteutates.c", i32 533, i32 8}
!126 = !{ptr @sensor_dev_attr_temp4_fault, !125, !"sensor_dev_attr_temp4_fault", i1 false, i1 false}
!127 = !{ptr @.str.40, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/hwmon/ftsteutates.c", i32 534, i32 8}
!129 = !{ptr @sensor_dev_attr_temp5_fault, !128, !"sensor_dev_attr_temp5_fault", i1 false, i1 false}
!130 = !{ptr @.str.41, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/hwmon/ftsteutates.c", i32 535, i32 8}
!132 = !{ptr @sensor_dev_attr_temp6_fault, !131, !"sensor_dev_attr_temp6_fault", i1 false, i1 false}
!133 = !{ptr @.str.42, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/hwmon/ftsteutates.c", i32 536, i32 8}
!135 = !{ptr @sensor_dev_attr_temp7_fault, !134, !"sensor_dev_attr_temp7_fault", i1 false, i1 false}
!136 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/hwmon/ftsteutates.c", i32 537, i32 8}
!138 = !{ptr @sensor_dev_attr_temp8_fault, !137, !"sensor_dev_attr_temp8_fault", i1 false, i1 false}
!139 = !{ptr @.str.44, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/hwmon/ftsteutates.c", i32 538, i32 8}
!141 = !{ptr @sensor_dev_attr_temp9_fault, !140, !"sensor_dev_attr_temp9_fault", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/ftsteutates.c", i32 539, i32 8}
!144 = !{ptr @sensor_dev_attr_temp10_fault, !143, !"sensor_dev_attr_temp10_fault", i1 false, i1 false}
!145 = !{ptr @.str.46, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/hwmon/ftsteutates.c", i32 540, i32 8}
!147 = !{ptr @sensor_dev_attr_temp11_fault, !146, !"sensor_dev_attr_temp11_fault", i1 false, i1 false}
!148 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/hwmon/ftsteutates.c", i32 541, i32 8}
!150 = !{ptr @sensor_dev_attr_temp12_fault, !149, !"sensor_dev_attr_temp12_fault", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/hwmon/ftsteutates.c", i32 542, i32 8}
!153 = !{ptr @sensor_dev_attr_temp13_fault, !152, !"sensor_dev_attr_temp13_fault", i1 false, i1 false}
!154 = !{ptr @.str.49, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/hwmon/ftsteutates.c", i32 543, i32 8}
!156 = !{ptr @sensor_dev_attr_temp14_fault, !155, !"sensor_dev_attr_temp14_fault", i1 false, i1 false}
!157 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/hwmon/ftsteutates.c", i32 544, i32 8}
!159 = !{ptr @sensor_dev_attr_temp15_fault, !158, !"sensor_dev_attr_temp15_fault", i1 false, i1 false}
!160 = !{ptr @.str.51, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/hwmon/ftsteutates.c", i32 545, i32 8}
!162 = !{ptr @sensor_dev_attr_temp16_fault, !161, !"sensor_dev_attr_temp16_fault", i1 false, i1 false}
!163 = !{ptr @.str.52, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/hwmon/ftsteutates.c", i32 547, i32 8}
!165 = !{ptr @sensor_dev_attr_temp1_alarm, !164, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!166 = !{ptr @.str.53, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/hwmon/ftsteutates.c", i32 129, i32 2}
!168 = !{ptr @fts_write_byte.__UNIQUE_ID_ddebug290, !167, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!169 = !{ptr @.str.54, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/hwmon/ftsteutates.c", i32 135, i32 2}
!171 = !{ptr @fts_write_byte.__UNIQUE_ID_ddebug291, !170, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!172 = !{ptr @.str.55, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/hwmon/ftsteutates.c", i32 548, i32 8}
!174 = !{ptr @sensor_dev_attr_temp2_alarm, !173, !"sensor_dev_attr_temp2_alarm", i1 false, i1 false}
!175 = !{ptr @.str.56, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/hwmon/ftsteutates.c", i32 549, i32 8}
!177 = !{ptr @sensor_dev_attr_temp3_alarm, !176, !"sensor_dev_attr_temp3_alarm", i1 false, i1 false}
!178 = !{ptr @.str.57, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/hwmon/ftsteutates.c", i32 550, i32 8}
!180 = !{ptr @sensor_dev_attr_temp4_alarm, !179, !"sensor_dev_attr_temp4_alarm", i1 false, i1 false}
!181 = !{ptr @.str.58, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/hwmon/ftsteutates.c", i32 551, i32 8}
!183 = !{ptr @sensor_dev_attr_temp5_alarm, !182, !"sensor_dev_attr_temp5_alarm", i1 false, i1 false}
!184 = !{ptr @.str.59, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/hwmon/ftsteutates.c", i32 552, i32 8}
!186 = !{ptr @sensor_dev_attr_temp6_alarm, !185, !"sensor_dev_attr_temp6_alarm", i1 false, i1 false}
!187 = !{ptr @.str.60, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/hwmon/ftsteutates.c", i32 553, i32 8}
!189 = !{ptr @sensor_dev_attr_temp7_alarm, !188, !"sensor_dev_attr_temp7_alarm", i1 false, i1 false}
!190 = !{ptr @.str.61, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/hwmon/ftsteutates.c", i32 554, i32 8}
!192 = !{ptr @sensor_dev_attr_temp8_alarm, !191, !"sensor_dev_attr_temp8_alarm", i1 false, i1 false}
!193 = !{ptr @.str.62, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/hwmon/ftsteutates.c", i32 555, i32 8}
!195 = !{ptr @sensor_dev_attr_temp9_alarm, !194, !"sensor_dev_attr_temp9_alarm", i1 false, i1 false}
!196 = !{ptr @.str.63, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/hwmon/ftsteutates.c", i32 556, i32 8}
!198 = !{ptr @sensor_dev_attr_temp10_alarm, !197, !"sensor_dev_attr_temp10_alarm", i1 false, i1 false}
!199 = !{ptr @.str.64, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/hwmon/ftsteutates.c", i32 557, i32 8}
!201 = !{ptr @sensor_dev_attr_temp11_alarm, !200, !"sensor_dev_attr_temp11_alarm", i1 false, i1 false}
!202 = !{ptr @.str.65, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/hwmon/ftsteutates.c", i32 558, i32 8}
!204 = !{ptr @sensor_dev_attr_temp12_alarm, !203, !"sensor_dev_attr_temp12_alarm", i1 false, i1 false}
!205 = !{ptr @.str.66, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/hwmon/ftsteutates.c", i32 559, i32 8}
!207 = !{ptr @sensor_dev_attr_temp13_alarm, !206, !"sensor_dev_attr_temp13_alarm", i1 false, i1 false}
!208 = !{ptr @.str.67, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/hwmon/ftsteutates.c", i32 560, i32 8}
!210 = !{ptr @sensor_dev_attr_temp14_alarm, !209, !"sensor_dev_attr_temp14_alarm", i1 false, i1 false}
!211 = !{ptr @.str.68, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/hwmon/ftsteutates.c", i32 561, i32 8}
!213 = !{ptr @sensor_dev_attr_temp15_alarm, !212, !"sensor_dev_attr_temp15_alarm", i1 false, i1 false}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/hwmon/ftsteutates.c", i32 562, i32 8}
!216 = !{ptr @sensor_dev_attr_temp16_alarm, !215, !"sensor_dev_attr_temp16_alarm", i1 false, i1 false}
!217 = !{ptr @fts_fan_attr_group, !218, !"fts_fan_attr_group", i1 false, i1 false}
!218 = !{!"../drivers/hwmon/ftsteutates.c", i32 697, i32 37}
!219 = !{ptr @fts_fan_attrs, !220, !"fts_fan_attrs", i1 false, i1 false}
!220 = !{!"../drivers/hwmon/ftsteutates.c", i32 646, i32 26}
!221 = !{ptr @.str.70, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/hwmon/ftsteutates.c", i32 619, i32 8}
!223 = !{ptr @sensor_dev_attr_fan1_input, !222, !"sensor_dev_attr_fan1_input", i1 false, i1 false}
!224 = !{ptr @.str.71, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/hwmon/ftsteutates.c", i32 620, i32 8}
!226 = !{ptr @sensor_dev_attr_fan2_input, !225, !"sensor_dev_attr_fan2_input", i1 false, i1 false}
!227 = !{ptr @.str.72, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/hwmon/ftsteutates.c", i32 621, i32 8}
!229 = !{ptr @sensor_dev_attr_fan3_input, !228, !"sensor_dev_attr_fan3_input", i1 false, i1 false}
!230 = !{ptr @.str.73, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/hwmon/ftsteutates.c", i32 622, i32 8}
!232 = !{ptr @sensor_dev_attr_fan4_input, !231, !"sensor_dev_attr_fan4_input", i1 false, i1 false}
!233 = !{ptr @.str.74, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/hwmon/ftsteutates.c", i32 623, i32 8}
!235 = !{ptr @sensor_dev_attr_fan5_input, !234, !"sensor_dev_attr_fan5_input", i1 false, i1 false}
!236 = !{ptr @.str.75, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/hwmon/ftsteutates.c", i32 624, i32 8}
!238 = !{ptr @sensor_dev_attr_fan6_input, !237, !"sensor_dev_attr_fan6_input", i1 false, i1 false}
!239 = !{ptr @.str.76, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/hwmon/ftsteutates.c", i32 625, i32 8}
!241 = !{ptr @sensor_dev_attr_fan7_input, !240, !"sensor_dev_attr_fan7_input", i1 false, i1 false}
!242 = !{ptr @.str.77, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/hwmon/ftsteutates.c", i32 626, i32 8}
!244 = !{ptr @sensor_dev_attr_fan8_input, !243, !"sensor_dev_attr_fan8_input", i1 false, i1 false}
!245 = !{ptr @.str.78, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/hwmon/ftsteutates.c", i32 628, i32 8}
!247 = !{ptr @sensor_dev_attr_fan1_source, !246, !"sensor_dev_attr_fan1_source", i1 false, i1 false}
!248 = !{ptr @.str.79, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/hwmon/ftsteutates.c", i32 629, i32 8}
!250 = !{ptr @sensor_dev_attr_fan2_source, !249, !"sensor_dev_attr_fan2_source", i1 false, i1 false}
!251 = !{ptr @.str.80, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/hwmon/ftsteutates.c", i32 630, i32 8}
!253 = !{ptr @sensor_dev_attr_fan3_source, !252, !"sensor_dev_attr_fan3_source", i1 false, i1 false}
!254 = !{ptr @.str.81, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/hwmon/ftsteutates.c", i32 631, i32 8}
!256 = !{ptr @sensor_dev_attr_fan4_source, !255, !"sensor_dev_attr_fan4_source", i1 false, i1 false}
!257 = !{ptr @.str.82, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/hwmon/ftsteutates.c", i32 632, i32 8}
!259 = !{ptr @sensor_dev_attr_fan5_source, !258, !"sensor_dev_attr_fan5_source", i1 false, i1 false}
!260 = !{ptr @.str.83, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/hwmon/ftsteutates.c", i32 633, i32 8}
!262 = !{ptr @sensor_dev_attr_fan6_source, !261, !"sensor_dev_attr_fan6_source", i1 false, i1 false}
!263 = !{ptr @.str.84, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/hwmon/ftsteutates.c", i32 634, i32 8}
!265 = !{ptr @sensor_dev_attr_fan7_source, !264, !"sensor_dev_attr_fan7_source", i1 false, i1 false}
!266 = !{ptr @.str.85, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/hwmon/ftsteutates.c", i32 635, i32 8}
!268 = !{ptr @sensor_dev_attr_fan8_source, !267, !"sensor_dev_attr_fan8_source", i1 false, i1 false}
!269 = !{ptr @.str.86, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/hwmon/ftsteutates.c", i32 637, i32 8}
!271 = !{ptr @sensor_dev_attr_fan1_alarm, !270, !"sensor_dev_attr_fan1_alarm", i1 false, i1 false}
!272 = !{ptr @.str.87, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/hwmon/ftsteutates.c", i32 638, i32 8}
!274 = !{ptr @sensor_dev_attr_fan2_alarm, !273, !"sensor_dev_attr_fan2_alarm", i1 false, i1 false}
!275 = !{ptr @.str.88, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/hwmon/ftsteutates.c", i32 639, i32 8}
!277 = !{ptr @sensor_dev_attr_fan3_alarm, !276, !"sensor_dev_attr_fan3_alarm", i1 false, i1 false}
!278 = !{ptr @.str.89, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/hwmon/ftsteutates.c", i32 640, i32 8}
!280 = !{ptr @sensor_dev_attr_fan4_alarm, !279, !"sensor_dev_attr_fan4_alarm", i1 false, i1 false}
!281 = !{ptr @.str.90, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/hwmon/ftsteutates.c", i32 641, i32 8}
!283 = !{ptr @sensor_dev_attr_fan5_alarm, !282, !"sensor_dev_attr_fan5_alarm", i1 false, i1 false}
!284 = !{ptr @.str.91, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/hwmon/ftsteutates.c", i32 642, i32 8}
!286 = !{ptr @sensor_dev_attr_fan6_alarm, !285, !"sensor_dev_attr_fan6_alarm", i1 false, i1 false}
!287 = !{ptr @.str.92, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/hwmon/ftsteutates.c", i32 643, i32 8}
!289 = !{ptr @sensor_dev_attr_fan7_alarm, !288, !"sensor_dev_attr_fan7_alarm", i1 false, i1 false}
!290 = !{ptr @.str.93, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/hwmon/ftsteutates.c", i32 644, i32 8}
!292 = !{ptr @sensor_dev_attr_fan8_alarm, !291, !"sensor_dev_attr_fan8_alarm", i1 false, i1 false}
!293 = !{ptr @fts_wd_info, !294, !"fts_wd_info", i1 false, i1 false}
!294 = !{!"../drivers/hwmon/ftsteutates.c", i32 292, i32 35}
!295 = !{ptr @fts_wd_ops, !296, !"fts_wd_ops", i1 false, i1 false}
!296 = !{!"../drivers/hwmon/ftsteutates.c", i32 297, i32 34}
!297 = !{ptr @fts_id, !298, !"fts_id", i1 false, i1 false}
!298 = !{!"../drivers/hwmon/ftsteutates.c", i32 53, i32 35}
!299 = !{ptr @normal_i2c, !300, !"normal_i2c", i1 false, i1 false}
!300 = !{!"../drivers/hwmon/ftsteutates.c", i32 51, i32 29}
!301 = !{i32 1, !"wchar_size", i32 2}
!302 = !{i32 1, !"min_enum_size", i32 4}
!303 = !{i32 8, !"branch-target-enforcement", i32 0}
!304 = !{i32 8, !"sign-return-address", i32 0}
!305 = !{i32 8, !"sign-return-address-all", i32 0}
!306 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!307 = !{i32 7, !"uwtable", i32 1}
!308 = !{i32 7, !"frame-pointer", i32 2}
!309 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!310 = !{i64 2148499308, i64 2148499313, i64 2148499326, i64 2148499370, i64 2148499404, i64 2148499425}
!311 = !{i8 0, i8 2}
!312 = !{!"branch_weights", i32 1, i32 2000}
