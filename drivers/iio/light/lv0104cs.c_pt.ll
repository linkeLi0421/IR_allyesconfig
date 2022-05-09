; ModuleID = '/llk/IR_all_yes/drivers/iio/light/lv0104cs.c_pt.bc'
source_filename = "../drivers/iio/light/lv0104cs.c"
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
%struct.lv0104cs_mapping = type { i32, i32, i8 }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lv0104cs_private = type { ptr, %struct.mutex, i8, i8, i8 }

@__initcall__kmod_lv0104cs__288_526_lv0104cs_i2c_driver_init6 = internal global ptr @lv0104cs_i2c_driver_init, section ".initcall6.init", align 4
@lv0104cs_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @lv0104cs_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lv0104cs_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_lv0104cs_i2c_driver_exit = internal global ptr @lv0104cs_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [48 x i8] c"lv0104cs.author=Jeff LaBundy <jeff@labundy.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [58 x i8] c"lv0104cs.description=LV0104CS Ambient Light Sensor Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"lv0104cs.file=drivers/iio/light/lv0104cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"lv0104cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lv0104cs\00", [23 x i8] zeroinitializer }, align 32
@lv0104cs_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lv0104cs\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@lv0104cs_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&lv0104cs->lock\00", [16 x i8] zeroinitializer }, align 32
@lv0104cs_calibscales = internal constant { [63 x %struct.lv0104cs_mapping], [172 x i8] } { [63 x %struct.lv0104cs_mapping] [%struct.lv0104cs_mapping { i32 0, i32 666666, i8 -127 }, %struct.lv0104cs_mapping { i32 0, i32 800000, i8 -126 }, %struct.lv0104cs_mapping { i32 0, i32 857142, i8 -125 }, %struct.lv0104cs_mapping { i32 0, i32 888888, i8 -124 }, %struct.lv0104cs_mapping { i32 0, i32 909090, i8 -123 }, %struct.lv0104cs_mapping { i32 0, i32 923076, i8 -122 }, %struct.lv0104cs_mapping { i32 0, i32 933333, i8 -121 }, %struct.lv0104cs_mapping { i32 0, i32 941176, i8 -120 }, %struct.lv0104cs_mapping { i32 0, i32 947368, i8 -119 }, %struct.lv0104cs_mapping { i32 0, i32 952380, i8 -118 }, %struct.lv0104cs_mapping { i32 0, i32 956521, i8 -117 }, %struct.lv0104cs_mapping { i32 0, i32 960000, i8 -116 }, %struct.lv0104cs_mapping { i32 0, i32 962962, i8 -115 }, %struct.lv0104cs_mapping { i32 0, i32 965517, i8 -114 }, %struct.lv0104cs_mapping { i32 0, i32 967741, i8 -113 }, %struct.lv0104cs_mapping { i32 0, i32 969696, i8 -112 }, %struct.lv0104cs_mapping { i32 0, i32 971428, i8 -111 }, %struct.lv0104cs_mapping { i32 0, i32 972972, i8 -110 }, %struct.lv0104cs_mapping { i32 0, i32 974358, i8 -109 }, %struct.lv0104cs_mapping { i32 0, i32 975609, i8 -108 }, %struct.lv0104cs_mapping { i32 0, i32 976744, i8 -107 }, %struct.lv0104cs_mapping { i32 0, i32 977777, i8 -106 }, %struct.lv0104cs_mapping { i32 0, i32 978723, i8 -105 }, %struct.lv0104cs_mapping { i32 0, i32 979591, i8 -104 }, %struct.lv0104cs_mapping { i32 0, i32 980392, i8 -103 }, %struct.lv0104cs_mapping { i32 0, i32 981132, i8 -102 }, %struct.lv0104cs_mapping { i32 0, i32 981818, i8 -101 }, %struct.lv0104cs_mapping { i32 0, i32 982456, i8 -100 }, %struct.lv0104cs_mapping { i32 0, i32 983050, i8 -99 }, %struct.lv0104cs_mapping { i32 0, i32 983606, i8 -98 }, %struct.lv0104cs_mapping { i32 0, i32 984126, i8 -97 }, %struct.lv0104cs_mapping { i32 1, i32 0, i8 -128 }, %struct.lv0104cs_mapping { i32 1, i32 16129, i8 -65 }, %struct.lv0104cs_mapping { i32 1, i32 16666, i8 -66 }, %struct.lv0104cs_mapping { i32 1, i32 17241, i8 -67 }, %struct.lv0104cs_mapping { i32 1, i32 17857, i8 -68 }, %struct.lv0104cs_mapping { i32 1, i32 18518, i8 -69 }, %struct.lv0104cs_mapping { i32 1, i32 19230, i8 -70 }, %struct.lv0104cs_mapping { i32 1, i32 20000, i8 -71 }, %struct.lv0104cs_mapping { i32 1, i32 20833, i8 -72 }, %struct.lv0104cs_mapping { i32 1, i32 21739, i8 -73 }, %struct.lv0104cs_mapping { i32 1, i32 22727, i8 -74 }, %struct.lv0104cs_mapping { i32 1, i32 23809, i8 -75 }, %struct.lv0104cs_mapping { i32 1, i32 24999, i8 -76 }, %struct.lv0104cs_mapping { i32 1, i32 26315, i8 -77 }, %struct.lv0104cs_mapping { i32 1, i32 27777, i8 -78 }, %struct.lv0104cs_mapping { i32 1, i32 29411, i8 -79 }, %struct.lv0104cs_mapping { i32 1, i32 31250, i8 -80 }, %struct.lv0104cs_mapping { i32 1, i32 33333, i8 -81 }, %struct.lv0104cs_mapping { i32 1, i32 35714, i8 -82 }, %struct.lv0104cs_mapping { i32 1, i32 38461, i8 -83 }, %struct.lv0104cs_mapping { i32 1, i32 41666, i8 -84 }, %struct.lv0104cs_mapping { i32 1, i32 45454, i8 -85 }, %struct.lv0104cs_mapping { i32 1, i32 50000, i8 -86 }, %struct.lv0104cs_mapping { i32 1, i32 55555, i8 -87 }, %struct.lv0104cs_mapping { i32 1, i32 62500, i8 -88 }, %struct.lv0104cs_mapping { i32 1, i32 71428, i8 -89 }, %struct.lv0104cs_mapping { i32 1, i32 83333, i8 -90 }, %struct.lv0104cs_mapping { i32 1, i32 100000, i8 -91 }, %struct.lv0104cs_mapping { i32 1, i32 125000, i8 -92 }, %struct.lv0104cs_mapping { i32 1, i32 166666, i8 -93 }, %struct.lv0104cs_mapping { i32 1, i32 250000, i8 -94 }, %struct.lv0104cs_mapping { i32 1, i32 500000, i8 -95 }], [172 x i8] zeroinitializer }, align 32
@lv0104cs_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 262166, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [40 x i8] zeroinitializer }, align 32
@lv0104cs_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @lv0104cs_attribute_group, ptr @lv0104cs_read_raw, ptr null, ptr null, ptr @lv0104cs_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@lv0104cs_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @lv0104cs_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@lv0104cs_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_calibscale_available, ptr @iio_dev_attr_scale_available, ptr @iio_dev_attr_integration_time_available, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_calibscale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lv0104cs_show_calibscale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lv0104cs_show_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @lv0104cs_show_int_time_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calibscale_available\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06d \00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"scale_available\00", [16 x i8] zeroinitializer }, align 32
@lv0104cs_scales = internal constant { [4 x %struct.lv0104cs_mapping], [48 x i8] } { [4 x %struct.lv0104cs_mapping] [%struct.lv0104cs_mapping { i32 0, i32 250000, i8 0 }, %struct.lv0104cs_mapping { i32 1, i32 0, i8 8 }, %struct.lv0104cs_mapping { i32 2, i32 0, i8 16 }, %struct.lv0104cs_mapping { i32 8, i32 0, i8 24 }], [48 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@lv0104cs_int_times = internal constant { [3 x %struct.lv0104cs_mapping], [60 x i8] } { [3 x %struct.lv0104cs_mapping] [%struct.lv0104cs_mapping { i32 0, i32 12500, i8 0 }, %struct.lv0104cs_mapping { i32 0, i32 100000, i8 2 }, %struct.lv0104cs_mapping { i32 0, i32 200000, i8 4 }], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 18]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 18]
@__sancov_gen_cov_switch_values.8 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.9 = internal global [5 x i64] [i64 3, i64 32, i64 12500, i64 100000, i64 200000]
@___asan_gen_.10 = private unnamed_addr constant [20 x i8] c"lv0104cs_i2c_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 519, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 521, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"lv0104cs_id\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 513, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 493, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [21 x i8] c"lv0104cs_calibscales\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 52, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"lv0104cs_channels\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 467, i32 35 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"lv0104cs_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 461, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [25 x i8] c"lv0104cs_attribute_group\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 457, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"lv0104cs_attributes\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 450, i32 26 }
@___asan_gen_.40 = private unnamed_addr constant [34 x i8] c"iio_dev_attr_calibscale_available\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [29 x i8] c"iio_dev_attr_scale_available\00", align 1
@___asan_gen_.46 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_integration_time_available\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 444, i32 8 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 400, i32 48 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 446, i32 8 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"lv0104cs_scales\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 118, i32 38 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 448, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [19 x i8] c"lv0104cs_int_times\00", align 1
@___asan_gen_.65 = private constant [32 x i8] c"../drivers/iio/light/lv0104cs.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 125, i32 38 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_lv0104cs_i2c_driver_exit, ptr @__initcall__kmod_lv0104cs__288_526_lv0104cs_i2c_driver_init6, ptr @lv0104cs_i2c_driver_exit, ptr @lv0104cs_i2c_driver, ptr @.str, ptr @lv0104cs_id, ptr @lv0104cs_probe.__key, ptr @.str.1, ptr @lv0104cs_calibscales, ptr @lv0104cs_channels, ptr @lv0104cs_info, ptr @lv0104cs_attribute_group, ptr @lv0104cs_attributes, ptr @iio_dev_attr_calibscale_available, ptr @iio_dev_attr_scale_available, ptr @iio_dev_attr_integration_time_available, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @lv0104cs_scales, ptr @.str.5, ptr @lv0104cs_int_times], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_calibscales to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_calibscale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_scales to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lv0104cs_int_times to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @lv0104cs_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lv0104cs_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @lv0104cs_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %regval.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 4
  %lock = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @lv0104cs_probe.__key) #4
  %calibscale = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %calibscale to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 31, ptr %calibscale, align 4
  %scale = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %scale to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %scale, align 1
  %int_time = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %int_time to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %int_time, align 2
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.addr.i)
  %9 = ptrtoint ptr %regval.addr.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -128, ptr %regval.addr.i, align 1
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %8, ptr noundef nonnull %regval.addr.i, i32 noundef 1, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp1.not.i = icmp eq i32 %call.i.i, 1
  %..i = select i1 %cmp1.not.i, i32 0, i32 -5
  %retval.0.i = select i1 %cmp.i, i32 %call.i.i, i32 %..i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %call, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @lv0104cs_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %12 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %name8 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %13 = ptrtoint ptr %name8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %name8, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %14 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @lv0104cs_info, ptr %info, align 8
  %call10 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.end7 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.addr.i68.i = alloca i8, align 1
  %regval.i.i = alloca i16, align 2
  %regval.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %if.end.err_mutex_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb4
    i32 2, label %sw.bb10
    i32 18, label %sw.bb18
  ]

