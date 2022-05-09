; ModuleID = '/llk/IR_all_yes/drivers/hwmon/adt7411.c_pt.bc'
source_filename = "../drivers/hwmon/adt7411.c"
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
%struct.hwmon_chip_info = type { ptr, ptr }
%struct.hwmon_ops = type { ptr, ptr, ptr, ptr }
%struct.hwmon_channel_info = type { i32, ptr }
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
%struct.adt7411_data = type { %struct.mutex, %struct.mutex, i32, i32, ptr, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_adt7411__302_716_adt7411_driver_init6 = internal global ptr @adt7411_driver_init, section ".initcall6.init", align 4
@adt7411_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 1, ptr null, ptr null, ptr @adt7411_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @adt7411_id, ptr @adt7411_detect, ptr @normal_i2c, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_adt7411_driver_exit = internal global ptr @adt7411_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [66 x i8] c"adt7411.author=Sascha Hauer, Wolfram Sang <kernel@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [35 x i8] c"adt7411.description=ADT7411 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [35 x i8] c"adt7411.file=drivers/hwmon/adt7411\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [23 x i8] c"adt7411.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adt7411\00", [24 x i8] zeroinitializer }, align 32
@adt7411_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"adt7411\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@normal_i2c = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 72, i16 74, i16 75, i16 -2], [24 x i8] zeroinitializer }, align 32
@adt7411_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->device_lock\00", [45 x i8] zeroinitializer }, align 32
@adt7411_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&data->update_lock\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@adt7411_chip_info = internal constant { %struct.hwmon_chip_info, [24 x i8] } { %struct.hwmon_chip_info { ptr @adt7411_hwmon_ops, ptr @adt7411_info }, [24 x i8] zeroinitializer }, align 32
@adt7411_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @adt7411_group, ptr null], [24 x i8] zeroinitializer }, align 32
@adt7411_hwmon_ops = internal constant { %struct.hwmon_ops, [16 x i8] } { %struct.hwmon_ops { ptr @adt7411_is_visible, ptr @adt7411_read, ptr null, ptr @adt7411_write }, [16 x i8] zeroinitializer }, align 32
@adt7411_info = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.compoundliteral.4, ptr @.compoundliteral.6, ptr null], [20 x i8] zeroinitializer }, align 32
@adt7411_in_alarm_reg = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01\00\00\00\00\01\01\01\01", [23 x i8] zeroinitializer }, align 32
@adt7411_in_alarm_bits = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\10\04 @\80\01\02\04\08", [23 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [10 x i32], [56 x i8] } { [10 x i32] [i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 2062, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 2, ptr @.compoundliteral }, [24 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [3 x i32], [20 x i8] } { [3 x i32] [i32 98466, i32 622754, i32 0], [20 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.hwmon_channel_info, [24 x i8] } { %struct.hwmon_channel_info { i32 1, ptr @.compoundliteral.5 }, [24 x i8] zeroinitializer }, align 32
@adt7411_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @adt7411_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@adt7411_attrs = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @sensor_dev_attr_no_average, ptr @sensor_dev_attr_fast_sampling, ptr @sensor_dev_attr_adc_ref_vdd, ptr null], [16 x i8] zeroinitializer }, align 32
@sensor_dev_attr_no_average = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7411_show_bit, ptr @adt7411_set_bit }, i8 25, i8 32 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_fast_sampling = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7411_show_bit, ptr @adt7411_set_bit }, i8 26, i8 1 }, [32 x i8] zeroinitializer }, align 32
@sensor_dev_attr_adc_ref_vdd = internal global { %struct.sensor_device_attribute_2, [32 x i8] } { %struct.sensor_device_attribute_2 { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @adt7411_show_bit, ptr @adt7411_set_bit }, i8 26, i8 16 }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"no_average\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fast_sampling\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"adc_ref_vdd\00", [20 x i8] zeroinitializer }, align 32
@adt7411_detect.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.13, i8 0, i8 -111, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"adt7411_detect\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/hwmon/adt7411.c\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Wrong manufacturer ID. Got %d, expected %d\0A\00", [52 x i8] zeroinitializer }, align 32
@adt7411_detect.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.12, ptr @.str.14, i8 0, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wrong device ID. Got %d, expected %d\0A\00", [58 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.16 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 7, i64 15, i64 16, i64 19]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@__sancov_gen_cov_switch_values.19 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 5, i64 7, i64 15, i64 16, i64 19]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 16, i64 19]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 11]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"adt7411_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 705, i32 26 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 707, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"adt7411_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 699, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [11 x i8] c"normal_i2c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 75, i32 29 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 682, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 683, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [18 x i8] c"adt7411_chip_info\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 664, i32 37 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"adt7411_groups\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"adt7411_hwmon_ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 658, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"adt7411_info\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 639, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"adt7411_in_alarm_reg\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 77, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"adt7411_in_alarm_bits\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 89, i32 17 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [14 x i8] c"adt7411_group\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 213, i32 1 }
@___asan_gen_.75 = private unnamed_addr constant [14 x i8] c"adt7411_attrs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 207, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"sensor_dev_attr_no_average\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"sensor_dev_attr_fast_sampling\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"sensor_dev_attr_adc_ref_vdd\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 203, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 172, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 204, i32 8 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 205, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 579, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [27 x i8] c"../drivers/hwmon/adt7411.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 587, i32 3 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_adt7411_driver_exit, ptr @__initcall__kmod_adt7411__302_716_adt7411_driver_init6, ptr @adt7411_driver_exit, ptr @adt7411_driver, ptr @.str, ptr @adt7411_id, ptr @normal_i2c, ptr @adt7411_probe.__key, ptr @.str.1, ptr @adt7411_probe.__key.2, ptr @.str.3, ptr @adt7411_chip_info, ptr @adt7411_groups, ptr @adt7411_hwmon_ops, ptr @adt7411_info, ptr @adt7411_in_alarm_reg, ptr @adt7411_in_alarm_bits, ptr @.compoundliteral, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @adt7411_group, ptr @adt7411_attrs, ptr @sensor_dev_attr_no_average, ptr @sensor_dev_attr_fast_sampling, ptr @sensor_dev_attr_adc_ref_vdd, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @normal_i2c to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_chip_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_hwmon_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_in_alarm_reg to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_in_alarm_bits to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adt7411_attrs to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_no_average to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_fast_sampling to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sensor_dev_attr_adc_ref_vdd to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @adt7411_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @adt7411_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @adt7411_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_probe(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 200, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %client2 = getelementptr inbounds %struct.adt7411_data, ptr %call.i, i32 0, i32 4
  %1 = ptrtoint ptr %client2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %client, ptr %client2, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @adt7411_probe.__key) #8
  %update_lock = getelementptr inbounds %struct.adt7411_data, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %update_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @adt7411_probe.__key.2) #8
  %2 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client2, align 4
  %call.i26 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %cmp.i = icmp slt i32 %call.i26, 0
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %4 = trunc i32 %call.i26 to i8
  %5 = and i8 %4, -15
  %conv4.i = or i8 %5, 8
  %6 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client2, align 4
  %call6.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext 26, i8 noundef zeroext %conv4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.cleanup_crit_edge, label %if.end10.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %client2, align 4
  %call12.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %9, i8 noundef zeroext 24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.i = icmp slt i32 %call12.i, 0
  br i1 %cmp13.i, label %if.end10.i.cleanup_crit_edge, label %adt7411_init_device.exit

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

