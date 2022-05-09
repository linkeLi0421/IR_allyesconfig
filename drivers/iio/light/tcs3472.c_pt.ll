; ModuleID = '/llk/IR_all_yes/drivers/iio/light/tcs3472.c_pt.bc'
source_filename = "../drivers/iio/light/tcs3472.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.87, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.87 = type { i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_const_attr = type { ptr, %struct.device_attribute }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
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
%struct.tcs3472_data = type { ptr, %struct.mutex, i16, i16, i8, i8, i8, i8, %struct.anon.86 }
%struct.anon.86 = type { [4 x i16], i64 }

@__initcall__kmod_tcs3472__288_620_tcs3472_driver_init6 = internal global ptr @tcs3472_driver_init, section ".initcall6.init", align 4
@tcs3472_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tcs3472_probe, ptr @tcs3472_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tcs3472_pm_ops, ptr null, ptr null }, ptr @tcs3472_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tcs3472_driver_exit = internal global ptr @tcs3472_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [50 x i8] c"tcs3472.author=Peter Meerwald <pmeerw@pmeerw.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [55 x i8] c"tcs3472.description=TCS3472 color light sensors driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [39 x i8] c"tcs3472.file=drivers/iio/light/tcs3472\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [20 x i8] c"tcs3472.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tcs3472\00", [24 x i8] zeroinitializer }, align 32
@tcs3472_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @tcs3472_suspend, ptr @tcs3472_resume, ptr @tcs3472_suspend, ptr @tcs3472_resume, ptr @tcs3472_suspend, ptr @tcs3472_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tcs3472_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tcs3472\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tcs3472_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@tcs3472_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @tcs3472_attribute_group, ptr @tcs3472_read_raw, ptr null, ptr null, ptr @tcs3472_write_raw, ptr null, ptr null, ptr @tcs3472_read_event_config, ptr @tcs3472_write_event_config, ptr @tcs3472_read_event, ptr @tcs3472_write_event, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@tcs3472_channels = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 7, i32 0, i32 16, i32 180, i32 0, %struct.anon.87 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @tcs3472_events, i32 3, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 17, i32 182, i32 1, %struct.anon.87 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 18, i32 184, i32 2, %struct.anon.87 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 7, i32 0, i32 19, i32 186, i32 3, %struct.anon.87 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 0 }, i32 1, i32 0, i32 262160, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 4, %struct.anon.87 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], [104 x i8] zeroinitializer }, align 32
@tcs3472_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 472, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCS34721/34725 found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcs3472_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/light/tcs3472.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tcs3472_probe._entry_ptr = internal global ptr @tcs3472_probe._entry, section ".printk_index", align 4
@tcs3472_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 474, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TCS34723/34727 found\0A\00", [42 x i8] zeroinitializer }, align 32
@tcs3472_probe._entry_ptr.9 = internal global ptr @tcs3472_probe._entry.7, section ".printk_index", align 4
@tcs3472_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @tcs3472_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@tcs3472_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr getelementptr (i8, ptr @iio_const_attr_calibscale_available, i64 4), ptr @iio_dev_attr_integration_time_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_const_attr_calibscale_available = internal global { %struct.iio_const_attr, [32 x i8] } { %struct.iio_const_attr { ptr @.str.10, %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @iio_read_const_attr, ptr null } }, [32 x i8] zeroinitializer }, align 32
@iio_dev_attr_integration_time_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @tcs3472_show_int_time_available, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"1 4 16 60\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"calibscale_available\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"integration_time_available\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.%06d \00", [24 x i8] zeroinitializer }, align 32
@tcs3472_agains = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 4, i32 16, i32 60], [16 x i8] zeroinitializer }, align 32
@tcs3472_req_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 135, ptr @.str.16, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"data not ready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tcs3472_req_data\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@tcs3472_req_data._entry_ptr = internal global ptr @tcs3472_req_data._entry, section ".printk_index", align 4
@tcs3472_intr_pers = internal constant { [16 x i32], [32 x i8] } { [16 x i32] [i32 0, i32 1, i32 2, i32 3, i32 5, i32 10, i32 15, i32 20, i32 25, i32 30, i32 35, i32 40, i32 45, i32 50, i32 55, i32 60], [32 x i8] zeroinitializer }, align 32
@tcs3472_events = internal constant { [3 x %struct.iio_event_spec], [56 x i8] } { [3 x %struct.iio_event_spec] [%struct.iio_event_spec { i32 0, i32 1, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 2, i32 2, i32 0, i32 0, i32 0 }, %struct.iio_event_spec { i32 0, i32 0, i32 9, i32 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 68, i64 77]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4, i64 18]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 18]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 16, i64 60]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"tcs3472_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 611, i32 26 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 613, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"tcs3472_pm_ops\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 603, i32 8 }
@___asan_gen_.32 = private unnamed_addr constant [11 x i8] c"tcs3472_id\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 605, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 459, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [13 x i8] c"tcs3472_info\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 435, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"tcs3472_channels\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 112, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 472, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 474, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"tcs3472_attribute_group\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 431, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [19 x i8] c"tcs3472_attributes\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 425, i32 26 }
@___asan_gen_.77 = private unnamed_addr constant [36 x i8] c"iio_const_attr_calibscale_available\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_integration_time_available\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 422, i32 8 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 423, i32 8 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 413, i32 48 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"tcs3472_agains\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 110, i32 18 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 135, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"tcs3472_intr_pers\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 219, i32 18 }
@___asan_gen_.113 = private unnamed_addr constant [15 x i8] c"tcs3472_events\00", align 1
@___asan_gen_.114 = private constant [31 x i8] c"../drivers/iio/light/tcs3472.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 74, i32 36 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_tcs3472_driver_exit, ptr @__initcall__kmod_tcs3472__288_620_tcs3472_driver_init6, ptr @tcs3472_driver_exit, ptr @tcs3472_probe._entry, ptr @tcs3472_probe._entry.7, ptr @tcs3472_probe._entry_ptr, ptr @tcs3472_probe._entry_ptr.9, ptr @tcs3472_req_data._entry, ptr @tcs3472_req_data._entry_ptr, ptr @tcs3472_driver, ptr @.str, ptr @tcs3472_pm_ops, ptr @tcs3472_id, ptr @tcs3472_probe.__key, ptr @.str.1, ptr @tcs3472_info, ptr @tcs3472_channels, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @tcs3472_attribute_group, ptr @tcs3472_attributes, ptr @iio_const_attr_calibscale_available, ptr @iio_dev_attr_integration_time_available, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @tcs3472_agains, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @tcs3472_intr_pers, ptr @tcs3472_events], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_channels to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_const_attr_calibscale_available to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_integration_time_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_agains to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_req_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_intr_pers to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcs3472_events to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tcs3472_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcs3472_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @tcs3472_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 120) #4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

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
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %1, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @tcs3472_probe.__key) #4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tcs3472_info, ptr %info, align 8
  %name = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %name, align 8
  %channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcs3472_channels, ptr %channels, align 8
  %num_channels = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %7 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5, ptr %num_channels, align 4
  %8 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %call, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %call4 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %10, i8 noundef zeroext -110) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %11 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call4, label %if.end7.cleanup_crit_edge [
    i32 68, label %if.end7.if.end22_crit_edge
    i32 77, label %do.end18
  ]

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %if.end7.if.end22_crit_edge
  %.str.8.sink = phi ptr [ @.str.8, %do.end18 ], [ @.str.2, %if.end7.if.end22_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.8.sink) #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %call24 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %13, i8 noundef zeroext -113) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %conv = trunc i32 %call24 to i8
  %control = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %control to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %control, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call29 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %16, i8 noundef zeroext -127) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end27.cleanup_crit_edge, label %if.end33

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %if.end27
  %conv34 = trunc i32 %call29 to i8
  %atime = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %atime to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv34, ptr %atime, align 2
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call36 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %19, i8 noundef zeroext -92) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end33.cleanup_crit_edge, label %if.end40

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end33
  %conv41 = trunc i32 %call36 to i16
  %low_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv41, ptr %low_thresh, align 8
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call43 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %22, i8 noundef zeroext -90) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end40.cleanup_crit_edge, label %if.end47

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end40
  %conv48 = trunc i32 %call43 to i16
  %high_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %high_thresh to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv48, ptr %high_thresh, align 2
  %apers = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 7
  %24 = ptrtoint ptr %apers to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %apers, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 8
  %call51 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %26, i8 noundef zeroext -116, i8 noundef zeroext 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end47.cleanup_crit_edge, label %if.end55

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %call57 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %28, i8 noundef zeroext -128) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58 = icmp slt i32 %call57, 0
  br i1 %cmp58, label %if.end55.cleanup_crit_edge, label %if.end61

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end61:                                         ; preds = %if.end55
  %enable = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 4
  %29 = trunc i32 %call57 to i8
  %30 = and i8 %29, -20
  %conv66 = or i8 %30, 3
  %31 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv66, ptr %enable, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 8
  %call69 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %33, i8 noundef zeroext -128, i8 noundef zeroext %conv66) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %cmp70 = icmp slt i32 %call69, 0
  br i1 %cmp70, label %if.end61.cleanup_crit_edge, label %if.end73

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end73:                                         ; preds = %if.end61
  %call74 = tail call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @tcs3472_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %cmp75 = icmp slt i32 %call74, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %if.end78

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end78:                                         ; preds = %if.end73
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %34 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %if.end78.if.end86_crit_edge, label %if.then79