if.end.err_mutex_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex

sw.bb:                                            ; preds = %if.end
  %scale.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %scale.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %scale.i, align 1
  %idxprom.i = zext i8 %6 to i32
  %regval1.i = getelementptr [4 x %struct.lv0104cs_mapping], ptr @lv0104cs_scales, i32 0, i32 %idxprom.i, i32 2
  %7 = ptrtoint ptr %regval1.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %regval1.i, align 4
  %int_time.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %int_time.i, align 2
  %idxprom4.i = zext i8 %10 to i32
  %regval6.i = getelementptr [3 x %struct.lv0104cs_mapping], ptr @lv0104cs_int_times, i32 0, i32 %idxprom4.i, i32 2
  %11 = ptrtoint ptr %regval6.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %regval6.i, align 4
  %13 = or i8 %8, %12
  %or963.i = or i8 %13, -32
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.addr.i.i) #4
  %16 = ptrtoint ptr %regval.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %or963.i, ptr %regval.addr.i.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %regval.addr.i.i, i32 noundef 1, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 1
  %..i.i = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb.err_mutex_crit_edge

sw.bb.err_mutex_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex

if.end.i:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %int_time.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %int_time.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %19 = icmp ult i8 %18, 3
  br i1 %19, label %switch.lookup, label %if.end.i.err_mutex_crit_edge

