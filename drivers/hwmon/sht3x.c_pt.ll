; ModuleID = '/llk/IR_all_yes/drivers/hwmon/sht3x.c_pt.bc'
source_filename = "../drivers/hwmon/sht3x.c"
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
%struct.atomic_t = type { i32 }
%struct.sht3x_limit_commands = type { [2 x i8], [2 x i8] }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sht3x_data = type { ptr, %struct.mutex, %struct.mutex, i8, ptr, i32, i32, %struct.sht3x_platform_data, i32, [4 x i32], i32, [4 x i32] }
%struct.sht3x_platform_data = type { i8, i8 }

@__initcall__kmod_sht3x__297_750_sht3x_i2c_driver_init6 = internal global ptr @sht3x_i2c_driver_init, section ".initcall6.init", align 4
@sht3x_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @sht3x_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sht3x_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sht3x_i2c_driver_exit = internal global ptr @sht3x_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author298 = internal constant [51 x i8] c"sht3x.author=David Frey <david.frey@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [55 x i8] c"sht3x.author=Pascal Sachs <pascal.sachs@sensirion.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description300 = internal constant [73 x i8] c"sht3x.description=Sensirion SHT3x humidity and temperature sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file301 = internal constant [31 x i8] c"sht3x.file=drivers/hwmon/sht3x\00", section ".modinfo", align 1
@__UNIQUE_ID_license302 = internal constant [18 x i8] c"sht3x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sht3x\00", [26 x i8] zeroinitializer }, align 32
@sht3x_ids = internal constant { [3 x %struct.i2c_device_id], [56 x i8] } { [3 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sht3x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"sts3x\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sht3x_cmd_clear_status_reg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0A", [30 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@sht3x_crc8_table = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@sht3x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&data->i2c_lock\00", [16 x i8] zeroinitializer }, align 32
@sht3x_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&data->data_lock\00", [47 x i8] zeroinitializer }, align 32
@sts3x_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sts3x_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sht3x_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sht3x_group, ptr null], [24 x i8] zeroinitializer }, align 32
@sht3x_probe.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 0, i8 -74, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sht3x_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/hwmon/sht3x.c\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to register hwmon device\0A\00", [63 x i8] zeroinitializer }, align 32
@sht3x_cmd_measure_periodic_mode = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\E0\00", [30 x i8] zeroinitializer }, align 32
@sht3x_cmd_measure_blocking_hpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\06", [30 x i8] zeroinitializer }, align 32
@sht3x_cmd_measure_blocking_lpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c",\10", [30 x i8] zeroinitializer }, align 32
@sht3x_cmd_measure_nonblocking_hpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"$\00", [30 x i8] zeroinitializer }, align 32
@sht3x_cmd_measure_nonblocking_lpm = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"$\16", [30 x i8] zeroinitializer }, align 32
@limit_commands = internal constant { [4 x %struct.sht3x_limit_commands], [16 x i8] } { [4 x %struct.sht3x_limit_commands] [%struct.sht3x_limit_commands { [2 x i8] c"\E1\1F", [2 x i8] c"a\1D" }, %struct.sht3x_limit_commands { [2 x i8] c"\E1\14", [2 x i8] c"a\16" }, %struct.sht3x_limit_commands { [2 x i8] c"\E1\02", [2 x i8] c"a\00" }, %struct.sht3x_limit_commands { [2 x i8] c"\E1\09", [2 x i8] c"a\0B" }], [16 x i8] zeroinitializer }, align 32
@sts3x_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sts3x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sts3x_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr null], [24 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@mode_to_update_interval = internal constant { [6 x i16], [20 x i8] } { [6 x i16] [i16 0, i16 2000, i16 1000, i16 500, i16 250, i16 100], [20 x i8] zeroinitializer }, align 32
@sht3x_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sht3x_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@sht3x_attrs = internal global { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_humidity1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_humidity1_max, ptr @sensor_dev_attr_humidity1_max_hyst, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_min_hyst, ptr @sensor_dev_attr_humidity1_min, ptr @sensor_dev_attr_humidity1_min_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_humidity1_alarm, ptr @sensor_dev_attr_heater_enable, ptr @sensor_dev_attr_update_interval, ptr null], [36 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_input_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_limit_show, ptr @temp1_limit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_limit_show, ptr @temp1_limit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_limit_show, ptr @humidity1_limit_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_max_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_limit_show, ptr @humidity1_limit_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_limit_show, ptr @temp1_limit_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_limit_show, ptr @temp1_limit_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_limit_show, ptr @humidity1_limit_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_min_hyst = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_limit_show, ptr @humidity1_limit_store }, i32 3 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp1_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_humidity1_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @humidity1_alarm_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_heater_enable = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @heater_enable_show, ptr @heater_enable_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_update_interval = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @update_interval_show, ptr @update_interval_store }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_input\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_max_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"humidity1_max\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"humidity1_max_hyst\00", [45 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"temp1_min_hyst\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"humidity1_min\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"humidity1_min_hyst\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_alarm\00", [20 x i8] zeroinitializer }, align 32
@sht3x_cmd_read_status_reg = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\F3-", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"humidity1_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"heater_enable\00", [18 x i8] zeroinitializer }, align 32
@sht3x_cmd_heater_on = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0m", [30 x i8] zeroinitializer }, align 32
@sht3x_cmd_heater_off = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0f", [30 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@sht3x_cmd_break = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\93", [30 x i8] zeroinitializer }, align 32
@periodic_measure_commands_hpm = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c" 2", [2 x i8] c"!0", [2 x i8] c"\226", [2 x i8] c"#4", [2 x i8] c"'7"], [22 x i8] zeroinitializer }, align 32
@periodic_measure_commands_lpm = internal constant { [5 x [2 x i8]], [22 x i8] } { [5 x [2 x i8]] [[2 x i8] c" /", [2 x i8] c"!-", [2 x i8] c"\22+", [2 x i8] c"#)", [2 x i8] c"'*"], [22 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [17 x i8] c"sht3x_i2c_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 744, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 745, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"sht3x_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 736, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"sht3x_cmd_clear_status_reg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 43, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"sht3x_crc8_table\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 72, i32 1 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 705, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 706, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"sts3x_groups\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"sht3x_groups\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 730, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [32 x i8] c"sht3x_cmd_measure_periodic_mode\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 34, i32 28 }
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"sht3x_cmd_measure_blocking_hpm\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 26, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [31 x i8] c"sht3x_cmd_measure_blocking_lpm\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 30, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant [34 x i8] c"sht3x_cmd_measure_nonblocking_hpm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 27, i32 28 }
@___asan_gen_.77 = private unnamed_addr constant [34 x i8] c"sht3x_cmd_measure_nonblocking_lpm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 31, i32 28 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"limit_commands\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 107, i32 42 }
@___asan_gen_.83 = private unnamed_addr constant [12 x i8] c"sts3x_group\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 663, i32 1 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"sts3x_attrs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 657, i32 26 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 622, i32 8 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 268, i32 22 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"mode_to_update_interval\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 120, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant [12 x i8] c"sht3x_group\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 662, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"sht3x_attrs\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 639, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_input\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_max_hyst\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_humidity1_max\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_humidity1_max_hyst\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [31 x i8] c"sensor_dev_attr_temp1_min_hyst\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_humidity1_min\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [35 x i8] c"sensor_dev_attr_humidity1_min_hyst\00", align 1
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_alarm\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_humidity1_alarm\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_heater_enable\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_update_interval\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 623, i32 8 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 279, i32 22 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 624, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 626, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 625, i32 8 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 627, i32 8 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 629, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 631, i32 8 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 630, i32 8 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 632, i32 8 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 634, i32 8 }
@___asan_gen_.179 = private unnamed_addr constant [26 x i8] c"sht3x_cmd_read_status_reg\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 42, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 635, i32 8 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 636, i32 8 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"sht3x_cmd_heater_on\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 38, i32 28 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"sht3x_cmd_heater_off\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 39, i32 28 }
@___asan_gen_.194 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 637, i32 8 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"sht3x_cmd_break\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 35, i32 28 }
@___asan_gen_.200 = private unnamed_addr constant [30 x i8] c"periodic_measure_commands_hpm\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 75, i32 19 }
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"periodic_measure_commands_lpm\00", align 1
@___asan_gen_.204 = private constant [25 x i8] c"../drivers/hwmon/sht3x.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 89, i32 19 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file301, ptr @__UNIQUE_ID_license302, ptr @__exitcall_sht3x_i2c_driver_exit, ptr @__initcall__kmod_sht3x__297_750_sht3x_i2c_driver_init6, ptr @sht3x_i2c_driver_exit, ptr @sht3x_i2c_driver, ptr @.str, ptr @sht3x_ids, ptr @sht3x_cmd_clear_status_reg, ptr @sht3x_crc8_table, ptr @sht3x_probe.__key, ptr @.str.1, ptr @sht3x_probe.__key.2, ptr @.str.3, ptr @sts3x_groups, ptr @sht3x_groups, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @sht3x_cmd_measure_periodic_mode, ptr @sht3x_cmd_measure_blocking_hpm, ptr @sht3x_cmd_measure_blocking_lpm, ptr @sht3x_cmd_measure_nonblocking_hpm, ptr @sht3x_cmd_measure_nonblocking_lpm, ptr @limit_commands, ptr @sts3x_group, ptr @sts3x_attrs, ptr @sensor_dev_attr_temp1_input, ptr @.str.7, ptr @.str.8, ptr @mode_to_update_interval, ptr @sht3x_group, ptr @sht3x_attrs, ptr @sensor_dev_attr_humidity1_input, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_max_hyst, ptr @sensor_dev_attr_humidity1_max, ptr @sensor_dev_attr_humidity1_max_hyst, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_min_hyst, ptr @sensor_dev_attr_humidity1_min, ptr @sensor_dev_attr_humidity1_min_hyst, ptr @sensor_dev_attr_temp1_alarm, ptr @sensor_dev_attr_humidity1_alarm, ptr @sensor_dev_attr_heater_enable, ptr @sensor_dev_attr_update_interval, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @sht3x_cmd_read_status_reg, ptr @.str.20, ptr @.str.21, ptr @sht3x_cmd_heater_on, ptr @sht3x_cmd_heater_off, ptr @.str.22, ptr @sht3x_cmd_break, ptr @periodic_measure_commands_hpm, ptr @periodic_measure_commands_lpm], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_clear_status_reg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_crc8_table to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sts3x_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_measure_periodic_mode to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_measure_blocking_hpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_measure_blocking_lpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_measure_nonblocking_hpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_measure_nonblocking_lpm to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @limit_commands to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sts3x_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sts3x_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mode_to_update_interval to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_attrs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_max_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_min_hyst to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_humidity1_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_heater_enable to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_update_interval to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_read_status_reg to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_heater_on to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_heater_off to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sht3x_cmd_break to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periodic_measure_commands_hpm to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @periodic_measure_commands_lpm to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sht3x_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sht3x_i2c_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sht3x_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @sht3x_i2c_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sht3x_probe(ptr noundef %client) #2 align 64 {
entry:
  %buffer.i = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull @sht3x_cmd_clear_status_reg, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %if.end5, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp4, i32 %call.i, i32 -19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i75 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 248, i32 noundef 3520) #6
  %tobool7.not = icmp eq ptr %call.i75, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %setup = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 7
  %6 = ptrtoint ptr %setup to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %setup, align 4
  %high_precision = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %high_precision to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %high_precision, align 1
  %mode = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %mode, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %9, -300
  %last_update = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 6
  %10 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %last_update, align 4
  %11 = ptrtoint ptr %call.i75 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %client, ptr %call.i75, align 4
  tail call void @crc8_populate_msb(ptr noundef nonnull @sht3x_crc8_table, i8 noundef zeroext 49) #6
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 7
  %12 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %platform_data, align 8
  %tobool14.not = icmp eq ptr %13, null
  br i1 %tobool14.not, label %if.end9.if.end18_crit_edge, label %if.then15

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 2)
  %15 = load i16, ptr %13, align 1
  %16 = ptrtoint ptr %setup to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %setup, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end9.if.end18_crit_edge
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i = icmp eq i8 %18, 0
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %command.i = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 4
  %19 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sht3x_cmd_measure_periodic_mode, ptr %command.i, align 4
  br label %sht3x_select_command.exit

