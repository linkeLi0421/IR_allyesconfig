; ModuleID = '/llk/IR_all_yes/drivers/hwmon/stts751.c_pt.bc'
source_filename = "../drivers/hwmon/stts751.c"
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
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.stts751_priv = type { ptr, ptr, %struct.mutex, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_stts751__322_831_stts751_driver_init6 = internal global ptr @stts751_driver_init, section ".initcall6.init", align 4
@stts751_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @stts751_probe, ptr null, ptr @stts751_alert, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stts751_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stts751_id, ptr @stts751_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stts751_driver_exit = internal global ptr @stts751_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author323 = internal constant [57 x i8] c"stts751.author=Andrea Merello <andrea.merello@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description324 = internal constant [42 x i8] c"stts751.description=STTS751 sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file325 = internal constant [35 x i8] c"stts751.file=drivers/hwmon/stts751\00", section ".modinfo", align 1
@__UNIQUE_ID_license326 = internal constant [20 x i8] c"stts751.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stts751\00", [24 x i8] zeroinitializer }, align 32
@stts751_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"stts751\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stts751_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stts751\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [9 x i16], [46 x i8] } { [9 x i16] [i16 72, i16 73, i16 56, i16 57, i16 74, i16 75, i16 58, i16 59, i16 -2], [46 x i8] zeroinitializer }, align 32
@stts751_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&priv->access_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"smbus-timeout-disable\00", [42 x i8] zeroinitializer }, align 32
@stts751_probe.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -57, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stts751_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/stts751.c\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Chip revision 0x%x is untested\0A\00", [32 x i8] zeroinitializer }, align 32
@stts751_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @stts751_group, ptr null], [24 x i8] zeroinitializer }, align 32
@stts751_read_chip_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.4, i32 714, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unrecognized conversion rate 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"stts751_read_chip_config\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stts751_read_chip_config._entry_ptr = internal global ptr @stts751_read_chip_config._entry, section ".printk_index", align 4
@stts751_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @stts751_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@stts751_attrs = internal global { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_update_interval, ptr null], [56 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_show, ptr @min_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_show, ptr @max_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @min_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @max_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_show, ptr @therm_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hyst_show, ptr @hyst_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_crit_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @therm_trip_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_update_interval = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @interval_show, ptr @interval_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@stts751_intervals = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 16000, i32 8000, i32 4000, i32 2000, i32 1000, i32 500, i32 250, i32 125, i32 63, i32 31], [56 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@stts751_update_temp.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"stts751_update_temp\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I2C read failed (temp H). ret: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@stts751_update_temp.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.14, i8 0, i8 43, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"I2C read failed (temp L). ret: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@stts751_update_temp.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"I2C 2nd read failed (temp H). ret: %x\0A\00", [57 x i8] zeroinitializer }, align 32
@stts751_update_temp.__UNIQUE_ID_ddebug292 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.4, ptr @.str.16, i8 0, i8 47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"I2C 2nd read failed (temp L). ret: %x\0A\00", [57 x i8] zeroinitializer }, align 32
@stts751_update_alert.__UNIQUE_ID_ddebug293 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stts751_update_alert\00", [43 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"status reg %x\0A\00", [17 x i8] zeroinitializer }, align 32
@stts751_update_alert.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.19, i8 0, i8 74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalidating alert cache\0A\00", [38 x i8] zeroinitializer }, align 32
@stts751_update_alert.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.17, ptr @.str.4, ptr @.str.20, i8 0, i8 76, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"max_alert: %d, min_alert: %d, therm_trip: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@min_store.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.22, ptr @.str.4, ptr @.str.23, i8 0, i8 -113, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"min_store\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setting event min %ld\00", [42 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@max_store.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.25, ptr @.str.4, ptr @.str.26, i8 0, i8 -121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"max_store\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"setting event max %ld\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"temp1_crit\00", [21 x i8] zeroinitializer }, align 32
@therm_store.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 112, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"therm_store\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"setting therm %ld\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_crit_hyst\00", [16 x i8] zeroinitializer }, align 32
@hyst_store.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.4, ptr @.str.34, i8 0, i8 122, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hyst_store\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"setting hyst %ld\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"temp1_crit_alarm\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@interval_store.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.38, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"interval_store\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"setting interval. req:%lu, idx: %d, val: %d\00", [52 x i8] zeroinitializer }, align 32
@interval_store.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.39, i8 0, i8 -100, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"lower resolution, then modify convrate\00", [57 x i8] zeroinitializer }, align 32
@interval_store.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.37, ptr @.str.4, ptr @.str.40, i8 0, i8 -97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"modify convrate, then raise resolution\00", [57 x i8] zeroinitializer }, align 32
@stts751_adjust_resolution.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.41, ptr @.str.4, ptr @.str.42, i8 0, i8 35, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"stts751_adjust_resolution\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"setting res %d. config %x\00", [38 x i8] zeroinitializer }, align 32
@stts751_alert.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.4, ptr @.str.44, i8 0, i8 79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"stts751_alert\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alert!\00", [25 x i8] zeroinitializer }, align 32
@stts751_alert._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.4, i32 328, ptr @.str.46, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"Alert received, but can't communicate to the device. Triggering all alarms!\00", [52 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@stts751_alert._entry_ptr = internal global ptr @stts751_alert._entry, section ".printk_index", align 4
@stts751_alert._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.4, i32 333, ptr @.str.49, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"got alert for HIGH temperature\00", [33 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@stts751_alert._entry_ptr.50 = internal global ptr @stts751_alert._entry.47, section ".printk_index", align 4
@stts751_alert._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.43, ptr @.str.4, i32 342, ptr @.str.49, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"got alert for LOW temperature\00", [34 x i8] zeroinitializer }, align 32
@stts751_alert._entry_ptr.53 = internal global ptr @stts751_alert._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STTS751-0\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"STTS751-1\00", [22 x i8] zeroinitializer }, align 32
@stts751_detect.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.4, ptr @.str.57, i8 0, i8 -83, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"stts751_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Chip %s detected\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"stts751_driver\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 818, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 821, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"stts751_of_match\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 79, i32 49 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"stts751_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 74, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 31, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 780, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 783, i32 9 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 797, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"stts751_groups\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 714, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [14 x i8] c"stts751_group\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 763, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [14 x i8] c"stts751_attrs\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 751, i32 26 }
@___asan_gen_.115 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_temp1_crit\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_crit_hyst\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [33 x i8] c"sensor_dev_attr_temp1_crit_alarm\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_update_interval\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 741, i32 8 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 422, i32 25 }
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"stts751_intervals\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 70, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 166, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 173, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 180, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 189, i32 4 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 276, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 296, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 303, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 742, i32 8 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 575, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 743, i32 8 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 541, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 744, i32 8 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 745, i32 8 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 746, i32 8 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 450, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 747, i32 8 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 490, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 748, i32 8 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 749, i32 8 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 607, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 624, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 636, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 141, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 318, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 327, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 333, i32 4 }
@___asan_gen_.268 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 342, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 685, i32 10 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 688, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [27 x i8] c"../drivers/hwmon/stts751.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 693, i32 2 }
@llvm.compiler.used = appending global [87 x ptr] [ptr @__UNIQUE_ID_author323, ptr @__UNIQUE_ID_description324, ptr @__UNIQUE_ID_file325, ptr @__UNIQUE_ID_license326, ptr @__exitcall_stts751_driver_exit, ptr @__initcall__kmod_stts751__322_831_stts751_driver_init6, ptr @stts751_alert._entry, ptr @stts751_alert._entry.47, ptr @stts751_alert._entry.51, ptr @stts751_alert._entry_ptr, ptr @stts751_alert._entry_ptr.50, ptr @stts751_alert._entry_ptr.53, ptr @stts751_driver_exit, ptr @stts751_read_chip_config._entry, ptr @stts751_read_chip_config._entry_ptr, ptr @stts751_driver, ptr @.str, ptr @stts751_of_match, ptr @stts751_id, ptr @normal_i2c, ptr @stts751_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @stts751_groups, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @stts751_group, ptr @stts751_attrs, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @sensor_dev_attr_temp1_crit, ptr @sensor_dev_attr_temp1_crit_hyst, ptr @sensor_dev_attr_temp1_crit_alarm, ptr @sensor_dev_attr_update_interval, ptr @.str.10, ptr @.str.11, ptr @stts751_intervals, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_read_chip_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_attrs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_crit_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_update_interval to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_intervals to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_alert._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_alert._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stts751_alert._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stts751_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stts751_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stts751_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @stts751_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stts751_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 148, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %client1 = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %client, ptr %client1, align 4
  %notify_max = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 19
  %1 = ptrtoint ptr %notify_max to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %notify_max, align 2
  %notify_min = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 20
  %2 = ptrtoint ptr %notify_min to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %notify_min, align 1
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %access_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @stts751_probe.__key) #7
  %call3 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br i1 %call3, label %if.then4, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %call.i80 = tail call zeroext i1 @device_property_present(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  %conv = select i1 %call.i80, i8 0, i8 -128
  %call8 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 34, i8 noundef zeroext %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then4.if.end12_crit_edge, label %if.then4.cleanup_crit_edge

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12:                                         ; preds = %if.then4.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call13 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp17.not = icmp eq i32 %call13, 1
  br i1 %cmp17.not, label %if.end16.if.end32_crit_edge, label %do.body20

if.end16.if.end32_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_probe.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_probe, %if.end32)) #7
          to label %if.then27 [label %if.end32], !srcloc !161

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_probe.__UNIQUE_ID_ddebug321, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %call13) #7
  br label %if.end32