if.end.i.err_mutex_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex

switch.lookup:                                    ; preds = %if.end.i
  %switch.idx.cast = zext i8 %18 to i32
  %switch.idx.mult = mul nuw nsw i32 %switch.idx.cast, 100
  %switch.offset = add nuw nsw i32 %switch.idx.mult, 50
  call void @msleep(i32 noundef %switch.offset) #4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %regval.i.i) #4
  %22 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 -1, ptr %regval.i.i, align 2, !annotation !53
  %call.i.i64.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %21, ptr noundef nonnull %regval.i.i, i32 noundef 2, i16 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i64.i)
  %cmp.i65.i = icmp slt i32 %call.i.i64.i, 0
  br i1 %cmp.i65.i, label %switch.lookup.lv0104cs_read_adc.exit.thread.i_crit_edge, label %if.end.i.i

switch.lookup.lv0104cs_read_adc.exit.thread.i_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %lv0104cs_read_adc.exit.thread.i

if.end.i.i:                                       ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i64.i)
  %cmp1.not.i66.i = icmp eq i32 %call.i.i64.i, 2
  br i1 %cmp1.not.i66.i, label %if.end19.i, label %if.end.i.i.lv0104cs_read_adc.exit.thread.i_crit_edge

if.end.i.i.lv0104cs_read_adc.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lv0104cs_read_adc.exit.thread.i