adt7411_init_device.exit:                         ; preds = %if.end10.i
  %use_ext_temp.i = getelementptr inbounds %struct.adt7411_data, ptr %call.i, i32 0, i32 5
  %10 = trunc i32 %call12.i to i8
  %11 = lshr i8 %10, 2
  %12 = and i8 %11, 1
  %13 = ptrtoint ptr %use_ext_temp.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %use_ext_temp.i, align 4
  %14 = and i8 %10, -12
  %conv27.i = or i8 %14, 9
  %15 = ptrtoint ptr %client2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client2, align 4
  %call29.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %16, i8 noundef zeroext 24, i8 noundef zeroext %conv27.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp = icmp slt i32 %call29.i, 0
  br i1 %cmp, label %adt7411_init_device.exit.cleanup_crit_edge, label %if.end8

adt7411_init_device.exit.cleanup_crit_edge:       ; preds = %adt7411_init_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %adt7411_init_device.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %next_update = getelementptr inbounds %struct.adt7411_data, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %next_update to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %next_update, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call9 = tail call ptr @devm_hwmon_device_register_with_info(ptr noundef %dev1, ptr noundef %name, ptr noundef nonnull %call.i, ptr noundef nonnull @adt7411_chip_info, ptr noundef nonnull @adt7411_groups) #8
  %cmp.i.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %19 = ptrtoint ptr %call9 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %19, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %adt7411_init_device.exit.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end8 ], [ -12, %entry.cleanup_crit_edge ], [ %call29.i, %adt7411_init_device.exit.cleanup_crit_edge ], [ %call12.i, %if.end10.i.cleanup_crit_edge ], [ %call6.i, %if.end.i.cleanup_crit_edge ], [ %call.i26, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_detect(ptr noundef %client, ptr noundef %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 1572864
  call void @__sanitizer_cov_trace_const_cmp4(i32 1572864, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1572864
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 65
  br i1 %cmp2.not, label %if.end11, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7411_detect.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7411_detect, %cleanup)) #8
          to label %if.then9 [label %cleanup], !srcloc !67

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7411_detect.__UNIQUE_ID_ddebug300, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %call1, i32 noundef 65) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call12)
  %cmp15.not = icmp eq i32 %call12, 2
  br i1 %cmp15.not, label %if.end36, label %do.body17