if.end32:                                         ; preds = %if.then27, %do.body20, %if.end16.if.end32_crit_edge
  %4 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client1, align 4
  %call.i81 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp.i = icmp slt i32 %call.i81, 0
  br i1 %cmp.i, label %if.end32.cleanup_crit_edge, label %if.end.i

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end32
  %conv.i = trunc i32 %call.i81 to i8
  %config.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 13
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv.i, ptr %config.i, align 4
  %and.i = lshr i32 %call.i81, 2
  %7 = and i32 %and.i, 3
  %res.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %res.i, align 4
  %9 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client1, align 4
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end6.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call2.i)
  %cmp7.i = icmp ugt i32 %call2.i, 9
  br i1 %cmp7.i, label %do.end.i, label %if.end10.i

do.end.i:                                         ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %call2.i) #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.end6.i
  %conv11.i = trunc i32 %call2.i to i8
  %interval.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %interval.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv11.i, ptr %interval.i, align 4
  %event_max.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client1, align 4
  %call.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %15, i8 noundef zeroext 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.end10.i.cleanup_crit_edge, label %if.end.i.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end10.i
  %16 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %client1, align 4
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %17, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp3.i.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %if.end14.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i.i
  %18 = shl i32 %call.i.i, 24
  %19 = shl i32 %call2.i.i, 16
  %sext.i.i = or i32 %19, %18
  %conv.i.i.i = ashr exact i32 %sext.i.i, 16
  %mul.i.i.i = mul nsw i32 %conv.i.i.i, 125
  %div.i.i.i = sdiv i32 %mul.i.i.i, 32
  %20 = ptrtoint ptr %event_max.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.i.i.i, ptr %event_max.i, align 4
  %event_min.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client1, align 4
  %call.i60.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %22, i8 noundef zeroext 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i60.i)
  %cmp.i61.i = icmp slt i32 %call.i60.i, 0
  br i1 %cmp.i61.i, label %if.end14.i.cleanup_crit_edge, label %if.end.i64.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i64.i:                                     ; preds = %if.end14.i
  %23 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client1, align 4
  %call2.i62.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %24, i8 noundef zeroext 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i62.i)
  %cmp3.i63.i = icmp slt i32 %call2.i62.i, 0
  br i1 %cmp3.i63.i, label %if.end.i64.i.cleanup_crit_edge, label %if.end18.i

if.end.i64.i.cleanup_crit_edge:                   ; preds = %if.end.i64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18.i:                                       ; preds = %if.end.i64.i
  %25 = shl i32 %call.i60.i, 24
  %26 = shl i32 %call2.i62.i, 16
  %sext.i65.i = or i32 %26, %25
  %conv.i.i66.i = ashr exact i32 %sext.i65.i, 16
  %mul.i.i67.i = mul nsw i32 %conv.i.i66.i, 125
  %div.i.i68.i = sdiv i32 %mul.i.i67.i, 32
  %27 = ptrtoint ptr %event_min.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div.i.i68.i, ptr %event_min.i, align 4
  %therm.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 7
  %28 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %client1, align 4
  %call.i73.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %29, i8 noundef zeroext 32) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i)
  %cmp.i74.i = icmp slt i32 %call.i73.i, 0
  br i1 %cmp.i74.i, label %if.end18.i.cleanup_crit_edge, label %if.end22.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.i:                                       ; preds = %if.end18.i
  %call.tr.i.i = trunc i32 %call.i73.i to i16
  %conv.i.i = shl i16 %call.tr.i.i, 8
  %conv.i.i75.i = sext i16 %conv.i.i to i32
  %mul.i.i76.i = mul nsw i32 %conv.i.i75.i, 125
  %div.i.i77.i = sdiv i32 %mul.i.i76.i, 32
  %30 = ptrtoint ptr %therm.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %div.i.i77.i, ptr %therm.i, align 4
  %31 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client1, align 4
  %call.i81.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %32, i8 noundef zeroext 33) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i)
  %cmp.i82.i = icmp slt i32 %call.i81.i, 0
  br i1 %cmp.i82.i, label %if.end22.i.cleanup_crit_edge, label %if.end36

