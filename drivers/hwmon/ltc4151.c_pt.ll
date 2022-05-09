; ModuleID = '/llk/IR_all_yes/drivers/hwmon/ltc4151.c_pt.bc'
source_filename = "../drivers/hwmon/ltc4151.c"
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
%struct.ltc4151_data = type { ptr, %struct.mutex, i8, i32, i32, [6 x i8] }

@__initcall__kmod_ltc4151__290_212_ltc4151_driver_init6 = internal global ptr @ltc4151_driver_init, section ".initcall6.init", align 4
@ltc4151_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr null, ptr @ltc4151_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ltc4151_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ltc4151_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ltc4151_driver_exit = internal global ptr @ltc4151_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [50 x i8] c"ltc4151.author=Per Dalen <per.dalen@appeartv.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [35 x i8] c"ltc4151.description=LTC4151 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [35 x i8] c"ltc4151.file=drivers/hwmon/ltc4151\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [20 x i8] c"ltc4151.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ltc4151\00", [24 x i8] zeroinitializer }, align 32
@ltc4151_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lltc,ltc4151\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ltc4151_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ltc4151\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"shunt-resistor-micro-ohms\00", [38 x i8] zeroinitializer }, align 32
@ltc4151_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@ltc4151_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ltc4151_group, ptr null], [24 x i8] zeroinitializer }, align 32
@ltc4151_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ltc4151_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@ltc4151_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_curr1_input, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.3, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4151_value_show, ptr null }, i32 2 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_in2_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4151_value_show, ptr null }, i32 4 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_curr1_input = internal global { %struct.sensor_device_attribute, [32 x i8] } { %struct.sensor_device_attribute { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ltc4151_value_show, ptr null }, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in1_input\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ltc4151_update_device.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.7, i8 0, i8 15, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ltc4151_update_device\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/ltc4151.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Starting ltc4151 update\0A\00", [39 x i8] zeroinitializer }, align 32
@ltc4151_update_device.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.8, i8 0, i8 18, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to read ADC value: error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@ltc4151_get_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"in2_input\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"curr1_input\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 2, i64 4]
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"ltc4151_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 203, i32 26 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 205, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"ltc4151_match\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 196, i32 49 }
@___asan_gen_.20 = private unnamed_addr constant [11 x i8] c"ltc4151_id\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 190, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 173, i32 6 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 182, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"ltc4151_groups\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"ltc4151_group\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 155, i32 1 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"ltc4151_attrs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 147, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in1_input\00", align 1
@___asan_gen_.44 = private unnamed_addr constant [26 x i8] c"sensor_dev_attr_in2_input\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_curr1_input\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 137, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 131, i32 25 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 63, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 71, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 138, i32 8 }
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [27 x i8] c"../drivers/hwmon/ltc4151.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 141, i32 8 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ltc4151_driver_exit, ptr @__initcall__kmod_ltc4151__290_212_ltc4151_driver_init6, ptr @ltc4151_driver_exit, ptr @ltc4151_driver, ptr @.str, ptr @ltc4151_match, ptr @ltc4151_id, ptr @.str.1, ptr @ltc4151_probe.__key, ptr @.str.2, ptr @ltc4151_groups, ptr @ltc4151_group, ptr @ltc4151_attrs, ptr @sensor_dev_attr_in1_input, ptr @sensor_dev_attr_in2_input, ptr @sensor_dev_attr_curr1_input, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ltc4151_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_in2_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_curr1_input to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4151_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ltc4151_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ltc4151_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ltc4151_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4151_probe(ptr noundef %client) #2 align 64 {
entry:
  %shunt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 8
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %shunt) #4
  %2 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %shunt, align 4, !annotation !58
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %1) #4
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev2, i32 noundef 116, i32 noundef 3520) #4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i31 = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.1, ptr noundef nonnull %shunt, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i31)
  %tobool9.not = icmp sgt i32 %call.i.i31, -1
  br i1 %tobool9.not, label %if.end11, label %if.end11.thread

