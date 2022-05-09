; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc4261.c_pt.bc'
source_filename = "../drivers/hwmon/ltc4261.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.sensor_device_attribute = type { %struct.device_attribute, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ltc4261_data = type { ptr, %struct.mutex, i8, i32, [10 x i8] }

@__initcall__kmod_ltc4261__289_240_ltc4261_driver_init6 = internal global ptr @ltc4261_driver_init, section ".initcall6.init", align 4
@ltc4261_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc4261_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc4261_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc4261_driver_exit = internal global ptr @ltc4261_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [50 x i8] c"ltc4261.author=Guenter Roeck <linux@roeck-us.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [35 x i8] c"ltc4261.description=LTC4261 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [35 x i8] c"ltc4261.file=drivers/hwmon/ltc4261\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [20 x i8] c"ltc4261.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc4261\00", [24 x i8] zeroinitializer }, align 32
@ltc4261_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc4261\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ltc4261_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to read status register\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ltc4261_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ltc4261.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ltc4261_probe._entry_ptr = internal global ptr @ltc4261_probe._entry, section ".printk_index", align 4
@ltc4261_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ltc4261_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ltc4261_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ltc4261_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltc4261_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltc4261_attrs = internal global { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min_alarm, ptr @sensor_dev_attr_in2_max_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_max_alarm, ptr null], [60 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_value_show, ptr null }, i32 8 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_bool_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_bool_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_value_show, ptr null }, i32 6 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_min_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_bool_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_bool_show, ptr null }, i32 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_max_alarm = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4261_bool_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ltc4261_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltc4261_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read ADC value: error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ltc4261_get_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in1_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_min_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"in2_max_alarm\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"curr1_max_alarm\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 6, i64 8]
@___asan_gen_.18 = private unnamed_addr constant [15 x i8] c"ltc4261_driver\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 232, i32 26 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 234, i32 14 }
@___asan_gen_.24 = private unnamed_addr constant [11 x i8] c"ltc4261_id\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 224, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 204, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 213, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"ltc4261_groups\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"ltc4261_group\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 191, i32 1 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"ltc4261_attrs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 178, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_min_alarm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in1_max_alarm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in2_min_alarm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_in2_max_alarm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [32 x i8] c"sensor_dev_attr_curr1_max_alarm\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 156, i32 8 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 133, i32 25 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 72, i32 5 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 167, i32 8 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 168, i32 8 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 157, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 169, i32 8 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 170, i32 8 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 173, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.115 = private constant [27 x i8] c"../drivers/hwmon/ltc4261.c\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.115, i32 176, i32 8 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_ltc4261_driver_exit, ptr @__initcall__kmod_ltc4261__289_240_ltc4261_driver_init6, ptr @ltc4261_driver_exit, ptr @ltc4261_probe._entry, ptr @ltc4261_probe._entry_ptr, ptr @ltc4261_driver, ptr @.str, ptr @ltc4261_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ltc4261_probe.__key, ptr @.str.6, ptr @ltc4261_groups, ptr @ltc4261_group, ptr @ltc4261_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in1_min_alarm, ptr @sensor_dev_attr_in1_max_alarm, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_in2_min_alarm, ptr @sensor_dev_attr_in2_max_alarm, ptr @sensor_dev_attr_curr1_input, ptr @sensor_dev_attr_curr1_max_alarm, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4261_attrs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_min_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_max_alarm to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4261_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc4261_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc4261_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc4261_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4261_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.1) #7
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 116, i32 noundef 3520) #4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.ltc4261_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ltc4261_probe.__key) #4
  %call14 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext 1, i8 noundef zeroext 0) #4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call15 = tail call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ltc4261_groups) #4
  %cmp.i.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call15 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ %spec.select.i, %if.end9 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4261_value_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ltc4261_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %index, align 4
  %conv = trunc i32 %2 to i8
  %idxprom.i = and i32 %2, 255
  %arrayidx.i = getelementptr %struct.ltc4261_data, ptr %call, i32 0, i32 4, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %idxprom.i, 1
  %arrayidx3.i = getelementptr %struct.ltc4261_data, ptr %call, i32 0, i32 4, i32 %add.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i, align 1
  %7 = lshr i8 %6, 6
  %8 = zext i8 %7 to i32
  %add5.i = or i32 %shl.i, %8
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %land.end.i [
    i8 8, label %if.end.sw.bb.i_crit_edge
    i8 6, label %if.end.sw.bb.i_crit_edge9
    i8 4, label %sw.bb7.i
  ]

