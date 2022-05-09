; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/mcp3422.c_pt.bc'
source_filename = "../drivers/iio/adc/mcp3422.c"
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
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.86, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.86 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mcp3422 = type { ptr, i8, i8, [4 x i8], %struct.mutex }

@__initcall__kmod_mcp3422__288_423_mcp3422_driver_init6 = internal global ptr @mcp3422_driver_init, section ".initcall6.init", align 4
@mcp3422_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @mcp3422_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mcp3422_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mcp3422_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_mcp3422_driver_exit = internal global ptr @mcp3422_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author289 = internal constant [65 x i8] c"mcp3422.author=Angelo Compagnucci <angelo.compagnucci@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description290 = internal constant [59 x i8] c"mcp3422.description=Microchip mcp3421/2/3/4/5/6/7/8 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file291 = internal constant [37 x i8] c"mcp3422.file=drivers/iio/adc/mcp3422\00", section ".modinfo", align 1
@__UNIQUE_ID_license292 = internal constant [23 x i8] c"mcp3422.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mcp3422\00", [24 x i8] zeroinitializer }, align 32
@mcp3422_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mcp3422\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mcp3422_id = internal constant { [9 x %struct.i2c_device_id], [40 x i8] } { [9 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mcp3421\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.i2c_device_id { [20 x i8] c"mcp3422\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.i2c_device_id { [20 x i8] c"mcp3423\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.i2c_device_id { [20 x i8] c"mcp3424\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.i2c_device_id { [20 x i8] c"mcp3425\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.i2c_device_id { [20 x i8] c"mcp3426\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.i2c_device_id { [20 x i8] c"mcp3427\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.i2c_device_id { [20 x i8] c"mcp3428\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.i2c_device_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@mcp3422_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&adc->lock\00", [21 x i8] zeroinitializer }, align 32
@mcp3422_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @mcp3422_attribute_group, ptr @mcp3422_read_raw, ptr null, ptr null, ptr @mcp3422_write_raw, ptr null, ptr @mcp3422_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@mcp3421_channels = internal constant { [1 x %struct.iio_chan_spec], [40 x i8] } { [1 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [40 x i8] zeroinitializer }, align 32
@mcp3422_channels = internal constant { [2 x %struct.iio_chan_spec], [48 x i8] } { [2 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [48 x i8] zeroinitializer }, align 32
@mcp3424_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.86 zeroinitializer, i32 5, i32 0, i32 4096, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [64 x i8] zeroinitializer }, align 32
@mcp3422_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mcp3422_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mcp3422_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_voltage_scale_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mcp3422_show_samp_freqs, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mcp3422_show_scales, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"240 60 15\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"240 60 15 3\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"0.%09u 0.%09u 0.%09u 0.%09u\0A\00", [35 x i8] zeroinitializer }, align 32
@mcp3422_scales = internal constant { [4 x [4 x i32]], [32 x i8] } { [4 x [4 x i32]] [[4 x i32] [i32 1000000, i32 500000, i32 250000, i32 125000], [4 x i32] [i32 250000, i32 125000, i32 62500, i32 31250], [4 x i32] [i32 62500, i32 31250, i32 15625, i32 7812], [4 x i32] [i32 15625, i32 7812, i32 3906, i32 1953]], [32 x i8] zeroinitializer }, align 32
@mcp3422_sample_rates = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 240, i32 60, i32 15, i32 3], [16 x i8] zeroinitializer }, align 32
@mcp3422_read_times = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 16, i32 66, i32 333], [16 x i8] zeroinitializer }, align 32
@mcp3422_sign_extend = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 11, i32 13, i32 15, i32 17], [16 x i8] zeroinitializer }, align 32
@switch.table.mcp3422_probe = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @mcp3421_channels, ptr @mcp3422_channels, ptr @mcp3422_channels, ptr @mcp3424_channels, ptr @mcp3421_channels, ptr @mcp3422_channels, ptr @mcp3422_channels, ptr @mcp3424_channels], [32 x i8] zeroinitializer }, align 32
@switch.table.mcp3422_probe.7 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 2, i32 4, i32 1, i32 2, i32 2, i32 4], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 12]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 12]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 15, i64 60, i64 240]
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"mcp3422_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 415, i32 26 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 417, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"mcp3422_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 409, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"mcp3422_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 396, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 352, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"mcp3422_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 326, i32 30 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"mcp3421_channels\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 310, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"mcp3422_channels\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 314, i32 35 }
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"mcp3424_channels\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 319, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant [24 x i8] c"mcp3422_attribute_group\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 306, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant [19 x i8] c"mcp3422_attributes\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 300, i32 26 }
@___asan_gen_.46 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 295, i32 8 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 277, i32 23 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 279, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 297, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 288, i32 22 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"mcp3422_scales\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 59, i32 18 }
@___asan_gen_.70 = private unnamed_addr constant [21 x i8] c"mcp3422_sample_rates\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 73, i32 18 }
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"mcp3422_read_times\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 66, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant [20 x i8] c"mcp3422_sign_extend\00", align 1
@___asan_gen_.77 = private constant [29 x i8] c"../drivers/iio/adc/mcp3422.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 80, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"switch.table.mcp3422_probe\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [29 x i8] c"switch.table.mcp3422_probe.7\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author289, ptr @__UNIQUE_ID_description290, ptr @__UNIQUE_ID_file291, ptr @__UNIQUE_ID_license292, ptr @__exitcall_mcp3422_driver_exit, ptr @__initcall__kmod_mcp3422__288_423_mcp3422_driver_init6, ptr @mcp3422_driver_exit, ptr @mcp3422_driver, ptr @.str, ptr @mcp3422_of_match, ptr @mcp3422_id, ptr @mcp3422_probe.__key, ptr @.str.1, ptr @mcp3422_info, ptr @mcp3421_channels, ptr @mcp3422_channels, ptr @mcp3424_channels, ptr @mcp3422_attribute_group, ptr @mcp3422_attributes, ptr @iio_dev_attr_sampling_frequency_available, ptr @iio_dev_attr_in_voltage_scale_available, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @mcp3422_scales, ptr @mcp3422_sample_rates, ptr @mcp3422_read_times, ptr @mcp3422_sign_extend, ptr @switch.table.mcp3422_probe, ptr @switch.table.mcp3422_probe.7], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_id to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3421_channels to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_channels to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3424_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_scales to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_sample_rates to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_read_times to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcp3422_sign_extend to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp3422_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mcp3422_probe.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3422_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @mcp3422_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcp3422_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @mcp3422_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3422_probe(ptr noundef %client, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %newconfig.addr.i = alloca i8, align 1
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
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call1 = tail call ptr @devm_iio_device_alloc(ptr noundef %dev, i32 noundef 104) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 19
  %6 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %7, align 4
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %9 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %driver_data, align 4
  %conv = trunc i32 %10 to i8
  %id6 = getelementptr inbounds %struct.mcp3422, ptr %7, i32 0, i32 1
  %11 = ptrtoint ptr %id6 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %id6, align 4
  %lock = getelementptr inbounds %struct.mcp3422, ptr %7, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mcp3422_probe.__key) #8
  %init_name.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 3
  %12 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end4.dev_name.exit_crit_edge