if.end78.if.end86_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.then79:                                        ; preds = %if.end78
  %name81 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 2
  %call82 = tail call i32 @request_threaded_irq(i32 noundef %35, ptr noundef null, ptr noundef nonnull @tcs3472_event_handler, i32 noundef 8322, ptr noundef %name81, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %if.then79.if.end86_crit_edge, label %if.then79.buffer_cleanup_crit_edge

if.then79.buffer_cleanup_crit_edge:               ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %buffer_cleanup

if.then79.if.end86_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end86

if.end86:                                         ; preds = %if.then79.if.end86_crit_edge, %if.end78.if.end86_crit_edge
  %call87 = tail call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %free_irq, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

free_irq:                                         ; preds = %if.end86
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool93.not = icmp eq i32 %37, 0
  br i1 %tobool93.not, label %free_irq.buffer_cleanup_crit_edge, label %if.then94

free_irq.buffer_cleanup_crit_edge:                ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #6
  br label %buffer_cleanup

if.then94:                                        ; preds = %free_irq
  call void @__sanitizer_cov_trace_pc() #6
  %call96 = tail call ptr @free_irq(i32 noundef %37, ptr noundef nonnull %call) #4
  br label %buffer_cleanup

buffer_cleanup:                                   ; preds = %if.then94, %free_irq.buffer_cleanup_crit_edge, %if.then79.buffer_cleanup_crit_edge
  %ret.0 = phi i32 [ %call82, %if.then79.buffer_cleanup_crit_edge ], [ %call87, %if.then94 ], [ %call87, %free_irq.buffer_cleanup_crit_edge ]
  tail call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %buffer_cleanup, %if.end86.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.end55.cleanup_crit_edge, %if.end47.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %buffer_cleanup ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ %call24, %if.end22.cleanup_crit_edge ], [ %call29, %if.end27.cleanup_crit_edge ], [ %call36, %if.end33.cleanup_crit_edge ], [ %call43, %if.end40.cleanup_crit_edge ], [ %call51, %if.end47.cleanup_crit_edge ], [ %call57, %if.end55.cleanup_crit_edge ], [ %call69, %if.end61.cleanup_crit_edge ], [ %call74, %if.end73.cleanup_crit_edge ], [ 0, %if.end86.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @iio_device_unregister(ptr noundef %1) #4
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.tcs3472_data, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %enable.i = getelementptr inbounds %struct.tcs3472_data, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable.i, align 4
  %10 = and i8 %9, -4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -128, i8 noundef zeroext %10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.tcs3472_powerdown.exit_crit_edge

if.end.tcs3472_powerdown.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcs3472_powerdown.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable.i, align 4
  %13 = and i8 %12, -4
  store i8 %13, ptr %enable.i, align 4
  br label %tcs3472_powerdown.exit

tcs3472_powerdown.exit:                           ; preds = %if.then.i, %if.end.tcs3472_powerdown.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %entry
  %dec17.i = phi i32 [ 49, %entry ], [ %dec.i, %if.end3.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %5, i8 noundef zeroext -109) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.done_crit_edge, label %if.end.i

while.body.i.done_crit_edge:                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end.i:                                         ; preds = %while.body.i
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %while.end.i

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #4
  %dec.i = add nsw i32 %dec17.i, -1
  %tobool.not.i = icmp eq i32 %dec17.i, 0
  br i1 %tobool.not.i, label %if.end3.i.do.end.i_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i)
  %cmp4.i = icmp slt i32 %dec17.i, 0
  br i1 %cmp4.i, label %while.end.i.do.end.i_crit_edge, label %if.end

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %while.end.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #7
  br label %done