do.body17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adt7411_detect.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@adt7411_detect, %cleanup)) #8
          to label %if.then31 [label %cleanup], !srcloc !67

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #10
  %dev32 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adt7411_detect.__UNIQUE_ID_ddebug301, ptr noundef %dev32, ptr noundef nonnull @.str.14, i32 noundef %call12, i32 noundef 2) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  %call37 = tail call i32 @strlcpy(ptr noundef %info, ptr noundef nonnull @.str, i32 noundef 20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31, %do.body17, %if.then9, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.then9 ], [ -19, %if.then31 ], [ -19, %do.body ], [ -19, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_info(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i16 @adt7411_is_visible(ptr nocapture noundef readonly %_data, i32 noundef %type, i32 noundef %attr, i32 noundef %channel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp = icmp eq i32 %channel, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %channel)
  %cmp1 = icmp sgt i32 %channel, 2
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %sw.bb.lor.end_crit_edge, label %lor.rhs

sw.bb.lor.end_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %use_ext_temp = getelementptr inbounds %struct.adt7411_data, ptr %_data, i32 0, i32 5
  %1 = ptrtoint ptr %use_ext_temp to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %use_ext_temp, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %sw.bb.lor.end_crit_edge
  %3 = phi i1 [ true, %sw.bb.lor.end_crit_edge ], [ %tobool.not, %lor.rhs ]
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %attr, label %lor.end.cleanup_crit_edge [
    i32 1, label %lor.end.sw.bb2_crit_edge
    i32 11, label %lor.end.sw.bb2_crit_edge38
    i32 2, label %lor.end.sw.bb4_crit_edge
    i32 3, label %lor.end.sw.bb4_crit_edge39
  ]

lor.end.sw.bb4_crit_edge39:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

lor.end.sw.bb4_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

lor.end.sw.bb2_crit_edge38:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

lor.end.sw.bb2_crit_edge:                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

lor.end.cleanup_crit_edge:                        ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb2:                                           ; preds = %lor.end.sw.bb2_crit_edge, %lor.end.sw.bb2_crit_edge38
  %conv = select i1 %3, i16 292, i16 0
  br label %cleanup

sw.bb4:                                           ; preds = %lor.end.sw.bb4_crit_edge, %lor.end.sw.bb4_crit_edge39
  %conv8 = select i1 %3, i16 420, i16 0
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp10 = icmp eq i32 %channel, 0
  br i1 %cmp10, label %sw.bb9.lor.end16_crit_edge, label %lor.rhs12

sw.bb9.lor.end16_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end16

lor.rhs12:                                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #10
  %use_ext_temp13 = getelementptr inbounds %struct.adt7411_data, ptr %_data, i32 0, i32 5
  %5 = ptrtoint ptr %use_ext_temp13 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %use_ext_temp13, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14 = icmp ne i8 %6, 0
  br label %lor.end16

lor.end16:                                        ; preds = %lor.rhs12, %sw.bb9.lor.end16_crit_edge
  %7 = phi i1 [ true, %sw.bb9.lor.end16_crit_edge ], [ %tobool14, %lor.rhs12 ]
  %8 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %attr, label %lor.end16.cleanup_crit_edge [
    i32 1, label %lor.end16.sw.bb18_crit_edge
    i32 15, label %lor.end16.sw.bb18_crit_edge40
    i32 16, label %lor.end16.sw.bb18_crit_edge41
    i32 19, label %lor.end16.sw.bb18_crit_edge42
    i32 5, label %lor.end16.sw.bb23_crit_edge
    i32 7, label %lor.end16.sw.bb23_crit_edge43
  ]

lor.end16.sw.bb23_crit_edge43:                    ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

lor.end16.sw.bb23_crit_edge:                      ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb23

lor.end16.sw.bb18_crit_edge42:                    ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

lor.end16.sw.bb18_crit_edge41:                    ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

lor.end16.sw.bb18_crit_edge40:                    ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

lor.end16.sw.bb18_crit_edge:                      ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb18

lor.end16.cleanup_crit_edge:                      ; preds = %lor.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb18:                                          ; preds = %lor.end16.sw.bb18_crit_edge, %lor.end16.sw.bb18_crit_edge40, %lor.end16.sw.bb18_crit_edge41, %lor.end16.sw.bb18_crit_edge42
  %conv22 = select i1 %7, i16 292, i16 0
  br label %cleanup

sw.bb23:                                          ; preds = %lor.end16.sw.bb23_crit_edge, %lor.end16.sw.bb23_crit_edge43
  %conv27 = select i1 %7, i16 420, i16 0
  br label %cleanup

cleanup:                                          ; preds = %sw.bb23, %sw.bb18, %lor.end16.cleanup_crit_edge, %sw.bb4, %sw.bb2, %lor.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i16 [ %conv27, %sw.bb23 ], [ %conv22, %sw.bb18 ], [ %conv8, %sw.bb4 ], [ %conv, %sw.bb2 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.end16.cleanup_crit_edge ], [ 0, %lor.end.cleanup_crit_edge ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_read(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call fastcc i32 @adt7411_read_in_vdd(ptr noundef %dev, i32 noundef %attr, ptr noundef %val) #8
  br label %return

if.else.i:                                        ; preds = %sw.bb
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %client1.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client1.i.i, align 4
  %sub.i.i = add i32 %channel, -1
  %update_lock.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  %client1.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %client1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %next_update.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %next_update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %next_update.i.i.i, align 4
  %sub.i.i.i = sub i32 %9, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.if.end.i.i_crit_edge

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %call2.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %8, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.then.i.i.i.adt7411_read_in_chan.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %and.i.i.i = and i32 %call2.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %vref_cached10.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %6, i32 0, i32 3
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call fastcc i32 @adt7411_read_in_vdd(ptr noundef %dev, i32 noundef 1, ptr noundef %vref_cached10.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %call6.i.i.i, 0
  br i1 %cmp7.i.i.i, label %if.then5.i.i.i.adt7411_read_in_chan.exit.i_crit_edge, label %if.then5.i.i.i.if.end11.i.i.i_crit_edge

if.then5.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

if.then5.i.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %vref_cached10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2250, ptr %vref_cached10.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then5.i.i.i.if.end11.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %13, 100
  %14 = ptrtoint ptr %next_update.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i.i.i, ptr %next_update.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end11.i.i.i, %if.else.i.if.end.i.i_crit_edge
  %15 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %attr, label %if.end.i.i.adt7411_read_in_chan.exit.i_crit_edge [
    i32 1, label %sw.bb.i.i
    i32 11, label %sw.bb42.i.i
    i32 2, label %cond.true.i.i
    i32 3, label %cond.false21.i.i
  ]

if.end.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

sw.bb.i.i:                                        ; preds = %if.end.i.i
  %16 = lshr i32 %sub.i.i, 2
  %17 = trunc i32 %16 to i8
  %conv.i.i = add i8 %17, 4
  %18 = shl i32 %sub.i.i, 1
  %conv5.i.i = and i32 %18, 6
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %20, i32 noundef 0) #8
  %call1.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %conv.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i67.i.i = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp.i67.i.i, label %sw.bb.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge, label %if.end.i70.i.i

sw.bb.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge: ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread.i.i

if.end.i70.i.i:                                   ; preds = %sw.bb.i.i
  %21 = trunc i32 %channel to i8
  %conv4.i.i = add i8 %21, 7
  %call2.i68.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %conv4.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i68.i.i)
  %cmp3.i69.i.i = icmp sgt i32 %call2.i68.i.i, -1
  br i1 %cmp3.i69.i.i, label %adt7411_read_10_bit.exit.i.i, label %if.end.i70.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge

if.end.i70.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge: ; preds = %if.end.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread.i.i

adt7411_read_10_bit.exit.thread.i.i:              ; preds = %if.end.i70.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge, %sw.bb.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge
  %val.0.i.ph.i.i = phi i32 [ %call2.i68.i.i, %if.end.i70.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge ], [ %call1.i.i.i, %sw.bb.i.i.adt7411_read_10_bit.exit.thread.i.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %20) #8
  br label %adt7411_read_in_chan.exit.i

adt7411_read_10_bit.exit.i.i:                     ; preds = %if.end.i70.i.i
  %shr15.i.i.i = lshr i32 %call1.i.i.i, %conv5.i.i
  %and.i71.i.i = and i32 %shr15.i.i.i, 3
  %shl.i.i.i = shl i32 %call2.i68.i.i, 2
  %or.i.i.i = or i32 %shl.i.i.i, %and.i71.i.i
  tail call void @mutex_unlock(ptr noundef %20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp7.i.i = icmp slt i32 %or.i.i.i, 0
  br i1 %cmp7.i.i, label %adt7411_read_10_bit.exit.i.i.adt7411_read_in_chan.exit.i_crit_edge, label %if.end10.i.i

adt7411_read_10_bit.exit.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %adt7411_read_10_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

if.end10.i.i:                                     ; preds = %adt7411_read_10_bit.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vref_cached.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 3
  %22 = ptrtoint ptr %vref_cached.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %vref_cached.i.i, align 4
  %mul11.i.i = mul i32 %23, %or.i.i.i
  %div.i.i = sdiv i32 %mul11.i.i, 1024
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div.i.i, ptr %val, align 4
  br label %adt7411_read_in_chan.exit.i

cond.true.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp15.i.i = icmp sgt i32 %channel, 1
  br i1 %cmp15.i.i, label %cond.true17.i.i, label %cond.true.i.i.cond.end31.i.i_crit_edge

cond.true.i.i.cond.end31.i.i_crit_edge:           ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end31.i.i

cond.true17.i.i:                                  ; preds = %cond.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub18.i.i = shl nuw i32 %channel, 1
  %add20.i.i = add i32 %sub18.i.i, 40
  br label %cond.end31.i.i

cond.false21.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp22.i.i = icmp sgt i32 %channel, 1
  br i1 %cmp22.i.i, label %cond.true24.i.i, label %cond.false21.i.i.cond.end31.i.i_crit_edge

cond.false21.i.i.cond.end31.i.i_crit_edge:        ; preds = %cond.false21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end31.i.i

cond.true24.i.i:                                  ; preds = %cond.false21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub25.i.i = shl nuw i32 %channel, 1
  %add27.i.i = add i32 %sub25.i.i, 39
  br label %cond.end31.i.i

cond.end31.i.i:                                   ; preds = %cond.true24.i.i, %cond.false21.i.i.cond.end31.i.i_crit_edge, %cond.true17.i.i, %cond.true.i.i.cond.end31.i.i_crit_edge
  %cond32.i.i = phi i32 [ %add20.i.i, %cond.true17.i.i ], [ 40, %cond.true.i.i.cond.end31.i.i_crit_edge ], [ %add27.i.i, %cond.true24.i.i ], [ 39, %cond.false21.i.i.cond.end31.i.i_crit_edge ]
  %conv33.i.i = trunc i32 %cond32.i.i to i8
  %call34.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext %conv33.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i.i)
  %cmp35.i.i = icmp slt i32 %call34.i.i, 0
  br i1 %cmp35.i.i, label %cond.end31.i.i.adt7411_read_in_chan.exit.i_crit_edge, label %if.end38.i.i

cond.end31.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %cond.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

if.end38.i.i:                                     ; preds = %cond.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %vref_cached39.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 3
  %25 = ptrtoint ptr %vref_cached39.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vref_cached39.i.i, align 4
  %mul40.i.i = mul i32 %26, %call34.i.i
  %div41.i.i = sdiv i32 %mul40.i.i, 256
  %27 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div41.i.i, ptr %val, align 4
  br label %adt7411_read_in_chan.exit.i

sw.bb42.i.i:                                      ; preds = %if.end.i.i
  %28 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i, align 4
  %client1.i74.i.i = getelementptr inbounds %struct.adt7411_data, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %client1.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %client1.i74.i.i, align 4
  %arrayidx.i.i.i = getelementptr [9 x i8], ptr @adt7411_in_alarm_reg, i32 0, i32 %channel
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx.i.i.i, align 1
  %call2.i75.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %31, i8 noundef zeroext %33) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i75.i.i)
  %cmp.i76.i.i = icmp slt i32 %call2.i75.i.i, 0
  br i1 %cmp.i76.i.i, label %sw.bb42.i.i.adt7411_read_in_chan.exit.i_crit_edge, label %if.end.i79.i.i

sw.bb42.i.i.adt7411_read_in_chan.exit.i_crit_edge: ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_in_chan.exit.i

if.end.i79.i.i:                                   ; preds = %sw.bb42.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx3.i.i.i = getelementptr [9 x i8], ptr @adt7411_in_alarm_bits, i32 0, i32 %channel
  %34 = ptrtoint ptr %arrayidx3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx3.i.i.i, align 1
  %conv.i77.i.i = zext i8 %35 to i32
  %and.i78.i.i = and i32 %call2.i75.i.i, %conv.i77.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i78.i.i)
  %tobool.i.i.i = icmp ne i32 %and.i78.i.i, 0
  %lnot.ext.i.i.i = zext i1 %tobool.i.i.i to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %lnot.ext.i.i.i, ptr %val, align 4
  br label %adt7411_read_in_chan.exit.i