if.else.i:                                        ; preds = %if.end18
  %20 = ptrtoint ptr %setup to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %setup, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  %22 = ptrtoint ptr %high_precision to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %high_precision, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool11.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.else8.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool11.not.i, ptr @sht3x_cmd_measure_blocking_lpm, ptr @sht3x_cmd_measure_blocking_hpm
  %command6.i = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 4
  %24 = ptrtoint ptr %command6.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cond.i, ptr %command6.i, align 4
  br label %sht3x_select_command.exit

if.else8.i:                                       ; preds = %if.else.i
  %command16.i = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 4
  br i1 %tobool11.not.i, label %if.else15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %command16.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @sht3x_cmd_measure_nonblocking_hpm, ptr %command16.i, align 4
  br label %sht3x_select_command.exit

if.else15.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %command16.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sht3x_cmd_measure_nonblocking_lpm, ptr %command16.i, align 4
  br label %sht3x_select_command.exit

sht3x_select_command.exit:                        ; preds = %if.else15.i, %if.then12.i, %if.then2.i, %if.then.i
  %.sink.i = phi i32 [ 0, %if.then2.i ], [ 4000, %if.else15.i ], [ 15000, %if.then12.i ], [ 0, %if.then.i ]
  %wait_time7.i = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 5
  %27 = ptrtoint ptr %wait_time7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink.i, ptr %wait_time7.i, align 4
  %i2c_lock = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %i2c_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sht3x_probe.__key) #6
  %data_lock = getelementptr inbounds %struct.sht3x_data, ptr %call.i75, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %data_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @sht3x_probe.__key.2) #6
  tail call void @usleep_range_state(i32 noundef 500, i32 noundef 600, i32 noundef 2) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buffer.i) #6
  %28 = call ptr @memset(ptr %buffer.i, i32 255, i32 6)
  %29 = ptrtoint ptr %call.i75 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i75, align 4
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull @limit_commands, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sht3x_select_command.exit.sht3x_read_from_command.exit.thread.i_crit_edge