if.end:                                           ; preds = %while.end.i
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_scan_mask, align 4
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %masklength, align 8
  %call3 = tail call i32 @_find_next_bit_be(ptr noundef %9, i32 noundef %11, i32 noundef 0) #4
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %13)
  %cmp542 = icmp ult i32 %call3, %13
  br i1 %cmp542, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %scan = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %j.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %i.043 = phi i32 [ %call3, %for.body.lr.ph ], [ %call15, %if.end10.for.body_crit_edge ]
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 8
  %i.0.tr = trunc i32 %i.043 to i8
  %16 = shl i8 %i.0.tr, 1
  %conv = add i8 %16, -76
  %call6 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %15, i8 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %for.body.done_crit_edge, label %if.end10

for.body.done_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %done

if.end10:                                         ; preds = %for.body
  %conv11 = trunc i32 %call6 to i16
  %inc = add i32 %j.044, 1
  %arrayidx = getelementptr [4 x i16], ptr %scan, i32 0, i32 %j.044
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv11, ptr %arrayidx, align 2
  %18 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %active_scan_mask, align 4
  %20 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %masklength, align 8
  %add14 = add nuw i32 %i.043, 1
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %19, i32 noundef %21, i32 noundef %add14) #4
  %22 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %masklength, align 8
  %cmp5 = icmp ult i32 %call15, %23
  br i1 %cmp5, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %if.end10.for.end_crit_edge, %if.end.for.end_crit_edge
  %scan16 = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 8
  %call17 = tail call i64 @iio_get_time_ns(ptr noundef %1) #4
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %scan_timestamp.i, align 8, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i34 = icmp eq i8 %25, 0
  br i1 %tobool.not.i34, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %26 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %27, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i = getelementptr i64, ptr %scan16, i32 %sub.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %call17, ptr %arrayidx.i, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i35 = tail call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef %scan16) #4
  br label %done