adt7411_read_in_chan.exit.i:                      ; preds = %if.end.i79.i.i, %sw.bb42.i.i.adt7411_read_in_chan.exit.i_crit_edge, %if.end38.i.i, %cond.end31.i.i.adt7411_read_in_chan.exit.i_crit_edge, %if.end10.i.i, %adt7411_read_10_bit.exit.i.i.adt7411_read_in_chan.exit.i_crit_edge, %adt7411_read_10_bit.exit.thread.i.i, %if.end.i.i.adt7411_read_in_chan.exit.i_crit_edge, %if.then5.i.i.i.adt7411_read_in_chan.exit.i_crit_edge, %if.then.i.i.i.adt7411_read_in_chan.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call34.i.i, %cond.end31.i.i.adt7411_read_in_chan.exit.i_crit_edge ], [ 0, %if.end38.i.i ], [ %or.i.i.i, %adt7411_read_10_bit.exit.i.i.adt7411_read_in_chan.exit.i_crit_edge ], [ 0, %if.end10.i.i ], [ -95, %if.end.i.i.adt7411_read_in_chan.exit.i_crit_edge ], [ %val.0.i.ph.i.i, %adt7411_read_10_bit.exit.thread.i.i ], [ 0, %if.end.i79.i.i ], [ %call2.i75.i.i, %sw.bb42.i.i.adt7411_read_in_chan.exit.i_crit_edge ], [ %call6.i.i.i, %if.then5.i.i.i.adt7411_read_in_chan.exit.i_crit_edge ], [ %call2.i.i.i, %if.then.i.i.i.adt7411_read_in_chan.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i = getelementptr inbounds %struct.adt7411_data, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %client1.i, align 4
  %41 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 19, label %sw.bb1.sw.bb33.i_crit_edge
    i32 16, label %sw.bb1.sw.bb33.i_crit_edge11
    i32 15, label %sw.bb1.sw.bb33.i_crit_edge12
    i32 5, label %sw.bb1.cond.end17.i_crit_edge
    i32 7, label %cond.false14.i
  ]

sw.bb1.cond.end17.i_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.i

sw.bb1.sw.bb33.i_crit_edge12:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i