if.end11.thread:                                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %shunt to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1000, ptr %shunt, align 4
  br label %if.end13

if.end11:                                         ; preds = %if.end6
  %10 = ptrtoint ptr %shunt to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load i32, ptr %shunt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 0
  br i1 %cmp, label %if.end11.cleanup_crit_edge, label %if.end11.if.end13_crit_edge

if.end11.if.end13_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.end11.if.end13_crit_edge, %if.end11.thread
  %11 = phi i32 [ 1000, %if.end11.thread ], [ %.pr, %if.end11.if.end13_crit_edge ]
  %shunt14 = getelementptr inbounds %struct.ltc4151_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %shunt14 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %shunt14, align 4
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %call.i, align 4
  %update_lock = getelementptr inbounds %struct.ltc4151_data, ptr %call.i, i32 0, i32 1
  call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @ltc4151_probe.__key) #4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call16 = call ptr @devm_hwmon_device_register_with_groups(ptr noundef %dev2, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @ltc4151_groups) #4
  %cmp.i.i = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call16 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end13 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %shunt) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ltc4151_value_show(ptr noundef %dev, ptr nocapture noundef readonly %da, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @ltc4151_update_device(ptr noundef %dev)
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
  %arrayidx.i = getelementptr %struct.ltc4151_data, ptr %call, i32 0, i32 5, i32 %idxprom.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %4 to i32
  %shl.i = shl nuw nsw i32 %conv.i, 4
  %add.i = add nuw nsw i32 %idxprom.i, 1
  %arrayidx3.i = getelementptr %struct.ltc4151_data, ptr %call, i32 0, i32 5, i32 %add.i
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3.i, align 1
  %7 = lshr i8 %6, 4
  %8 = zext i8 %7 to i32
  %add5.i = or i32 %shl.i, %8
  %9 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %conv, label %land.end.i [
    i8 4, label %sw.bb.i
    i8 0, label %sw.bb7.i
    i8 2, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %div55.i = lshr i32 %add5.i, 1
  br label %ltc4151_get_value.exit

sw.bb7.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul9.i = mul nuw nsw i32 %add5.i, 20000
  %shunt.i = getelementptr inbounds %struct.ltc4151_data, ptr %call, i32 0, i32 4
  %10 = ptrtoint ptr %shunt.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %shunt.i, align 4
  %div10.i = udiv i32 %mul9.i, %11
  br label %ltc4151_get_value.exit

sw.bb11.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %mul12.i = mul nuw nsw i32 %add5.i, 25
  br label %ltc4151_get_value.exit

land.end.i:                                       ; preds = %if.end
  %.b56.i = load i1, ptr @ltc4151_get_value.__already_done, align 1
  br i1 %.b56.i, label %land.end.i.ltc4151_get_value.exit_crit_edge, label %if.then.i, !prof !59

land.end.i.ltc4151_get_value.exit_crit_edge:      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ltc4151_get_value.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @ltc4151_get_value.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 112, i32 noundef 9, ptr noundef null) #4
  br label %ltc4151_get_value.exit

ltc4151_get_value.exit:                           ; preds = %if.then.i, %land.end.i.ltc4151_get_value.exit_crit_edge, %sw.bb11.i, %sw.bb7.i, %sw.bb.i
  %val.0.i = phi i32 [ %mul12.i, %sw.bb11.i ], [ %div10.i, %sw.bb7.i ], [ %div55.i, %sw.bb.i ], [ 0, %if.then.i ], [ 0, %land.end.i.ltc4151_get_value.exit_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.4, i32 noundef %val.0.i) #4
  br label %cleanup

cleanup:                                          ; preds = %ltc4151_get_value.exit, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call4, %ltc4151_get_value.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ltc4151_update_device(ptr noundef %dev) unnamed_addr #2 align 64 {
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
  %update_lock = getelementptr inbounds %struct.ltc4151_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #4
  %last_updated = getelementptr inbounds %struct.ltc4151_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %last_updated to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_updated, align 4
  %add = add i32 %5, 16
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
  %valid = getelementptr inbounds %struct.ltc4151_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %valid, align 4, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.cleanup48_crit_edge

lor.lhs.false.cleanup48_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup48

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc4151_update_device.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc4151_update_device, %do.end)) #4
          to label %if.then7 [label %do.end], !srcloc !61

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %dev8 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc4151_update_device.__UNIQUE_ID_ddebug288, ptr noundef %dev8, ptr noundef nonnull @.str.7) #4
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.then
  %call10 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %do.end.do.body20_crit_edge, label %for.inc, !prof !62

