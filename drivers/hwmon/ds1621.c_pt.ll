; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ds1621.c_pt.bc'
source_filename = "../drivers/hwmon/ds1621.c"
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
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
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
%struct.ds1621_data = type { ptr, %struct.mutex, i8, i32, i32, [3 x i16], i8, i8, i16 }

@__param_str_polarity = internal constant [16 x i8] c"ds1621.polarity\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@polarity = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_polarity = internal constant %struct.kernel_param { ptr @__param_str_polarity, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @polarity } }, section "__param", align 4
@__UNIQUE_ID_polaritytype288 = internal constant [29 x i8] c"ds1621.parmtype=polarity:int\00", section ".modinfo", align 1
@__UNIQUE_ID_polarity289 = internal constant [72 x i8] c"ds1621.parm=polarity:Output's polarity: 0 = active high, 1 = active low\00", section ".modinfo", align 1
@__initcall__kmod_ds1621__295_391_ds1621_driver_init6 = internal global ptr @ds1621_driver_init, section ".initcall6.init", align 4
@ds1621_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @ds1621_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ds1621_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ds1621_driver_exit = internal global ptr @ds1621_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author296 = internal constant [56 x i8] c"ds1621.author=Christian W. Zuckschwerdt <zany@triq.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description297 = internal constant [33 x i8] c"ds1621.description=DS1621 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [33 x i8] c"ds1621.file=drivers/hwmon/ds1621\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [19 x i8] c"ds1621.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ds1621\00", [25 x i8] zeroinitializer }, align 32
@ds1621_id = internal constant { [6 x %struct.i2c_device_id], [48 x i8] } { [6 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ds1621\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"ds1625\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"ds1631\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"ds1721\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"ds1731\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ds1621_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ds1621_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ds1621_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ds1721_convrates = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 94, i16 188, i16 375, i16 750], [24 x i8] zeroinitializer }, align 32
@ds1621_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr @ds1621_attribute_visible, ptr null, ptr @ds1621_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ds1621_attributes = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr @dev_attr_update_interval, ptr null], [32 x i8] zeroinitializer }, align 32
@dev_attr_update_interval = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @update_interval_show, ptr @update_interval_store }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update_interval\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%hu\0A\00", [27 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @temp_show, ptr @temp_store }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_temp1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarm_show, ptr null }, i32 64 }, [32 x i8] zeroinitializer }, align 32
@dev_attr_alarms = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @alarms_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"temp1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ds1621_update_client.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 49, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ds1621_update_client\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/hwmon/ds1621.c\00", [41 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Starting ds1621 update\0A\00", [40 x i8] zeroinitializer }, align 32
@DS1621_REG_TEMP = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\AA\A2\A1", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_min\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"temp1_max\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_min_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"temp1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"alarms\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.15 = private unnamed_addr constant [9 x i8] c"polarity\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 40, i32 12 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"ds1621_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 382, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 385, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [10 x i8] c"ds1621_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 371, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 357, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"ds1621_groups\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 343, i32 1 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"ds1721_convrates\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 76, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"ds1621_group\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 339, i32 37 }
@___asan_gen_.42 = private unnamed_addr constant [18 x i8] c"ds1621_attributes\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 315, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"dev_attr_update_interval\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 307, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 272, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_temp1_input\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_min\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_temp1_max\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_min_alarm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_temp1_max_alarm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [16 x i8] c"dev_attr_alarms\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 309, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 229, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 197, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"DS1621_REG_TEMP\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 90, i32 17 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 310, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 311, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 312, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 313, i32 8 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [26 x i8] c"../drivers/hwmon/ds1621.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 306, i32 8 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__UNIQUE_ID_polarity289, ptr @__UNIQUE_ID_polaritytype288, ptr @__exitcall_ds1621_driver_exit, ptr @__initcall__kmod_ds1621__295_391_ds1621_driver_init6, ptr @__param_polarity, ptr @ds1621_driver_exit, ptr @polarity, ptr @ds1621_driver, ptr @.str, ptr @ds1621_id, ptr @ds1621_probe.__key, ptr @.str.1, ptr @ds1621_groups, ptr @ds1721_convrates, ptr @ds1621_group, ptr @ds1621_attributes, ptr @dev_attr_update_interval, ptr @.str.2, ptr @.str.3, ptr @sensor_dev_attr_temp1_input, ptr @sensor_dev_attr_temp1_min, ptr @sensor_dev_attr_temp1_max, ptr @sensor_dev_attr_temp1_min_alarm, ptr @sensor_dev_attr_temp1_max_alarm, ptr @dev_attr_alarms, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @DS1621_REG_TEMP, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @polarity to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_id to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1721_convrates to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ds1621_attributes to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_update_interval to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_temp1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_alarms to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DS1621_REG_TEMP to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1621_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ds1621_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ds1621_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ds1621_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ds1621_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 120, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  %update_lock = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @ds1621_probe.__key) #7
  %call1 = tail call ptr @i2c_match_id(ptr noundef nonnull @ds1621_id, ptr noundef %client) #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %kind = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %kind, align 4
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %call.i, align 4
  %call.i17 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext -84) #7
  %4 = trunc i32 %call.i17 to i8
  %conv2.i = and i8 %4, -2
  %5 = load i32, ptr @polarity, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.body.if.end12.i_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then9.i
  ]