if.end22.i.cleanup_crit_edge:                     ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end36:                                         ; preds = %if.end22.i
  %call.tr.i83.i = trunc i32 %call.i81.i to i16
  %conv.i84.i = shl i16 %call.tr.i83.i, 8
  %conv.i.i85.i = sext i16 %conv.i84.i to i32
  %mul.i.i86.i = mul nsw i32 %conv.i.i85.i, 125
  %div.i.i87.neg.i = sdiv i32 %mul.i.i86.i, -32
  %33 = ptrtoint ptr %therm.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %therm.i, align 4
  %sub.i = add i32 %34, %div.i.i87.neg.i
  %hyst.i = getelementptr inbounds %struct.stts751_priv, ptr %call.i, i32 0, i32 8
  %35 = ptrtoint ptr %hyst.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i, ptr %hyst.i, align 4
  %36 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %config.i, align 4
  %38 = and i8 %37, 63
  store i8 %38, ptr %config.i, align 4
  %call40 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 3, i8 noundef zeroext %38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call45 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @stts751_groups) #7
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call45, ptr %call.i, align 4
  %cmp.i.i83 = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  %40 = ptrtoint ptr %call45 to i32
  %spec.select.i = select i1 %cmp.i.i83, i32 %40, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %if.end36.cleanup_crit_edge, %if.end22.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end.i64.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end43 ], [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.then4.cleanup_crit_edge ], [ -19, %if.end12.cleanup_crit_edge ], [ %call40, %if.end36.cleanup_crit_edge ], [ %call.i60.i, %if.end14.i.cleanup_crit_edge ], [ %call2.i62.i, %if.end.i64.i.cleanup_crit_edge ], [ %call.i.i, %if.end10.i.cleanup_crit_edge ], [ %call2.i.i, %if.end.i.i.cleanup_crit_edge ], [ %call.i81.i, %if.end22.i.cleanup_crit_edge ], [ %call.i73.i, %if.end18.i.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i81, %if.end32.cleanup_crit_edge ], [ -19, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stts751_alert(ptr noundef %client, i32 noundef %type, i32 noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %cmp.not = icmp eq i32 %type, 0
  br i1 %cmp.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_alert.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_alert, %do.end)) #7
          to label %if.then5 [label %do.end], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_alert.__UNIQUE_ID_ddebug296, ptr noundef %dev, ptr noundef nonnull @.str.44) #7
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %call7 = tail call fastcc i32 @stts751_update_alert(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %max_alert = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %max_alert to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %max_alert, align 2
  %min_alert = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 14
  %3 = ptrtoint ptr %min_alert to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %min_alert, align 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.45) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %do.end.if.end14_crit_edge
  %max_alert15 = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %max_alert15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_alert15, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool16.not = icmp eq i8 %7, 0
  br i1 %tobool16.not, label %if.end14.if.end27_crit_edge, label %if.then17

if.end14.if.end27_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then17:                                        ; preds = %if.end14
  %notify_max = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 19
  %8 = ptrtoint ptr %notify_max to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %notify_max, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.then17.if.end24_crit_edge, label %do.end22

if.then17.if.end24_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end22:                                         ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %11, ptr noundef nonnull @.str.48) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end22, %if.then17.if.end24_crit_edge
  %12 = ptrtoint ptr %notify_max to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %notify_max, align 2
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void @sysfs_notify(ptr noundef %14, ptr noundef null, ptr noundef nonnull @.str.28) #7
  br label %if.end27

if.end27:                                         ; preds = %if.end24, %if.end14.if.end27_crit_edge
  %min_alert28 = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %min_alert28 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_alert28, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool29.not = icmp eq i8 %16, 0
  br i1 %tobool29.not, label %if.end27.lor.lhs.false_crit_edge, label %if.then30

if.end27.lor.lhs.false_crit_edge:                 ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

if.then30:                                        ; preds = %if.end27
  %notify_min = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 20
  %17 = ptrtoint ptr %notify_min to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %notify_min, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool31.not = icmp eq i8 %18, 0
  br i1 %tobool31.not, label %if.then30.if.end41_crit_edge, label %do.end35

if.then30.if.end41_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

do.end35:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %20, ptr noundef nonnull @.str.52) #10
  br label %if.end41

if.end41:                                         ; preds = %do.end35, %if.then30.if.end41_crit_edge
  %21 = ptrtoint ptr %notify_min to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %notify_min, align 1
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void @sysfs_notify(ptr noundef %23, ptr noundef null, ptr noundef nonnull @.str.27) #7
  %24 = ptrtoint ptr %min_alert28 to i32
  call void @__asan_load1_noabort(i32 %24)
  %.pr = load i8, ptr %min_alert28, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool43.not = icmp eq i8 %.pr, 0
  br i1 %tobool43.not, label %if.end41.lor.lhs.false_crit_edge, label %if.end41.if.then46_crit_edge

if.end41.if.then46_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

if.end41.lor.lhs.false_crit_edge:                 ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end41.lor.lhs.false_crit_edge, %if.end27.lor.lhs.false_crit_edge
  %25 = ptrtoint ptr %max_alert15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_alert15, align 2, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool45.not = icmp eq i8 %26, 0
  br i1 %tobool45.not, label %lor.lhs.false.if.end50_crit_edge, label %lor.lhs.false.if.then46_crit_edge

lor.lhs.false.if.then46_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then46

lor.lhs.false.if.end50_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then46:                                        ; preds = %lor.lhs.false.if.then46_crit_edge, %if.end41.if.then46_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call49 = tail call i32 @kobject_uevent(ptr noundef %28, i32 noundef 2) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %lor.lhs.false.if.end50_crit_edge
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stts751_detect(ptr noundef %new_client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 3
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
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 83, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 83
  br i1 %cmp.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 2) #7
  %and = and i32 %call5, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 6) #7
  %and10 = and i32 %call9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %call14 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 8) #7
  %and15 = and i32 %call14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call19 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext 34) #7
  %and20 = and i32 %call19, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %new_client, i8 noundef zeroext -3) #7
  %6 = zext i32 %call24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call24, label %if.end23.cleanup_crit_edge [
    i32 0, label %if.end23.do.body_crit_edge
    i32 1, label %sw.bb25
  ]

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb25:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %sw.bb25, %if.end23.do.body_crit_edge
  %name.0 = phi ptr [ @.str.55, %sw.bb25 ], [ @.str.54, %if.end23.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_detect.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_detect, %do.end)) #7
          to label %if.then32 [label %do.end], !srcloc !161

if.then32:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.i2c_client, ptr %new_client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_detect.__UNIQUE_ID_ddebug320, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull %name.0) #7
  br label %do.end

do.end:                                           ; preds = %if.then32, %do.body
  %call34 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @stts751_id, i32 noundef 20) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end8.cleanup_crit_edge ], [ -19, %if.end13.cleanup_crit_edge ], [ -19, %if.end18.cleanup_crit_edge ], [ -19, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %interval.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval.i, align 4
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #7
  %last_update.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %7, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %data_valid.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %data_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_valid.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.stts751_update.exit.thread_crit_edge

lor.lhs.false.i.stts751_update.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit.thread

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @stts751_update_temp(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.stts751_update.exit_crit_edge

if.then.i.stts751_update.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call fastcc i32 @stts751_update_alert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.stts751_update.exit_crit_edge

if.end.i.stts751_update.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_valid8.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %data_valid8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update.i, align 4
  br label %stts751_update.exit.thread

stts751_update.exit.thread:                       ; preds = %if.end7.i, %lor.lhs.false.i.stts751_update.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %if.end

stts751_update.exit:                              ; preds = %if.end.i.stts751_update.exit_crit_edge, %if.then.i.stts751_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.i.stts751_update.exit_crit_edge ], [ %call4.i, %if.end.i.stts751_update.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %stts751_update.exit.cleanup_crit_edge, label %stts751_update.exit.if.end_crit_edge

stts751_update.exit.if.end_crit_edge:             ; preds = %stts751_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

stts751_update.exit.cleanup_crit_edge:            ; preds = %stts751_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %stts751_update.exit.if.end_crit_edge, %stts751_update.exit.thread
  %temp = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %temp, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stts751_update.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.0.i, %stts751_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stts751_update_temp(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_temp.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_temp, %cleanup)) #7
          to label %if.then5 [label %cleanup], !srcloc !161

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_temp.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %do.body12, label %if.end32

do.body12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_temp.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_temp, %cleanup)) #7
          to label %if.then26 [label %cleanup], !srcloc !161

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev28 = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_temp.__UNIQUE_ID_ddebug290, ptr noundef %dev28, ptr noundef nonnull @.str.14, i32 noundef %call9) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client, align 4
  %call34 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.body37, label %if.end57