do.end.do.body20_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

do.body20:                                        ; preds = %for.inc.4.do.body20_crit_edge, %for.inc.3.do.body20_crit_edge, %for.inc.2.do.body20_crit_edge, %for.inc.1.do.body20_crit_edge, %for.inc.do.body20_crit_edge, %do.end.do.body20_crit_edge
  %call10.lcssa = phi i32 [ %call10, %do.end.do.body20_crit_edge ], [ %call10.1, %for.inc.do.body20_crit_edge ], [ %call10.2, %for.inc.1.do.body20_crit_edge ], [ %call10.3, %for.inc.2.do.body20_crit_edge ], [ %call10.4, %for.inc.3.do.body20_crit_edge ], [ %call10.5, %for.inc.4.do.body20_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ltc4151_update_device.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ltc4151_update_device, %cleanup.thread)) #4
          to label %if.then34 [label %cleanup.thread], !srcloc !61

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ltc4151_update_device.__UNIQUE_ID_ddebug289, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call10.lcssa) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then34, %do.body20
  %9 = inttoptr i32 %call10.lcssa to ptr
  br label %cleanup48

for.inc:                                          ; preds = %do.end
  %conv40 = trunc i32 %call10 to i8
  %arrayidx = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv40, ptr %arrayidx, align 1
  %call10.1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp slt i32 %call10.1, 0
  br i1 %cmp11.1, label %for.inc.do.body20_crit_edge, label %for.inc.1, !prof !62

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.inc.1:                                        ; preds = %for.inc
  %conv40.1 = trunc i32 %call10.1 to i8
  %arrayidx.1 = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv40.1, ptr %arrayidx.1, align 1
  %call10.2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp11.2 = icmp slt i32 %call10.2, 0
  br i1 %cmp11.2, label %for.inc.1.do.body20_crit_edge, label %for.inc.2, !prof !62

for.inc.1.do.body20_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.inc.2:                                        ; preds = %for.inc.1
  %conv40.2 = trunc i32 %call10.2 to i8
  %arrayidx.2 = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv40.2, ptr %arrayidx.2, align 1
  %call10.3 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.3)
  %cmp11.3 = icmp slt i32 %call10.3, 0
  br i1 %cmp11.3, label %for.inc.2.do.body20_crit_edge, label %for.inc.3, !prof !62

for.inc.2.do.body20_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.inc.3:                                        ; preds = %for.inc.2
  %conv40.3 = trunc i32 %call10.3 to i8
  %arrayidx.3 = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv40.3, ptr %arrayidx.3, align 1
  %call10.4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.4)
  %cmp11.4 = icmp slt i32 %call10.4, 0
  br i1 %cmp11.4, label %for.inc.3.do.body20_crit_edge, label %for.inc.4, !prof !62

for.inc.3.do.body20_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.inc.4:                                        ; preds = %for.inc.3
  %conv40.4 = trunc i32 %call10.4 to i8
  %arrayidx.4 = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 4
  %14 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv40.4, ptr %arrayidx.4, align 1
  %call10.5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.5)
  %cmp11.5 = icmp slt i32 %call10.5, 0
  br i1 %cmp11.5, label %for.inc.4.do.body20_crit_edge, label %for.inc.5, !prof !62