lv0104cs_read_adc.exit.thread.i:                  ; preds = %if.end.i.i.lv0104cs_read_adc.exit.thread.i_crit_edge, %switch.lookup.lv0104cs_read_adc.exit.thread.i_crit_edge
  %retval.0.i67.ph.i = phi i32 [ -5, %if.end.i.i.lv0104cs_read_adc.exit.thread.i_crit_edge ], [ %call.i.i64.i, %switch.lookup.lv0104cs_read_adc.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #4
  br label %err_mutex

if.end19.i:                                       ; preds = %if.end.i.i
  %23 = ptrtoint ptr %regval.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %regval.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %regval.i.i) #4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.addr.i68.i) #4
  %27 = ptrtoint ptr %regval.addr.i68.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %regval.addr.i68.i, align 1
  %call.i.i69.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %26, ptr noundef nonnull %regval.addr.i68.i, i32 noundef 1, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i69.i)
  %cmp.i70.i = icmp slt i32 %call.i.i69.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i69.i)
  %cmp1.not.i71.i = icmp eq i32 %call.i.i69.i, 1
  %..i72.i = select i1 %cmp1.not.i71.i, i32 0, i32 -5
  %retval.0.i73.i = select i1 %cmp.i70.i, i32 %call.i.i69.i, i32 %..i72.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.addr.i68.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i73.i)
  %tobool22.not.i = icmp eq i32 %retval.0.i73.i, 0
  br i1 %tobool22.not.i, label %if.end24.i, label %if.end19.i.err_mutex_crit_edge

if.end19.i.err_mutex_crit_edge:                   ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex

if.end24.i:                                       ; preds = %if.end19.i
  %28 = ptrtoint ptr %scale.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %scale.i, align 1
  %30 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %29, label %if.end24.i.err_mutex_crit_edge [
    i8 0, label %sw.bb27.i
    i8 1, label %sw.bb29.i
    i8 2, label %sw.bb31.i
    i8 3, label %sw.bb35.i
  ]

if.end24.i.err_mutex_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex

sw.bb27.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv28.i = zext i16 %24 to i32
  %mul.i = shl nuw nsw i32 %conv28.i, 2
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %mul.i, ptr %val, align 4
  %32 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val2, align 4
  br label %err_mutex

sw.bb29.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv30.i = zext i16 %24 to i32
  %33 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv30.i, ptr %val, align 4
  %34 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %val2, align 4
  br label %err_mutex

sw.bb31.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %35 = lshr i16 %24, 1
  %div.i = zext i16 %35 to i32
  %36 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %div.i, ptr %val, align 4
  %37 = and i16 %24, 1
  %rem.i = zext i16 %37 to i32
  %mul34.i = mul nuw nsw i32 %rem.i, 500000
  %38 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %mul34.i, ptr %val2, align 4
  br label %err_mutex

sw.bb35.i:                                        ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #6
  %39 = lshr i16 %24, 3
  %div37.i = zext i16 %39 to i32
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div37.i, ptr %val, align 4
  %41 = and i16 %24, 7
  %rem39.i = zext i16 %41 to i32
  %mul40.i = mul nuw nsw i32 %rem39.i, 125000
  %42 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mul40.i, ptr %val2, align 4
  br label %err_mutex

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %calibscale = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %calibscale to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %calibscale, align 4
  %idxprom = zext i8 %44 to i32
  %arrayidx = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %idxprom
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx, align 4
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val, align 4
  %48 = load i8, ptr %calibscale, align 4
  %idxprom7 = zext i8 %48 to i32
  %val29 = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %idxprom7, i32 1
  %49 = ptrtoint ptr %val29 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val29, align 4
  %51 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %val2, align 4
  br label %err_mutex

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %scale = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 3
  %52 = ptrtoint ptr %scale to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %scale, align 1
  %idxprom11 = zext i8 %53 to i32
  %arrayidx12 = getelementptr [4 x %struct.lv0104cs_mapping], ptr @lv0104cs_scales, i32 0, i32 %idxprom11
  %54 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx12, align 4
  %56 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val, align 4
  %57 = load i8, ptr %scale, align 1
  %idxprom15 = zext i8 %57 to i32
  %val217 = getelementptr [4 x %struct.lv0104cs_mapping], ptr @lv0104cs_scales, i32 0, i32 %idxprom15, i32 1
  %58 = ptrtoint ptr %val217 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %val217, align 4
  %60 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %59, ptr %val2, align 4
  br label %err_mutex

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %int_time = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 4
  %61 = ptrtoint ptr %int_time to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %int_time, align 2
  %idxprom19 = zext i8 %62 to i32
  %arrayidx20 = getelementptr [3 x %struct.lv0104cs_mapping], ptr @lv0104cs_int_times, i32 0, i32 %idxprom19
  %63 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx20, align 4
  %65 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %val, align 4
  %66 = load i8, ptr %int_time, align 2
  %idxprom23 = zext i8 %66 to i32
  %val225 = getelementptr [3 x %struct.lv0104cs_mapping], ptr @lv0104cs_int_times, i32 0, i32 %idxprom23, i32 1
  %67 = ptrtoint ptr %val225 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val225, align 4
  %69 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %val2, align 4
  br label %err_mutex