done:                                             ; preds = %iio_push_to_buffers_with_timestamp.exit, %for.body.done_crit_edge, %do.end.i, %while.body.i.done_crit_edge
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %29 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %trig, align 4
  tail call void @iio_trigger_notify_done(ptr noundef %30) #4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_event_handler(i32 noundef %irq, ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %priv, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %call1 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %3, i8 noundef zeroext -109) #4
  %4 = and i32 %call1, -2147483632
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %.not = icmp eq i32 %4, 16
  br i1 %.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i64 @iio_get_time_ns(ptr noundef %priv) #4
  %call3 = tail call i32 @iio_push_event(ptr noundef %priv, i64 noundef 30064771072, i64 noundef %call2) #4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %call5 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %6, i8 noundef zeroext -26) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_read_raw(ptr noundef %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb10
    i32 18, label %sw.bb12
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @iio_device_claim_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %sw.bb.while.body.i_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb.while.body.i_crit_edge:                     ; preds = %sw.bb
  br label %while.body.i

while.body.i:                                     ; preds = %if.end3.i.while.body.i_crit_edge, %sw.bb.while.body.i_crit_edge
  %dec17.i = phi i32 [ %dec.i, %if.end3.i.while.body.i_crit_edge ], [ 49, %sw.bb.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %4, i8 noundef zeroext -109) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %while.body.i.if.then3_crit_edge, label %if.end.i

while.body.i.if.then3_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end.i:                                         ; preds = %while.body.i
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %while.end.i

if.end3.i:                                        ; preds = %if.end.i
  tail call void @msleep(i32 noundef 20) #4
  %dec.i = add nsw i32 %dec17.i, -1
  %tobool.not.i = icmp eq i32 %dec17.i, 0
  br i1 %tobool.not.i, label %if.end3.i.do.end.i_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.i

if.end3.i.do.end.i_crit_edge:                     ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

while.end.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec17.i)
  %cmp4.i = icmp slt i32 %dec17.i, 0
  br i1 %cmp4.i, label %while.end.i.do.end.i_crit_edge, label %if.end4

while.end.i.do.end.i_crit_edge:                   ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end.i

do.end.i:                                         ; preds = %while.end.i.do.end.i_crit_edge, %if.end3.i.do.end.i_crit_edge
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 8
  %dev.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.14) #7
  br label %if.then3

if.then3:                                         ; preds = %do.end.i, %while.body.i.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ -5, %do.end.i ], [ %call.i, %while.body.i.if.then3_crit_edge ]
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  br label %cleanup