do.body37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_temp.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_temp, %cleanup)) #7
          to label %if.then51 [label %cleanup], !srcloc !161

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 4
  %dev53 = getelementptr inbounds %struct.i2c_client, ptr %11, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_temp.__UNIQUE_ID_ddebug291, ptr noundef %dev53, ptr noundef nonnull @.str.15, i32 noundef %call34) #7
  br label %cleanup

if.end57:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call34)
  %cmp58.not = icmp eq i32 %call, %call34
  br i1 %cmp58.not, label %if.end57.if.end85_crit_edge, label %if.then59

if.end57.if.end85_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then59:                                        ; preds = %if.end57
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 4
  %call61 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62 = icmp slt i32 %call61, 0
  br i1 %cmp62, label %do.body64, label %if.then59.if.end85_crit_edge

if.then59.if.end85_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.body64:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_temp.__UNIQUE_ID_ddebug292, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_temp, %cleanup)) #7
          to label %if.then78 [label %cleanup], !srcloc !161

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %client, align 4
  %dev80 = getelementptr inbounds %struct.i2c_client, ptr %15, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_temp.__UNIQUE_ID_ddebug292, ptr noundef %dev80, ptr noundef nonnull @.str.16, i32 noundef %call61) #7
  br label %cleanup

if.end85:                                         ; preds = %if.then59.if.end85_crit_edge, %if.end57.if.end85_crit_edge
  %frac.0 = phi i32 [ %call61, %if.then59.if.end85_crit_edge ], [ %call9, %if.end57.if.end85_crit_edge ]
  %16 = shl i32 %call, 24
  %17 = shl i32 %frac.0, 16
  %sext = or i32 %17, %16
  %conv.i = ashr exact i32 %sext, 16
  %mul.i = mul nsw i32 %conv.i, 125
  %div.i = sdiv i32 %mul.i, 32
  %temp = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 10
  %18 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %div.i, ptr %temp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end85, %if.then78, %do.body64, %if.then51, %do.body37, %if.then26, %do.body12, %if.then5, %do.body
  %retval.0 = phi i32 [ 0, %if.end85 ], [ %call, %if.then5 ], [ %call9, %if.then26 ], [ %call34, %if.then51 ], [ %call61, %if.then78 ], [ %call, %do.body ], [ %call9, %do.body12 ], [ %call34, %do.body37 ], [ %call61, %do.body64 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @stts751_update_alert(ptr nocapture noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %interval = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %interval, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %3) #7
  %div = sdiv i32 %call2.i, 10
  %add = add i32 %div, %call2.i
  %client = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 1
  %4 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client, align 4
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_alert.__UNIQUE_ID_ddebug293, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_alert, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !161

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_alert.__UNIQUE_ID_ddebug293, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call1) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  %last_alert_update = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 12
  %8 = ptrtoint ptr %last_alert_update to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_alert_update, align 4
  %add11 = add i32 %add, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add11, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp12 = icmp sgt i32 %sub, -1
  %and = and i32 %call1, 96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %or.cond = select i1 %cmp12, i1 %tobool9.not, i1 false
  br i1 %or.cond, label %lor.lhs.false14, label %do.end.if.then16_crit_edge

do.end.if.then16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

lor.lhs.false14:                                  ; preds = %do.end
  %alert_valid = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 18
  %11 = ptrtoint ptr %alert_valid to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %alert_valid, align 1, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool15.not = icmp eq i8 %12, 0
  br i1 %tobool15.not, label %lor.lhs.false14.if.then16_crit_edge, label %lor.lhs.false14.if.end39_crit_edge

lor.lhs.false14.if.end39_crit_edge:               ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

lor.lhs.false14.if.then16_crit_edge:              ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16

if.then16:                                        ; preds = %lor.lhs.false14.if.then16_crit_edge, %do.end.if.then16_crit_edge
  %max_alert = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 15
  %13 = ptrtoint ptr %max_alert to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %max_alert, align 2
  %min_alert = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 14
  %14 = ptrtoint ptr %min_alert to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %min_alert, align 1
  %alert_valid17 = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 18
  %15 = ptrtoint ptr %alert_valid17 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %alert_valid17, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %last_alert_update to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_alert_update, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_alert.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_alert, %if.end39)) #7
          to label %if.then33 [label %if.end39], !srcloc !161

if.then33:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_alert.__UNIQUE_ID_ddebug294, ptr noundef %dev35, ptr noundef nonnull @.str.19) #7
  br label %if.end39

if.end39:                                         ; preds = %if.then33, %if.then16, %lor.lhs.false14.if.end39_crit_edge
  %max_alert46 = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 15
  %20 = ptrtoint ptr %max_alert46 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %max_alert46, align 2, !range !162
  %22 = trunc i32 %call1 to i8
  %23 = lshr i8 %22, 6
  %24 = and i8 %23, 1
  %25 = or i8 %21, %24
  store i8 %25, ptr %max_alert46, align 2
  %min_alert56 = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 14
  %26 = ptrtoint ptr %min_alert56 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %min_alert56, align 1, !range !162
  %28 = lshr i8 %22, 5
  %29 = and i8 %28, 1
  %30 = or i8 %27, %29
  store i8 %30, ptr %min_alert56, align 1
  %therm_trip = getelementptr inbounds %struct.stts751_priv, ptr %priv, i32 0, i32 16
  %31 = and i8 %22, 1
  %32 = ptrtoint ptr %therm_trip to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %therm_trip, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_update_alert.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@stts751_update_alert, %cleanup)) #7
          to label %if.then83 [label %cleanup], !srcloc !161

if.then83:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %client, align 4
  %dev85 = getelementptr inbounds %struct.i2c_client, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %max_alert46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %max_alert46, align 2, !range !162
  %37 = zext i8 %36 to i32
  %38 = ptrtoint ptr %min_alert56 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %min_alert56, align 1, !range !162
  %40 = zext i8 %39 to i32
  %41 = ptrtoint ptr %therm_trip to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %therm_trip, align 1, !range !162
  %43 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_update_alert.__UNIQUE_ID_ddebug295, ptr noundef %dev85, ptr noundef nonnull @.str.20, i32 noundef %37, i32 noundef %40, i32 noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then83, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then83 ], [ 0, %if.end39 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %event_min = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %event_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_min, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !163
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -64000)
  %event_max = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 5
  %6 = ptrtoint ptr %event_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_max, align 4
  %8 = call i32 @llvm.smin.i32(i32 %5, i32 %7)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.i = icmp sgt i32 %8, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 62, i32 -62
  %cond.in.i.i = add i32 %cond.in.v.i.i, %8
  %cond.i.i = sdiv i32 %cond.in.i.i, 125
  %mul.i.i = shl nsw i32 %cond.i.i, 5
  %client.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %12 = lshr i32 %mul.i.i, 8
  %conv.i = trunc i32 %12 to i8
  %call1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 7, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %stts751_set_temp_reg16.exit, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

stts751_set_temp_reg16.exit:                      ; preds = %if.end
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %conv3.i = trunc i32 %mul.i.i to i8
  %call4.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 8, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %do.body, label %stts751_set_temp_reg16.exit.exit_crit_edge

stts751_set_temp_reg16.exit.exit_crit_edge:       ; preds = %stts751_set_temp_reg16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.body:                                          ; preds = %stts751_set_temp_reg16.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @min_store.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@min_store, %do.end)) #7
          to label %if.then18 [label %do.end], !srcloc !161

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @min_store.__UNIQUE_ID_ddebug316, ptr noundef %dev19, ptr noundef nonnull @.str.23, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %event_min = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 6
  %21 = ptrtoint ptr %event_min to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %event_min, align 4
  br label %exit