if.end4.dev_name.exit_crit_edge:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end4.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %15, %if.end.i ], [ %13, %if.end4.dev_name.exit_crit_edge ]
  %name = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 15
  %16 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %retval.0.i, ptr %name, align 8
  %17 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call1, align 8
  %info = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 17
  %18 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @mcp3422_info, ptr %info, align 8
  %19 = ptrtoint ptr %id6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %id6, align 4
  %switch.tableidx = add i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %21 = icmp ult i8 %switch.tableidx, 8
  br i1 %21, label %switch.lookup, label %dev_name.exit.sw.epilog_crit_edge

dev_name.exit.sw.epilog_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %22 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.mcp3422_probe, i32 0, i32 %22
  %23 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %24 = sext i8 %switch.tableidx to i32
  %switch.gep58 = getelementptr inbounds [8 x i32], ptr @switch.table.mcp3422_probe.7, i32 0, i32 %24
  %25 = ptrtoint ptr %switch.gep58 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load59 = load i32, ptr %switch.gep58, align 4
  %channels15 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 13
  %26 = ptrtoint ptr %channels15 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %switch.load, ptr %channels15, align 8
  %num_channels16 = getelementptr inbounds %struct.iio_dev, ptr %call1, i32 0, i32 14
  %27 = ptrtoint ptr %num_channels16 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %switch.load59, ptr %num_channels16, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %dev_name.exit.sw.epilog_crit_edge
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %newconfig.addr.i)
  %28 = ptrtoint ptr %newconfig.addr.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 16, ptr %newconfig.addr.i, align 1
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %7, align 4
  %call.i.i54 = call i32 @i2c_transfer_buffer_flags(ptr noundef %30, ptr noundef nonnull %newconfig.addr.i, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp.i = icmp sgt i32 %call.i.i54, 0
  br i1 %cmp.i, label %mcp3422_update_config.exit.thread, label %mcp3422_update_config.exit

mcp3422_update_config.exit.thread:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %newconfig.addr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %newconfig.addr.i, align 1
  %config.i = getelementptr inbounds %struct.mcp3422, ptr %7, i32 0, i32 2
  %33 = ptrtoint ptr %config.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %config.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i)
  br label %if.end20