sw.bb1.sw.bb33.i_crit_edge11:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i

sw.bb1.sw.bb33.i_crit_edge:                       ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb33.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i = icmp eq i32 %channel, 0
  %conv.i = select i1 %tobool.not.i, i8 3, i8 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %40, i32 0, i32 4, i32 8
  %42 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %driver_data.i.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %43, i32 noundef 0) #8
  %call1.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp.i.i, label %sw.bb.i.adt7411_read_10_bit.exit.thread.i_crit_edge, label %if.end.i.i7

sw.bb.i.adt7411_read_10_bit.exit.thread.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread.i

if.end.i.i7:                                      ; preds = %sw.bb.i
  %conv4.i = select i1 %tobool.not.i, i8 7, i8 8
  %call2.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext %conv4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp3.i.i = icmp sgt i32 %call2.i.i, -1
  br i1 %cmp3.i.i, label %adt7411_read_10_bit.exit.i, label %if.end.i.i7.adt7411_read_10_bit.exit.thread.i_crit_edge

if.end.i.i7.adt7411_read_10_bit.exit.thread.i_crit_edge: ; preds = %if.end.i.i7
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread.i

adt7411_read_10_bit.exit.thread.i:                ; preds = %if.end.i.i7.adt7411_read_10_bit.exit.thread.i_crit_edge, %sw.bb.i.adt7411_read_10_bit.exit.thread.i_crit_edge
  %val.0.i.ph.i = phi i32 [ %call2.i.i, %if.end.i.i7.adt7411_read_10_bit.exit.thread.i_crit_edge ], [ %call1.i.i, %sw.bb.i.adt7411_read_10_bit.exit.thread.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %43) #8
  br label %return

adt7411_read_10_bit.exit.i:                       ; preds = %if.end.i.i7
  %and.i.i = and i32 %call1.i.i, 3
  %shl.i.i = shl i32 %call2.i.i, 2
  %or.i.i = or i32 %shl.i.i, %and.i.i
  tail call void @mutex_unlock(ptr noundef %43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i8 = icmp slt i32 %or.i.i, 0
  br i1 %cmp.i8, label %adt7411_read_10_bit.exit.i.return_crit_edge, label %if.end.i

adt7411_read_10_bit.exit.i.return_crit_edge:      ; preds = %adt7411_read_10_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i:                                         ; preds = %adt7411_read_10_bit.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = and i32 %call2.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool7.not.i = icmp eq i32 %44, 0
  %sub.i = add nsw i32 %or.i.i, -1024
  %cond8.i = select i1 %tobool7.not.i, i32 %or.i.i, i32 %sub.i
  %mul.i = mul i32 %cond8.i, 250
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul.i, ptr %val, align 4
  br label %return

cond.false14.i:                                   ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end17.i

cond.end17.i:                                     ; preds = %cond.false14.i, %sw.bb1.cond.end17.i_crit_edge
  %.sink.i = phi i32 [ 37, %cond.false14.i ], [ 38, %sw.bb1.cond.end17.i_crit_edge ]
  %mul15.i = shl i32 %channel, 1
  %add16.i = add i32 %.sink.i, %mul15.i
  %conv19.i = trunc i32 %add16.i to i8
  %call20.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext %conv19.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %cond.end17.i.return_crit_edge, label %if.end24.i

cond.end17.i.return_crit_edge:                    ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end24.i:                                       ; preds = %cond.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %and25.i = and i32 %call20.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  %sub28.i = add nsw i32 %call20.i, -256
  %cond31.i = select i1 %tobool26.not.i, i32 %call20.i, i32 %sub28.i
  %mul32.i = mul i32 %cond31.i, 1000
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul32.i, ptr %val, align 4
  br label %return

sw.bb33.i:                                        ; preds = %sw.bb1.sw.bb33.i_crit_edge, %sw.bb1.sw.bb33.i_crit_edge11, %sw.bb1.sw.bb33.i_crit_edge12
  %call2.i61.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %40, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i61.i)
  %cmp.i62.i = icmp slt i32 %call2.i61.i, 0
  br i1 %cmp.i62.i, label %sw.bb33.i.return_crit_edge, label %if.end.i63.i

sw.bb33.i.return_crit_edge:                       ; preds = %sw.bb33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end.i63.i:                                     ; preds = %sw.bb33.i
  %47 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %attr, label %if.end.i63.i.return_crit_edge [
    i32 15, label %sw.bb.i.i9
    i32 16, label %sw.bb3.i.i
    i32 19, label %if.end.i63.i.sw.epilog.i.i_crit_edge
  ]

if.end.i63.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end.i63.i.return_crit_edge:                    ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb.i.i9:                                       ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool.not.i.i = icmp eq i32 %channel, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 2, i32 8
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %tobool4.not.i.i = icmp eq i32 %channel, 0
  %cond5.i.i = select i1 %tobool4.not.i.i, i32 1, i32 4
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %sw.bb.i.i9, %if.end.i63.i.sw.epilog.i.i_crit_edge
  %bit.0.i.i = phi i32 [ %cond5.i.i, %sw.bb3.i.i ], [ %cond.i.i, %sw.bb.i.i9 ], [ 16, %if.end.i63.i.sw.epilog.i.i_crit_edge ]
  %and.i64.i = and i32 %bit.0.i.i, %call2.i61.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i64.i)
  %tobool7.i.i = icmp ne i32 %and.i64.i, 0
  %lnot.ext.i.i = zext i1 %tobool7.i.i to i32
  %48 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %lnot.ext.i.i, ptr %val, align 4
  br label %return