if.end.sw.bb.i_crit_edge9:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end.sw.bb.i_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.end.sw.bb.i_crit_edge, %if.end.sw.bb.i_crit_edge9
  %mul.i = mul nuw nsw i32 %add5.i, 25
  %div.i = udiv i32 %mul.i, 10
  br label %ltc4261_get_value.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul8.i = mul nuw nsw i32 %add5.i, 625
  %div9.i = udiv i32 %mul8.i, 10
  br label %ltc4261_get_value.exit

land.end.i:                                       ; preds = %if.end
  %.b50.i = load i1, ptr @ltc4261_get_value.__already_done, align 1
  br i1 %.b50.i, label %land.end.i.ltc4261_get_value.exit_crit_edge, label %if.then.i, !prof !73

land.end.i.ltc4261_get_value.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltc4261_get_value.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ltc4261_get_value.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 114, i32 noundef 9, ptr noundef null) #4
  br label %ltc4261_get_value.exit

ltc4261_get_value.exit:                           ; preds = %if.then.i, %land.end.i.ltc4261_get_value.exit_crit_edge, %sw.bb7.i, %sw.bb.i
  %val.0.i = phi i32 [ %div9.i, %sw.bb7.i ], [ %div.i, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.ltc4261_get_value.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %val.0.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ltc4261_get_value.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %ltc4261_get_value.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ltc4261_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %update_lock = getelementptr inbounds %struct.ltc4261_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #4
  %last_updated = getelementptr inbounds %struct.ltc4261_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %valid = getelementptr inbounds %struct.ltc4261_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup31_crit_edge

lor.lhs.false.cleanup31_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup31

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %call3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.then.do.body_crit_edge, label %for.inc, !prof !75

if.then.do.body_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %for.inc.8.do.body_crit_edge, %for.inc.7.do.body_crit_edge, %for.inc.6.do.body_crit_edge, %for.inc.5.do.body_crit_edge, %for.inc.4.do.body_crit_edge, %for.inc.3.do.body_crit_edge, %for.inc.2.do.body_crit_edge, %for.inc.1.do.body_crit_edge, %for.inc.do.body_crit_edge, %if.then.do.body_crit_edge
  %call3.lcssa = phi i32 [ %call3, %if.then.do.body_crit_edge ], [ %call3.1, %for.inc.do.body_crit_edge ], [ %call3.2, %for.inc.1.do.body_crit_edge ], [ %call3.3, %for.inc.2.do.body_crit_edge ], [ %call3.4, %for.inc.3.do.body_crit_edge ], [ %call3.5, %for.inc.4.do.body_crit_edge ], [ %call3.6, %for.inc.5.do.body_crit_edge ], [ %call3.7, %for.inc.6.do.body_crit_edge ], [ %call3.8, %for.inc.7.do.body_crit_edge ], [ %call3.9, %for.inc.8.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc4261_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc4261_update_device, %cleanup.thread)) #4
          to label %if.then19 [label %cleanup.thread], !srcloc !76

if.then19:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc4261_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call3.lcssa) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then19, %do.body
  %9 = inttoptr i32 %call3.lcssa to ptr
  br label %cleanup31.sink.split

for.inc:                                          ; preds = %if.then
  %conv23 = trunc i32 %call3 to i8
  %arrayidx = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv23, ptr %arrayidx, align 1
  %call3.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %cmp4.1 = icmp slt i32 %call3.1, 0
  br i1 %cmp4.1, label %for.inc.do.body_crit_edge, label %for.inc.1, !prof !75

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.1:                                        ; preds = %for.inc
  %conv23.1 = trunc i32 %call3.1 to i8
  %arrayidx.1 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv23.1, ptr %arrayidx.1, align 1
  %call3.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %cmp4.2 = icmp slt i32 %call3.2, 0
  br i1 %cmp4.2, label %for.inc.1.do.body_crit_edge, label %for.inc.2, !prof !75