if.end4:                                          ; preds = %while.end.i
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %address, align 4
  %conv = trunc i32 %10 to i8
  %call5 = tail call i32 @i2c_smbus_read_word_data(ptr noundef %8, i8 noundef zeroext %conv) #4
  tail call void @iio_device_release_direct_mode(ptr noundef %indio_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call5, ptr %val, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %control = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %control, align 1
  %14 = and i8 %13, 3
  %and = zext i8 %14 to i32
  %arrayidx = getelementptr [4 x i32], ptr @tcs3472_agains, i32 0, i32 %and
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %val, align 4
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %18 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %val, align 4
  %atime = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %atime to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %atime, align 2
  %conv13 = zext i8 %20 to i32
  %sub = sub nuw nsw i32 256, %conv13
  %mul = mul nuw nsw i32 %sub, 2400
  %21 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %mul, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb12, %sw.bb10, %if.end9, %if.end4.cleanup_crit_edge, %if.then3, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb12 ], [ 1, %sw.bb10 ], [ %retval.0.i.ph, %if.then3 ], [ 1, %if.end9 ], [ %call1, %sw.bb.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 18, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %cmp.not = icmp eq i32 %val2, 0
  br i1 %cmp.not, label %for.body.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader:                               ; preds = %sw.bb
  %3 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %val, label %for.body.preheader.cleanup_crit_edge [
    i32 1, label %for.body.preheader.if.then3_crit_edge
    i32 4, label %if.then3.fold.split
    i32 16, label %if.then3.fold.split57
    i32 60, label %if.then3.fold.split58
  ]

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3.fold.split:                              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3.fold.split57:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3.fold.split58:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.then3:                                         ; preds = %if.then3.fold.split58, %if.then3.fold.split57, %if.then3.fold.split, %for.body.preheader.if.then3_crit_edge
  %i.051.lcssa = phi i8 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %if.then3.fold.split ], [ 2, %if.then3.fold.split57 ], [ 3, %if.then3.fold.split58 ]
  %control = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %control to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %control, align 1
  %6 = and i8 %5, -4
  %conv7 = or i8 %6, %i.051.lcssa
  store i8 %conv7, ptr %control, align 1
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %call9 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %8, i8 noundef zeroext -113, i8 noundef zeroext %conv7) #4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %cmp12.not = icmp eq i32 %val, 0
  br i1 %cmp12.not, label %sw.bb11.for.body19_crit_edge, label %sw.bb11.cleanup_crit_edge

sw.bb11.cleanup_crit_edge:                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb11.for.body19_crit_edge:                     ; preds = %sw.bb11
  br label %for.body19

for.body19:                                       ; preds = %for.inc28.for.body19_crit_edge, %sw.bb11.for.body19_crit_edge
  %i.150 = phi i32 [ %inc29, %for.inc28.for.body19_crit_edge ], [ 0, %sw.bb11.for.body19_crit_edge ]
  %sub = sub nuw nsw i32 256, %i.150
  %mul = mul nuw nsw i32 %sub, 2400
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %val2)
  %cmp20 = icmp eq i32 %mul, %val2
  br i1 %cmp20, label %if.then22, label %for.inc28

if.then22:                                        ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #6
  %conv23 = trunc i32 %i.150 to i8
  %atime = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %atime to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv23, ptr %atime, align 2
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call26 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -127, i8 noundef zeroext %conv23) #4
  br label %cleanup

for.inc28:                                        ; preds = %for.body19
  %inc29 = add nuw nsw i32 %i.150, 1
  %exitcond.not = icmp eq i32 %inc29, 256
  br i1 %exitcond.not, label %for.inc28.cleanup_crit_edge, label %for.inc28.for.body19_crit_edge

for.inc28.for.body19_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body19

for.inc28.cleanup_crit_edge:                      ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

cleanup:                                          ; preds = %for.inc28.cleanup_crit_edge, %if.then22, %sw.bb11.cleanup_crit_edge, %if.then3, %for.body.preheader.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.then22 ], [ %call9, %if.then3 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb11.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.body.preheader.cleanup_crit_edge ], [ -22, %for.inc28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %enable = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  %4 = lshr i8 %3, 4
  %.lobit = and i8 %4, 1
  %5 = zext i8 %.lobit to i32
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %enable = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not = icmp eq i32 %state, 0
  %4 = and i8 %3, -17
  %masksel = select i1 %tobool.not, i8 0, i8 16
  %storemerge = or i8 %4, %masksel
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge, ptr %enable, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %storemerge)
  %cmp.not = icmp eq i8 %3, %storemerge
  br i1 %cmp.not, label %entry.if.end17_crit_edge, label %if.then10

entry.if.end17_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then10:                                        ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call12 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %7, i8 noundef zeroext -128, i8 noundef zeroext %storemerge) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then10.if.end17_crit_edge, label %if.then14