mcp3422_update_config.exit:                       ; preds = %sw.epilog
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i54)
  %cmp = icmp slt i32 %call.i.i54, 0
  br i1 %cmp, label %mcp3422_update_config.exit.cleanup_crit_edge, label %mcp3422_update_config.exit.if.end20_crit_edge

mcp3422_update_config.exit.if.end20_crit_edge:    ; preds = %mcp3422_update_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20

mcp3422_update_config.exit.cleanup_crit_edge:     ; preds = %mcp3422_update_config.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20:                                         ; preds = %mcp3422_update_config.exit.if.end20_crit_edge, %mcp3422_update_config.exit.thread
  %call22 = call i32 @__devm_iio_device_register(ptr noundef %dev, ptr noundef nonnull %call1, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end26

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %34 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call1, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end20.cleanup_crit_edge, %mcp3422_update_config.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i.i54, %mcp3422_update_config.exit.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3422_read_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %channel, ptr nocapture noundef writeonly %val1, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %buf.i.i = alloca [4 x i8], align 4
  %newconfig.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 3
  %6 = zext i8 %5 to i32
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb8
    i32 12, label %sw.bb11
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %channel1.i = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %8 = ptrtoint ptr %channel1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel1.i, align 4
  %lock.i = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %config, align 1
  %12 = lshr i8 %11, 5
  %13 = and i8 %12, 3
  %14 = trunc i32 %9 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %cmp.not.i = icmp eq i8 %13, %14
  br i1 %cmp.not.i, label %sw.bb.if.end31.i_crit_edge, label %if.then.i

sw.bb.if.end31.i_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31.i

if.then.i:                                        ; preds = %sw.bb
  %conv2.i = and i32 %9, 255
  %and8.i = and i8 %11, -100
  %15 = shl i8 %14, 5
  %16 = and i8 %15, 96
  %conv13.i = or i8 %16, %and8.i
  %arrayidx.i = getelementptr %struct.mcp3422, ptr %1, i32 0, i32 3, i32 %conv2.i
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %19 = and i8 %18, 3
  %or2048.i = or i8 %conv13.i, %19
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %newconfig.addr.i.i) #8
  %20 = ptrtoint ptr %newconfig.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %or2048.i, ptr %newconfig.addr.i.i, align 1
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %newconfig.addr.i.i, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %mcp3422_update_config.exit.thread.i, label %mcp3422_update_config.exit.i

mcp3422_update_config.exit.thread.i:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %newconfig.addr.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %newconfig.addr.i.i, align 1
  %25 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %config, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i.i) #8
  br label %if.end.i