sht3x_select_command.exit.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %sht3x_select_command.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.i.i:                                       ; preds = %sht3x_select_command.exit
  %call.i26.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buffer.i, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i26.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i26.i.i, 6
  br i1 %cmp5.not.i.i, label %if.end.i, label %if.end.i.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.i.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

sht3x_read_from_command.exit.thread.i:            ; preds = %if.end.i.3.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.2.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.i.2.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.1.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.i.1.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.i.sht3x_read_from_command.exit.thread.i_crit_edge, %if.end.i.i.sht3x_read_from_command.exit.thread.i_crit_edge, %sht3x_select_command.exit.sht3x_read_from_command.exit.thread.i_crit_edge
  %call.i26.i.lcssa.sink50.i = phi i32 [ %call.i.i.i, %sht3x_select_command.exit.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i.i.1.i, %if.end.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i.i.2.i, %if.end.1.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i.i.3.i, %if.end.2.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i26.i.i, %if.end.i.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i26.i.1.i, %if.end.i.1.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i26.i.2.i, %if.end.i.2.i.sht3x_read_from_command.exit.thread.i_crit_edge ], [ %call.i26.i.3.i, %if.end.i.3.i.sht3x_read_from_command.exit.thread.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.lcssa.sink50.i)
  %cmp7.i.i = icmp slt i32 %call.i26.i.lcssa.sink50.i, 0
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %spec.select81 = select i1 %cmp7.i.i, i32 %call.i26.i.lcssa.sink50.i, i32 -5
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer.i) #6
  br label %cleanup

if.end.i:                                         ; preds = %if.end.i.i
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %31 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %buffer.i, align 2
  %and.i76 = shl i16 %32, 7
  %conv.i.i = zext i16 %and.i76 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i.i, 21875
  %33 = lshr i32 %mul.i.i, 13
  %sub.i.i = add nsw i32 %33, -45000
  %34 = and i16 %32, -512
  %conv.i34.i = zext i16 %34 to i32
  %mul.i35.i = mul nuw nsw i32 %conv.i34.i, 12500
  %shr.i.i = lshr i32 %mul.i35.i, 13
  %arrayidx14.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 9, i32 0
  %35 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub.i.i, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 11, i32 0
  %36 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shr.i.i, ptr %arrayidx16.i, align 4
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %call.i.i.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef getelementptr inbounds ([4 x %struct.sht3x_limit_commands], ptr @limit_commands, i32 0, i32 1), i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.1.i)
  %cmp.not.i.1.i = icmp eq i32 %call.i.i.1.i, 2
  br i1 %cmp.not.i.1.i, label %if.end.i.1.i, label %if.end.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.i.1.i:                                     ; preds = %if.end.i
  %call.i26.i.1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buffer.i, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i26.i.1.i)
  %cmp5.not.i.1.i = icmp eq i32 %call.i26.i.1.i, 6
  br i1 %cmp5.not.i.1.i, label %if.end.1.i, label %if.end.i.1.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.i.1.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.1.i:                                       ; preds = %if.end.i.1.i
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %37 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %buffer.i, align 2
  %and.1.i = shl i16 %38, 7
  %conv.i.1.i = zext i16 %and.1.i to i32
  %mul.i.1.i = mul nuw nsw i32 %conv.i.1.i, 21875
  %39 = lshr i32 %mul.i.1.i, 13
  %sub.i.1.i = add nsw i32 %39, -45000
  %40 = and i16 %38, -512
  %conv.i34.1.i = zext i16 %40 to i32
  %mul.i35.1.i = mul nuw nsw i32 %conv.i34.1.i, 12500
  %shr.i.1.i = lshr i32 %mul.i35.1.i, 13
  %arrayidx14.1.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 9, i32 1
  %41 = ptrtoint ptr %arrayidx14.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i.1.i, ptr %arrayidx14.1.i, align 4
  %arrayidx16.1.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %shr.i.1.i, ptr %arrayidx16.1.i, align 4
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %call.i.i.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef getelementptr inbounds ([4 x %struct.sht3x_limit_commands], ptr @limit_commands, i32 0, i32 2), i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.2.i)
  %cmp.not.i.2.i = icmp eq i32 %call.i.i.2.i, 2
  br i1 %cmp.not.i.2.i, label %if.end.i.2.i, label %if.end.1.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.1.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.i.2.i:                                     ; preds = %if.end.1.i
  %call.i26.i.2.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buffer.i, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i26.i.2.i)
  %cmp5.not.i.2.i = icmp eq i32 %call.i26.i.2.i, 6
  br i1 %cmp5.not.i.2.i, label %if.end.2.i, label %if.end.i.2.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.i.2.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.2.i:                                       ; preds = %if.end.i.2.i
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %43 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %buffer.i, align 2
  %and.2.i = shl i16 %44, 7
  %conv.i.2.i = zext i16 %and.2.i to i32
  %mul.i.2.i = mul nuw nsw i32 %conv.i.2.i, 21875
  %45 = lshr i32 %mul.i.2.i, 13
  %sub.i.2.i = add nsw i32 %45, -45000
  %46 = and i16 %44, -512
  %conv.i34.2.i = zext i16 %46 to i32
  %mul.i35.2.i = mul nuw nsw i32 %conv.i34.2.i, 12500
  %shr.i.2.i = lshr i32 %mul.i35.2.i, 13
  %arrayidx14.2.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 9, i32 2
  %47 = ptrtoint ptr %arrayidx14.2.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %sub.i.2.i, ptr %arrayidx14.2.i, align 4
  %arrayidx16.2.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 11, i32 2
  %48 = ptrtoint ptr %arrayidx16.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shr.i.2.i, ptr %arrayidx16.2.i, align 4
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %call.i.i.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef getelementptr inbounds ([4 x %struct.sht3x_limit_commands], ptr @limit_commands, i32 0, i32 3), i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.3.i)
  %cmp.not.i.3.i = icmp eq i32 %call.i.i.3.i, 2
  br i1 %cmp.not.i.3.i, label %if.end.i.3.i, label %if.end.2.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.2.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end.i.3.i:                                     ; preds = %if.end.2.i
  %call.i26.i.3.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %buffer.i, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i26.i.3.i)
  %cmp5.not.i.3.i = icmp eq i32 %call.i26.i.3.i, 6
  br i1 %cmp5.not.i.3.i, label %if.end25, label %if.end.i.3.i.sht3x_read_from_command.exit.thread.i_crit_edge

