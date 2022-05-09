; ModuleID = '/llk/IR_all_yes/drivers/iio/light/zopt2201.c_pt.bc'
source_filename = "../drivers/iio/light/zopt2201.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.anon.87 = type { i32, i32 }
%struct.anon.88 = type { i32, i32, i8, i8 }
%struct.anon.89 = type { i32, i32, i8, i8 }
%struct.anon.90 = type { i32, i32 }
%struct.anon.91 = type { i32, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.zopt2201_data = type { ptr, %struct.mutex, i8, i8, i8 }

@__initcall__kmod_zopt2201__288_562_zopt2201_driver_init6 = internal global ptr @zopt2201_driver_init, section ".initcall6.init", align 4
@zopt2201_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @zopt2201_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @zopt2201_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_zopt2201_driver_exit = internal global ptr @zopt2201_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [59 x i8] c"zopt2201.author=Peter Meerwald-Stadler <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [71 x i8] c"zopt2201.description=IDT ZOPT2201 ambient light and UV B sensor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [41 x i8] c"zopt2201.file=drivers/iio/light/zopt2201\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [21 x i8] c"zopt2201.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zopt2201\00", [23 x i8] zeroinitializer }, align 32
@zopt2201_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"zopt2201\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@zopt2201_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@zopt2201_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @zopt2201_attribute_group, ptr @zopt2201_read_raw, ptr null, ptr null, ptr @zopt2201_write_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@zopt2201_channels = internal constant { [3 x %struct.iio_chan_spec], [88 x i8] } { [3 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 6, i32 0, i32 0, i32 13, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 7, i32 0, i32 36, i32 16, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 262144, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 27, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [88 x i8] zeroinitializer }, align 32
@zopt2201_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @zopt2201_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@zopt2201_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @iio_dev_attr_integration_time_available, ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_intensity_uv_scale_available, ptr null], [16 x i8] zeroinitializer }, align 32
@iio_dev_attr_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @zopt2201_show_int_time_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_illuminance_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @zopt2201_show_als_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_intensity_uv_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @zopt2201_show_uvb_scale_avail, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.%06lu \00", [23 x i8] zeroinitializer }, align 32
@zopt2201_resolution = internal constant { [6 x %struct.anon.87], [48 x i8] } { [6 x %struct.anon.87] [%struct.anon.87 { i32 20, i32 400000 }, %struct.anon.87 { i32 19, i32 200000 }, %struct.anon.87 { i32 18, i32 100000 }, %struct.anon.87 { i32 17, i32 50000 }, %struct.anon.87 { i32 16, i32 25000 }, %struct.anon.87 { i32 13, i32 3125 }], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"in_illuminance_scale_available\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%06u \00", [23 x i8] zeroinitializer }, align 32
@zopt2201_scale_als = internal constant { [22 x %struct.anon.88], [88 x i8] } { [22 x %struct.anon.88] [%struct.anon.88 { i32 19, i32 200000, i8 0, i8 5 }, %struct.anon.88 { i32 6, i32 400000, i8 1, i8 5 }, %struct.anon.88 { i32 3, i32 200000, i8 2, i8 5 }, %struct.anon.88 { i32 2, i32 400000, i8 0, i8 4 }, %struct.anon.88 { i32 2, i32 133333, i8 3, i8 5 }, %struct.anon.88 { i32 1, i32 200000, i8 0, i8 3 }, %struct.anon.88 { i32 1, i32 66666, i8 4, i8 5 }, %struct.anon.88 { i32 0, i32 800000, i8 1, i8 4 }, %struct.anon.88 { i32 0, i32 600000, i8 0, i8 2 }, %struct.anon.88 { i32 0, i32 400000, i8 2, i8 4 }, %struct.anon.88 { i32 0, i32 300000, i8 0, i8 1 }, %struct.anon.88 { i32 0, i32 266666, i8 3, i8 4 }, %struct.anon.88 { i32 0, i32 200000, i8 2, i8 3 }, %struct.anon.88 { i32 0, i32 150000, i8 0, i8 0 }, %struct.anon.88 { i32 0, i32 133333, i8 4, i8 4 }, %struct.anon.88 { i32 0, i32 100000, i8 2, i8 2 }, %struct.anon.88 { i32 0, i32 66666, i8 4, i8 3 }, %struct.anon.88 { i32 0, i32 50000, i8 2, i8 1 }, %struct.anon.88 { i32 0, i32 33333, i8 4, i8 2 }, %struct.anon.88 { i32 0, i32 25000, i8 2, i8 0 }, %struct.anon.88 { i32 0, i32 16666, i8 4, i8 1 }, %struct.anon.88 { i32 0, i32 8333, i8 4, i8 0 }], [88 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"in_intensity_uv_scale_available\00", [32 x i8] zeroinitializer }, align 32
@zopt2201_scale_uvb = internal constant { [22 x %struct.anon.89], [88 x i8] } { [22 x %struct.anon.89] [%struct.anon.89 { i32 0, i32 460800, i8 0, i8 5 }, %struct.anon.89 { i32 0, i32 153600, i8 1, i8 5 }, %struct.anon.89 { i32 0, i32 76800, i8 2, i8 5 }, %struct.anon.89 { i32 0, i32 57600, i8 0, i8 4 }, %struct.anon.89 { i32 0, i32 51200, i8 3, i8 5 }, %struct.anon.89 { i32 0, i32 28800, i8 0, i8 3 }, %struct.anon.89 { i32 0, i32 25600, i8 4, i8 5 }, %struct.anon.89 { i32 0, i32 19200, i8 1, i8 4 }, %struct.anon.89 { i32 0, i32 14400, i8 0, i8 2 }, %struct.anon.89 { i32 0, i32 9600, i8 2, i8 4 }, %struct.anon.89 { i32 0, i32 7200, i8 0, i8 1 }, %struct.anon.89 { i32 0, i32 6400, i8 3, i8 4 }, %struct.anon.89 { i32 0, i32 4800, i8 2, i8 3 }, %struct.anon.89 { i32 0, i32 3600, i8 0, i8 0 }, %struct.anon.89 { i32 0, i32 3200, i8 4, i8 4 }, %struct.anon.89 { i32 0, i32 2400, i8 2, i8 2 }, %struct.anon.89 { i32 0, i32 1600, i8 4, i8 3 }, %struct.anon.89 { i32 0, i32 1200, i8 2, i8 1 }, %struct.anon.89 { i32 0, i32 800, i8 4, i8 2 }, %struct.anon.89 { i32 0, i32 600, i8 2, i8 0 }, %struct.anon.89 { i32 0, i32 400, i8 4, i8 1 }, %struct.anon.89 { i32 0, i32 200, i8 4, i8 0 }], [88 x i8] zeroinitializer }, align 32
@zopt2201_gain_uvb = internal constant { [5 x %struct.anon.90], [56 x i8] } { [5 x %struct.anon.90] [%struct.anon.90 { i32 1, i32 460800 }, %struct.anon.90 { i32 3, i32 153600 }, %struct.anon.90 { i32 6, i32 76800 }, %struct.anon.90 { i32 9, i32 51200 }, %struct.anon.90 { i32 18, i32 25600 }], [56 x i8] zeroinitializer }, align 32
@zopt2201_gain_als = internal constant { [5 x %struct.anon.91], [56 x i8] } { [5 x %struct.anon.91] [%struct.anon.91 { i32 1, i32 19200000 }, %struct.anon.91 { i32 3, i32 6400000 }, %struct.anon.91 { i32 6, i32 3200000 }, %struct.anon.91 { i32 9, i32 2133333 }, %struct.anon.91 { i32 18, i32 1066666 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 18]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 18]
@__sancov_gen_cov_switch_values.9 = internal global [8 x i64] [i64 6, i64 32, i64 3125, i64 25000, i64 50000, i64 100000, i64 200000, i64 400000]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 13, i64 16]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4]
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"zopt2201_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 554, i32 26 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 556, i32 13 }
@___asan_gen_.18 = private unnamed_addr constant [12 x i8] c"zopt2201_id\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 548, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 528, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"zopt2201_info\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 498, i32 30 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"zopt2201_channels\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 231, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"zopt2201_attribute_group\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 494, i32 37 }
@___asan_gen_.36 = private unnamed_addr constant [20 x i8] c"zopt2201_attributes\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 487, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_integration_time_available\00", align 1
@___asan_gen_.42 = private unnamed_addr constant [44 x i8] c"iio_dev_attr_in_illuminance_scale_available\00", align 1
@___asan_gen_.45 = private unnamed_addr constant [45 x i8] c"iio_dev_attr_in_intensity_uv_scale_available\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 448, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 441, i32 48 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"zopt2201_resolution\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 107, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 482, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 458, i32 48 }
@___asan_gen_.63 = private unnamed_addr constant [19 x i8] c"zopt2201_scale_als\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 120, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 484, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant [19 x i8] c"zopt2201_scale_uvb\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 149, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [18 x i8] c"zopt2201_gain_uvb\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 96, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [18 x i8] c"zopt2201_gain_als\00", align 1
@___asan_gen_.76 = private constant [32 x i8] c"../drivers/iio/light/zopt2201.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 85, i32 3 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_zopt2201_driver_exit, ptr @__initcall__kmod_zopt2201__288_562_zopt2201_driver_init6, ptr @zopt2201_driver_exit, ptr @zopt2201_driver, ptr @.str, ptr @zopt2201_id, ptr @zopt2201_probe.__key, ptr @.str.1, ptr @zopt2201_info, ptr @zopt2201_channels, ptr @zopt2201_attribute_group, ptr @zopt2201_attributes, ptr @iio_dev_attr_integration_time_available, ptr @iio_dev_attr_in_illuminance_scale_available, ptr @iio_dev_attr_in_intensity_uv_scale_available, ptr @.str.2, ptr @.str.3, ptr @zopt2201_resolution, ptr @.str.4, ptr @.str.5, ptr @zopt2201_scale_als, ptr @.str.6, ptr @zopt2201_scale_uvb, ptr @zopt2201_gain_uvb, ptr @zopt2201_gain_als], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_channels to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_illuminance_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_intensity_uv_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_resolution to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_scale_als to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_scale_uvb to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_gain_uvb to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zopt2201_gain_als to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @zopt2201_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @zopt2201_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @zopt2201_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #4
  %6 = and i32 %call.i.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 178, i32 %call1)
  %cmp4.not = icmp eq i32 %call1, 178
  br i1 %cmp4.not, label %if.end6, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call7 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 100) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 19
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %client, ptr %8, align 4
  %lock = getelementptr inbounds %struct.zopt2201_data, ptr %8, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @zopt2201_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 17
  %11 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @zopt2201_info, ptr %info, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 13
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @zopt2201_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 14
  %13 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %num_channels, align 4
  %name = getelementptr inbounds %struct.iio_dev, ptr %call7, i32 0, i32 15
  %14 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str, ptr %name, align 8
  %15 = ptrtoint ptr %call7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %call7, align 8
  %rate = getelementptr inbounds %struct.zopt2201_data, ptr %8, i32 0, i32 4
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %rate, align 2
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %8, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %18, i8 noundef zeroext 4, i8 noundef zeroext 34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %res4.i = getelementptr inbounds %struct.zopt2201_data, ptr %8, i32 0, i32 3
  %19 = ptrtoint ptr %res4.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %res4.i, align 1
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %8, align 4
  %call.i48 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %21, i8 noundef zeroext 5, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %cmp.i49 = icmp slt i32 %call.i48, 0
  br i1 %cmp.i49, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  %gain1.i = getelementptr inbounds %struct.zopt2201_data, ptr %8, i32 0, i32 2
  %22 = ptrtoint ptr %gain1.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %gain1.i, align 4
  %call22 = tail call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call7, ptr noundef null) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end16.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.end20 ], [ -95, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call.i, %if.end10.cleanup_crit_edge ], [ %call.i48, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb13
    i32 18, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %conv = trunc i32 %4 to i8
  %call1 = tail call fastcc i32 @zopt2201_read(ptr noundef %1, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %call4 = tail call fastcc i32 @zopt2201_read(ptr noundef %1, i8 noundef zeroext 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %sw.bb3.cleanup_crit_edge, label %if.end8

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %mul = mul i32 %call4, 18
  %res = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %res, align 1
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [6 x %struct.anon.87], ptr @zopt2201_resolution, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %sub = sub i32 20, %9
  %mul9 = shl i32 %mul, %sub
  %gain = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %gain to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %gain, align 4
  %idxprom10 = zext i8 %11 to i32
  %arrayidx11 = getelementptr [5 x %struct.anon.90], ptr @zopt2201_gain_uvb, i32 0, i32 %idxprom10
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  %div = udiv i32 %mul9, %13
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div, ptr %val, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  %address14 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %address14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %address14, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %16, label %sw.bb13.cleanup_crit_edge [
    i32 13, label %sw.bb15
    i32 16, label %sw.bb19
  ]

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb15:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %gain16 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %gain16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %gain16, align 4
  %idxprom17 = zext i8 %19 to i32
  %scale = getelementptr [5 x %struct.anon.91], ptr @zopt2201_gain_als, i32 0, i32 %idxprom17, i32 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  %gain20 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %gain20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %gain20, align 4
  %idxprom21 = zext i8 %21 to i32
  %scale23 = getelementptr [5 x %struct.anon.90], ptr @zopt2201_gain_uvb, i32 0, i32 %idxprom21, i32 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb19, %sw.bb15
  %storemerge.in = phi ptr [ %scale23, %sw.bb19 ], [ %scale, %sw.bb15 ]
  %22 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %storemerge = load i32, ptr %storemerge.in, align 4
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1000000, ptr %val2, align 4
  %res24 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %res24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %res24, align 1
  %idxprom25 = zext i8 %26 to i32
  %arrayidx26 = getelementptr [6 x %struct.anon.87], ptr @zopt2201_resolution, i32 0, i32 %idxprom25
  %27 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx26, align 4
  %sub28 = add i32 %28, -13
  %mul30 = shl i32 1000000, %sub28
  store i32 %mul30, ptr %val2, align 4
  %29 = load i32, ptr %val, align 4
  %conv31 = sext i32 %29 to i64
  %mul32 = mul nsw i64 %conv31, 1000000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #4
  %30 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %remainder.i, align 4, !annotation !59
  %call.i = call i64 @div_s64_rem(i64 noundef %mul32, i32 noundef %mul30, ptr noundef nonnull %remainder.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #4
  %call34 = call i64 @div_s64_rem(i64 noundef %call.i, i32 noundef 1000000, ptr noundef %val2) #4
  %conv35 = trunc i64 %call34 to i32
  %31 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv35, ptr %val, align 4
  br label %cleanup

sw.bb36:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %val, align 4
  %res37 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %33 = ptrtoint ptr %res37 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %res37, align 1
  %idxprom38 = zext i8 %34 to i32
  %us = getelementptr [6 x %struct.anon.87], ptr @zopt2201_resolution, i32 0, i32 %idxprom38, i32 1
  %35 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %us, align 4
  %37 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb36, %sw.epilog, %sw.bb13.cleanup_crit_edge, %if.end8, %sw.bb3.cleanup_crit_edge, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb36 ], [ 2, %sw.epilog ], [ 1, %if.end8 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call4, %sw.bb3.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 18, label %sw.bb
    i32 2, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp.not.i = icmp eq i32 %val, 0
  br i1 %cmp.not.i, label %for.body.preheader.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader.i:                             ; preds = %sw.bb
  %3 = zext i32 %val2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %val2, label %for.body.preheader.i.cleanup_crit_edge [
    i32 400000, label %for.body.preheader.i.if.then3.i_crit_edge
    i32 200000, label %if.then3.fold.split.i
    i32 100000, label %if.then3.fold.split15.i
    i32 50000, label %if.then3.fold.split16.i
    i32 25000, label %if.then3.fold.split17.i
    i32 3125, label %if.then3.fold.split18.i
  ]

for.body.preheader.i.if.then3.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

for.body.preheader.i.cleanup_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.fold.split.i:                            ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.fold.split15.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.fold.split16.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.fold.split17.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.fold.split18.i:                          ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3.i

if.then3.i:                                       ; preds = %if.then3.fold.split18.i, %if.then3.fold.split17.i, %if.then3.fold.split16.i, %if.then3.fold.split15.i, %if.then3.fold.split.i, %for.body.preheader.i.if.then3.i_crit_edge
  %i.013.lcssa.i = phi i8 [ 0, %for.body.preheader.i.if.then3.i_crit_edge ], [ 1, %if.then3.fold.split.i ], [ 2, %if.then3.fold.split15.i ], [ 3, %if.then3.fold.split16.i ], [ 4, %if.then3.fold.split17.i ], [ 5, %if.then3.fold.split18.i ]
  %lock.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %shl.i.i = shl nuw nsw i8 %i.013.lcssa.i, 4
  %rate.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rate.i.i, align 2
  %or.i.i = or i8 %7, %shl.i.i
  %call.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext 4, i8 noundef zeroext %or.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then3.i.cleanup.sink.split_crit_edge, label %if.end.i.i

if.then3.i.cleanup.sink.split_crit_edge:          ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #6
  %res4.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %i.013.lcssa.i, ptr %res4.i.i, align 1
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %10, label %sw.bb2.cleanup_crit_edge [
    i32 13, label %sw.bb2.for.body.i_crit_edge
    i32 16, label %sw.bb2.for.body.i18_crit_edge
  ]

sw.bb2.for.body.i18_crit_edge:                    ; preds = %sw.bb2
  br label %for.body.i18

sw.bb2.for.body.i_crit_edge:                      ; preds = %sw.bb2
  br label %for.body.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb2.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %sw.bb2.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %val)
  %cmp1.i = icmp eq i32 %13, %val
  br i1 %cmp1.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %uscale.i = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i, i32 1
  %14 = ptrtoint ptr %uscale.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %uscale.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %val2)
  %cmp3.i = icmp eq i32 %15, %val2
  br i1 %cmp3.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %lock.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i, i32 noundef 0) #4
  %res.i.i = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i, i32 3
  %16 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %res.i.i, align 1
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %shl.i.i.i = shl i8 %17, 4
  %rate.i.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %rate.i.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rate.i.i.i, align 2
  %or.i.i.i = or i8 %21, %shl.i.i.i
  %call.i.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %19, i8 noundef zeroext 4, i8 noundef zeroext %or.i.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i.cleanup.sink.split_crit_edge, label %if.end.i.i13

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i.i13:                                     ; preds = %if.then.i
  %res4.i.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %22 = ptrtoint ptr %res4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %17, ptr %res4.i.i.i, align 1
  %gain.i.i = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i, i32 2
  %23 = ptrtoint ptr %gain.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gain.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call.i9.i.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext 5, i8 noundef zeroext %24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i)
  %cmp.i10.i.i = icmp slt i32 %call.i9.i.i, 0
  br i1 %cmp.i10.i.i, label %if.end.i.i13.cleanup.sink.split_crit_edge, label %if.end.i11.i.i