err_mutex:                                        ; preds = %sw.bb18, %sw.bb10, %sw.bb4, %sw.bb35.i, %sw.bb31.i, %sw.bb29.i, %sw.bb27.i, %if.end24.i.err_mutex_crit_edge, %if.end19.i.err_mutex_crit_edge, %lv0104cs_read_adc.exit.thread.i, %if.end.i.err_mutex_crit_edge, %sw.bb.err_mutex_crit_edge, %if.end.err_mutex_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb18 ], [ 2, %sw.bb10 ], [ 2, %sw.bb4 ], [ -22, %if.end.err_mutex_crit_edge ], [ 2, %sw.bb35.i ], [ 2, %sw.bb31.i ], [ 2, %sw.bb29.i ], [ 2, %sw.bb27.i ], [ %retval.0.i67.ph.i, %lv0104cs_read_adc.exit.thread.i ], [ -22, %if.end24.i.err_mutex_crit_edge ], [ %retval.0.i73.i, %if.end19.i.err_mutex_crit_edge ], [ -22, %if.end.i.err_mutex_crit_edge ], [ %retval.0.i.i, %sw.bb.err_mutex_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup

cleanup:                                          ; preds = %err_mutex, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_mutex ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %regval.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp.not = icmp eq i32 %3, 6
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %mask, label %if.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %sw.bb2
    i32 18, label %sw.bb4
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mul.i = mul i32 %val, 1000000
  %add.i = add i32 %mul.i, %val2
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i.for.cond.i_crit_edge, %sw.bb
  %i.0.i = phi i32 [ 0, %sw.bb ], [ %add6.i, %if.end.i.for.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %i.0.i)
  %exitcond.not.i = icmp eq i32 %i.0.i, 62
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %i.0.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %mul2.i = mul i32 %6, 1000000
  %val24.i = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %i.0.i, i32 1
  %7 = ptrtoint ptr %val24.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val24.i, align 4
  %add5.i = add i32 %mul2.i, %8
  %add6.i = add nuw nsw i32 %i.0.i, 1
  %arrayidx7.i = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %add6.i
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7.i, align 4
  %mul9.i = mul i32 %10, 1000000
  %val212.i = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %add6.i, i32 1
  %11 = ptrtoint ptr %val212.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val212.i, align 4
  %add13.i = add i32 %mul9.i, %12
  %add14.i = add i32 %add13.i, %add5.i
  %div.i = sdiv i32 %add14.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add5.i)
  %cmp15.not.i = icmp sge i32 %add.i, %add5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %div.i)
  %cmp16.i = icmp slt i32 %add.i, %div.i
  %or.cond.i = select i1 %cmp15.not.i, i1 %cmp16.i, i1 false
  br i1 %or.cond.i, label %for.body.i.if.end25.i_crit_edge, label %if.end.i

for.body.i.if.end25.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add13.i)
  %cmp19.not.i = icmp sgt i32 %add.i, %add13.i
  %or.cond56.i = select i1 %cmp16.i, i1 true, i1 %cmp19.not.i
  br i1 %or.cond56.i, label %if.end.i.for.cond.i_crit_edge, label %if.end.i.if.end25.i_crit_edge

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25.i

if.end.i.for.cond.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i

if.end25.i:                                       ; preds = %if.end.i.if.end25.i_crit_edge, %for.body.i.if.end25.i_crit_edge
  %index.059.ph.i = phi i32 [ %add6.i, %if.end.i.if.end25.i_crit_edge ], [ %i.0.i, %for.body.i.if.end25.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %regval.i = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %index.059.ph.i, i32 2
  %15 = ptrtoint ptr %regval.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %regval.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %regval.addr.i.i) #4
  %17 = ptrtoint ptr %regval.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %regval.addr.i.i, align 1
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %regval.addr.i.i, i32 noundef 1, i16 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp1.not.i.i = icmp eq i32 %call.i.i.i, 1
  %..i.i = select i1 %cmp1.not.i.i, i32 0, i32 -5
  %retval.0.i.i = select i1 %cmp.i.i, i32 %call.i.i.i, i32 %..i.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %regval.addr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end28.i, label %if.end25.i.err_mutex.i_crit_edge

if.end25.i.err_mutex.i_crit_edge:                 ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_mutex.i