if.end.i.3.i.sht3x_read_from_command.exit.thread.i_crit_edge: ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sht3x_read_from_command.exit.thread.i

if.end25:                                         ; preds = %if.end.i.3.i
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  %49 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %buffer.i, align 2
  %and.3.i = shl i16 %50, 7
  %conv.i.3.i = zext i16 %and.3.i to i32
  %mul.i.3.i = mul nuw nsw i32 %conv.i.3.i, 21875
  %51 = lshr i32 %mul.i.3.i, 13
  %sub.i.3.i = add nsw i32 %51, -45000
  %52 = and i16 %50, -512
  %conv.i34.3.i = zext i16 %52 to i32
  %mul.i35.3.i = mul nuw nsw i32 %conv.i34.3.i, 12500
  %shr.i.3.i = lshr i32 %mul.i35.3.i, 13
  %arrayidx14.3.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 9, i32 3
  %53 = ptrtoint ptr %arrayidx14.3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %sub.i.3.i, ptr %arrayidx14.3.i, align 4
  %arrayidx16.3.i = getelementptr %struct.sht3x_data, ptr %call.i75, i32 0, i32 11, i32 3
  %54 = ptrtoint ptr %arrayidx16.3.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i.3.i, ptr %arrayidx16.3.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buffer.i) #6
  %call26 = call ptr @i2c_match_id(ptr noundef nonnull @sht3x_ids, ptr noundef %client) #6
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call26, i32 0, i32 1
  %55 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %56)
  %cmp27 = icmp eq i32 %56, 1
  %sts3x_groups.sht3x_groups = select i1 %cmp27, ptr @sts3x_groups, ptr @sht3x_groups
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call30 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i75, ptr noundef nonnull %sts3x_groups.sht3x_groups) #6
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body33, label %if.end25.if.end43_crit_edge

if.end25.if.end43_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

do.body33:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sht3x_probe.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sht3x_probe, %if.end43)) #6
          to label %if.then39 [label %if.end43], !srcloc !125

if.then39:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sht3x_probe.__UNIQUE_ID_ddebug296, ptr noundef %dev1, ptr noundef nonnull @.str.6) #6
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %do.body33, %if.end25.if.end43_crit_edge
  %57 = ptrtoint ptr %call30 to i32
  %spec.select.i = select i1 %cmp.i, i32 %57, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %sht3x_read_from_command.exit.thread.i, %if.end5.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then3 ], [ %spec.select.i, %if.end43 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ], [ %spec.select81, %sht3x_read_from_command.exit.thread.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crc8_populate_msb(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sht3x_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %temperature = getelementptr inbounds %struct.sht3x_data, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %temperature, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sht3x_update_client(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %mode = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %mode, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [6 x i16], ptr @mode_to_update_interval, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %7 to i32
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %conv) #6
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #6
  %8 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %data_lock = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 2
  %9 = call ptr @memset(ptr %buf, i32 255, i32 6)
  tail call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #6
  %last_update = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %last_update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_update, align 4
  %add = add i32 %11, %call2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.then, label %entry.out.thread_crit_edge

entry.out.thread_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.thread

if.then:                                          ; preds = %entry
  %command = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %command, align 4
  %wait_time = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %wait_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wait_time, align 4
  %i2c_lock.i = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock.i, i32 noundef 0) #6
  %call.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef %14, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i, label %if.end.i39, label %if.then.if.then16_crit_edge

if.then.if.then16_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end.i39:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.end.i39.if.end3.i_crit_edge, label %if.then2.i

if.end.i39.if.end3.i_crit_edge:                   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #8
  %add.i = add i32 %16, 1000
  tail call void @usleep_range_state(i32 noundef %16, i32 noundef %add.i, i32 noundef 2) #6
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i39.if.end3.i_crit_edge
  %call.i26.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %buf, i32 noundef 6, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i26.i)
  %cmp5.not.i = icmp eq i32 %call.i26.i, 6
  br i1 %cmp5.not.i, label %if.end, label %if.end3.i.if.then16_crit_edge

if.end3.i.if.then16_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %i2c_lock.i) #6
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %buf, align 2
  %conv.i = zext i16 %18 to i32
  %mul.i = mul nuw nsw i32 %conv.i, 21875
  %19 = lshr i32 %mul.i, 13
  %sub.i = add nsw i32 %19, -45000
  %temperature = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 8
  %20 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i, ptr %temperature, align 4
  %21 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %8, align 2
  %conv.i40 = zext i16 %22 to i32
  %mul.i41 = mul nuw nsw i32 %conv.i40, 12500
  %shr.i = lshr i32 %mul.i41, 13
  %humidity = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shr.i, ptr %humidity, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %24 = load volatile i32, ptr @jiffies, align 128
  %25 = ptrtoint ptr %last_update to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %last_update, align 4
  br label %out.thread

out.thread:                                       ; preds = %if.end, %entry.out.thread_crit_edge
  call void @mutex_unlock(ptr noundef %data_lock) #6
  br label %cleanup