if.end.i.i13.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i11.i.i:                                   ; preds = %if.end.i.i13
  call void @__sanitizer_cov_trace_pc() #6
  %gain1.i.i.i = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %gain1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %gain1.i.i.i, align 4
  br label %cleanup.sink.split

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 22
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i18:                                     ; preds = %for.inc.i40.for.body.i18_crit_edge, %sw.bb2.for.body.i18_crit_edge
  %i.09.i15 = phi i32 [ %inc.i38, %for.inc.i40.for.body.i18_crit_edge ], [ 0, %sw.bb2.for.body.i18_crit_edge ]
  %arrayidx.i16 = getelementptr [22 x %struct.anon.89], ptr @zopt2201_scale_uvb, i32 0, i32 %i.09.i15
  %28 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %val)
  %cmp1.i17 = icmp eq i32 %29, %val
  br i1 %cmp1.i17, label %land.lhs.true.i21, label %for.body.i18.for.inc.i40_crit_edge

for.body.i18.for.inc.i40_crit_edge:               ; preds = %for.body.i18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i40

land.lhs.true.i21:                                ; preds = %for.body.i18
  %uscale.i19 = getelementptr [22 x %struct.anon.89], ptr @zopt2201_scale_uvb, i32 0, i32 %i.09.i15, i32 1
  %30 = ptrtoint ptr %uscale.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %uscale.i19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %val2)
  %cmp3.i20 = icmp eq i32 %31, %val2
  br i1 %cmp3.i20, label %if.then.i29, label %land.lhs.true.i21.for.inc.i40_crit_edge