if.then10.if.end17_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.then14:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %3, ptr %enable, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.then10.if.end17_crit_edge, %entry.if.end17_crit_edge
  %ret.0 = phi i32 [ %call12, %if.then14 ], [ 0, %if.then10.if.end17_crit_edge ], [ 0, %entry.if.end17_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_read_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %info, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  %high_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 3
  %low_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 2
  %cond.in.in = select i1 %cmp, ptr %high_thresh, ptr %low_thresh
  %3 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load2_noabort(i32 %3)
  %cond.in = load i16, ptr %cond.in.in, align 2
  %cond = zext i16 %cond.in to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %val, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %atime = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %atime to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %atime, align 2
  %conv3 = zext i8 %6 to i32
  %sub = sub nuw nsw i32 256, %conv3
  %mul = mul nuw nsw i32 %sub, 2400
  %apers = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %apers to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %apers, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [16 x i32], ptr @tcs3472_intr_pers, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %mul4 = mul i32 %mul, %10
  %mul4.frozen = freeze i32 %mul4
  %div = udiv i32 %mul4.frozen, 1000000
  %11 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %val, align 4
  %12 = mul i32 %div, 1000000
  %rem.decomposed = sub i32 %mul4.frozen, %12
  %13 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem.decomposed, ptr %val2, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 2, %sw.bb2 ], [ 1, %sw.bb ], [ -22, %entry.sw.epilog_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_write_event(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %info, label %entry.error_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb9
  ]

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

sw.bb:                                            ; preds = %entry
  %3 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %dir, label %sw.bb.error_crit_edge [
    i32 1, label %sw.bb.sw.epilog_crit_edge
    i32 2, label %sw.bb2
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.error_crit_edge:                            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

sw.bb2:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb.sw.epilog_crit_edge
  %command.0 = phi i8 [ -92, %sw.bb2 ], [ -90, %sw.bb.sw.epilog_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %conv = trunc i32 %val to i16
  %call3 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %5, i8 noundef zeroext %command.0, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %sw.epilog.error_crit_edge

sw.epilog.error_crit_edge:                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp = icmp eq i32 %dir, 1
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %high_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %high_thresh to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv, ptr %high_thresh, align 2
  br label %error

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %low_thresh = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %low_thresh to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %low_thresh, align 8
  br label %error

sw.bb9:                                           ; preds = %entry
  %mul = mul i32 %val, 1000000
  %add = add i32 %mul, %val2
  %atime = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %atime to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %atime, align 2
  %conv12 = zext i8 %9 to i32
  %sub = sub nuw nsw i32 256, %conv12
  %mul14 = mul nuw nsw i32 %sub, 2400
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14)
  %cmp15.not = icmp sgt i32 %add, %mul14
  br i1 %cmp15.not, label %for.inc, label %sw.bb9.for.end_crit_edge

sw.bb9.for.end_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc:                                          ; preds = %sw.bb9
  %mul14.1 = mul nuw nsw i32 %sub, 4800
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.1)
  %cmp15.not.1 = icmp sgt i32 %add, %mul14.1
  br i1 %cmp15.not.1, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %mul14.2 = mul nuw nsw i32 %sub, 7200
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.2)
  %cmp15.not.2 = icmp sgt i32 %add, %mul14.2
  br i1 %cmp15.not.2, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  %mul14.3 = mul nuw nsw i32 %sub, 12000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.3)
  %cmp15.not.3 = icmp sgt i32 %add, %mul14.3
  br i1 %cmp15.not.3, label %for.inc.3, label %for.inc.2.for.end_crit_edge

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.3:                                        ; preds = %for.inc.2
  %mul14.4 = mul nuw nsw i32 %sub, 24000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.4)
  %cmp15.not.4 = icmp sgt i32 %add, %mul14.4
  br i1 %cmp15.not.4, label %for.inc.4, label %for.inc.3.for.end_crit_edge

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.4:                                        ; preds = %for.inc.3
  %mul14.5 = mul nuw nsw i32 %sub, 36000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.5)
  %cmp15.not.5 = icmp sgt i32 %add, %mul14.5
  br i1 %cmp15.not.5, label %for.inc.5, label %for.inc.4.for.end_crit_edge

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.5:                                        ; preds = %for.inc.4
  %mul14.6 = mul nuw nsw i32 %sub, 48000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.6)
  %cmp15.not.6 = icmp sgt i32 %add, %mul14.6
  br i1 %cmp15.not.6, label %for.inc.6, label %for.inc.5.for.end_crit_edge

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.6:                                        ; preds = %for.inc.5
  %mul14.7 = mul nuw nsw i32 %sub, 60000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.7)
  %cmp15.not.7 = icmp sgt i32 %add, %mul14.7
  br i1 %cmp15.not.7, label %for.inc.7, label %for.inc.6.for.end_crit_edge