for.inc.4.do.body20_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body20

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %conv40.5 = trunc i32 %call10.5 to i8
  %arrayidx.5 = getelementptr %struct.ltc4151_data, ptr %1, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv40.5, ptr %arrayidx.5, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %17 = ptrtoint ptr %last_updated to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %last_updated, align 4
  %valid42 = getelementptr inbounds %struct.ltc4151_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %valid42 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %valid42, align 4
  br label %cleanup48

cleanup48:                                        ; preds = %for.inc.5, %cleanup.thread, %lor.lhs.false.cleanup48_crit_edge
  %ret.3 = phi ptr [ %1, %lor.lhs.false.cleanup48_crit_edge ], [ %1, %for.inc.5 ], [ %9, %cleanup.thread ]
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
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !22, !24, !26, !27, !29, !31, !32, !33, !34, !36, !37, !39, !41, !42, !44, !45, !47}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_ltc4151__290_212_ltc4151_driver_init6, !1, !"__initcall__kmod_ltc4151__290_212_ltc4151_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/ltc4151.c", i32 212, i32 1}
!2 = !{ptr @__exitcall_ltc4151_driver_exit, !1, !"__exitcall_ltc4151_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/ltc4151.c", i32 214, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/ltc4151.c", i32 215, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/ltc4151.c", i32 216, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/ltc4151.c", i32 205, i32 11}
!12 = !{ptr @ltc4151_driver, !13, !"ltc4151_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/ltc4151.c", i32 203, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/ltc4151.c", i32 173, i32 6}
!16 = !{ptr @ltc4151_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/hwmon/ltc4151.c", i32 182, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ltc4151_groups, !20, !"ltc4151_groups", i1 false, i1 false}
!20 = !{!"../drivers/hwmon/ltc4151.c", i32 155, i32 1}
!21 = !{ptr @ltc4151_group, !20, !"ltc4151_group", i1 false, i1 false}
!22 = !{ptr @ltc4151_attrs, !23, !"ltc4151_attrs", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/ltc4151.c", i32 147, i32 26}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/ltc4151.c", i32 137, i32 8}
!26 = !{ptr @sensor_dev_attr_in1_input, !25, !"sensor_dev_attr_in1_input", i1 false, i1 false}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/hwmon/ltc4151.c", i32 131, i32 25}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/hwmon/ltc4151.c", i32 63, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ltc4151_update_device.__UNIQUE_ID_ddebug288, !30, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/hwmon/ltc4151.c", i32 71, i32 5}
!36 = !{ptr @ltc4151_update_device.__UNIQUE_ID_ddebug289, !35, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!37 = distinct !{null, !38, !"__already_done", i1 false, i1 false}
!38 = !{!"../drivers/hwmon/ltc4151.c", i32 112, i32 3}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/hwmon/ltc4151.c", i32 138, i32 8}
!41 = !{ptr @sensor_dev_attr_in2_input, !40, !"sensor_dev_attr_in2_input", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/hwmon/ltc4151.c", i32 141, i32 8}
!44 = !{ptr @sensor_dev_attr_curr1_input, !43, !"sensor_dev_attr_curr1_input", i1 false, i1 false}
!45 = !{ptr @ltc4151_match, !46, !"ltc4151_match", i1 false, i1 false}
!46 = !{!"../drivers/hwmon/ltc4151.c", i32 196, i32 49}
!47 = !{ptr @ltc4151_id, !48, !"ltc4151_id", i1 false, i1 false}
!48 = !{!"../drivers/hwmon/ltc4151.c", i32 190, i32 35}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"auto-init"}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i8 0, i8 2}
!61 = !{i64 2148694634, i64 2148694639, i64 2148694652, i64 2148694696, i64 2148694730, i64 2148694751}
!62 = !{!"branch_weights", i32 1, i32 2000}