mcp3422_update_config.exit.i:                     ; preds = %if.then.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp22.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp22.i, label %mcp3422_update_config.exit.i.mcp3422_read_channel.exit_crit_edge, label %mcp3422_update_config.exit.i.if.end.i_crit_edge

mcp3422_update_config.exit.i.if.end.i_crit_edge:  ; preds = %mcp3422_update_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

mcp3422_update_config.exit.i.mcp3422_read_channel.exit_crit_edge: ; preds = %mcp3422_update_config.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp3422_read_channel.exit

if.end.i:                                         ; preds = %mcp3422_update_config.exit.i.if.end.i_crit_edge, %mcp3422_update_config.exit.thread.i
  %26 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %config, align 1
  %28 = lshr i8 %27, 2
  %29 = and i8 %28, 3
  %30 = zext i8 %29 to i32
  %arrayidx30.i = getelementptr [4 x i32], ptr @mcp3422_read_times, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx30.i, align 4
  call void @msleep(i32 noundef %32) #8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.end.i, %sw.bb.if.end31.i_crit_edge
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %config, align 1
  %35 = lshr i8 %34, 2
  %36 = and i8 %35, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #8
  %37 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %buf.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.i49.i = icmp eq i8 %36, 3
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  br i1 %cmp.i49.i, label %if.then.i51.i, label %if.else.i.i

if.then.i51.i:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i50.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %buf.i.i, i32 noundef 4, i16 noundef zeroext 1) #8
  %40 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %buf.i.i, align 4
  %conv.i.i.i.i = zext i8 %41 to i32
  %shl.i.i.i.i = shl nuw nsw i32 %conv.i.i.i.i, 16
  %arrayidx1.i.i.i.i = getelementptr inbounds i8, ptr %buf.i.i, i32 1
  %42 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx1.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %43 to i32
  %shl3.i.i.i.i = shl nuw nsw i32 %conv2.i.i.i.i, 8
  %or.i.i.i.i = or i32 %shl3.i.i.i.i, %shl.i.i.i.i
  %arrayidx4.i.i.i.i = getelementptr inbounds i8, ptr %buf.i.i, i32 2
  %44 = ptrtoint ptr %arrayidx4.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx4.i.i.i.i, align 2
  %conv5.i.i.i.i = zext i8 %45 to i32
  %or6.i.i.i.i = or i32 %or.i.i.i.i, %conv5.i.i.i.i
  br label %mcp3422_read.exit.i

if.else.i.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i20.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %39, ptr noundef nonnull %buf.i.i, i32 noundef 3, i16 noundef zeroext 1) #8
  %46 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %buf.i.i, align 4
  %conv12.i.i = zext i16 %47 to i32
  br label %mcp3422_read.exit.i

mcp3422_read.exit.i:                              ; preds = %if.else.i.i, %if.then.i51.i
  %ret.0.i52.i = phi i32 [ %call.i20.i.i, %if.else.i.i ], [ %call.i.i50.i, %if.then.i51.i ]
  %temp.0.i.i = phi i32 [ %conv12.i.i, %if.else.i.i ], [ %or6.i.i.i.i, %if.then.i51.i ]
  %conv3.i.i = zext i8 %36 to i32
  %arrayidx14.i.i = getelementptr [4 x i32], ptr @mcp3422_sign_extend, i32 0, i32 %conv3.i.i
  %48 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx14.i.i, align 4
  %conv.i.i.i = sub i32 31, %49
  %conv1.i.i.i = and i32 %conv.i.i.i, 255
  %shl.i.i.i = shl i32 %temp.0.i.i, %conv1.i.i.i
  %shr.i.i.i = ashr i32 %shl.i.i.i, %conv1.i.i.i
  %50 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr.i.i.i, ptr %val1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #8
  br label %mcp3422_read_channel.exit