for.inc.6.for.end_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.7:                                        ; preds = %for.inc.6
  %mul14.8 = mul nuw nsw i32 %sub, 72000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.8)
  %cmp15.not.8 = icmp sgt i32 %add, %mul14.8
  br i1 %cmp15.not.8, label %for.inc.8, label %for.inc.7.for.end_crit_edge

for.inc.7.for.end_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.8:                                        ; preds = %for.inc.7
  %mul14.9 = mul nuw nsw i32 %sub, 84000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.9)
  %cmp15.not.9 = icmp sgt i32 %add, %mul14.9
  br i1 %cmp15.not.9, label %for.inc.9, label %for.inc.8.for.end_crit_edge

for.inc.8.for.end_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.9:                                        ; preds = %for.inc.8
  %mul14.10 = mul nuw nsw i32 %sub, 96000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.10)
  %cmp15.not.10 = icmp sgt i32 %add, %mul14.10
  br i1 %cmp15.not.10, label %for.inc.10, label %for.inc.9.for.end_crit_edge

for.inc.9.for.end_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.10:                                       ; preds = %for.inc.9
  %mul14.11 = mul nuw nsw i32 %sub, 108000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.11)
  %cmp15.not.11 = icmp sgt i32 %add, %mul14.11
  br i1 %cmp15.not.11, label %for.inc.11, label %for.inc.10.for.end_crit_edge

for.inc.10.for.end_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.11:                                       ; preds = %for.inc.10
  %mul14.12 = mul nuw nsw i32 %sub, 120000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.12)
  %cmp15.not.12 = icmp sgt i32 %add, %mul14.12
  br i1 %cmp15.not.12, label %for.inc.12, label %for.inc.11.for.end_crit_edge

for.inc.11.for.end_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  %mul14.13 = mul nuw nsw i32 %sub, 132000
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mul14.13)
  %cmp15.not.13 = icmp sgt i32 %add, %mul14.13
  %spec.select = select i1 %cmp15.not.13, i8 15, i8 14
  br label %for.end

for.end:                                          ; preds = %for.inc.12, %for.inc.11.for.end_crit_edge, %for.inc.10.for.end_crit_edge, %for.inc.9.for.end_crit_edge, %for.inc.8.for.end_crit_edge, %for.inc.7.for.end_crit_edge, %for.inc.6.for.end_crit_edge, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %sw.bb9.for.end_crit_edge
  %i.0.lcssa = phi i8 [ 1, %sw.bb9.for.end_crit_edge ], [ 2, %for.inc.for.end_crit_edge ], [ 3, %for.inc.1.for.end_crit_edge ], [ 4, %for.inc.2.for.end_crit_edge ], [ 5, %for.inc.3.for.end_crit_edge ], [ 6, %for.inc.4.for.end_crit_edge ], [ 7, %for.inc.5.for.end_crit_edge ], [ 8, %for.inc.6.for.end_crit_edge ], [ 9, %for.inc.7.for.end_crit_edge ], [ 10, %for.inc.8.for.end_crit_edge ], [ 11, %for.inc.9.for.end_crit_edge ], [ 12, %for.inc.10.for.end_crit_edge ], [ 13, %for.inc.11.for.end_crit_edge ], [ %spec.select, %for.inc.12 ]
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %call21 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %11, i8 noundef zeroext -116, i8 noundef zeroext %i.0.lcssa) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %for.end.error_crit_edge

for.end.error_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end24:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  %apers = getelementptr inbounds %struct.tcs3472_data, ptr %1, i32 0, i32 7
  %12 = ptrtoint ptr %apers to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %i.0.lcssa, ptr %apers, align 1
  br label %error