for.inc.1.do.body_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.2:                                        ; preds = %for.inc.1
  %conv23.2 = trunc i32 %call3.2 to i8
  %arrayidx.2 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv23.2, ptr %arrayidx.2, align 1
  %call3.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %cmp4.3 = icmp slt i32 %call3.3, 0
  br i1 %cmp4.3, label %for.inc.2.do.body_crit_edge, label %for.inc.3, !prof !75

for.inc.2.do.body_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.3:                                        ; preds = %for.inc.2
  %conv23.3 = trunc i32 %call3.3 to i8
  %arrayidx.3 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv23.3, ptr %arrayidx.3, align 1
  %call3.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %cmp4.4 = icmp slt i32 %call3.4, 0
  br i1 %cmp4.4, label %for.inc.3.do.body_crit_edge, label %for.inc.4, !prof !75

for.inc.3.do.body_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.4:                                        ; preds = %for.inc.3
  %conv23.4 = trunc i32 %call3.4 to i8
  %arrayidx.4 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv23.4, ptr %arrayidx.4, align 1
  %call3.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %cmp4.5 = icmp slt i32 %call3.5, 0
  br i1 %cmp4.5, label %for.inc.4.do.body_crit_edge, label %for.inc.5, !prof !75

for.inc.4.do.body_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.5:                                        ; preds = %for.inc.4
  %conv23.5 = trunc i32 %call3.5 to i8
  %arrayidx.5 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv23.5, ptr %arrayidx.5, align 1
  %call3.6 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %cmp4.6 = icmp slt i32 %call3.6, 0
  br i1 %cmp4.6, label %for.inc.5.do.body_crit_edge, label %for.inc.6, !prof !75

for.inc.5.do.body_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.6:                                        ; preds = %for.inc.5
  %conv23.6 = trunc i32 %call3.6 to i8
  %arrayidx.6 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv23.6, ptr %arrayidx.6, align 1
  %call3.7 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.7)
  %cmp4.7 = icmp slt i32 %call3.7, 0
  br i1 %cmp4.7, label %for.inc.6.do.body_crit_edge, label %for.inc.7, !prof !75

for.inc.6.do.body_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.7:                                        ; preds = %for.inc.6
  %conv23.7 = trunc i32 %call3.7 to i8
  %arrayidx.7 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 7
  %17 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv23.7, ptr %arrayidx.7, align 1
  %call3.8 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.8)
  %cmp4.8 = icmp slt i32 %call3.8, 0
  br i1 %cmp4.8, label %for.inc.7.do.body_crit_edge, label %for.inc.8, !prof !75

for.inc.7.do.body_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.8:                                        ; preds = %for.inc.7
  %conv23.8 = trunc i32 %call3.8 to i8
  %arrayidx.8 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv23.8, ptr %arrayidx.8, align 1
  %call3.9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.9)
  %cmp4.9 = icmp slt i32 %call3.9, 0
  br i1 %cmp4.9, label %for.inc.8.do.body_crit_edge, label %for.inc.9, !prof !75

for.inc.8.do.body_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  %conv23.9 = trunc i32 %call3.9 to i8
  %arrayidx.9 = getelementptr %struct.ltc4261_data, ptr %1, i32 0, i32 4, i32 9
  %19 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv23.9, ptr %arrayidx.9, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %21 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_updated, align 4
  br label %cleanup31.sink.split

cleanup31.sink.split:                             ; preds = %for.inc.9, %cleanup.thread
  %.sink = phi i8 [ 0, %cleanup.thread ], [ 1, %for.inc.9 ]
  %ret.3.ph = phi ptr [ %9, %cleanup.thread ], [ %1, %for.inc.9 ]
  %valid21 = getelementptr inbounds %struct.ltc4261_data, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %valid21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %.sink, ptr %valid21, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %cleanup31.sink.split, %lor.lhs.false.cleanup31_crit_edge
  %ret.3 = phi ptr [ %1, %lor.lhs.false.cleanup31_crit_edge ], [ %ret.3.ph, %cleanup31.sink.split ]
  tail call void @mutex_unlock(ptr noundef %update_lock) #4
  ret ptr %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4261_bool_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ltc4261_update_device(ptr noundef %dev)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ltc4261_data, ptr %call, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  %index = getelementptr inbounds %struct.sensor_device_attribute, ptr %da, i32 0, i32 1
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  %5 = trunc i32 %4 to i8
  %conv3 = and i8 %2, %5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool.not = icmp eq i8 %conv3, 0
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %neg = xor i8 %conv3, -1
  %call7 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 1, i8 noundef zeroext %neg) #4
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv3)
  %tobool10.not = icmp ne i8 %conv3, 0
  %cond = zext i1 %tobool10.not to i32
  %call11 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %cond) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call11, %if.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !30, !32, !33, !35, !37, !38, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_ltc4261__289_240_ltc4261_driver_init6, !1, !"__initcall__kmod_ltc4261__289_240_ltc4261_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc4261.c", i32 240, i32 1}