exit:                                             ; preds = %do.end, %stts751_set_temp_reg16.exit.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call4.i, %stts751_set_temp_reg16.exit.exit_crit_edge ], [ %count, %do.end ], [ %call1.i, %if.end.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %event_max = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %event_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event_max, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !163
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %event_min = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 6
  %5 = ptrtoint ptr %event_min to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %event_min, align 4
  %7 = call i32 @llvm.smax.i32(i32 %4, i32 %6)
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 127937)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i.i = icmp sgt i32 %7, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 62, i32 -62
  %cond.in.i.i = add i32 %cond.in.v.i.i, %8
  %cond.i.i = sdiv i32 %cond.in.i.i, 125
  %mul.i.i = shl nsw i32 %cond.i.i, 5
  %client.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %12 = lshr i32 %mul.i.i, 8
  %conv.i = trunc i32 %12 to i8
  %call1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 5, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %stts751_set_temp_reg16.exit, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

stts751_set_temp_reg16.exit:                      ; preds = %if.end
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %conv3.i = trunc i32 %mul.i.i to i8
  %call4.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %14, i8 noundef zeroext 6, i8 noundef zeroext %conv3.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %do.body, label %stts751_set_temp_reg16.exit.exit_crit_edge

stts751_set_temp_reg16.exit.exit_crit_edge:       ; preds = %stts751_set_temp_reg16.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.body:                                          ; preds = %stts751_set_temp_reg16.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max_store.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@max_store, %do.end)) #7
          to label %if.then18 [label %do.end], !srcloc !161

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client.i, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max_store.__UNIQUE_ID_ddebug311, ptr noundef %dev19, ptr noundef nonnull @.str.26, i32 noundef %18) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %19 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %temp, align 4
  %event_max = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 5
  %21 = ptrtoint ptr %event_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %event_max, align 4
  br label %exit

exit:                                             ; preds = %do.end, %stts751_set_temp_reg16.exit.exit_crit_edge, %if.end.exit_crit_edge
  %ret.0 = phi i32 [ %call4.i, %stts751_set_temp_reg16.exit.exit_crit_edge ], [ %count, %do.end ], [ %call1.i, %if.end.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @min_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %interval.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval.i, align 4
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #7
  %last_update.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %7, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %data_valid.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %data_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_valid.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.thread_crit_edge

lor.lhs.false.i.if.end.thread_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @stts751_update_temp(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call fastcc i32 @stts751_update_alert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_valid8.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %data_valid8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end7.i, %lor.lhs.false.i.if.end.thread_crit_edge
  %notify_min = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 20
  %14 = ptrtoint ptr %notify_min to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %notify_min, align 1
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %if.end4

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.0.i16 = phi i32 [ %call1.i, %if.then.i.if.end_crit_edge ], [ %call4.i, %if.end.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i16)
  %cmp = icmp slt i32 %retval.0.i16, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.thread
  %min_alert = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 14
  %15 = ptrtoint ptr %min_alert to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %min_alert, align 1, !range !162
  %17 = zext i8 %16 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %retval.0.i16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %interval.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval.i, align 4
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #7
  %last_update.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %7, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %data_valid.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %data_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_valid.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.if.end.thread_crit_edge

lor.lhs.false.i.if.end.thread_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @stts751_update_temp(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call fastcc i32 @stts751_update_alert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_valid8.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %data_valid8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update.i, align 4
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end7.i, %lor.lhs.false.i.if.end.thread_crit_edge
  %notify_max = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %notify_max to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %notify_max, align 2
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %if.end4

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %if.then.i.if.end_crit_edge
  %retval.0.i16 = phi i32 [ %call1.i, %if.then.i.if.end_crit_edge ], [ %call4.i, %if.end.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i16)
  %cmp = icmp slt i32 %retval.0.i16, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end.if.end4_crit_edge, %if.end.thread
  %max_alert = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %max_alert to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %max_alert, align 2, !range !162
  %17 = zext i8 %16 to i32
  %call6 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ %retval.0.i16, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %therm = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %therm, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !163
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -64000)
  %6 = call i32 @llvm.smin.i32(i32 %5, i32 127937)
  %7 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %temp, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %8 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.i = icmp sgt i32 %9, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 62, i32 -62
  %cond.in.i.i = add i32 %cond.in.v.i.i, %9
  %cond.i.i = sdiv i32 %cond.in.i.i, 125
  %client.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client.i, align 4
  %12 = lshr i32 %cond.i.i, 3
  %conv.i = trunc i32 %12 to i8
  %call1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext 32, i8 noundef zeroext %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %do.body, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @therm_store.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@therm_store, %do.end)) #7
          to label %if.then18 [label %do.end], !srcloc !161

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i, align 4
  %dev19 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @therm_store.__UNIQUE_ID_ddebug301, ptr noundef %dev19, ptr noundef nonnull @.str.31, i32 noundef %16) #7
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp, align 4
  %therm = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 7
  %19 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %therm, align 4
  %hyst = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 8
  %21 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hyst, align 4
  %sub.neg = sub i32 %18, %20
  %sub21 = add i32 %sub.neg, %22
  store i32 %sub21, ptr %hyst, align 4
  store i32 %18, ptr %therm, align 4
  br label %exit