if.then16:                                        ; preds = %if.end3.i.if.then16_crit_edge, %if.then.if.then16_crit_edge
  %call.i26.i.sink48 = phi i32 [ %call.i.i, %if.then.if.then16_crit_edge ], [ %call.i26.i, %if.end3.i.if.then16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.sink48)
  %cmp7.i = icmp slt i32 %call.i26.i.sink48, 0
  %spec.select47 = select i1 %cmp7.i, i32 %call.i26.i.sink48, i32 -5
  call void @mutex_unlock(ptr noundef %i2c_lock.i) #6
  call void @mutex_unlock(ptr noundef %data_lock) #6
  %26 = inttoptr i32 %spec.select47 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %out.thread
  %retval.0 = phi ptr [ %26, %if.then16 ], [ %1, %out.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #6
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @humidity1_input_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sht3x_update_client(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %humidity = getelementptr inbounds %struct.sht3x_data, ptr %call, i32 0, i32 10
  %1 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %humidity, align 4
  %call3 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %idxprom = and i32 %3, 255
  %arrayidx = getelementptr %struct.sht3x_data, ptr %1, i32 0, i32 9, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %5) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %temperature = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temperature) #6
  %0 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %temperature, align 4, !annotation !126
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index1, align 4
  %call2 = call i32 @kstrtoint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %temperature) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %temperature, align 4
  %7 = call i32 @llvm.smax.i32(i32 %6, i32 -45000)
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 130000)
  %9 = ptrtoint ptr %temperature to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %temperature, align 4
  %data_lock = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #6
  %10 = ptrtoint ptr %temperature to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temperature, align 4
  %idxprom = and i32 %4, 255
  %arrayidx = getelementptr %struct.sht3x_data, ptr %2, i32 0, i32 11, i32 %idxprom
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call12 = call fastcc i32 @limit_store(ptr noundef %dev, i32 noundef %count, i8 noundef zeroext %conv, i32 noundef %11, i32 noundef %13)
  call void @mutex_unlock(ptr noundef %data_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temperature) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @limit_store(ptr nocapture noundef readonly %dev, i32 noundef %count, i8 noundef zeroext %index, i32 noundef %temperature, i32 noundef %humidity) unnamed_addr #2 align 64 {
entry:
  %buffer = alloca [5 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buffer) #6
  %0 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 2
  %1 = getelementptr inbounds [5 x i8], ptr %buffer, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %2 = getelementptr inbounds i8, ptr %buffer, i32 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 2
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %idxprom = zext i8 %index to i32
  %write_command = getelementptr [4 x %struct.sht3x_limit_commands], ptr @limit_commands, i32 0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %write_command to i32
  call void @__asan_loadN_noabort(i32 %8, i32 2)
  %9 = load i16, ptr %write_command, align 1
  %10 = ptrtoint ptr %buffer to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %buffer, align 2
  %11 = mul i32 %temperature, 24543
  %mul = add i32 %11, 1104435000
  %shr = lshr i32 %mul, 23
  %mul3 = mul i32 %humidity, 42950
  %shr4 = lshr i32 %mul3, 16
  %and = and i32 %shr4, 65024
  %or = or i32 %and, %shr
  %conv6 = trunc i32 %or to i16
  %12 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6, ptr %0, align 2
  %call9 = call zeroext i8 @crc8(ptr noundef nonnull @sht3x_crc8_table, ptr noundef %0, i32 noundef 2, i8 noundef zeroext -1) #6
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call9, ptr %1, align 2
  %i2c_lock = getelementptr inbounds %struct.sht3x_data, ptr %5, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %buffer, i32 noundef 5, i16 noundef zeroext 0) #6
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 5
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  %spec.select = select i1 %cmp14, i32 %call.i, i32 -5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx17 = getelementptr %struct.sht3x_data, ptr %5, i32 0, i32 9, i32 %idxprom
  %14 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %temperature, ptr %arrayidx17, align 4
  %arrayidx19 = getelementptr %struct.sht3x_data, ptr %5, i32 0, i32 11, i32 %idxprom
  %15 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %humidity, ptr %arrayidx19, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %spec.select, %if.then ], [ %count, %if.end ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @crc8(ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @humidity1_limit_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index1, align 4
  %idxprom = and i32 %3, 255
  %arrayidx = getelementptr %struct.sht3x_data, ptr %1, i32 0, i32 11, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %call2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %5) #6
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @humidity1_limit_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %humidity = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %humidity) #6
  %0 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %humidity, align 4, !annotation !126
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %index1 = getelementptr inbounds %struct.sensor_device_attribute, ptr %attr, i32 0, i32 1
  %3 = ptrtoint ptr %index1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index1, align 4
  %call.i = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %humidity) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = trunc i32 %4 to i8
  %5 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %humidity, align 4
  %7 = call i32 @llvm.umin.i32(i32 %6, i32 100000)
  %8 = ptrtoint ptr %humidity to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %humidity, align 4
  %data_lock = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #6
  %idxprom = and i32 %4, 255
  %arrayidx = getelementptr %struct.sht3x_data, ptr %2, i32 0, i32 9, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %humidity to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %humidity, align 4
  %call12 = call fastcc i32 @limit_store(ptr noundef %dev, i32 noundef %count, i8 noundef zeroext %conv, i32 noundef %10, i32 noundef %12)
  call void @mutex_unlock(ptr noundef %data_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %humidity) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp1_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %buffer = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer) #6
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buffer, align 1, !annotation !126
  %1 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !126
  %3 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !126
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %i2c_lock.i.i = getelementptr inbounds %struct.sht3x_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock.i.i, i32 noundef 0) #6
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull @sht3x_cmd_read_status_reg, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.status_register_read.exit.thread_crit_edge

entry.status_register_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call.i26.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buffer, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i26.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i26.i.i, 3
  br i1 %cmp5.not.i.i, label %if.end, label %if.end.i.i.status_register_read.exit.thread_crit_edge

if.end.i.i.status_register_read.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

status_register_read.exit.thread:                 ; preds = %if.end.i.i.status_register_read.exit.thread_crit_edge, %entry.status_register_read.exit.thread_crit_edge
  %call.i26.i.i.sink10 = phi i32 [ %call.i.i.i, %entry.status_register_read.exit.thread_crit_edge ], [ %call.i26.i.i, %if.end.i.i.status_register_read.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.sink10)
  %cmp7.i.i = icmp slt i32 %call.i26.i.i.sink10, 0
  %spec.select9 = select i1 %cmp7.i.i, i32 %call.i26.i.i.sink10, i32 -5
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffer, align 1
  %11 = lshr i8 %10, 2
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %status_register_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %spec.select9, %status_register_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @humidity1_alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %buffer = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer) #6
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buffer, align 1, !annotation !126
  %1 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !126
  %3 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !126
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %i2c_lock.i.i = getelementptr inbounds %struct.sht3x_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock.i.i, i32 noundef 0) #6
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull @sht3x_cmd_read_status_reg, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.status_register_read.exit.thread_crit_edge

entry.status_register_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call.i26.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buffer, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i26.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i26.i.i, 3
  br i1 %cmp5.not.i.i, label %if.end, label %if.end.i.i.status_register_read.exit.thread_crit_edge

if.end.i.i.status_register_read.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