mcp3422_read_channel.exit:                        ; preds = %mcp3422_read.exit.i, %mcp3422_update_config.exit.i.mcp3422_read_channel.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i52.i, %mcp3422_read.exit.i ], [ %call.i.i.i, %mcp3422_update_config.exit.i.mcp3422_read_channel.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  %. = select i1 %cmp, i32 -22, i32 1
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and4 = and i8 %3, 3
  %51 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %val1, align 4
  %idxprom9 = zext i8 %and4 to i32
  %arrayidx10 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %6, i32 %idxprom9
  %52 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx10, align 4
  %54 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %val2, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx16 = getelementptr [4 x i32], ptr @mcp3422_sample_rates, i32 0, i32 %6
  %55 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx16, align 4
  %57 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %val1, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %sw.bb8, %mcp3422_read_channel.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb11 ], [ 3, %sw.bb8 ], [ %., %mcp3422_read_channel.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3422_write_raw(ptr nocapture noundef readonly %iio, ptr nocapture noundef readonly %channel, i32 noundef %val1, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %newconfig.addr.i94 = alloca i8, align 1
  %newconfig.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %iio, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config1 = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config1, align 1
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %channel, i32 0, i32 1
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  %and = lshr i8 %3, 2
  %6 = and i8 %and, 3
  %7 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 12, label %sw.bb36
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val1)
  %cmp.not = icmp eq i32 %val1, 0
  br i1 %cmp.not, label %for.cond.preheader, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb
  %idxprom = zext i8 %6 to i32
  %arrayidx10 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 0
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %val2)
  %cmp11 = icmp eq i32 %9, %val2
  br i1 %cmp11, label %for.cond.preheader.if.then13_crit_edge, label %for.inc

for.cond.preheader.if.then13_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %for.inc.2.if.then13_crit_edge, %for.inc.1.if.then13_crit_edge, %for.inc.if.then13_crit_edge, %for.cond.preheader.if.then13_crit_edge
  %i.0102.lcssa.wide = phi i8 [ 0, %for.cond.preheader.if.then13_crit_edge ], [ 1, %for.inc.if.then13_crit_edge ], [ 2, %for.inc.1.if.then13_crit_edge ], [ 3, %for.inc.2.if.then13_crit_edge ]
  %idxprom14 = and i32 %5, 255
  %arrayidx15 = getelementptr %struct.mcp3422, ptr %1, i32 0, i32 3, i32 %idxprom14
  %10 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %i.0102.lcssa.wide, ptr %arrayidx15, align 1
  %11 = and i8 %3, -100
  %idxprom14.tr = trunc i32 %5 to i8
  %12 = shl i8 %idxprom14.tr, 5
  %13 = and i8 %12, 96
  %conv22 = or i8 %13, %11
  %or32 = or i8 %conv22, %i.0102.lcssa.wide
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %newconfig.addr.i)
  %14 = ptrtoint ptr %newconfig.addr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %or32, ptr %newconfig.addr.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %16, ptr noundef nonnull %newconfig.addr.i, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp sgt i32 %call.i.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then13.mcp3422_update_config.exit_crit_edge

if.then13.mcp3422_update_config.exit_crit_edge:   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp3422_update_config.exit

if.then.i:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %newconfig.addr.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %newconfig.addr.i, align 1
  %19 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %config1, align 1
  br label %mcp3422_update_config.exit

mcp3422_update_config.exit:                       ; preds = %if.then.i, %if.then13.mcp3422_update_config.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then.i ], [ %call.i.i, %if.then13.mcp3422_update_config.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i)
  br label %cleanup

for.inc:                                          ; preds = %for.cond.preheader
  %arrayidx10.1 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 1
  %20 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %val2)
  %cmp11.1 = icmp eq i32 %21, %val2
  br i1 %cmp11.1, label %for.inc.if.then13_crit_edge, label %for.inc.1

for.inc.if.then13_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc.1:                                        ; preds = %for.inc
  %arrayidx10.2 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 2
  %22 = ptrtoint ptr %arrayidx10.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx10.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %val2)
  %cmp11.2 = icmp eq i32 %23, %val2
  br i1 %cmp11.2, label %for.inc.1.if.then13_crit_edge, label %for.inc.2