!2 = !{ptr @__exitcall_ltc4261_driver_exit, !1, !"__exitcall_ltc4261_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc4261.c", i32 242, i32 1}
!5 = !{ptr @__UNIQUE_ID_description291, !6, !"__UNIQUE_ID_description291", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc4261.c", i32 243, i32 1}
!7 = !{ptr @__UNIQUE_ID_file292, !8, !"__UNIQUE_ID_file292", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc4261.c", i32 244, i32 1}
!9 = !{ptr @__UNIQUE_ID_license293, !8, !"__UNIQUE_ID_license293", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ltc4261.c", i32 234, i32 14}
!12 = !{ptr @ltc4261_driver, !13, !"ltc4261_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ltc4261.c", i32 232, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ltc4261.c", i32 204, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ltc4261_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ltc4261_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ltc4261_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ltc4261.c", i32 213, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ltc4261_groups, !26, !"ltc4261_groups", i1 false, i1 false}
!26 = !{!"../drivers/hwmon/ltc4261.c", i32 191, i32 1}
!27 = !{ptr @ltc4261_group, !26, !"ltc4261_group", i1 false, i1 false}
!28 = !{ptr @ltc4261_attrs, !29, !"ltc4261_attrs", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/ltc4261.c", i32 178, i32 26}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/ltc4261.c", i32 156, i32 8}
!32 = !{ptr @sensor_dev_attr_in1_input, !31, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/ltc4261.c", i32 133, i32 25}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/ltc4261.c", i32 72, i32 5}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ltc4261_update_device.__UNIQUE_ID_ddebug288, !36, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/ltc4261.c", i32 114, i32 3}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/hwmon/ltc4261.c", i32 167, i32 8}
!43 = !{ptr @sensor_dev_attr_in1_min_alarm, !42, !"sensor_dev_attr_in1_min_alarm", i1 false, i1 false}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/hwmon/ltc4261.c", i32 168, i32 8}
!46 = !{ptr @sensor_dev_attr_in1_max_alarm, !45, !"sensor_dev_attr_in1_max_alarm", i1 false, i1 false}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ltc4261.c", i32 157, i32 8}
!49 = !{ptr @sensor_dev_attr_in2_input, !48, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/hwmon/ltc4261.c", i32 169, i32 8}
!52 = !{ptr @sensor_dev_attr_in2_min_alarm, !51, !"sensor_dev_attr_in2_min_alarm", i1 false, i1 false}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/ltc4261.c", i32 170, i32 8}
!55 = !{ptr @sensor_dev_attr_in2_max_alarm, !54, !"sensor_dev_attr_in2_max_alarm", i1 false, i1 false}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/ltc4261.c", i32 173, i32 8}
!58 = !{ptr @sensor_dev_attr_curr1_input, !57, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!59 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hwmon/ltc4261.c", i32 176, i32 8}
!61 = !{ptr @sensor_dev_attr_curr1_max_alarm, !60, !"sensor_dev_attr_curr1_max_alarm", i1 false, i1 false}
!62 = !{ptr @ltc4261_id, !63, !"ltc4261_id", i1 false, i1 false}
!63 = !{!"../drivers/hwmon/ltc4261.c", i32 224, i32 35}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i8 0, i8 2}
!75 = !{!"branch_weights", i32 1, i32 2000}
!76 = !{i64 2148696017, i64 2148696022, i64 2148696035, i64 2148696079, i64 2148696113, i64 2148696134}