status_register_read.exit.thread:                 ; preds = %if.end.i.i.status_register_read.exit.thread_crit_edge, %entry.status_register_read.exit.thread_crit_edge
  %call.i26.i.i.sink10 = phi i32 [ %call.i.i.i, %entry.status_register_read.exit.thread_crit_edge ], [ %call.i26.i.i, %if.end.i.i.status_register_read.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.sink10)
  %cmp7.i.i = icmp slt i32 %call.i26.i.i.sink10, 0
  %spec.select9 = select i1 %cmp7.i.i, i32 %call.i26.i.i.sink10, i32 -5
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffer, align 1
  %11 = lshr i8 %10, 3
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %status_register_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %spec.select9, %status_register_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @heater_enable_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  %buffer = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buffer) #6
  %0 = ptrtoint ptr %buffer to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buffer, align 1, !annotation !126
  %1 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %1, align 1, !annotation !126
  %3 = getelementptr inbounds [3 x i8], ptr %buffer, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !126
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %i2c_lock.i.i = getelementptr inbounds %struct.sht3x_data, ptr %6, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %i2c_lock.i.i, i32 noundef 0) #6
  %call.i.i.i = tail call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull @sht3x_cmd_read_status_reg, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %entry.status_register_read.exit.thread_crit_edge

entry.status_register_read.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call.i26.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %buffer, i32 noundef 3, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i26.i.i)
  %cmp5.not.i.i = icmp eq i32 %call.i26.i.i, 3
  br i1 %cmp5.not.i.i, label %if.end, label %if.end.i.i.status_register_read.exit.thread_crit_edge

if.end.i.i.status_register_read.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %status_register_read.exit.thread

status_register_read.exit.thread:                 ; preds = %if.end.i.i.status_register_read.exit.thread_crit_edge, %entry.status_register_read.exit.thread_crit_edge
  %call.i26.i.i.sink10 = phi i32 [ %call.i.i.i, %entry.status_register_read.exit.thread_crit_edge ], [ %call.i26.i.i, %if.end.i.i.status_register_read.exit.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.sink10)
  %cmp7.i.i = icmp slt i32 %call.i26.i.i.sink10, 0
  %spec.select9 = select i1 %cmp7.i.i, i32 %call.i26.i.i.sink10, i32 -5
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %i2c_lock.i.i) #6
  %9 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buffer, align 1
  %11 = lshr i8 %10, 5
  %.lobit = and i8 %11, 1
  %12 = zext i8 %.lobit to i32
  %call3 = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.8, i32 noundef %12) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %status_register_read.exit.thread
  %retval.0 = phi i32 [ %call3, %if.end ], [ %spec.select9, %status_register_read.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buffer) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @heater_enable_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %status, align 1, !annotation !126
  %call2 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %i2c_lock = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  %sht3x_cmd_heater_off.sht3x_cmd_heater_on = select i1 %tobool3.not, ptr @sht3x_cmd_heater_off, ptr @sht3x_cmd_heater_on
  %call.i17 = call i32 @i2c_transfer_buffer_flags(ptr noundef %3, ptr noundef nonnull %sht3x_cmd_heater_off.sht3x_cmd_heater_on, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mode = getelementptr inbounds %struct.sht3x_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mode, align 4
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [6 x i16], ptr @mode_to_update_interval, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %5 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.10, i32 noundef %conv) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %update_interval = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %update_interval) #6
  %0 = ptrtoint ptr %update_interval to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %update_interval, align 2, !annotation !126
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %call2 = call i32 @kstrtou16(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %update_interval) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %update_interval to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %update_interval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i = icmp eq i16 %6, 0
  br i1 %cmp.i, label %if.end.get_mode_from_update_interval.exit_crit_edge, label %for.body.preheader.i

if.end.get_mode_from_update_interval.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_mode_from_update_interval.exit

for.body.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 2000, i16 %6)
  %cmp7.not.i = icmp ult i16 %6, 2000
  br i1 %cmp7.not.i, label %for.inc.i, label %for.body.preheader.i.get_mode_from_update_interval.exit_crit_edge

for.body.preheader.i.get_mode_from_update_interval.exit_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_mode_from_update_interval.exit

for.inc.i:                                        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 1000, i16 %6)
  %cmp7.not.1.i = icmp ult i16 %6, 1000
  br i1 %cmp7.not.1.i, label %for.inc.1.i, label %for.inc.i.get_mode_from_update_interval.exit_crit_edge

for.inc.i.get_mode_from_update_interval.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_mode_from_update_interval.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 500, i16 %6)
  %cmp7.not.2.i = icmp ult i16 %6, 500
  br i1 %cmp7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.get_mode_from_update_interval.exit_crit_edge

for.inc.1.i.get_mode_from_update_interval.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_mode_from_update_interval.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp2(i16 250, i16 %6)
  %cmp7.not.3.i = icmp ult i16 %6, 250
  %spec.select.i = select i1 %cmp7.not.3.i, i8 5, i8 4
  br label %get_mode_from_update_interval.exit

get_mode_from_update_interval.exit:               ; preds = %for.inc.2.i, %for.inc.1.i.get_mode_from_update_interval.exit_crit_edge, %for.inc.i.get_mode_from_update_interval.exit_crit_edge, %for.body.preheader.i.get_mode_from_update_interval.exit_crit_edge, %if.end.get_mode_from_update_interval.exit_crit_edge
  %retval.0.i = phi i8 [ 0, %if.end.get_mode_from_update_interval.exit_crit_edge ], [ 1, %for.body.preheader.i.get_mode_from_update_interval.exit_crit_edge ], [ 2, %for.inc.i.get_mode_from_update_interval.exit_crit_edge ], [ 3, %for.inc.1.i.get_mode_from_update_interval.exit_crit_edge ], [ %spec.select.i, %for.inc.2.i ]
  %data_lock = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %data_lock, i32 noundef 0) #6
  %conv = zext i8 %retval.0.i to i32
  %mode4 = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 3
  %7 = ptrtoint ptr %mode4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mode4, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %retval.0.i, i8 %8)
  %cmp = icmp eq i8 %retval.0.i, %8
  br i1 %cmp, label %if.then7, label %if.end9

if.then7:                                         ; preds = %get_mode_from_update_interval.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @mutex_unlock(ptr noundef %data_lock) #6
  br label %cleanup

if.end9:                                          ; preds = %get_mode_from_update_interval.exit
  %i2c_lock = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %i2c_lock, i32 noundef 0) #6
  %9 = ptrtoint ptr %mode4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %mode4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp12.not = icmp eq i8 %10, 0
  br i1 %cmp12.not, label %if.end9.if.end21_crit_edge, label %if.then14