for.inc.1.if.then13_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx10.3 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 3
  %24 = ptrtoint ptr %arrayidx10.3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx10.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %val2)
  %cmp11.3 = icmp eq i32 %25, %val2
  br i1 %cmp11.3, label %for.inc.2.if.then13_crit_edge, label %for.inc.2.cleanup_crit_edge

for.inc.2.cleanup_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.2.if.then13_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

sw.bb36:                                          ; preds = %entry
  %26 = zext i32 %val1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %val1, label %sw.bb36.cleanup_crit_edge [
    i32 240, label %sw.bb36.sw.epilog_crit_edge
    i32 60, label %sw.bb38
    i32 15, label %sw.bb39
    i32 3, label %sw.bb40
  ]

sw.bb36.sw.epilog_crit_edge:                      ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb38:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb39:                                          ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb40:                                          ; preds = %sw.bb36
  %id = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp42 = icmp ugt i8 %28, 4
  br i1 %cmp42, label %sw.bb40.cleanup_crit_edge, label %sw.bb40.sw.epilog_crit_edge

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb40.cleanup_crit_edge:                        ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb40.sw.epilog_crit_edge, %sw.bb39, %sw.bb38, %sw.bb36.sw.epilog_crit_edge
  %temp.0 = phi i8 [ 8, %sw.bb39 ], [ 4, %sw.bb38 ], [ 0, %sw.bb36.sw.epilog_crit_edge ], [ 12, %sw.bb40.sw.epilog_crit_edge ]
  %and47 = and i8 %3, -109
  %.tr = trunc i32 %5 to i8
  %29 = shl i8 %.tr, 5
  %30 = and i8 %29, 96
  %conv54 = or i8 %30, %and47
  %or62 = or i8 %conv54, %temp.0
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %newconfig.addr.i94)
  %31 = ptrtoint ptr %newconfig.addr.i94 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %or62, ptr %newconfig.addr.i94, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %call.i.i95 = call i32 @i2c_transfer_buffer_flags(ptr noundef %33, ptr noundef nonnull %newconfig.addr.i94, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i95)
  %cmp.i96 = icmp sgt i32 %call.i.i95, 0
  br i1 %cmp.i96, label %if.then.i98, label %sw.epilog.mcp3422_update_config.exit100_crit_edge

sw.epilog.mcp3422_update_config.exit100_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %mcp3422_update_config.exit100

if.then.i98:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %newconfig.addr.i94 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %newconfig.addr.i94, align 1
  %36 = ptrtoint ptr %config1 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %config1, align 1
  br label %mcp3422_update_config.exit100

mcp3422_update_config.exit100:                    ; preds = %if.then.i98, %sw.epilog.mcp3422_update_config.exit100_crit_edge
  %ret.0.i99 = phi i32 [ 0, %if.then.i98 ], [ %call.i.i95, %sw.epilog.mcp3422_update_config.exit100_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %newconfig.addr.i94)
  br label %cleanup

cleanup:                                          ; preds = %mcp3422_update_config.exit100, %sw.bb40.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %for.inc.2.cleanup_crit_edge, %mcp3422_update_config.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i99, %mcp3422_update_config.exit100 ], [ %ret.0.i, %mcp3422_update_config.exit ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb40.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp3422_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %mask)
  %switch.selectcmp = icmp eq i32 %mask, 12
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch.selectcmp2 = icmp eq i32 %mask, 2
  %switch.select3 = select i1 %switch.selectcmp2, i32 3, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mcp3422_show_samp_freqs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %id = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %3)
  %cmp = icmp ugt i8 %3, 4
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %buf, ptr @.str.3, i32 11)
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = call ptr @memcpy(ptr %buf, ptr @.str.4, i32 13)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ 10, %if.then ], [ 12, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcp3422_show_scales(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %config = getelementptr inbounds %struct.mcp3422, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %config, align 1
  %4 = lshr i8 %3, 2
  %5 = and i8 %4, 3
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx6 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %arrayidx9 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  %arrayidx12 = getelementptr [4 x [4 x i32]], ptr @mcp3422_scales, i32 0, i32 %idxprom, i32 3
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx12, align 4
  %call13 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.6, i32 noundef %7, i32 noundef %9, i32 noundef %11, i32 noundef %13)
  ret i32 %call13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !26, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_mcp3422__288_423_mcp3422_driver_init6, !1, !"__initcall__kmod_mcp3422__288_423_mcp3422_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/mcp3422.c", i32 423, i32 1}