do.body.if.end12.i_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %conv6.i = and i8 %4, -4
  br label %if.end12.i

if.then9.i:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i8 %conv2.i, 2
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then.i, %do.body.if.end12.i_crit_edge
  %new_conf.0.i = phi i8 [ %conv6.i, %if.then.i ], [ %7, %if.then9.i ], [ %conv2.i, %do.body.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp1(i8 %new_conf.0.i, i8 %4)
  %cmp15.not.i = icmp eq i8 %new_conf.0.i, %4
  br i1 %cmp15.not.i, label %if.end12.i.if.end19.i_crit_edge, label %if.then17.i

if.end12.i.if.end19.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call18.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext -84, i8 noundef zeroext %new_conf.0.i) #7
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end12.i.if.end19.i_crit_edge
  %8 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %kind, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %9, label %sw.default.i [
    i32 1, label %sw.bb.i
    i32 2, label %if.end19.i.sw.bb20.i_crit_edge
    i32 3, label %if.end19.i.sw.bb20.i_crit_edge18
    i32 4, label %if.end19.i.sw.bb20.i_crit_edge19
  ]

if.end19.i.sw.bb20.i_crit_edge19:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end19.i.sw.bb20.i_crit_edge18:                 ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

if.end19.i.sw.bb20.i_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20.i

sw.bb.i:                                          ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %update_interval.i = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 8
  %11 = ptrtoint ptr %update_interval.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 500, ptr %update_interval.i, align 4
  br label %ds1621_init_client.exit

sw.bb20.i:                                        ; preds = %if.end19.i.sw.bb20.i_crit_edge, %if.end19.i.sw.bb20.i_crit_edge18, %if.end19.i.sw.bb20.i_crit_edge19
  %and22.i = lshr i8 %new_conf.0.i, 2
  %12 = and i8 %and22.i, 3
  %idxprom.i = zext i8 %12 to i32
  %arrayidx.i = getelementptr [4 x i16], ptr @ds1721_convrates, i32 0, i32 %idxprom.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx.i, align 2
  %update_interval24.i = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %update_interval24.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %update_interval24.i, align 4
  %sub.i = xor i8 %12, 7
  br label %ds1621_init_client.exit

sw.default.i:                                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  %update_interval28.i = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 8
  %16 = ptrtoint ptr %update_interval28.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 750, ptr %update_interval28.i, align 4
  br label %ds1621_init_client.exit

ds1621_init_client.exit:                          ; preds = %sw.default.i, %sw.bb20.i, %sw.bb.i
  %.sink.i = phi i8 [ 7, %sw.default.i ], [ %sub.i, %sw.bb20.i ], [ 7, %sw.bb.i ]
  %sreg.0.i = phi i8 [ -18, %sw.default.i ], [ 81, %sw.bb20.i ], [ -18, %sw.bb.i ]
  %zbits29.i = getelementptr inbounds %struct.ds1621_data, ptr %call.i, i32 0, i32 7
  %17 = ptrtoint ptr %zbits29.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %.sink.i, ptr %zbits29.i, align 1
  %call30.i = tail call i32 @i2c_smbus_write_byte(ptr noundef %client, i8 noundef zeroext %sreg.0.i) #7
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call4 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ds1621_groups) #7
  %cmp.i.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call4 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %18, i32 0
  br label %cleanup