return:                                           ; preds = %sw.epilog.i.i, %if.end.i63.i.return_crit_edge, %sw.bb33.i.return_crit_edge, %if.end24.i, %cond.end17.i.return_crit_edge, %if.end.i, %adt7411_read_10_bit.exit.i.return_crit_edge, %adt7411_read_10_bit.exit.thread.i, %sw.bb1.return_crit_edge, %adt7411_read_in_chan.exit.i, %if.then.i, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %call.i, %if.then.i ], [ %ret.0.i.i, %adt7411_read_in_chan.exit.i ], [ 0, %if.end24.i ], [ 0, %if.end.i ], [ %or.i.i, %adt7411_read_10_bit.exit.i.return_crit_edge ], [ %call20.i, %cond.end17.i.return_crit_edge ], [ -95, %sw.bb1.return_crit_edge ], [ %val.0.i.ph.i, %adt7411_read_10_bit.exit.thread.i ], [ 0, %sw.epilog.i.i ], [ %call2.i61.i, %sw.bb33.i.return_crit_edge ], [ -95, %if.end.i63.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_write(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %attr, i32 noundef %channel, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %type, label %entry.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %channel)
  %cmp.i = icmp eq i32 %channel, 0
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %driver_data.i.i.i, align 4
  %client1.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %client1.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %client1.i.i, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb
  %5 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #8
  %6 = tail call i32 @llvm.umin.i32(i32 %5, i32 6972) #8
  %mul.i.i = shl nuw nsw i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp9.not.i.i = icmp eq i32 %6, 0
  %add.i.i = add nuw nsw i32 %mul.i.i, 3500
  %div1539.i.i = udiv i32 %add.i.i, 7000
  %phi.cast.i.i = trunc i32 %div1539.i.i to i8
  %cond20.i.i = select i1 %cmp9.not.i.i, i8 0, i8 %phi.cast.i.i
  %7 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %attr, label %if.then.i.return_crit_edge [
    i32 2, label %if.then.i.sw.epilog.i.i_crit_edge
    i32 3, label %sw.bb21.i.i
  ]

if.then.i.sw.epilog.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb21.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb21.i.i, %if.then.i.sw.epilog.i.i_crit_edge
  %reg.0.i.i = phi i8 [ 35, %sw.bb21.i.i ], [ 36, %if.then.i.sw.epilog.i.i_crit_edge ]
  %call24.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %reg.0.i.i, i8 noundef zeroext %cond20.i.i) #8
  br label %return

if.else.i:                                        ; preds = %sw.bb
  %update_lock.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %update_lock.i.i, i32 noundef 0) #8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %client1.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %client1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client1.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %next_update.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %next_update.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_update.i.i.i, align 4
  %sub.i.i.i = sub i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i.i.i, -1
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.if.end.i.i_crit_edge

if.else.i.if.end.i.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.else.i
  %call2.i.i.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %11, i8 noundef zeroext 26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.then.i.i.i.adt7411_write_in_chan.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.adt7411_write_in_chan.exit.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_write_in_chan.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i
  %and.i.i.i = and i32 %call2.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  %vref_cached10.i.i.i = getelementptr inbounds %struct.adt7411_data, ptr %9, i32 0, i32 3
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then5.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end.i.i.i
  %call6.i.i.i = tail call fastcc i32 @adt7411_read_in_vdd(ptr noundef %dev, i32 noundef 1, ptr noundef %vref_cached10.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i.i)
  %cmp7.i.i.i = icmp slt i32 %call6.i.i.i, 0
  br i1 %cmp7.i.i.i, label %if.then5.i.i.i.adt7411_write_in_chan.exit.i_crit_edge, label %if.then5.i.i.i.if.end11.i.i.i_crit_edge

if.then5.i.i.i.if.end11.i.i.i_crit_edge:          ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i.i

if.then5.i.i.i.adt7411_write_in_chan.exit.i_crit_edge: ; preds = %if.then5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_write_in_chan.exit.i

if.else.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %vref_cached10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2250, ptr %vref_cached10.i.i.i, align 4
  br label %if.end11.i.i.i

if.end11.i.i.i:                                   ; preds = %if.else.i.i.i, %if.then5.i.i.i.if.end11.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %16, 100
  %17 = ptrtoint ptr %next_update.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add.i.i.i, ptr %next_update.i.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end11.i.i.i, %if.else.i.if.end.i.i_crit_edge
  %18 = tail call i32 @llvm.smax.i32(i32 %val, i32 0) #8
  %vref_cached.i.i = getelementptr inbounds %struct.adt7411_data, ptr %2, i32 0, i32 3
  %19 = ptrtoint ptr %vref_cached.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vref_cached.i.i, align 4
  %mul.i8.i = mul i32 %20, 255
  %div.i.i = sdiv i32 %mul.i8.i, 256
  %21 = tail call i32 @llvm.smin.i32(i32 %18, i32 %div.i.i) #8
  %mul10.i.i = shl nsw i32 %21, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp13.i.i = icmp slt i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp14.i.i = icmp sgt i32 %20, 0
  %cmp16.i.i = xor i1 %cmp14.i.i, %cmp13.i.i
  %add.pn.v.v.i.i = select i1 %cmp16.i.i, i32 2, i32 -2
  %add.pn.v.i.i = sdiv i32 %20, %add.pn.v.v.i.i
  %add.pn.i.i = add i32 %mul10.i.i, %add.pn.v.i.i
  %cond25.i.i = sdiv i32 %add.pn.i.i, %20
  %22 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %attr, label %if.end.i.i.adt7411_write_in_chan.exit.i_crit_edge [
    i32 2, label %if.end.i.i.sw.epilog.i9.i_crit_edge
    i32 3, label %sw.bb35.i.i
  ]

if.end.i.i.sw.epilog.i9.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i9.i

if.end.i.i.adt7411_write_in_chan.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_write_in_chan.exit.i

sw.bb35.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i9.i

sw.epilog.i9.i:                                   ; preds = %sw.bb35.i.i, %if.end.i.i.sw.epilog.i9.i_crit_edge
  %.sink72.i.i = phi i32 [ 39, %sw.bb35.i.i ], [ 40, %if.end.i.i.sw.epilog.i9.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %channel)
  %cmp36.i.i = icmp sgt i32 %channel, 1
  %sub39.i.i = shl i32 %channel, 1
  %add41.i.i = select i1 %cmp36.i.i, i32 %sub39.i.i, i32 0
  %cond44.i.i = add i32 %.sink72.i.i, %add41.i.i
  %conv45.i.i = trunc i32 %cond44.i.i to i8
  %conv46.i.i = trunc i32 %cond25.i.i to i8
  %call47.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %4, i8 noundef zeroext %conv45.i.i, i8 noundef zeroext %conv46.i.i) #8
  br label %adt7411_write_in_chan.exit.i