land.lhs.true.i21.for.inc.i40_crit_edge:          ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i40

if.then.i29:                                      ; preds = %land.lhs.true.i21
  %lock.i.i22 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i.i22, i32 noundef 0) #4
  %res.i.i23 = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i15, i32 3
  %32 = ptrtoint ptr %res.i.i23 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %res.i.i23, align 1
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %shl.i.i.i24 = shl i8 %33, 4
  %rate.i.i.i25 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %rate.i.i.i25 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rate.i.i.i25, align 2
  %or.i.i.i26 = or i8 %37, %shl.i.i.i24
  %call.i.i.i27 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %35, i8 noundef zeroext 4, i8 noundef zeroext %or.i.i.i26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i27)
  %cmp.i.i.i28 = icmp slt i32 %call.i.i.i27, 0
  br i1 %cmp.i.i.i28, label %if.then.i29.cleanup.sink.split_crit_edge, label %if.end.i.i34

if.then.i29.cleanup.sink.split_crit_edge:         ; preds = %if.then.i29
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i.i34:                                     ; preds = %if.then.i29
  %res4.i.i.i30 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %res4.i.i.i30 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %33, ptr %res4.i.i.i30, align 1
  %gain.i.i31 = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.09.i15, i32 2
  %39 = ptrtoint ptr %gain.i.i31 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %gain.i.i31, align 4
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %call.i9.i.i32 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %42, i8 noundef zeroext 5, i8 noundef zeroext %40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i32)
  %cmp.i10.i.i33 = icmp slt i32 %call.i9.i.i32, 0
  br i1 %cmp.i10.i.i33, label %if.end.i.i34.cleanup.sink.split_crit_edge, label %if.end.i11.i.i36