cleanup:                                          ; preds = %ds1621_init_client.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %ds1621_init_client.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @i2c_smbus_write_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @ds1621_attribute_visible(ptr nocapture noundef readonly %kobj, ptr noundef readonly %attr, i32 noundef %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %attr, @dev_attr_update_interval
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then:                                          ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %kind = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %kind to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %kind, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch = icmp ult i32 %3, 2
  br i1 %switch, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %mode = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %mode, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i16 [ %5, %if.end6 ], [ 0, %if.then.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %update_interval = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %update_interval to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %update_interval, align 4
  %conv = zext i16 %3 to i32
  %call1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef %conv) #7
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @update_interval_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %convrate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %convrate) #7
  %4 = ptrtoint ptr %convrate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %convrate, align 4, !annotation !76
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %convrate) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %while.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %5 = ptrtoint ptr %convrate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %convrate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 94, i32 %6)
  %cmp3 = icmp ugt i32 %6, 94
  br i1 %cmp3, label %while.body, label %while.cond.preheader.while.end_crit_edge

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 188, i32 %6)
  %cmp3.1 = icmp ugt i32 %6, 188
  br i1 %cmp3.1, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 375, i32 %6)
  %cmp3.2 = icmp ugt i32 %6, 375
  %spec.select = select i1 %cmp3.2, i32 3, i32 2
  br label %while.end

while.end:                                        ; preds = %while.body.1, %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %resol.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ %spec.select, %while.body.1 ]
  %update_lock = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %call5 = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -84) #7
  %conf = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 6
  %conv9 = and i32 %call5, 243
  %shl = shl nuw nsw i32 %resol.0.lcssa, 2
  %or = or i32 %conv9, %shl
  %conv12 = trunc i32 %or to i8
  %7 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv12, ptr %conf, align 2
  %call14 = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -84, i8 noundef zeroext %conv12) #7
  %arrayidx15 = getelementptr [4 x i16], ptr @ds1721_convrates, i32 0, i32 %resol.0.lcssa
  %8 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx15, align 2
  %update_interval = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %update_interval to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %update_interval, align 4
  %11 = trunc i32 %resol.0.lcssa to i8
  %conv16 = xor i8 %11, 7
  %zbits = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %zbits to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv16, ptr %zbits, align 1
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %while.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %convrate) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ds1621_update_client(ptr noundef %dev)
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %0 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.ds1621_data, ptr %call, i32 0, i32 5, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = sdiv i16 %3, 16
  %div.i = sext i16 %4 to i32
  %mul.i = mul nsw i32 %div.i, 625
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %3)
  %cmp.i = icmp sgt i16 %3, 15
  %cond.in.v.i = select i1 %cmp.i, i32 5, i32 -5
  %cond.in.i = add nsw i32 %mul.i, %cond.in.v.i
  %cond.i = sdiv i32 %cond.in.i, 10
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %cond.i)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ds1621_update_client(ptr nocapture noundef readonly %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %last_updated = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %update_interval = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %update_interval to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %update_interval, align 4
  %conv = zext i16 %7 to i32
  %add = add i32 %5, %conv
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %valid, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end53_crit_edge

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end53

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ds1621_update_client.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ds1621_update_client, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !78

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ds1621_update_client.__UNIQUE_ID_ddebug294, ptr noundef %dev9, ptr noundef nonnull @.str.8) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.then
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -84) #7
  %conv11 = trunc i32 %call10 to i8
  %conf = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %conf, align 2
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext -86) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  %conv.i = trunc i32 %call.i to i16
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #7
  %conv1.i = zext i16 %12 to i32
  %cond.i = select i1 %cmp.i, i32 %call.i, i32 %conv1.i
  %conv15 = trunc i32 %cond.i to i16
  %arrayidx16 = getelementptr %struct.ds1621_data, ptr %1, i32 0, i32 5, i32 0
  %13 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv15, ptr %arrayidx16, align 2
  %call.i.1 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext -94) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %cmp.i.1 = icmp slt i32 %call.i.1, 0
  %conv.i.1 = trunc i32 %call.i.1 to i16
  %14 = tail call i16 @llvm.bswap.i16(i16 %conv.i.1) #7
  %conv1.i.1 = zext i16 %14 to i32
  %cond.i.1 = select i1 %cmp.i.1, i32 %call.i.1, i32 %conv1.i.1
  %conv15.1 = trunc i32 %cond.i.1 to i16
  %arrayidx16.1 = getelementptr %struct.ds1621_data, ptr %1, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv15.1, ptr %arrayidx16.1, align 2
  %call.i.2 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %3, i8 noundef zeroext -95) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2)
  %cmp.i.2 = icmp slt i32 %call.i.2, 0
  %conv.i.2 = trunc i32 %call.i.2 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i.2) #7
  %conv1.i.2 = zext i16 %16 to i32
  %cond.i.2 = select i1 %cmp.i.2, i32 %call.i.2, i32 %conv1.i.2
  %conv15.2 = trunc i32 %cond.i.2 to i16
  %arrayidx16.2 = getelementptr %struct.ds1621_data, ptr %1, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx16.2 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv15.2, ptr %arrayidx16.2, align 2
  %18 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %conf, align 2
  %20 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx16, align 4
  %22 = ptrtoint ptr %arrayidx16.1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx16.1, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp24 = icmp ugt i16 %21, %23
  %24 = and i8 %19, -33
  %spec.select = select i1 %cmp24, i8 %24, i8 %19
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %conv15.2)
  %cmp36 = icmp ult i16 %21, %conv15.2
  %25 = and i8 %spec.select, -65
  %new_conf.1 = select i1 %cmp36, i8 %25, i8 %spec.select
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %new_conf.1)
  %cmp46.not = icmp eq i8 %19, %new_conf.1
  br i1 %cmp46.not, label %do.end.if.end50_crit_edge, label %if.then48