if.end28.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #6
  %conv.i = trunc i32 %index.059.ph.i to i8
  %calibscale29.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %calibscale29.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv.i, ptr %calibscale29.i, align 4
  br label %err_mutex.i

err_mutex.i:                                      ; preds = %if.end28.i, %if.end25.i.err_mutex.i_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #4
  br label %cleanup

sw.bb2:                                           ; preds = %if.end
  %19 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %val, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %if.end.i12
    i32 1, label %if.end.1.i
    i32 2, label %if.end.2.i
    i32 8, label %if.end.3.i
  ]

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i12:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000, i32 %val2)
  %cmp5.i = icmp eq i32 %val2, 250000
  br i1 %cmp5.i, label %if.end.i12.if.end10.i_crit_edge, label %if.end.i12.cleanup_crit_edge

if.end.i12.cleanup_crit_edge:                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i12.if.end10.i_crit_edge:                  ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end.1.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.1.i = icmp eq i32 %val2, 0
  br i1 %cmp5.1.i, label %if.end.1.i.if.end10.i_crit_edge, label %if.end.1.i.cleanup_crit_edge

if.end.1.i.cleanup_crit_edge:                     ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.1.i.if.end10.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end.2.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.2.i = icmp eq i32 %val2, 0
  br i1 %cmp5.2.i, label %if.end.2.i.if.end10.i_crit_edge, label %if.end.2.i.cleanup_crit_edge

if.end.2.i.cleanup_crit_edge:                     ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.2.i.if.end10.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end.3.i:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp5.3.i = icmp eq i32 %val2, 0
  br i1 %cmp5.3.i, label %if.end.3.i.if.end10.i_crit_edge, label %if.end.3.i.cleanup_crit_edge

if.end.3.i.cleanup_crit_edge:                     ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.3.i.if.end10.i_crit_edge:                  ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.3.i.if.end10.i_crit_edge, %if.end.2.i.if.end10.i_crit_edge, %if.end.1.i.if.end10.i_crit_edge, %if.end.i12.if.end10.i_crit_edge
  %i.022.lcssa.i = phi i8 [ 0, %if.end.i12.if.end10.i_crit_edge ], [ 1, %if.end.1.i.if.end10.i_crit_edge ], [ 2, %if.end.2.i.if.end10.i_crit_edge ], [ 3, %if.end.3.i.if.end10.i_crit_edge ]
  %lock.i13 = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i13, i32 noundef 0) #4
  %scale.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %scale.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %i.022.lcssa.i, ptr %scale.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i13) #4
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp2.not.i = icmp eq i32 %val, 0
  br i1 %cmp2.not.i, label %if.end.i15, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end.i15:                                       ; preds = %sw.bb4
  %21 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %val2, label %if.end.i15.cleanup_crit_edge [
    i32 12500, label %if.end.i15.if.end10.i18_crit_edge
    i32 100000, label %if.end10.fold.split.i
    i32 200000, label %if.end10.fold.split25.i
  ]

if.end.i15.if.end10.i18_crit_edge:                ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i18

if.end.i15.cleanup_crit_edge:                     ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10.fold.split.i:                            ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i18

if.end10.fold.split25.i:                          ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10.i18