!2 = !{ptr @__exitcall_mcp3422_driver_exit, !1, !"__exitcall_mcp3422_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author289, !4, !"__UNIQUE_ID_author289", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/mcp3422.c", i32 425, i32 1}
!5 = !{ptr @__UNIQUE_ID_description290, !6, !"__UNIQUE_ID_description290", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/mcp3422.c", i32 426, i32 1}
!7 = !{ptr @__UNIQUE_ID_file291, !8, !"__UNIQUE_ID_file291", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/mcp3422.c", i32 427, i32 1}
!9 = !{ptr @__UNIQUE_ID_license292, !8, !"__UNIQUE_ID_license292", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/mcp3422.c", i32 417, i32 11}
!12 = !{ptr @mcp3422_driver, !13, !"mcp3422_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/mcp3422.c", i32 415, i32 26}
!14 = !{ptr @mcp3422_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/mcp3422.c", i32 352, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @mcp3422_info, !18, !"mcp3422_info", i1 false, i1 false}
!18 = !{!"../drivers/iio/adc/mcp3422.c", i32 326, i32 30}
!19 = !{ptr @mcp3422_attribute_group, !20, !"mcp3422_attribute_group", i1 false, i1 false}
!20 = !{!"../drivers/iio/adc/mcp3422.c", i32 306, i32 37}
!21 = !{ptr @mcp3422_attributes, !22, !"mcp3422_attributes", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/mcp3422.c", i32 300, i32 26}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/iio/adc/mcp3422.c", i32 295, i32 8}
!25 = !{ptr @iio_dev_attr_sampling_frequency_available, !24, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!26 = !{ptr @.str.3, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/iio/adc/mcp3422.c", i32 277, i32 23}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/iio/adc/mcp3422.c", i32 279, i32 22}
!30 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/adc/mcp3422.c", i32 297, i32 8}
!32 = !{ptr @iio_dev_attr_in_voltage_scale_available, !31, !"iio_dev_attr_in_voltage_scale_available", i1 false, i1 false}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/mcp3422.c", i32 288, i32 22}
!35 = !{ptr @mcp3422_scales, !36, !"mcp3422_scales", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/mcp3422.c", i32 59, i32 18}
!37 = !{ptr @mcp3422_read_times, !38, !"mcp3422_read_times", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/mcp3422.c", i32 66, i32 18}
!39 = !{ptr @mcp3422_sign_extend, !40, !"mcp3422_sign_extend", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/mcp3422.c", i32 80, i32 18}
!41 = !{ptr @mcp3422_sample_rates, !42, !"mcp3422_sample_rates", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/mcp3422.c", i32 73, i32 18}
!43 = !{ptr @mcp3421_channels, !44, !"mcp3421_channels", i1 false, i1 false}
!44 = !{!"../drivers/iio/adc/mcp3422.c", i32 310, i32 35}
!45 = !{ptr @mcp3422_channels, !46, !"mcp3422_channels", i1 false, i1 false}
!46 = !{!"../drivers/iio/adc/mcp3422.c", i32 314, i32 35}
!47 = !{ptr @mcp3424_channels, !48, !"mcp3424_channels", i1 false, i1 false}
!48 = !{!"../drivers/iio/adc/mcp3422.c", i32 319, i32 35}
!49 = !{ptr @mcp3422_of_match, !50, !"mcp3422_of_match", i1 false, i1 false}
!50 = !{!"../drivers/iio/adc/mcp3422.c", i32 409, i32 34}
!51 = !{ptr @mcp3422_id, !52, !"mcp3422_id", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/mcp3422.c", i32 396, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