adt7411_write_in_chan.exit.i:                     ; preds = %sw.epilog.i9.i, %if.end.i.i.adt7411_write_in_chan.exit.i_crit_edge, %if.then5.i.i.i.adt7411_write_in_chan.exit.i_crit_edge, %if.then.i.i.i.adt7411_write_in_chan.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call47.i.i, %sw.epilog.i9.i ], [ -95, %if.end.i.i.adt7411_write_in_chan.exit.i_crit_edge ], [ %call6.i.i.i, %if.then5.i.i.i.adt7411_write_in_chan.exit.i_crit_edge ], [ %call2.i.i.i, %if.then.i.i.i.adt7411_write_in_chan.exit.i_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %update_lock.i.i) #8
  br label %return

sw.bb1:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %driver_data.i.i, align 4
  %client1.i = getelementptr inbounds %struct.adt7411_data, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %client1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %client1.i, align 4
  %27 = tail call i32 @llvm.smax.i32(i32 %val, i32 -128000) #8
  %28 = tail call i32 @llvm.smin.i32(i32 %27, i32 127000) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp9.i = icmp sgt i32 %27, 0
  %cond20.in.v.i = select i1 %cmp9.i, i32 500, i32 -500
  %cond20.in.i = add nsw i32 %cond20.in.v.i, %28
  %cond20.i = sdiv i32 %cond20.in.i, 1000
  %29 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %attr, label %sw.bb1.return_crit_edge [
    i32 5, label %sw.bb1.sw.epilog.i_crit_edge
    i32 7, label %sw.bb22.i
  ]

sw.bb1.sw.epilog.i_crit_edge:                     ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.bb1.return_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb22.i:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb22.i, %sw.bb1.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 37, %sw.bb22.i ], [ 38, %sw.bb1.sw.epilog.i_crit_edge ]
  %mul23.i = shl i32 %channel, 1
  %add24.i = add i32 %.sink.i, %mul23.i
  %conv25.i = trunc i32 %add24.i to i8
  %conv26.i = trunc i32 %cond20.i to i8
  %call27.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext %conv25.i, i8 noundef zeroext %conv26.i) #8
  br label %return

return:                                           ; preds = %sw.epilog.i, %sw.bb1.return_crit_edge, %adt7411_write_in_chan.exit.i, %sw.epilog.i.i, %if.then.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -95, %entry.return_crit_edge ], [ %ret.0.i.i, %adt7411_write_in_chan.exit.i ], [ %call24.i.i, %sw.epilog.i.i ], [ -95, %if.then.i.return_crit_edge ], [ %call27.i, %sw.epilog.i ], [ -95, %sw.bb1.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @adt7411_read_in_vdd(ptr nocapture noundef readonly %dev, i32 noundef %attr, ptr nocapture noundef writeonly %val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.adt7411_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %4 = zext i32 %attr to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %attr, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb10
    i32 11, label %sw.bb17
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef %6, i32 noundef 0) #8
  %call1.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb.adt7411_read_10_bit.exit.thread_crit_edge, label %if.end.i

sw.bb.adt7411_read_10_bit.exit.thread_crit_edge:  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread

if.end.i:                                         ; preds = %sw.bb
  %call2.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %cmp3.i = icmp sgt i32 %call2.i, -1
  br i1 %cmp3.i, label %adt7411_read_10_bit.exit, label %if.end.i.adt7411_read_10_bit.exit.thread_crit_edge

if.end.i.adt7411_read_10_bit.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_read_10_bit.exit.thread

adt7411_read_10_bit.exit.thread:                  ; preds = %if.end.i.adt7411_read_10_bit.exit.thread_crit_edge, %sw.bb.adt7411_read_10_bit.exit.thread_crit_edge
  %val.0.i.ph = phi i32 [ %call2.i, %if.end.i.adt7411_read_10_bit.exit.thread_crit_edge ], [ %call1.i, %sw.bb.adt7411_read_10_bit.exit.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %6) #8
  br label %cleanup

adt7411_read_10_bit.exit:                         ; preds = %if.end.i
  %shr15.i = lshr i32 %call1.i, 2
  %and.i = and i32 %shr15.i, 3
  %shl.i = shl i32 %call2.i, 2
  %or.i = or i32 %shl.i, %and.i
  tail call void @mutex_unlock(ptr noundef %6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp = icmp slt i32 %or.i, 0
  br i1 %cmp, label %adt7411_read_10_bit.exit.cleanup_crit_edge, label %if.end

adt7411_read_10_bit.exit.cleanup_crit_edge:       ; preds = %adt7411_read_10_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %adt7411_read_10_bit.exit
  call void @__sanitizer_cov_trace_pc() #10
  %mul = mul i32 %or.i, 7000
  %div = sdiv i32 %mul, 1024
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %if.end7

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  %mul8 = mul i32 %call4, 7000
  %div9 = sdiv i32 %mul8, 256
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div9, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  %call11 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 35) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %sw.bb10.cleanup_crit_edge, label %if.end14

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #10
  %mul15 = mul i32 %call11, 7000
  %div16 = sdiv i32 %mul15, 256
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div16, ptr %val, align 4
  br label %cleanup

sw.bb17:                                          ; preds = %entry
  %call2.i35 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i35)
  %cmp.i36 = icmp slt i32 %call2.i35, 0
  br i1 %cmp.i36, label %sw.bb17.cleanup_crit_edge, label %if.end.i38

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i38:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #10
  %and.i37 = lshr i32 %call2.i35, 4
  %and.i37.lobit = and i32 %and.i37, 1
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and.i37.lobit, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i38, %sw.bb17.cleanup_crit_edge, %if.end14, %sw.bb10.cleanup_crit_edge, %if.end7, %sw.bb3.cleanup_crit_edge, %if.end, %adt7411_read_10_bit.exit.cleanup_crit_edge, %adt7411_read_10_bit.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %if.end7 ], [ 0, %if.end ], [ %or.i, %adt7411_read_10_bit.exit.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ %call11, %sw.bb10.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ %val.0.i.ph, %adt7411_read_10_bit.exit.thread ], [ 0, %if.end.i38 ], [ %call2.i35, %sw.bb17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_show_bit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.adt7411_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %index, align 4
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cond.end_crit_edge, label %cond.false

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %6 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr, align 1
  %conv = zext i8 %7 to i32
  %and = and i32 %call2, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %lnot.ext = zext i1 %tobool to i32
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %lnot.ext)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call4, %cond.false ], [ %call2, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adt7411_set_bit(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  %flag = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %client1 = getelementptr inbounds %struct.adt7411_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flag) #8
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %flag, align 4, !annotation !69
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %flag) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp ugt i32 %6, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %index = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %index, align 4
  %nr = getelementptr inbounds %struct.sensor_device_attribute_2, ptr %attr, i32 0, i32 2
  %9 = ptrtoint ptr %nr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nr, align 1
  %driver_data.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @mutex_lock_nested(ptr noundef %12, i32 noundef 0) #8
  %call1.i = call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.adt7411_modify_bit.exit_crit_edge, label %if.end.i