do.end.if.end50_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then48:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext -84, i8 noundef zeroext %new_conf.1) #7
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %do.end.if.end50_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %26 = load volatile i32, ptr @jiffies, align 128
  %27 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_updated, align 4
  %valid52 = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %valid52 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %valid52, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.end50, %lor.lhs.false.if.end53_crit_edge
  tail call void @mutex_unlock(ptr noundef %update_lock) #7
  ret ptr %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @temp_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !76
  %call.i = call i32 @_kstrtol(ptr noundef %buf, i32 noundef 10, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %update_lock = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %zbits = getelementptr inbounds %struct.ds1621_data, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %zbits to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %zbits, align 1
  %7 = call i32 @llvm.smax.i32(i32 %4, i32 -55000) #7
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 125000) #7
  %conv.i = zext i8 %6 to i32
  %sub.i = sub nsw i32 8, %conv.i
  %mul.i = shl nsw i32 %8, %sub.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp8.i = icmp sgt i32 %mul.i, 0
  %cond21.in.v.i = select i1 %cmp8.i, i32 500, i32 -500
  %cond21.in.i = add i32 %cond21.in.v.i, %mul.i
  %cond21.i = sdiv i32 %cond21.in.i, 1000
  %shl23.i = shl i32 %cond21.i, %conv.i
  %conv24.i = trunc i32 %shl23.i to i16
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %9 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.ds1621_data, ptr %1, i32 0, i32 5, i32 %10
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv24.i, ptr %arrayidx, align 2
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = load i32, ptr %index, align 4
  %arrayidx4 = getelementptr [3 x i8], ptr @DS1621_REG_TEMP, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx4, align 1
  %arrayidx7 = getelementptr %struct.ds1621_data, ptr %1, i32 0, i32 5, i32 %14
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx7, align 2
  %19 = call i16 @llvm.bswap.i16(i16 %18) #7
  %call.i21 = call i32 @i2c_smbus_write_word_data(ptr noundef %13, i8 noundef zeroext %16, i16 noundef zeroext %19) #7
  call void @mutex_unlock(ptr noundef %update_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtol(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarm_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ds1621_update_client(ptr noundef %dev)
  %conf = getelementptr inbounds %struct.ds1621_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %conf, align 2
  %conv = zext i8 %1 to i32
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %and = and i32 %3, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %lnot.ext)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alarms_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %da, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ds1621_update_client(ptr noundef %dev)
  %conf = getelementptr inbounds %struct.ds1621_data, ptr %call, i32 0, i32 6
  %0 = ptrtoint ptr %conf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %conf, align 2
  %2 = and i8 %1, 96
  %and = zext i8 %2 to i32
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.5, i32 noundef %and)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !18, !20, !22, !24, !25, !27, !29, !31, !33, !34, !36, !38, !40, !41, !43, !45, !46, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__param_polarity, !1, !"__param_polarity", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ds1621.c", i32 41, i32 1}
!2 = !{ptr @__UNIQUE_ID_polaritytype288, !1, !"__UNIQUE_ID_polaritytype288", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_polarity289, !4, !"__UNIQUE_ID_polarity289", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ds1621.c", i32 42, i32 1}
!5 = !{ptr @__initcall__kmod_ds1621__295_391_ds1621_driver_init6, !6, !"__initcall__kmod_ds1621__295_391_ds1621_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ds1621.c", i32 391, i32 1}
!7 = !{ptr @__exitcall_ds1621_driver_exit, !6, !"__exitcall_ds1621_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author296, !9, !"__UNIQUE_ID_author296", i1 false, i1 false}
!9 = !{!"../drivers/hwmon/ds1621.c", i32 393, i32 1}
!10 = !{ptr @__UNIQUE_ID_description297, !11, !"__UNIQUE_ID_description297", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ds1621.c", i32 394, i32 1}
!12 = !{ptr @__UNIQUE_ID_file298, !13, !"__UNIQUE_ID_file298", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ds1621.c", i32 395, i32 1}
!14 = !{ptr @__UNIQUE_ID_license299, !13, !"__UNIQUE_ID_license299", i1 false, i1 false}
!15 = !{ptr @__param_str_polarity, !1, !"__param_str_polarity", i1 false, i1 false}
!16 = !{ptr @polarity, !17, !"polarity", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/ds1621.c", i32 40, i32 12}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/hwmon/ds1621.c", i32 385, i32 11}
!20 = !{ptr @ds1621_driver, !21, !"ds1621_driver", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/ds1621.c", i32 382, i32 26}
!22 = !{ptr @ds1621_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ds1621.c", i32 357, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ds1721_convrates, !26, !"ds1721_convrates", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ds1621.c", i32 76, i32 29}
!27 = !{ptr @ds1621_groups, !28, !"ds1621_groups", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ds1621.c", i32 343, i32 1}
!29 = !{ptr @ds1621_group, !30, !"ds1621_group", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/ds1621.c", i32 339, i32 37}
!31 = !{ptr @.str.2, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/hwmon/ds1621.c", i32 307, i32 8}
!33 = !{ptr @dev_attr_update_interval, !32, !"dev_attr_update_interval", i1 false, i1 false}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ds1621.c", i32 272, i32 35}
!36 = !{ptr @ds1621_attributes, !37, !"ds1621_attributes", i1 false, i1 false}
!37 = !{!"../drivers/hwmon/ds1621.c", i32 315, i32 26}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/ds1621.c", i32 309, i32 8}
!40 = !{ptr @sensor_dev_attr_temp1_input, !39, !"sensor_dev_attr_temp1_input", i1 false, i1 false}
!41 = !{ptr @.str.5, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ds1621.c", i32 229, i32 22}
!43 = !{ptr @.str.6, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/ds1621.c", i32 197, i32 3}
!45 = !{ptr @.str.7, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.8, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ds1621_update_client.__UNIQUE_ID_ddebug294, !44, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!48 = !{ptr @DS1621_REG_TEMP, !49, !"DS1621_REG_TEMP", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/ds1621.c", i32 90, i32 17}
!50 = !{ptr @.str.9, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ds1621.c", i32 310, i32 8}
!52 = !{ptr @sensor_dev_attr_temp1_min, !51, !"sensor_dev_attr_temp1_min", i1 false, i1 false}
!53 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/ds1621.c", i32 311, i32 8}
!55 = !{ptr @sensor_dev_attr_temp1_max, !54, !"sensor_dev_attr_temp1_max", i1 false, i1 false}
!56 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/ds1621.c", i32 312, i32 8}
!58 = !{ptr @sensor_dev_attr_temp1_min_alarm, !57, !"sensor_dev_attr_temp1_min_alarm", i1 false, i1 false}
!59 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ds1621.c", i32 313, i32 8}
!61 = !{ptr @sensor_dev_attr_temp1_max_alarm, !60, !"sensor_dev_attr_temp1_max_alarm", i1 false, i1 false}
!62 = !{ptr @.str.13, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/ds1621.c", i32 306, i32 8}
!64 = !{ptr @dev_attr_alarms, !63, !"dev_attr_alarms", i1 false, i1 false}
!65 = !{ptr @ds1621_id, !66, !"ds1621_id", i1 false, i1 false}
!66 = !{!"../drivers/hwmon/ds1621.c", i32 371, i32 35}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"auto-init"}
!77 = !{i8 0, i8 2}
!78 = !{i64 2148962770, i64 2148962775, i64 2148962788, i64 2148962832, i64 2148962866, i64 2148962887}