if.end.i.i34.cleanup.sink.split_crit_edge:        ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.i11.i.i36:                                 ; preds = %if.end.i.i34
  call void @__sanitizer_cov_trace_pc() #6
  %gain1.i.i.i35 = getelementptr inbounds %struct.zopt2201_data, ptr %1, i32 0, i32 2
  %43 = ptrtoint ptr %gain1.i.i.i35 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %40, ptr %gain1.i.i.i35, align 4
  br label %cleanup.sink.split

for.inc.i40:                                      ; preds = %land.lhs.true.i21.for.inc.i40_crit_edge, %for.body.i18.for.inc.i40_crit_edge
  %inc.i38 = add nuw nsw i32 %i.09.i15, 1
  %exitcond.not.i39 = icmp eq i32 %inc.i38, 22
  br i1 %exitcond.not.i39, label %for.inc.i40.cleanup_crit_edge, label %for.inc.i40.for.body.i18_crit_edge

for.inc.i40.for.body.i18_crit_edge:               ; preds = %for.inc.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i18

for.inc.i40.cleanup_crit_edge:                    ; preds = %for.inc.i40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.i11.i.i36, %if.end.i.i34.cleanup.sink.split_crit_edge, %if.then.i29.cleanup.sink.split_crit_edge, %if.end.i11.i.i, %if.end.i.i13.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %if.end.i.i, %if.then3.i.cleanup.sink.split_crit_edge
  %lock.i.i22.sink = phi ptr [ %lock.i, %if.end.i.i ], [ %lock.i, %if.then3.i.cleanup.sink.split_crit_edge ], [ %lock.i.i, %if.end.i11.i.i ], [ %lock.i.i, %if.end.i.i13.cleanup.sink.split_crit_edge ], [ %lock.i.i, %if.then.i.cleanup.sink.split_crit_edge ], [ %lock.i.i22, %if.end.i11.i.i36 ], [ %lock.i.i22, %if.end.i.i34.cleanup.sink.split_crit_edge ], [ %lock.i.i22, %if.then.i29.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end.i.i ], [ %call.i.i, %if.then3.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i11.i.i ], [ %call.i9.i.i, %if.end.i.i13.cleanup.sink.split_crit_edge ], [ %call.i.i.i, %if.then.i.cleanup.sink.split_crit_edge ], [ 0, %if.end.i11.i.i36 ], [ %call.i9.i.i32, %if.end.i.i34.cleanup.sink.split_crit_edge ], [ %call.i.i.i27, %if.then.i29.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock.i.i22.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc.i40.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %for.body.preheader.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %for.body.preheader.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ -22, %for.inc.i.cleanup_crit_edge ], [ -22, %for.inc.i40.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_show_int_time_available(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4096, ptr noundef nonnull @.str.3, i32 noundef 400000) #4
  %add.ptr.1 = getelementptr i8, ptr %buf, i32 %call
  %sub.1 = sub i32 4096, %call
  %call.1 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.1, i32 noundef %sub.1, ptr noundef nonnull @.str.3, i32 noundef 200000) #4
  %add.1 = add i32 %call.1, %call
  %add.ptr.2 = getelementptr i8, ptr %buf, i32 %add.1
  %sub.2 = sub i32 4096, %add.1
  %call.2 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.2, i32 noundef %sub.2, ptr noundef nonnull @.str.3, i32 noundef 100000) #4
  %add.2 = add i32 %call.2, %add.1
  %add.ptr.3 = getelementptr i8, ptr %buf, i32 %add.2
  %sub.3 = sub i32 4096, %add.2
  %call.3 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.3, i32 noundef %sub.3, ptr noundef nonnull @.str.3, i32 noundef 50000) #4
  %add.3 = add i32 %call.3, %add.2
  %add.ptr.4 = getelementptr i8, ptr %buf, i32 %add.3
  %sub.4 = sub i32 4096, %add.3
  %call.4 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.4, i32 noundef %sub.4, ptr noundef nonnull @.str.3, i32 noundef 25000) #4
  %add.4 = add i32 %call.4, %add.3
  %add.ptr.5 = getelementptr i8, ptr %buf, i32 %add.4
  %sub.5 = sub i32 4096, %add.4
  %call.5 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr.5, i32 noundef %sub.5, ptr noundef nonnull @.str.3, i32 noundef 3125) #4
  %add.5 = add i32 %call.5, %add.4
  %sub1 = add i32 %add.5, -1
  %arrayidx2 = getelementptr i8, ptr %buf, i32 %sub1
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx2, align 1
  ret i32 %add.5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_show_als_scale_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.012
  %sub = sub i32 4096, %len.012
  %arrayidx = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %uscale = getelementptr [22 x %struct.anon.88], ptr @zopt2201_scale_als, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uscale, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %3) #4
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 22
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @zopt2201_show_uvb_scale_avail(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.013 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.012 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.012
  %sub = sub i32 4096, %len.012
  %arrayidx = getelementptr [22 x %struct.anon.89], ptr @zopt2201_scale_uvb, i32 0, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %uscale = getelementptr [22 x %struct.anon.89], ptr @zopt2201_scale_uvb, i32 0, i32 %i.013, i32 1
  %2 = ptrtoint ptr %uscale to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %uscale, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.5, i32 noundef %1, i32 noundef %3) #4
  %add = add i32 %call, %len.012
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, 22
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zopt2201_read(ptr noundef %data, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !59
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !59
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !59
  %lock = getelementptr inbounds %struct.zopt2201_data, ptr %data, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %reg)
  %cmp = icmp eq i8 %reg, 16
  %spec.select.i = select i1 %cmp, i8 10, i8 2
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext %spec.select.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %entry.fail_crit_edge, label %while.cond.preheader

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