if.end9.if.end21_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then14:                                        ; preds = %if.end9
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef nonnull @sht3x_cmd_break, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp16.not = icmp eq i32 %call.i, 2
  br i1 %cmp16.not, label %if.end19, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end19:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %mode4 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %mode4, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end9.if.end21_crit_edge
  %ret.0 = phi i32 [ 2, %if.end19 ], [ 0, %if.end9.if.end21_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i)
  %cmp23.not = icmp eq i8 %retval.0.i, 0
  br i1 %cmp23.not, label %if.else.i, label %if.then25

if.then25:                                        ; preds = %if.end21
  %high_precision = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %high_precision to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %high_precision, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool26.not = icmp eq i8 %13, 0
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr [5 x [2 x i8]], ptr @periodic_measure_commands_hpm, i32 0, i32 %sub
  %arrayidx31 = getelementptr [5 x [2 x i8]], ptr @periodic_measure_commands_lpm, i32 0, i32 %sub
  %command.0 = select i1 %tobool26.not, ptr %arrayidx31, ptr %arrayidx
  %call.i77 = call i32 @i2c_transfer_buffer_flags(ptr noundef %4, ptr noundef %command.0, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i77)
  %cmp35.not = icmp eq i32 %call.i77, 2
  br i1 %cmp35.not, label %if.then.i, label %if.then25.out_crit_edge

if.then25.out_crit_edge:                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then.i:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %mode4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %retval.0.i, ptr %mode4, align 4
  %command.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 4
  %15 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sht3x_cmd_measure_periodic_mode, ptr %command.i, align 4
  br label %sht3x_select_command.exit

if.else.i:                                        ; preds = %if.end21
  %16 = ptrtoint ptr %mode4 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %mode4, align 4
  %setup.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %setup.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %setup.i, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  %high_precision10.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %high_precision10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %high_precision10.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool11.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %if.else8.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i = select i1 %tobool11.not.i, ptr @sht3x_cmd_measure_blocking_lpm, ptr @sht3x_cmd_measure_blocking_hpm
  %command6.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 4
  %21 = ptrtoint ptr %command6.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cond.i, ptr %command6.i, align 4
  br label %sht3x_select_command.exit

if.else8.i:                                       ; preds = %if.else.i
  %command16.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 4
  br i1 %tobool11.not.i, label %if.else15.i, label %if.then12.i

if.then12.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %command16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sht3x_cmd_measure_nonblocking_hpm, ptr %command16.i, align 4
  br label %sht3x_select_command.exit

if.else15.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %command16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sht3x_cmd_measure_nonblocking_lpm, ptr %command16.i, align 4
  br label %sht3x_select_command.exit

sht3x_select_command.exit:                        ; preds = %if.else15.i, %if.then12.i, %if.then2.i, %if.then.i
  %ret.179 = phi i32 [ %ret.0, %if.then2.i ], [ %ret.0, %if.else15.i ], [ %ret.0, %if.then12.i ], [ 2, %if.then.i ]
  %.sink.i = phi i32 [ 0, %if.then2.i ], [ 4000, %if.else15.i ], [ 15000, %if.then12.i ], [ 0, %if.then.i ]
  %wait_time7.i = getelementptr inbounds %struct.sht3x_data, ptr %2, i32 0, i32 5
  %24 = ptrtoint ptr %wait_time7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %.sink.i, ptr %wait_time7.i, align 4
  br label %out

out:                                              ; preds = %sht3x_select_command.exit, %if.then25.out_crit_edge, %if.then14.out_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.then14.out_crit_edge ], [ %call.i77, %if.then25.out_crit_edge ], [ %ret.179, %sht3x_select_command.exit ]
  call void @mutex_unlock(ptr noundef %i2c_lock) #6
  call void @mutex_unlock(ptr noundef %data_lock) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %ret.2)
  %cmp43.not = icmp eq i32 %ret.2, 2
  br i1 %cmp43.not, label %out.cleanup_crit_edge, label %if.then45

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then45:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %cmp46 = icmp slt i32 %ret.2, 0
  %spec.select = select i1 %cmp46, i32 %ret.2, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.then45, %out.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.then7 ], [ %spec.select, %if.then45 ], [ %call2, %entry.cleanup_crit_edge ], [ %count, %out.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %update_interval) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !51, !53, !55, !57, !58, !60, !62, !63, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !88, !89, !91, !92, !94, !96, !97, !99, !100, !102, !104, !106, !107, !109, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_sht3x__297_750_sht3x_i2c_driver_init6, !1, !"__initcall__kmod_sht3x__297_750_sht3x_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/sht3x.c", i32 750, i32 1}