if.end10.i18:                                     ; preds = %if.end10.fold.split25.i, %if.end10.fold.split.i, %if.end.i15.if.end10.i18_crit_edge
  %i.022.lcssa.i16 = phi i8 [ 0, %if.end.i15.if.end10.i18_crit_edge ], [ 1, %if.end10.fold.split.i ], [ 2, %if.end10.fold.split25.i ]
  %lock.i17 = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i17, i32 noundef 0) #4
  %int_time.i = getelementptr inbounds %struct.lv0104cs_private, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %int_time.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %i.022.lcssa.i16, ptr %int_time.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i17) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end10.i18, %if.end.i15.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.end10.i, %if.end.3.i.cleanup_crit_edge, %if.end.2.i.cleanup_crit_edge, %if.end.1.i.cleanup_crit_edge, %if.end.i12.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %err_mutex.i, %for.cond.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %retval.0.i.i, %err_mutex.i ], [ 0, %if.end10.i ], [ -22, %if.end.3.i.cleanup_crit_edge ], [ -22, %if.end.2.i.cleanup_crit_edge ], [ -22, %if.end.1.i.cleanup_crit_edge ], [ -22, %if.end.i12.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ 0, %if.end10.i18 ], [ -22, %sw.bb4.cleanup_crit_edge ], [ -22, %if.end.i15.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_show_calibscale_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.012
  %sub = sub i32 4096, %len.012
  %arrayidx = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %val2 = getelementptr [63 x %struct.lv0104cs_mapping], ptr @lv0104cs_calibscales, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %val2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val2, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %3) #4
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 63
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub2 = add i32 %add, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_show_scale_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 250000) #4
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.3, i32 noundef 1, i32 noundef 0) #4
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.3, i32 noundef 2, i32 noundef 0) #4
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.3, i32 noundef 8, i32 noundef 0) #4
  %add.3 = add i32 %call.3, %add.2
  %sub2 = add i32 %add.3, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lv0104cs_show_int_time_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 12500) #4
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 100000) #4
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.3, i32 noundef 0, i32 noundef 200000) #4
  %add.2 = add i32 %call.2, %add.1
  %sub2 = add i32 %add.2, -1
  %arrayidx3 = getelementptr i8, ptr %buf, i32 %sub2
  %0 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx3, align 1
  ret i32 %add.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !30, !32, !34, !35, !37, !39, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_lv0104cs__288_526_lv0104cs_i2c_driver_init6, !1, !"__initcall__kmod_lv0104cs__288_526_lv0104cs_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/lv0104cs.c", i32 526, i32 1}
!2 = !{ptr @__exitcall_lv0104cs_i2c_driver_exit, !1, !"__exitcall_lv0104cs_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/lv0104cs.c", i32 528, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/lv0104cs.c", i32 529, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/lv0104cs.c", i32 530, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/lv0104cs.c", i32 521, i32 11}
!12 = !{ptr @lv0104cs_i2c_driver, !13, !"lv0104cs_i2c_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/lv0104cs.c", i32 519, i32 26}
!14 = !{ptr @lv0104cs_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/lv0104cs.c", i32 493, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @lv0104cs_calibscales, !18, !"lv0104cs_calibscales", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/lv0104cs.c", i32 52, i32 38}
!19 = !{ptr @lv0104cs_channels, !20, !"lv0104cs_channels", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/lv0104cs.c", i32 467, i32 35}
!21 = !{ptr @lv0104cs_info, !22, !"lv0104cs_info", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/lv0104cs.c", i32 461, i32 30}
!23 = !{ptr @lv0104cs_attribute_group, !24, !"lv0104cs_attribute_group", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/lv0104cs.c", i32 457, i32 37}
!25 = !{ptr @lv0104cs_attributes, !26, !"lv0104cs_attributes", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/lv0104cs.c", i32 450, i32 26}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/light/lv0104cs.c", i32 444, i32 8}
!29 = !{ptr @iio_dev_attr_calibscale_available, !28, !"iio_dev_attr_calibscale_available", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/lv0104cs.c", i32 400, i32 48}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/light/lv0104cs.c", i32 446, i32 8}
!34 = !{ptr @iio_dev_attr_scale_available, !33, !"iio_dev_attr_scale_available", i1 false, i1 false}
!35 = !{ptr @lv0104cs_scales, !36, !"lv0104cs_scales", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/lv0104cs.c", i32 118, i32 38}
!37 = !{ptr @.str.5, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/lv0104cs.c", i32 448, i32 8}
!39 = !{ptr @iio_dev_attr_integration_time_available, !38, !"iio_dev_attr_integration_time_available", i1 false, i1 false}
!40 = !{ptr @lv0104cs_int_times, !41, !"lv0104cs_int_times", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/lv0104cs.c", i32 125, i32 38}
!42 = !{ptr @lv0104cs_id, !43, !"lv0104cs_id", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/lv0104cs.c", i32 513, i32 35}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