error:                                            ; preds = %if.end24, %for.end.error_crit_edge, %if.else, %if.then5, %sw.epilog.error_crit_edge, %sw.bb.error_crit_edge, %entry.error_crit_edge
  %ret.0 = phi i32 [ %call21, %for.end.error_crit_edge ], [ 0, %if.end24 ], [ %call3, %sw.epilog.error_crit_edge ], [ 0, %if.then5 ], [ 0, %if.else ], [ -22, %sw.bb.error_crit_edge ], [ -22, %entry.error_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_read_const_attr(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_show_int_time_available(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 1, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %len.09 = phi i32 [ 0, %entry ], [ %add, %for.body.for.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %buf, i32 %len.09
  %sub = sub i32 4096, %len.09
  %mul = mul nuw nsw i32 %i.010, 2400
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %add.ptr, i32 noundef %sub, ptr noundef nonnull @.str.13, i32 noundef %mul) #4
  %add = add i32 %call, %len.09
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %sub1 = add i32 %add, -1
  %arrayidx = getelementptr i8, ptr %buf, i32 %sub1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %arrayidx, align 1
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_device_claim_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_release_direct_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %enable.i = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable.i, align 4
  %8 = and i8 %7, -4
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tcs3472_powerdown.exit_crit_edge

entry.tcs3472_powerdown.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %tcs3472_powerdown.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable.i, align 4
  %11 = and i8 %10, -4
  store i8 %11, ptr %enable.i, align 4
  br label %tcs3472_powerdown.exit

tcs3472_powerdown.exit:                           ; preds = %if.then.i, %entry.tcs3472_powerdown.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcs3472_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %enable = getelementptr inbounds %struct.tcs3472_data, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable, align 4
  %8 = or i8 %7, 3
  %call4 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %5, i8 noundef zeroext -128, i8 noundef zeroext %8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %enable, align 4
  %11 = or i8 %10, 3
  store i8 %11, ptr %enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #4
  ret i32 %call4
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !33, !35, !37, !38, !39, !41, !42, !44, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_tcs3472__288_620_tcs3472_driver_init6, !1, !"__initcall__kmod_tcs3472__288_620_tcs3472_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/light/tcs3472.c", i32 620, i32 1}
!2 = !{ptr @__exitcall_tcs3472_driver_exit, !1, !"__exitcall_tcs3472_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/light/tcs3472.c", i32 622, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/light/tcs3472.c", i32 623, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/light/tcs3472.c", i32 624, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/light/tcs3472.c", i32 613, i32 11}
!12 = !{ptr @tcs3472_driver, !13, !"tcs3472_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/light/tcs3472.c", i32 611, i32 26}
!14 = !{ptr @tcs3472_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/light/tcs3472.c", i32 459, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/iio/light/tcs3472.c", i32 472, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @tcs3472_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @tcs3472_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/iio/light/tcs3472.c", i32 474, i32 3}
!27 = !{ptr @tcs3472_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tcs3472_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @tcs3472_info, !30, !"tcs3472_info", i1 false, i1 false}
!30 = !{!"../drivers/iio/light/tcs3472.c", i32 435, i32 30}
!31 = !{ptr @tcs3472_attribute_group, !32, !"tcs3472_attribute_group", i1 false, i1 false}
!32 = !{!"../drivers/iio/light/tcs3472.c", i32 431, i32 37}
!33 = !{ptr @tcs3472_attributes, !34, !"tcs3472_attributes", i1 false, i1 false}
!34 = !{!"../drivers/iio/light/tcs3472.c", i32 425, i32 26}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/iio/light/tcs3472.c", i32 422, i32 8}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @iio_const_attr_calibscale_available, !36, !"iio_const_attr_calibscale_available", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/light/tcs3472.c", i32 423, i32 8}
!41 = !{ptr @iio_dev_attr_integration_time_available, !40, !"iio_dev_attr_integration_time_available", i1 false, i1 false}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/iio/light/tcs3472.c", i32 413, i32 48}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/light/tcs3472.c", i32 135, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tcs3472_req_data._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @tcs3472_req_data._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @tcs3472_agains, !51, !"tcs3472_agains", i1 false, i1 false}
!51 = !{!"../drivers/iio/light/tcs3472.c", i32 110, i32 18}
!52 = !{ptr @tcs3472_intr_pers, !53, !"tcs3472_intr_pers", i1 false, i1 false}
!53 = !{!"../drivers/iio/light/tcs3472.c", i32 219, i32 18}
!54 = !{ptr @tcs3472_channels, !55, !"tcs3472_channels", i1 false, i1 false}
!55 = !{!"../drivers/iio/light/tcs3472.c", i32 112, i32 35}
!56 = !{ptr @tcs3472_events, !57, !"tcs3472_events", i1 false, i1 false}
!57 = !{!"../drivers/iio/light/tcs3472.c", i32 74, i32 36}
!58 = !{ptr @tcs3472_pm_ops, !59, !"tcs3472_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/iio/light/tcs3472.c", i32 603, i32 8}
!60 = !{ptr @tcs3472_id, !61, !"tcs3472_id", i1 false, i1 false}
!61 = !{!"../drivers/iio/light/tcs3472.c", i32 605, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{i8 0, i8 2}