exit:                                             ; preds = %do.end, %if.end.exit_crit_edge
  %count.call9 = phi i32 [ %call1.i, %if.end.exit_crit_edge ], [ %count, %do.end ]
  call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call9, %exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hyst_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %hyst = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hyst, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %3) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hyst_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #7
  %0 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temp, align 4, !annotation !163
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %temp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %temp, align 4
  %5 = call i32 @llvm.smax.i32(i32 %4, i32 -64000)
  %therm = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 7
  %6 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %therm, align 4
  %8 = call i32 @llvm.smin.i32(i32 %5, i32 %7)
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temp, align 4
  %hyst = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 8
  %10 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %8, ptr %hyst, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @hyst_store.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@hyst_store, %do.end)) #7
          to label %if.then14 [label %do.end], !srcloc !161

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %11 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %client, align 4
  %dev15 = getelementptr inbounds %struct.i2c_client, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %temp, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @hyst_store.__UNIQUE_ID_ddebug306, ptr noundef %dev15, ptr noundef nonnull @.str.34, i32 noundef %14) #7
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %15 = ptrtoint ptr %therm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %therm, align 4
  %17 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %temp, align 4
  %sub = sub i32 %16, %18
  store i32 %sub, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp.i.i = icmp sgt i32 %sub, 0
  %cond.in.v.i.i = select i1 %cmp.i.i, i32 62, i32 -62
  %cond.in.i.i = add i32 %cond.in.v.i.i, %sub
  %cond.i.i = sdiv i32 %cond.in.i.i, 125
  %client.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %client.i, align 4
  %21 = lshr i32 %cond.i.i, 3
  %conv.i = trunc i32 %21 to i8
  %call1.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %20, i8 noundef zeroext 33, i8 noundef zeroext %conv.i) #7
  call void @mutex_unlock(ptr noundef %access_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool20.not = icmp eq i32 %call1.i, 0
  %count.call18 = select i1 %tobool20.not, i32 %count, i32 %call1.i
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %count.call18, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @therm_trip_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %interval.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interval.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval.i, align 4
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #7
  %last_update.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %last_update.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %last_update.i, align 4
  %add.i = add i32 %7, %call2.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %entry.if.then.i_crit_edge, label %lor.lhs.false.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %entry
  %data_valid.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %9 = ptrtoint ptr %data_valid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %data_valid.i, align 4, !range !162
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %lor.lhs.false.i.stts751_update.exit.thread_crit_edge

lor.lhs.false.i.stts751_update.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit.thread

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %call1.i = tail call fastcc i32 @stts751_update_temp(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %if.then.i.stts751_update.exit_crit_edge

if.then.i.stts751_update.exit_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit

if.end.i:                                         ; preds = %if.then.i
  %call4.i = tail call fastcc i32 @stts751_update_alert(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end.i.stts751_update.exit_crit_edge

if.end.i.stts751_update.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stts751_update.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %data_valid8.i = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 17
  %11 = ptrtoint ptr %data_valid8.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %data_valid8.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = ptrtoint ptr %last_update.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %last_update.i, align 4
  br label %stts751_update.exit.thread

stts751_update.exit.thread:                       ; preds = %if.end7.i, %lor.lhs.false.i.stts751_update.exit.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %if.end

stts751_update.exit:                              ; preds = %if.end.i.stts751_update.exit_crit_edge, %if.then.i.stts751_update.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.then.i.stts751_update.exit_crit_edge ], [ %call4.i, %if.end.i.stts751_update.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %access_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %stts751_update.exit.cleanup_crit_edge, label %stts751_update.exit.if.end_crit_edge

stts751_update.exit.if.end_crit_edge:             ; preds = %stts751_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

stts751_update.exit.cleanup_crit_edge:            ; preds = %stts751_update.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %stts751_update.exit.if.end_crit_edge, %stts751_update.exit.thread
  %therm_trip = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 16
  %14 = ptrtoint ptr %therm_trip to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %therm_trip, align 1, !range !162
  %16 = zext i8 %15 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %stts751_update.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %retval.0.i, %stts751_update.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %interval = getelementptr inbounds %struct.stts751_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %interval, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef %5) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !163
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000, i32 %4)
  %cmp14.not = icmp ult i32 %4, 12000
  br i1 %cmp14.not, label %for.cond.1, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.1:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000, i32 %4)
  %cmp14.not.1 = icmp ult i32 %4, 6000
  br i1 %cmp14.not.1, label %for.cond.2, label %for.cond.1.for.end_crit_edge

for.cond.1.for.end_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %4)
  %cmp14.not.2 = icmp ult i32 %4, 3000
  br i1 %cmp14.not.2, label %for.cond.3, label %for.cond.2.for.end_crit_edge

for.cond.2.for.end_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.3:                                       ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %4)
  %cmp14.not.3 = icmp ult i32 %4, 1500
  br i1 %cmp14.not.3, label %for.cond.4, label %for.cond.3.for.end_crit_edge

for.cond.3.for.end_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.4:                                       ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 750, i32 %4)
  %cmp14.not.4 = icmp ult i32 %4, 750
  br i1 %cmp14.not.4, label %for.cond.5, label %for.cond.4.for.end_crit_edge

for.cond.4.for.end_crit_edge:                     ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 375, i32 %4)
  %cmp14.not.5 = icmp ult i32 %4, 375
  br i1 %cmp14.not.5, label %for.cond.6, label %for.cond.5.for.end_crit_edge

for.cond.5.for.end_crit_edge:                     ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.6:                                       ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %4)
  %cmp14.not.6 = icmp ult i32 %4, 188
  br i1 %cmp14.not.6, label %for.cond.7, label %for.cond.6.for.end_crit_edge

for.cond.6.for.end_crit_edge:                     ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.7:                                       ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %4)
  %cmp14.not.7 = icmp ult i32 %4, 94
  br i1 %cmp14.not.7, label %for.cond.8, label %for.cond.7.for.end_crit_edge

for.cond.7.for.end_crit_edge:                     ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.8:                                       ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %4)
  %cmp14.not.8 = icmp ult i32 %4, 47
  %spec.select = select i1 %cmp14.not.8, i32 9, i32 8
  br label %for.end

for.end:                                          ; preds = %for.cond.8, %for.cond.7.for.end_crit_edge, %for.cond.6.for.end_crit_edge, %for.cond.5.for.end_crit_edge, %for.cond.4.for.end_crit_edge, %for.cond.3.for.end_crit_edge, %for.cond.2.for.end_crit_edge, %for.cond.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %__fc_i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ 1, %for.cond.1.for.end_crit_edge ], [ 2, %for.cond.2.for.end_crit_edge ], [ 3, %for.cond.3.for.end_crit_edge ], [ 4, %for.cond.4.for.end_crit_edge ], [ 5, %for.cond.5.for.end_crit_edge ], [ 6, %for.cond.6.for.end_crit_edge ], [ 7, %for.cond.7.for.end_crit_edge ], [ %spec.select, %for.cond.8 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interval_store.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interval_store, %do.end)) #7
          to label %if.then24 [label %do.end], !srcloc !161

if.then24:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %client = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev25 = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %arrayidx26 = getelementptr [10 x i32], ptr @stts751_intervals, i32 0, i32 %__fc_i.0.lcssa
  %9 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx26, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interval_store.__UNIQUE_ID_ddebug317, ptr noundef %dev25, ptr noundef nonnull @.str.38, i32 noundef %8, i32 noundef %__fc_i.0.lcssa, i32 noundef %10) #7
  br label %do.end

do.end:                                           ; preds = %if.then24, %for.end
  %access_lock = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %access_lock, i32 noundef 0) #7
  %interval = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 3
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %interval, align 4
  %conv28 = zext i8 %12 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0.lcssa, i32 %conv28)
  %cmp29 = icmp eq i32 %__fc_i.0.lcssa, %conv28
  br i1 %cmp29, label %do.end.exit_crit_edge, label %if.end32

do.end.exit_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end32:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0.lcssa, i32 %conv28)
  %cmp35 = icmp ugt i32 %__fc_i.0.lcssa, %conv28
  br i1 %cmp35, label %do.body38, label %if.end32.if.end64_crit_edge

if.end32.if.end64_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = trunc i32 %__fc_i.0.lcssa to i8
  br label %if.end64

do.body38:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interval_store.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interval_store, %do.end57)) #7
          to label %if.then52 [label %do.end57], !srcloc !161

if.then52:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #9
  %client53 = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %client53 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client53, align 4
  %dev54 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interval_store.__UNIQUE_ID_ddebug318, ptr noundef %dev54, ptr noundef nonnull @.str.39) #7
  br label %do.end57

do.end57:                                         ; preds = %if.then52, %do.body38
  %conv58 = trunc i32 %__fc_i.0.lcssa to i8
  %15 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv58, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv58)
  %switch.selectcmp.i = icmp eq i8 %conv58, 8
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv58)
  %switch.selectcmp35.i = icmp eq i8 %conv58, 9
  %switch.select36.i = select i1 %switch.selectcmp35.i, i32 0, i32 %switch.select.i
  %res2.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 4
  %16 = ptrtoint ptr %res2.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %res2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %switch.select36.i)
  %cmp.i = icmp eq i32 %17, %switch.select36.i
  br i1 %cmp.i, label %do.end57.if.end64_crit_edge, label %if.end.i