while.cond.preheader:                             ; preds = %entry
  %res = getelementptr inbounds %struct.zopt2201_data, ptr %data, i32 0, i32 3
  br label %while.cond

while.cond:                                       ; preds = %if.end8.while.cond_crit_edge, %while.cond.preheader
  %tries.0 = phi i32 [ %dec, %if.end8.while.cond_crit_edge ], [ 10, %while.cond.preheader ]
  %dec = add nsw i32 %tries.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tries.0)
  %tobool.not = icmp eq i32 %tries.0, 0
  br i1 %tobool.not, label %while.cond.fail_crit_edge, label %while.body

while.cond.fail_crit_edge:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %res to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %res, align 1
  %idxprom = zext i8 %10 to i32
  %us = getelementptr [6 x %struct.anon.87], ptr @zopt2201_resolution, i32 0, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %us, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %10)
  %cmp5 = icmp eq i8 %10, 5
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %add = add i32 %12, 1000
  tail call void @usleep_range_state(i32 noundef %12, i32 noundef %add, i32 noundef 2) #4
  br label %if.end8

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %div = udiv i32 %12, 1000
  tail call void @msleep(i32 noundef %div) #4
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then7
  %call9 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %1, i8 noundef zeroext 7) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  %and = lshr i32 %call9, 1
  %13 = and i32 %and, 4
  %cleanup.dest.slot.0 = select i1 %cmp10, i32 2, i32 %13
  %14 = zext i32 %cleanup.dest.slot.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %cleanup.dest.slot.0, label %if.end8.cleanup35_crit_edge [
    i32 0, label %if.end8.while.cond_crit_edge
    i32 4, label %while.end
    i32 2, label %if.end8.fail_crit_edge
  ]