!2 = !{ptr @__exitcall_sht3x_i2c_driver_exit, !1, !"__exitcall_sht3x_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author298, !4, !"__UNIQUE_ID_author298", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/sht3x.c", i32 752, i32 1}
!5 = !{ptr @__UNIQUE_ID_author299, !6, !"__UNIQUE_ID_author299", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/sht3x.c", i32 753, i32 1}
!7 = !{ptr @__UNIQUE_ID_description300, !8, !"__UNIQUE_ID_description300", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/sht3x.c", i32 754, i32 1}
!9 = !{ptr @__UNIQUE_ID_file301, !10, !"__UNIQUE_ID_file301", i1 false, i1 false}
!10 = !{!"../drivers/hwmon/sht3x.c", i32 755, i32 1}
!11 = !{ptr @__UNIQUE_ID_license302, !10, !"__UNIQUE_ID_license302", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/sht3x.c", i32 745, i32 17}
!14 = !{ptr @sht3x_i2c_driver, !15, !"sht3x_i2c_driver", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/sht3x.c", i32 744, i32 26}
!16 = !{ptr @sht3x_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/sht3x.c", i32 705, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sht3x_probe.__key.2, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/sht3x.c", i32 706, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/sht3x.c", i32 730, i32 3}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @sht3x_probe.__UNIQUE_ID_ddebug296, !23, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!27 = !{ptr @sht3x_cmd_clear_status_reg, !28, !"sht3x_cmd_clear_status_reg", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/sht3x.c", i32 43, i32 28}
!29 = !{ptr @sht3x_crc8_table, !30, !"sht3x_crc8_table", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/sht3x.c", i32 72, i32 1}
!31 = !{ptr @sht3x_cmd_measure_periodic_mode, !32, !"sht3x_cmd_measure_periodic_mode", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/sht3x.c", i32 34, i32 28}
!33 = !{ptr @sht3x_cmd_measure_blocking_hpm, !34, !"sht3x_cmd_measure_blocking_hpm", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/sht3x.c", i32 26, i32 28}
!35 = !{ptr @sht3x_cmd_measure_blocking_lpm, !36, !"sht3x_cmd_measure_blocking_lpm", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/sht3x.c", i32 30, i32 28}
!37 = !{ptr @sht3x_cmd_measure_nonblocking_hpm, !38, !"sht3x_cmd_measure_nonblocking_hpm", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/sht3x.c", i32 27, i32 28}
!39 = !{ptr @sht3x_cmd_measure_nonblocking_lpm, !40, !"sht3x_cmd_measure_nonblocking_lpm", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/sht3x.c", i32 31, i32 28}
!41 = !{ptr @limit_commands, !42, !"limit_commands", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/sht3x.c", i32 107, i32 42}
!43 = !{ptr @sts3x_groups, !44, !"sts3x_groups", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/sht3x.c", i32 663, i32 1}
!45 = !{ptr @sts3x_group, !44, !"sts3x_group", i1 false, i1 false}
!46 = !{ptr @sts3x_attrs, !47, !"sts3x_attrs", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/sht3x.c", i32 657, i32 26}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/sht3x.c", i32 622, i32 8}
!50 = !{ptr @sensor_dev_attr_temp1_input, !49, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!51 = !{ptr @.str.8, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hwmon/sht3x.c", i32 268, i32 22}
!53 = !{ptr @mode_to_update_interval, !54, !"mode_to_update_interval", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/sht3x.c", i32 120, i32 18}
!55 = !{ptr @sht3x_groups, !56, !"sht3x_groups", i1 false, i1 false}
!56 = !{!"../drivers/hwmon/sht3x.c", i32 662, i32 1}
!57 = !{ptr @sht3x_group, !56, !"sht3x_group", i1 false, i1 false}
!58 = !{ptr @sht3x_attrs, !59, !"sht3x_attrs", i1 false, i1 false}
!59 = !{!"../drivers/hwmon/sht3x.c", i32 639, i32 26}
!60 = !{ptr @.str.9, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/hwmon/sht3x.c", i32 623, i32 8}
!62 = !{ptr @sensor_dev_attr_humidity1_input, !61, !"sensor_dev_attr_humidity1_input", i1 false, i1 false}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hwmon/sht3x.c", i32 279, i32 22}
!65 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/sht3x.c", i32 624, i32 8}
!67 = !{ptr @sensor_dev_attr_temp1_max, !66, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!68 = !{ptr @.str.12, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/hwmon/sht3x.c", i32 626, i32 8}
!70 = !{ptr @sensor_dev_attr_temp1_max_hyst, !69, !"sensor_dev_attr_temp1_max_hyst", i1 false, i1 false}
!71 = !{ptr @.str.13, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hwmon/sht3x.c", i32 625, i32 8}
!73 = !{ptr @sensor_dev_attr_humidity1_max, !72, !"sensor_dev_attr_humidity1_max", i1 false, i1 false}
!74 = !{ptr @.str.14, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/hwmon/sht3x.c", i32 627, i32 8}
!76 = !{ptr @sensor_dev_attr_humidity1_max_hyst, !75, !"sensor_dev_attr_humidity1_max_hyst", i1 false, i1 false}
!77 = !{ptr @.str.15, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/hwmon/sht3x.c", i32 629, i32 8}
!79 = !{ptr @sensor_dev_attr_temp1_min, !78, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!80 = !{ptr @.str.16, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/hwmon/sht3x.c", i32 631, i32 8}
!82 = !{ptr @sensor_dev_attr_temp1_min_hyst, !81, !"sensor_dev_attr_temp1_min_hyst", i1 false, i1 false}
!83 = !{ptr @.str.17, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hwmon/sht3x.c", i32 630, i32 8}
!85 = !{ptr @sensor_dev_attr_humidity1_min, !84, !"sensor_dev_attr_humidity1_min", i1 false, i1 false}
!86 = !{ptr @.str.18, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/hwmon/sht3x.c", i32 632, i32 8}
!88 = !{ptr @sensor_dev_attr_humidity1_min_hyst, !87, !"sensor_dev_attr_humidity1_min_hyst", i1 false, i1 false}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/hwmon/sht3x.c", i32 634, i32 8}
!91 = !{ptr @sensor_dev_attr_temp1_alarm, !90, !"sensor_dev_attr_temp1_alarm", i1 false, i1 false}
!92 = !{ptr @sht3x_cmd_read_status_reg, !93, !"sht3x_cmd_read_status_reg", i1 false, i1 false}
!93 = !{!"../drivers/hwmon/sht3x.c", i32 42, i32 28}
!94 = !{ptr @.str.20, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/hwmon/sht3x.c", i32 635, i32 8}
!96 = !{ptr @sensor_dev_attr_humidity1_alarm, !95, !"sensor_dev_attr_humidity1_alarm", i1 false, i1 false}
!97 = !{ptr @.str.21, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/hwmon/sht3x.c", i32 636, i32 8}
!99 = !{ptr @sensor_dev_attr_heater_enable, !98, !"sensor_dev_attr_heater_enable", i1 false, i1 false}
!100 = !{ptr @sht3x_cmd_heater_on, !101, !"sht3x_cmd_heater_on", i1 false, i1 false}
!101 = !{!"../drivers/hwmon/sht3x.c", i32 38, i32 28}
!102 = !{ptr @sht3x_cmd_heater_off, !103, !"sht3x_cmd_heater_off", i1 false, i1 false}
!103 = !{!"../drivers/hwmon/sht3x.c", i32 39, i32 28}
!104 = !{ptr @.str.22, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/hwmon/sht3x.c", i32 637, i32 8}
!106 = !{ptr @sensor_dev_attr_update_interval, !105, !"sensor_dev_attr_update_interval", i1 false, i1 false}
!107 = !{ptr @sht3x_cmd_break, !108, !"sht3x_cmd_break", i1 false, i1 false}
!108 = !{!"../drivers/hwmon/sht3x.c", i32 35, i32 28}
!109 = !{ptr @periodic_measure_commands_hpm, !110, !"periodic_measure_commands_hpm", i1 false, i1 false}
!110 = !{!"../drivers/hwmon/sht3x.c", i32 75, i32 19}
!111 = !{ptr @periodic_measure_commands_lpm, !112, !"periodic_measure_commands_lpm", i1 false, i1 false}
!112 = !{!"../drivers/hwmon/sht3x.c", i32 89, i32 19}
!113 = !{ptr @sht3x_ids, !114, !"sht3x_ids", i1 false, i1 false}
!114 = !{!"../drivers/hwmon/sht3x.c", i32 736, i32 35}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{i8 0, i8 2}
!125 = !{i64 2148807446, i64 2148807451, i64 2148807464, i64 2148807508, i64 2148807542, i64 2148807563}
!126 = !{!"auto-init"}