do.end57.if.end64_crit_edge:                      ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end.i:                                         ; preds = %do.end57
  %config.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 13
  %18 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %config.i, align 4
  %20 = and i8 %19, -13
  %res.0.tr.i = trunc i32 %switch.select36.i to i8
  %21 = shl nuw nsw i8 %res.0.tr.i, 2
  %conv10.i = or i8 %20, %21
  store i8 %conv10.i, ptr %config.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_adjust_resolution.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interval_store, %stts751_adjust_resolution.exit)) #7
          to label %if.then14.i [label %stts751_adjust_resolution.exit], !srcloc !161

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %client.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i, align 4
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %config.i, align 4
  %conv17.i = zext i8 %25 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_adjust_resolution.__UNIQUE_ID_ddebug288, ptr noundef %dev.i, ptr noundef nonnull @.str.42, i32 noundef %switch.select36.i, i32 noundef %conv17.i) #7
  br label %stts751_adjust_resolution.exit

stts751_adjust_resolution.exit:                   ; preds = %if.then14.i, %if.end.i
  %26 = ptrtoint ptr %res2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.select36.i, ptr %res2.i, align 4
  %client21.i = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %27 = ptrtoint ptr %client21.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %client21.i, align 4
  %29 = ptrtoint ptr %config.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %config.i, align 4
  %call23.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %28, i8 noundef zeroext 3, i8 noundef zeroext %30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool61.not = icmp eq i32 %call23.i, 0
  br i1 %tobool61.not, label %stts751_adjust_resolution.exit.if.end64_crit_edge, label %stts751_adjust_resolution.exit.exit_crit_edge

stts751_adjust_resolution.exit.exit_crit_edge:    ; preds = %stts751_adjust_resolution.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

stts751_adjust_resolution.exit.if.end64_crit_edge: ; preds = %stts751_adjust_resolution.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

if.end64:                                         ; preds = %stts751_adjust_resolution.exit.if.end64_crit_edge, %do.end57.if.end64_crit_edge, %if.end32.if.end64_crit_edge
  %conv66.pre-phi = phi i8 [ %.pre, %if.end32.if.end64_crit_edge ], [ %conv58, %do.end57.if.end64_crit_edge ], [ %conv58, %stts751_adjust_resolution.exit.if.end64_crit_edge ]
  %client65 = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 1
  %31 = ptrtoint ptr %client65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %client65, align 4
  %call67 = call i32 @i2c_smbus_write_byte_data(ptr noundef %32, i8 noundef zeroext 4, i8 noundef zeroext %conv66.pre-phi) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.end64.exit_crit_edge

if.end64.exit_crit_edge:                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

if.end70:                                         ; preds = %if.end64
  %33 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %interval, align 4
  %conv72 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %__fc_i.0.lcssa, i32 %conv72)
  %cmp73.not = icmp eq i32 %__fc_i.0.lcssa, %conv72
  br i1 %cmp73.not, label %if.end70.if.end102_crit_edge, label %do.body76

if.end70.if.end102_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

do.body76:                                        ; preds = %if.end70
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @interval_store.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interval_store, %do.end95)) #7
          to label %if.then90 [label %do.end95], !srcloc !161

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %client65 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %client65, align 4
  %dev92 = getelementptr inbounds %struct.i2c_client, ptr %36, i32 0, i32 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @interval_store.__UNIQUE_ID_ddebug319, ptr noundef %dev92, ptr noundef nonnull @.str.40) #7
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %do.body76
  %37 = ptrtoint ptr %interval to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv66.pre-phi, ptr %interval, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %conv66.pre-phi)
  %switch.selectcmp.i149 = icmp eq i8 %conv66.pre-phi, 8
  %switch.select.i150 = select i1 %switch.selectcmp.i149, i32 1, i32 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %conv66.pre-phi)
  %switch.selectcmp35.i151 = icmp eq i8 %conv66.pre-phi, 9
  %switch.select36.i152 = select i1 %switch.selectcmp35.i151, i32 0, i32 %switch.select.i150
  %res2.i153 = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 4
  %38 = ptrtoint ptr %res2.i153 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %res2.i153, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %switch.select36.i152)
  %cmp.i154 = icmp eq i32 %39, %switch.select36.i152
  br i1 %cmp.i154, label %do.end95.if.end102_crit_edge, label %if.end.i158

do.end95.if.end102_crit_edge:                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.end.i158:                                      ; preds = %do.end95
  %config.i155 = getelementptr inbounds %struct.stts751_priv, ptr %2, i32 0, i32 13
  %40 = ptrtoint ptr %config.i155 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %config.i155, align 4
  %42 = and i8 %41, -13
  %res.0.tr.i156 = trunc i32 %switch.select36.i152 to i8
  %43 = shl nuw nsw i8 %res.0.tr.i156, 2
  %conv10.i157 = or i8 %42, %43
  store i8 %conv10.i157, ptr %config.i155, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @stts751_adjust_resolution.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@interval_store, %stts751_adjust_resolution.exit167)) #7
          to label %if.then14.i162 [label %stts751_adjust_resolution.exit167], !srcloc !161

if.then14.i162:                                   ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %client65 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %client65, align 4
  %dev.i160 = getelementptr inbounds %struct.i2c_client, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %config.i155 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %config.i155, align 4
  %conv17.i161 = zext i8 %47 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @stts751_adjust_resolution.__UNIQUE_ID_ddebug288, ptr noundef %dev.i160, ptr noundef nonnull @.str.42, i32 noundef %switch.select36.i152, i32 noundef %conv17.i161) #7
  br label %stts751_adjust_resolution.exit167

stts751_adjust_resolution.exit167:                ; preds = %if.then14.i162, %if.end.i158
  %48 = ptrtoint ptr %res2.i153 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %switch.select36.i152, ptr %res2.i153, align 4
  %49 = ptrtoint ptr %client65 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %client65, align 4
  %51 = ptrtoint ptr %config.i155 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %config.i155, align 4
  %call23.i164 = call i32 @i2c_smbus_write_byte_data(ptr noundef %50, i8 noundef zeroext 3, i8 noundef zeroext %52) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i164)
  %tobool99.not = icmp eq i32 %call23.i164, 0
  br i1 %tobool99.not, label %stts751_adjust_resolution.exit167.if.end102_crit_edge, label %stts751_adjust_resolution.exit167.exit_crit_edge

stts751_adjust_resolution.exit167.exit_crit_edge: ; preds = %stts751_adjust_resolution.exit167
  call void @__sanitizer_cov_trace_pc() #9
  br label %exit

stts751_adjust_resolution.exit167.if.end102_crit_edge: ; preds = %stts751_adjust_resolution.exit167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.end102:                                        ; preds = %stts751_adjust_resolution.exit167.if.end102_crit_edge, %do.end95.if.end102_crit_edge, %if.end70.if.end102_crit_edge
  br label %exit

exit:                                             ; preds = %if.end102, %stts751_adjust_resolution.exit167.exit_crit_edge, %if.end64.exit_crit_edge, %stts751_adjust_resolution.exit.exit_crit_edge, %do.end.exit_crit_edge
  %ret.0 = phi i32 [ %count, %do.end.exit_crit_edge ], [ %call23.i, %stts751_adjust_resolution.exit.exit_crit_edge ], [ %call67, %if.end64.exit_crit_edge ], [ %call23.i164, %stts751_adjust_resolution.exit167.exit_crit_edge ], [ %count, %if.end102 ]
  call void @mutex_unlock(ptr noundef %access_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !36, !38, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !68, !69, !71, !72, !73, !75, !76, !78, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !105, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !142, !144, !146, !148, !149, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @__initcall__kmod_stts751__322_831_stts751_driver_init6, !1, !"__initcall__kmod_stts751__322_831_stts751_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/stts751.c", i32 831, i32 1}