if.end.adt7411_modify_bit.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %adt7411_modify_bit.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not = icmp eq i32 %6, 0
  %conv.i = zext i8 %10 to i32
  %or.i = or i32 %call1.i, %conv.i
  %neg.i = xor i32 %conv.i, -1
  %and.i = and i32 %call1.i, %neg.i
  %val.0.i = select i1 %tobool3.not, i32 %and.i, i32 %or.i
  %conv5.i = trunc i32 %val.0.i to i8
  %call6.i = call i32 @i2c_smbus_write_byte_data(ptr noundef %3, i8 noundef zeroext %8, i8 noundef zeroext %conv5.i) #8
  br label %adt7411_modify_bit.exit

adt7411_modify_bit.exit:                          ; preds = %if.end.i, %if.end.adt7411_modify_bit.exit_crit_edge
  %ret.0.i = phi i32 [ %call1.i, %if.end.adt7411_modify_bit.exit_crit_edge ], [ %call6.i, %if.end.i ]
  call void @mutex_unlock(ptr noundef %12) #8
  %update_lock = getelementptr inbounds %struct.adt7411_data, ptr %1, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock, i32 noundef 0) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %13 = load volatile i32, ptr @jiffies, align 128
  %next_update = getelementptr inbounds %struct.adt7411_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %next_update to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %next_update, align 4
  call void @mutex_unlock(ptr noundef %update_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %cmp6 = icmp slt i32 %ret.0.i, 0
  %call4.count = select i1 %cmp6, i32 %ret.0.i, i32 %count
  br label %cleanup

cleanup:                                          ; preds = %adt7411_modify_bit.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.count, %adt7411_modify_bit.exit ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flag) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !33, !35, !37, !38, !40, !42, !43, !45, !46, !48, !50, !51, !52, !53, !55, !56}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_adt7411__302_716_adt7411_driver_init6, !1, !"__initcall__kmod_adt7411__302_716_adt7411_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hwmon/adt7411.c", i32 716, i32 1}
!2 = !{ptr @__exitcall_adt7411_driver_exit, !1, !"__exitcall_adt7411_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/hwmon/adt7411.c", i32 718, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/hwmon/adt7411.c", i32 719, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/hwmon/adt7411.c", i32 720, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/hwmon/adt7411.c", i32 707, i32 12}
!12 = !{ptr @adt7411_driver, !13, !"adt7411_driver", i1 false, i1 false}
!13 = !{!"../drivers/hwmon/adt7411.c", i32 705, i32 26}
!14 = !{ptr @adt7411_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/hwmon/adt7411.c", i32 682, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @adt7411_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/hwmon/adt7411.c", i32 683, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @adt7411_chip_info, !21, !"adt7411_chip_info", i1 false, i1 false}
!21 = !{!"../drivers/hwmon/adt7411.c", i32 664, i32 37}
!22 = !{ptr @adt7411_hwmon_ops, !23, !"adt7411_hwmon_ops", i1 false, i1 false}
!23 = !{!"../drivers/hwmon/adt7411.c", i32 658, i32 31}
!24 = !{ptr @adt7411_in_alarm_reg, !25, !"adt7411_in_alarm_reg", i1 false, i1 false}
!25 = !{!"../drivers/hwmon/adt7411.c", i32 77, i32 17}
!26 = !{ptr @adt7411_in_alarm_bits, !27, !"adt7411_in_alarm_bits", i1 false, i1 false}
!27 = !{!"../drivers/hwmon/adt7411.c", i32 89, i32 17}
!28 = !{ptr @adt7411_info, !29, !"adt7411_info", i1 false, i1 false}
!29 = !{!"../drivers/hwmon/adt7411.c", i32 639, i32 41}
!30 = !{ptr @adt7411_groups, !31, !"adt7411_groups", i1 false, i1 false}
!31 = !{!"../drivers/hwmon/adt7411.c", i32 213, i32 1}
!32 = !{ptr @adt7411_group, !31, !"adt7411_group", i1 false, i1 false}
!33 = !{ptr @adt7411_attrs, !34, !"adt7411_attrs", i1 false, i1 false}
!34 = !{!"../drivers/hwmon/adt7411.c", i32 207, i32 26}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/hwmon/adt7411.c", i32 203, i32 8}
!37 = !{ptr @sensor_dev_attr_no_average, !36, !"sensor_dev_attr_no_average", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/hwmon/adt7411.c", i32 172, i32 38}
!40 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/hwmon/adt7411.c", i32 204, i32 8}
!42 = !{ptr @sensor_dev_attr_fast_sampling, !41, !"sensor_dev_attr_fast_sampling", i1 false, i1 false}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/hwmon/adt7411.c", i32 205, i32 8}
!45 = !{ptr @sensor_dev_attr_adc_ref_vdd, !44, !"sensor_dev_attr_adc_ref_vdd", i1 false, i1 false}
!46 = !{ptr @adt7411_id, !47, !"adt7411_id", i1 false, i1 false}
!47 = !{!"../drivers/hwmon/adt7411.c", i32 699, i32 35}
!48 = !{ptr @.str.11, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/hwmon/adt7411.c", i32 579, i32 3}
!50 = !{ptr @.str.12, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @adt7411_detect.__UNIQUE_ID_ddebug300, !49, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!53 = !{ptr @.str.14, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/hwmon/adt7411.c", i32 587, i32 3}
!55 = !{ptr @adt7411_detect.__UNIQUE_ID_ddebug301, !54, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!56 = !{ptr @normal_i2c, !57, !"normal_i2c", i1 false, i1 false}
!57 = !{!"../drivers/hwmon/adt7411.c", i32 75, i32 29}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148707917, i64 2148707922, i64 2148707935, i64 2148707979, i64 2148708013, i64 2148708034}
!68 = !{i8 0, i8 2}
!69 = !{!"auto-init"}