if.end8.fail_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end8.while.cond_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond

if.end8.cleanup35_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup35

while.end:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %tries.0)
  %cmp17 = icmp slt i32 %tries.0, 1
  br i1 %cmp17, label %while.end.fail_crit_edge, label %if.end20

while.end.fail_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end20:                                         ; preds = %while.end
  %call21 = call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %1, i8 noundef zeroext %reg, i8 noundef zeroext 3, ptr noundef nonnull %buf) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end20.fail_crit_edge, label %if.end25

if.end20.fail_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end25:                                         ; preds = %if.end20
  %call26 = call i32 @i2c_smbus_write_byte_data(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end25.fail_crit_edge, label %if.end30

if.end25.fail_crit_edge:                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail

if.end30:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  call void @mutex_unlock(ptr noundef %lock) #4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %buf, align 1
  %conv.i.i = zext i8 %16 to i32
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %3, align 1
  %conv2.i.i = zext i8 %18 to i32
  %shl.i.i = shl nuw nsw i32 %conv2.i.i, 8
  %or.i.i = or i32 %shl.i.i, %conv.i.i
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %5, align 1
  %conv4.i.i = zext i8 %20 to i32
  %shl5.i.i = shl nuw nsw i32 %conv4.i.i, 16
  %or6.i.i = or i32 %or.i.i, %shl5.i.i
  br label %cleanup35

fail:                                             ; preds = %if.end25.fail_crit_edge, %if.end20.fail_crit_edge, %while.end.fail_crit_edge, %if.end8.fail_crit_edge, %while.cond.fail_crit_edge, %entry.fail_crit_edge
  %ret.0 = phi i32 [ %call.i, %entry.fail_crit_edge ], [ %call21, %if.end20.fail_crit_edge ], [ %call26, %if.end25.fail_crit_edge ], [ -110, %while.end.fail_crit_edge ], [ -110, %while.cond.fail_crit_edge ], [ %call9, %if.end8.fail_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #4
  br label %cleanup35

cleanup35:                                        ; preds = %fail, %if.end30, %if.end8.cleanup35_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ %or6.i.i, %if.end30 ], [ undef, %if.end8.cleanup35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_zopt2201__288_562_zopt2201_driver_init6, !1, !"__initcall__kmod_zopt2201__288_562_zopt2201_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/zopt2201.c", i32 562, i32 1}
!2 = !{ptr @__exitcall_zopt2201_driver_exit, !1, !"__exitcall_zopt2201_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/zopt2201.c", i32 564, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/zopt2201.c", i32 565, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/zopt2201.c", i32 566, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/zopt2201.c", i32 556, i32 13}
!12 = !{ptr @zopt2201_driver, !13, !"zopt2201_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/zopt2201.c", i32 554, i32 26}
!14 = !{ptr @zopt2201_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/zopt2201.c", i32 528, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @zopt2201_info, !18, !"zopt2201_info", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/zopt2201.c", i32 498, i32 30}
!19 = !{ptr @zopt2201_attribute_group, !20, !"zopt2201_attribute_group", i1 false, i1 false}
!20 = !{!"../drivers/iio/light/zopt2201.c", i32 494, i32 37}
!21 = !{ptr @zopt2201_attributes, !22, !"zopt2201_attributes", i1 false, i1 false}
!22 = !{!"../drivers/iio/light/zopt2201.c", i32 487, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/light/zopt2201.c", i32 448, i32 8}
!25 = !{ptr @iio_dev_attr_integration_time_available, !24, !"iio_dev_attr_integration_time_available", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/light/zopt2201.c", i32 441, i32 48}
!28 = !{ptr @zopt2201_resolution, !29, !"zopt2201_resolution", i1 false, i1 false}
!29 = !{!"../drivers/iio/light/zopt2201.c", i32 107, i32 3}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/light/zopt2201.c", i32 482, i32 8}
!32 = !{ptr @iio_dev_attr_in_illuminance_scale_available, !31, !"iio_dev_attr_in_illuminance_scale_available", i1 false, i1 false}
!33 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/zopt2201.c", i32 458, i32 48}
!35 = !{ptr @zopt2201_scale_als, !36, !"zopt2201_scale_als", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/zopt2201.c", i32 120, i32 3}
!37 = !{ptr @.str.6, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/iio/light/zopt2201.c", i32 484, i32 8}
!39 = !{ptr @iio_dev_attr_in_intensity_uv_scale_available, !38, !"iio_dev_attr_in_intensity_uv_scale_available", i1 false, i1 false}
!40 = !{ptr @zopt2201_scale_uvb, !41, !"zopt2201_scale_uvb", i1 false, i1 false}
!41 = !{!"../drivers/iio/light/zopt2201.c", i32 149, i32 3}
!42 = !{ptr @zopt2201_gain_uvb, !43, !"zopt2201_gain_uvb", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/zopt2201.c", i32 96, i32 3}
!44 = !{ptr @zopt2201_gain_als, !45, !"zopt2201_gain_als", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/zopt2201.c", i32 85, i32 3}
!46 = !{ptr @zopt2201_channels, !47, !"zopt2201_channels", i1 false, i1 false}
!47 = !{!"../drivers/iio/light/zopt2201.c", i32 231, i32 35}
!48 = !{ptr @zopt2201_id, !49, !"zopt2201_id", i1 false, i1 false}
!49 = !{!"../drivers/iio/light/zopt2201.c", i32 548, i32 35}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{!"auto-init"}