!2 = !{ptr @__exitcall_stts751_driver_exit, !1, !"__exitcall_stts751_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author323, !4, !"__UNIQUE_ID_author323", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/stts751.c", i32 833, i32 1}
!5 = !{ptr @__UNIQUE_ID_description324, !6, !"__UNIQUE_ID_description324", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/stts751.c", i32 834, i32 1}
!7 = !{ptr @__UNIQUE_ID_file325, !8, !"__UNIQUE_ID_file325", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/stts751.c", i32 835, i32 1}
!9 = !{ptr @__UNIQUE_ID_license326, !8, !"__UNIQUE_ID_license326", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/stts751.c", i32 821, i32 11}
!12 = !{ptr @stts751_driver, !13, !"stts751_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/stts751.c", i32 818, i32 26}
!14 = !{ptr @stts751_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/stts751.c", i32 780, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/stts751.c", i32 783, i32 9}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/stts751.c", i32 797, i32 3}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stts751_probe.__UNIQUE_ID_ddebug321, !20, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/stts751.c", i32 714, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @stts751_read_chip_config._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @stts751_read_chip_config._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @stts751_groups, !32, !"stts751_groups", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/stts751.c", i32 763, i32 1}
!33 = !{ptr @stts751_group, !32, !"stts751_group", i1 false, i1 false}
!34 = !{ptr @stts751_attrs, !35, !"stts751_attrs", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/stts751.c", i32 751, i32 26}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/stts751.c", i32 741, i32 8}
!38 = !{ptr @sensor_dev_attr_temp1_input, !37, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/stts751.c", i32 422, i32 25}
!41 = !{ptr @stts751_intervals, !42, !"stts751_intervals", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/stts751.c", i32 70, i32 18}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/stts751.c", i32 166, i32 3}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @stts751_update_temp.__UNIQUE_ID_ddebug289, !44, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/stts751.c", i32 173, i32 3}
!49 = !{ptr @stts751_update_temp.__UNIQUE_ID_ddebug290, !48, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/stts751.c", i32 180, i32 3}
!52 = !{ptr @stts751_update_temp.__UNIQUE_ID_ddebug291, !51, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/stts751.c", i32 189, i32 4}
!55 = !{ptr @stts751_update_temp.__UNIQUE_ID_ddebug292, !54, !"__UNIQUE_ID_ddebug292", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/stts751.c", i32 276, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @stts751_update_alert.__UNIQUE_ID_ddebug293, !57, !"__UNIQUE_ID_ddebug293", i1 false, i1 false}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/stts751.c", i32 296, i32 3}
!62 = !{ptr @stts751_update_alert.__UNIQUE_ID_ddebug294, !61, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/stts751.c", i32 303, i32 2}
!65 = !{ptr @stts751_update_alert.__UNIQUE_ID_ddebug295, !64, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!66 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/hwmon/stts751.c", i32 742, i32 8}
!68 = !{ptr @sensor_dev_attr_temp1_min, !67, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!69 = !{ptr @.str.22, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/hwmon/stts751.c", i32 575, i32 2}
!71 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @min_store.__UNIQUE_ID_ddebug316, !70, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/hwmon/stts751.c", i32 743, i32 8}
!75 = !{ptr @sensor_dev_attr_temp1_max, !74, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/hwmon/stts751.c", i32 541, i32 2}
!78 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @max_store.__UNIQUE_ID_ddebug311, !77, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!80 = !{ptr @.str.27, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/stts751.c", i32 744, i32 8}
!82 = !{ptr @sensor_dev_attr_temp1_min_alarm, !81, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!83 = !{ptr @.str.28, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/stts751.c", i32 745, i32 8}
!85 = !{ptr @sensor_dev_attr_temp1_max_alarm, !84, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/stts751.c", i32 746, i32 8}
!88 = !{ptr @sensor_dev_attr_temp1_crit, !87, !"sensor_dev_attr_temp1_crit", i1 false, i1 false}
!89 = !{ptr @.str.30, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/stts751.c", i32 450, i32 2}
!91 = !{ptr @.str.31, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @therm_store.__UNIQUE_ID_ddebug301, !90, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!93 = !{ptr @.str.32, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/hwmon/stts751.c", i32 747, i32 8}
!95 = !{ptr @sensor_dev_attr_temp1_crit_hyst, !94, !"sensor_dev_attr_temp1_crit_hyst", i1 false, i1 false}
!96 = !{ptr @.str.33, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/hwmon/stts751.c", i32 490, i32 2}
!98 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @hyst_store.__UNIQUE_ID_ddebug306, !97, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/stts751.c", i32 748, i32 8}
!102 = !{ptr @sensor_dev_attr_temp1_crit_alarm, !101, !"sensor_dev_attr_temp1_crit_alarm", i1 false, i1 false}
!103 = !{ptr @.str.36, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/hwmon/stts751.c", i32 749, i32 8}
!105 = !{ptr @sensor_dev_attr_update_interval, !104, !"sensor_dev_attr_update_interval", i1 false, i1 false}
!106 = !{ptr @.str.37, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/hwmon/stts751.c", i32 607, i32 2}
!108 = !{ptr @.str.38, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @interval_store.__UNIQUE_ID_ddebug317, !107, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/hwmon/stts751.c", i32 624, i32 3}
!112 = !{ptr @interval_store.__UNIQUE_ID_ddebug318, !111, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!113 = !{ptr @.str.40, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/stts751.c", i32 636, i32 3}
!115 = !{ptr @interval_store.__UNIQUE_ID_ddebug319, !114, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!116 = !{ptr @.str.41, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/hwmon/stts751.c", i32 141, i32 2}
!118 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @stts751_adjust_resolution.__UNIQUE_ID_ddebug288, !117, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!120 = !{ptr @.str.43, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/hwmon/stts751.c", i32 318, i32 2}
!122 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @stts751_alert.__UNIQUE_ID_ddebug296, !121, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/hwmon/stts751.c", i32 327, i32 3}
!126 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @stts751_alert._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @stts751_alert._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/hwmon/stts751.c", i32 333, i32 4}
!131 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @stts751_alert._entry.47, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @stts751_alert._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/hwmon/stts751.c", i32 342, i32 4}
!136 = !{ptr @stts751_alert._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @stts751_alert._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @stts751_of_match, !139, !"stts751_of_match", i1 false, i1 false}
!139 = !{!"../drivers/hwmon/stts751.c", i32 79, i32 49}
!140 = !{ptr @stts751_id, !141, !"stts751_id", i1 false, i1 false}
!141 = !{!"../drivers/hwmon/stts751.c", i32 74, i32 35}
!142 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/hwmon/stts751.c", i32 685, i32 10}
!144 = !{ptr @.str.55, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/hwmon/stts751.c", i32 688, i32 10}
!146 = !{ptr @.str.56, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/hwmon/stts751.c", i32 693, i32 2}
!148 = !{ptr @.str.57, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @stts751_detect.__UNIQUE_ID_ddebug320, !147, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!150 = !{ptr @normal_i2c, !151, !"normal_i2c", i1 false, i1 false}
!151 = !{!"../drivers/hwmon/stts751.c", i32 31, i32 29}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!161 = !{i64 2148820776, i64 2148820781, i64 2148820794, i64 2148820838, i64 2148820872, i64 2148820893}
!162 = !{i8 0, i8 2}
!163 = !{!"auto-init"}
