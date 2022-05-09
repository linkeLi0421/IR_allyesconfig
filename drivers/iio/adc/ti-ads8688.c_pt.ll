; ModuleID = '/llk/IR_all_yes/drivers/iio/adc/ti-ads8688.c_pt.bc'
source_filename = "../drivers/iio/adc/ti-ads8688.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.ads8688_chip_info = type { ptr, i32 }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.84, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.84 = type { i8, i8, i8, i8, i8, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.ads8688_ranges = type { i32, i32, i32, i8 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.ads8688_state = type { %struct.mutex, ptr, ptr, ptr, i32, [8 x i32], [116 x i8], [2 x %union.anon.85], [120 x i8] }
%union.anon.85 = type { i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_ti_ads8688__290_518_ads8688_driver_init6 = internal global ptr @ads8688_driver_init, section ".initcall6.init", align 4
@ads8688_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @ads8688_id, ptr @ads8688_probe, ptr @ads8688_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ads8688_driver_exit = internal global ptr @ads8688_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [49 x i8] c"ti_ads8688.author=Sean Nyekjaer <sean@geanix.dk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [56 x i8] c"ti_ads8688.description=Texas Instruments ADS8688 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [43 x i8] c"ti_ads8688.file=drivers/iio/adc/ti-ads8688\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [26 x i8] c"ti_ads8688.license=GPL v2\00", section ".modinfo", align 1
@ads8688_id = internal constant { [3 x %struct.spi_device_id], [52 x i8] } { [3 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"ads8684\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"ads8688\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ads8688\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vref\00", [27 x i8] zeroinitializer }, align 32
@ads8688_chip_info_tbl = internal constant { [2 x %struct.ads8688_chip_info], [16 x i8] } { [2 x %struct.ads8688_chip_info] [%struct.ads8688_chip_info { ptr @ads8684_channels, i32 4 }, %struct.ads8688_chip_info { ptr @ads8688_channels, i32 8 }], [16 x i8] zeroinitializer }, align 32
@ads8688_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @ads8688_attribute_group, ptr @ads8688_read_raw, ptr null, ptr null, ptr @ads8688_write_raw, ptr null, ptr @ads8688_write_raw_get_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ads8688_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@ads8688_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 462, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"iio triggered buffer setup failed\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ads8688_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/iio/adc/ti-ads8688.c\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ads8688_probe._entry_ptr = internal global ptr @ads8688_probe._entry, section ".printk_index", align 4
@ads8684_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [64 x i8] zeroinitializer }, align 32
@ads8688_channels = internal constant { [8 x %struct.iio_chan_spec], [160 x i8] } { [8 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 1, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 2, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 3, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 4, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 5, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 6, i32 0, i32 0, i32 6, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 7, %struct.anon.84 { i8 117, i8 16, i8 16, i8 0, i8 0, i32 1 }, i32 13, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 64 }], [160 x i8] zeroinitializer }, align 32
@ads8688_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @ads8688_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@ads8688_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_voltage_scale_available, ptr @iio_dev_attr_in_voltage_offset_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_scale_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ads8688_show_scales, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_voltage_offset_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @ads8688_show_offsets, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"in_voltage_scale_available\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"0.%09u 0.%09u 0.%09u\0A\00", [42 x i8] zeroinitializer }, align 32
@ads8688_range_def = internal constant { [5 x %struct.ads8688_ranges], [48 x i8] } { [5 x %struct.ads8688_ranges] [%struct.ads8688_ranges { i32 0, i32 76295, i32 -32768, i8 0 }, %struct.ads8688_ranges { i32 1, i32 38148, i32 -32768, i8 1 }, %struct.ads8688_ranges { i32 2, i32 19074, i32 -32768, i8 2 }, %struct.ads8688_ranges { i32 3, i32 38148, i32 0, i8 5 }, %struct.ads8688_ranges { i32 4, i32 19074, i32 0, i8 6 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"in_voltage_offset_available\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%d %d\0A\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294934528]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ads8688_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 510, i32 26 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"ads8688_id\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 496, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 512, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 426, i32 51 }
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"ads8688_chip_info_tbl\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 403, i32 39 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"ads8688_info\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 373, i32 30 }
@___asan_gen_.34 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 458, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 462, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [17 x i8] c"ads8684_channels\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 168, i32 35 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"ads8688_channels\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 175, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant [24 x i8] c"ads8688_attribute_group\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 147, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"ads8688_attributes\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 141, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant [40 x i8] c"iio_dev_attr_in_voltage_scale_available\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [41 x i8] c"iio_dev_attr_in_voltage_offset_available\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 136, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 123, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant [18 x i8] c"ads8688_range_def\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 89, i32 36 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 138, i32 8 }
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [32 x i8] c"../drivers/iio/adc/ti-ads8688.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 132, i32 22 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_ads8688_driver_exit, ptr @__initcall__kmod_ti_ads8688__290_518_ads8688_driver_init6, ptr @ads8688_driver_exit, ptr @ads8688_probe._entry, ptr @ads8688_probe._entry_ptr, ptr @ads8688_driver, ptr @ads8688_id, ptr @.str, ptr @.str.1, ptr @ads8688_chip_info_tbl, ptr @ads8688_info, ptr @ads8688_probe.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ads8684_channels, ptr @ads8688_channels, ptr @ads8688_attribute_group, ptr @ads8688_attributes, ptr @iio_dev_attr_in_voltage_scale_available, ptr @iio_dev_attr_in_voltage_offset_available, ptr @.str.8, ptr @.str.9, ptr @ads8688_range_def, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_id to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_chip_info_tbl to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8684_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_channels to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_scale_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_voltage_offset_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ads8688_range_def to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @ads8688_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ads8688_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @ads8688_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 384) #8
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call3 = tail call ptr @devm_regulator_get_optional(ptr noundef %spi, ptr noundef nonnull @.str.1) #8
  %reg = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.if.end17_crit_edge, label %if.then6

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 @regulator_enable(ptr noundef %call3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end10, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.then6
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg, align 4
  %call12 = tail call i32 @regulator_get_voltage(ptr noundef %4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end10.err_regulator_disable_crit_edge, label %if.end15

if.end10.err_regulator_disable_crit_edge:         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_regulator_disable

if.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %div84 = udiv i32 %call12, 1000
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.end.if.end17_crit_edge
  %.sink = phi i32 [ %div84, %if.end15 ], [ 4096, %if.end.if.end17_crit_edge ]
  %vref_mv16 = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %vref_mv16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %vref_mv16, align 8
  %call18 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call18, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.ads8688_chip_info], ptr @ads8688_chip_info_tbl, i32 0, i32 %7
  %chip_info = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %chip_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx, ptr %chip_info, align 4
  %mode = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 7
  %9 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %mode, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call, ptr %driver_data.i.i, align 4
  %spi19 = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %spi19 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spi, ptr %spi19, align 32
  %call20 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %name21 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %12 = ptrtoint ptr %name21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call20, ptr %name21, align 8
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %call, align 8
  %14 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chip_info, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %channels23 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %18 = ptrtoint ptr %channels23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %channels23, align 8
  %19 = load ptr, ptr %chip_info, align 4
  %num_channels = getelementptr inbounds %struct.ads8688_chip_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_channels, align 4
  %num_channels25 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %22 = ptrtoint ptr %num_channels25 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %num_channels25, align 4
  %info = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %23 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ads8688_info, ptr %info, align 8
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 8
  %data.i = getelementptr inbounds %struct.ads8688_state, ptr %25, i32 0, i32 7
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -2063597568, ptr %data.i, align 128
  %spi.i = getelementptr inbounds %struct.ads8688_state, ptr %25, i32 0, i32 2
  %27 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %spi.i, align 32
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %29 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %30 = call ptr @memset(ptr %29, i32 0, i32 92)
  %31 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %data.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 4, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %33 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %34 = call ptr @memset(ptr %33, i32 0, i32 40)
  %35 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %37 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %38 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end17.ads8688_reset.exit_crit_edge

if.end17.ads8688_reset.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads8688_reset.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %ads8688_reset.exit

ads8688_reset.exit:                               ; preds = %if.end.i.i.i.i.i.i.i, %if.end17.ads8688_reset.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__mutex_init(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @ads8688_probe.__key) #8
  %call27 = call i32 @iio_triggered_buffer_setup_ext(ptr noundef nonnull %call, ptr noundef null, ptr noundef nonnull @ads8688_trigger_handler, i32 noundef 0, ptr noundef null, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %do.end32, label %if.end34

do.end32:                                         ; preds = %ads8688_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.3) #11
  br label %err_regulator_disable

if.end34:                                         ; preds = %ads8688_reset.exit
  %call35 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end34.cleanup_crit_edge, label %err_buffer_cleanup

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_buffer_cleanup:                               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  call void @iio_triggered_buffer_cleanup(ptr noundef nonnull %call) #8
  br label %err_regulator_disable

err_regulator_disable:                            ; preds = %err_buffer_cleanup, %do.end32, %if.end10.err_regulator_disable_crit_edge
  %ret.0 = phi i32 [ %call27, %do.end32 ], [ %call35, %err_buffer_cleanup ], [ %call12, %if.end10.err_regulator_disable_crit_edge ]
  %43 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %reg, align 4
  %cmp.i83 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %err_regulator_disable.cleanup_crit_edge, label %if.then41

err_regulator_disable.cleanup_crit_edge:          ; preds = %err_regulator_disable
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %err_regulator_disable
  call void @__sanitizer_cov_trace_pc() #10
  %call43 = call i32 @regulator_disable(ptr noundef %44) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %err_regulator_disable.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ %ret.0, %if.then41 ], [ %ret.0, %err_regulator_disable.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv.i, align 8
  tail call void @iio_device_unregister(ptr noundef %1) #8
  tail call void @iio_triggered_buffer_cleanup(ptr noundef %1) #8
  %reg = getelementptr inbounds %struct.ads8688_state, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = tail call i32 @regulator_disable(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_triggered_buffer_setup_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_trigger_handler(i32 noundef %irq, ptr nocapture noundef readonly %p) #2 align 64 {
entry:
  %buffer = alloca [12 x i16], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %buffer) #8
  %masklength = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 7
  %2 = call ptr @memset(ptr %buffer, i32 255, i32 24)
  %3 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %masklength, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp16.not = icmp eq i32 %4, 0
  br i1 %cmp16.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %active_scan_mask = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.019 = phi i32 [ 0, %for.body.lr.ph ], [ %j.1, %for.inc.for.body_crit_edge ]
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc3, %for.inc.for.body_crit_edge ]
  %5 = ptrtoint ptr %active_scan_mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %active_scan_mask, align 4
  %div3.i = lshr i32 %i.017, 5
  %arrayidx.i = getelementptr i32, ptr %6, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.017, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call fastcc i32 @ads8688_read(ptr noundef %1, i32 noundef %i.017)
  %conv = trunc i32 %call2 to i16
  %arrayidx = getelementptr [12 x i16], ptr %buffer, i32 0, i32 %j.019
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %arrayidx, align 2
  %inc = add i32 %j.019, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.end ], [ %j.019, %for.body.for.inc_crit_edge ]
  %inc3 = add nuw i32 %i.017, 1
  %12 = ptrtoint ptr %masklength to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %masklength, align 8
  %cmp = icmp ult i32 %inc3, %13
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %call4 = tail call i64 @iio_get_time_ns(ptr noundef %1) #8
  %scan_timestamp.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %scan_timestamp.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %scan_timestamp.i, align 8, !range !62
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge, label %if.then.i

for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge: ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %iio_push_to_buffers_with_timestamp.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %scan_bytes.i = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %scan_bytes.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scan_bytes.i, align 4
  %div1.i = lshr i32 %17, 3
  %sub.i = add nsw i32 %div1.i, -1
  %arrayidx.i15 = getelementptr i64, ptr %buffer, i32 %sub.i
  %18 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %call4, ptr %arrayidx.i15, align 8
  br label %iio_push_to_buffers_with_timestamp.exit

iio_push_to_buffers_with_timestamp.exit:          ; preds = %if.then.i, %for.end.iio_push_to_buffers_with_timestamp.exit_crit_edge
  %call.i = call i32 @iio_push_to_buffers(ptr noundef %1, ptr noundef nonnull %buffer) #8
  %trig = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 10
  %19 = ptrtoint ptr %trig to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %trig, align 4
  call void @iio_trigger_notify_done(ptr noundef %20) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %buffer) #8
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_triggered_buffer_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %val, ptr nocapture noundef writeonly %val2, i32 noundef %m) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %2 = zext i32 %m to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %m, label %sw.epilog [
    i32 0, label %sw.bb
    i32 2, label %sw.bb3
    i32 3, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %call1 = tail call fastcc i32 @ads8688_read(ptr noundef %indio_dev, i32 noundef %4)
  tail call void @mutex_unlock(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call1, ptr %val, align 4
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %vref_mv = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %vref_mv, align 8
  %channel4 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %channel4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel4, align 4
  %arrayidx = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %scale = getelementptr [5 x %struct.ads8688_ranges], ptr @ads8688_range_def, i32 0, i32 %11, i32 1
  %12 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scale, align 4
  %mul = mul i32 %13, %7
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %val, align 4
  %15 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul, ptr %val2, align 4
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %channel9 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %channel9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel9, align 4
  %arrayidx10 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %17
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %offset12 = getelementptr [5 x %struct.ads8688_ranges], ptr @ads8688_range_def, i32 0, i32 %19, i32 2
  %20 = ptrtoint ptr %offset12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset12, align 4
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb7, %sw.bb3, %if.end, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.epilog ], [ 1, %sw.bb7 ], [ 3, %sw.bb3 ], [ 1, %if.end ], [ %call1, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i110 = alloca %struct.spi_message, align 4
  %t.i.i.i111 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %mask, label %entry.if.end71_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb19
  ]

entry.if.end71_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

sw.bb:                                            ; preds = %entry
  %channel = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %channel, align 4
  %arrayidx = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = and i32 %6, 268435455
  %8 = add nsw i32 %7, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %9 = icmp ult i32 %8, 2
  br i1 %9, label %land.lhs.true, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %sw.bb
  %vref_mv = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vref_mv, align 8
  %mul = mul i32 %11, 76295
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %val2)
  %cmp3 = icmp eq i32 %mul, %val2
  br i1 %cmp3, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %vref_mv8 = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %vref_mv8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vref_mv8, align 8
  %mul9 = mul i32 %13, 76295
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9, i32 %val2)
  %cmp10 = icmp eq i32 %mul9, %val2
  br i1 %cmp10, label %land.lhs.true11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true11:                                  ; preds = %if.end
  %14 = and i32 %6, 268435455
  %15 = add nsw i32 %14, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %15)
  %16 = icmp ult i32 %15, -2
  br i1 %16, label %land.lhs.true11.if.then15_crit_edge, label %land.lhs.true11.for.inc_crit_edge

land.lhs.true11.for.inc_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true11.if.then15_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then15:                                        ; preds = %land.lhs.true11.4.if.then15_crit_edge, %land.lhs.true11.3.if.then15_crit_edge, %land.lhs.true11.2.if.then15_crit_edge, %land.lhs.true11.1.if.then15_crit_edge, %land.lhs.true11.if.then15_crit_edge
  %i.0139.lcssa = phi i32 [ 0, %land.lhs.true11.if.then15_crit_edge ], [ 1, %land.lhs.true11.1.if.then15_crit_edge ], [ 2, %land.lhs.true11.2.if.then15_crit_edge ], [ 3, %land.lhs.true11.3.if.then15_crit_edge ], [ 4, %land.lhs.true11.4.if.then15_crit_edge ]
  %reg = getelementptr [5 x %struct.ads8688_ranges], ptr @ads8688_range_def, i32 0, i32 %i.0139.lcssa, i32 3
  %17 = ptrtoint ptr %reg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %reg, align 4
  %conv = zext i8 %18 to i32
  %19 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %priv.i, align 8
  %add.i = shl i32 %4, 17
  %21 = add i32 %add.i, 655360
  %22 = shl nuw nsw i32 %conv, 8
  %or1.i.i = or i32 %22, %21
  %shl2.i.i = or i32 %or1.i.i, 65536
  %data.i.i = getelementptr inbounds %struct.ads8688_state, ptr %20, i32 0, i32 7
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl2.i.i, ptr %data.i.i, align 128
  %spi.i.i = getelementptr inbounds %struct.ads8688_state, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %spi.i.i, align 32
  %arrayidx5.i.i = getelementptr [4 x i8], ptr %data.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %26 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %27 = call ptr @memset(ptr %26, i32 0, i32 92)
  %28 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx5.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 3, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %31 = call ptr @memset(ptr %30, i32 0, i32 40)
  %32 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %34 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then15.ads8688_write_reg_range.exit_crit_edge

if.then15.ads8688_write_reg_range.exit_crit_edge: ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads8688_write_reg_range.exit

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %39 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %ads8688_write_reg_range.exit

ads8688_write_reg_range.exit:                     ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then15.ads8688_write_reg_range.exit_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %25, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  br label %sw.epilog

for.inc:                                          ; preds = %land.lhs.true11.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %mul9.1 = mul i32 %13, 38148
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9.1, i32 %val2)
  %cmp10.1 = icmp eq i32 %mul9.1, %val2
  br i1 %cmp10.1, label %land.lhs.true11.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true11.1:                                ; preds = %for.inc
  %40 = and i32 %6, 268435455
  %41 = add nsw i32 %40, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %41)
  %42 = icmp ult i32 %41, -2
  br i1 %42, label %land.lhs.true11.1.if.then15_crit_edge, label %land.lhs.true11.1.for.inc.1_crit_edge

land.lhs.true11.1.for.inc.1_crit_edge:            ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true11.1.if.then15_crit_edge:            ; preds = %land.lhs.true11.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

for.inc.1:                                        ; preds = %land.lhs.true11.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %mul9.2 = mul i32 %13, 19074
  call void @__sanitizer_cov_trace_cmp4(i32 %mul9.2, i32 %val2)
  %cmp10.2 = icmp eq i32 %mul9.2, %val2
  br i1 %cmp10.2, label %land.lhs.true11.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true11.2:                                ; preds = %for.inc.1
  %43 = and i32 %6, 268435455
  %44 = add nsw i32 %43, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %44)
  %45 = icmp ult i32 %44, -2
  br i1 %45, label %land.lhs.true11.2.if.then15_crit_edge, label %land.lhs.true11.2.for.inc.2_crit_edge

land.lhs.true11.2.for.inc.2_crit_edge:            ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true11.2.if.then15_crit_edge:            ; preds = %land.lhs.true11.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

for.inc.2:                                        ; preds = %land.lhs.true11.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br i1 %cmp10.1, label %land.lhs.true11.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true11.3:                                ; preds = %for.inc.2
  %46 = and i32 %6, 268435455
  %47 = add nsw i32 %46, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %48 = icmp ult i32 %47, 2
  br i1 %48, label %land.lhs.true11.3.if.then15_crit_edge, label %land.lhs.true11.3.for.inc.3_crit_edge

land.lhs.true11.3.for.inc.3_crit_edge:            ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true11.3.if.then15_crit_edge:            ; preds = %land.lhs.true11.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

for.inc.3:                                        ; preds = %land.lhs.true11.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  br i1 %cmp10.2, label %land.lhs.true11.4, label %for.inc.3.if.end71_crit_edge

for.inc.3.if.end71_crit_edge:                     ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true11.4:                                ; preds = %for.inc.3
  %49 = and i32 %6, 268435455
  %50 = add nsw i32 %49, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %51 = icmp ult i32 %50, 2
  br i1 %51, label %land.lhs.true11.4.if.then15_crit_edge, label %land.lhs.true11.4.if.end71_crit_edge

land.lhs.true11.4.if.end71_crit_edge:             ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true11.4.if.then15_crit_edge:            ; preds = %land.lhs.true11.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

sw.bb19:                                          ; preds = %entry
  %52 = zext i32 %val to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %val, label %if.then24 [
    i32 0, label %land.lhs.true29
    i32 -32768, label %land.lhs.true51
  ]

if.then24:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

land.lhs.true29:                                  ; preds = %sw.bb19
  %channel31 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %53 = ptrtoint ptr %channel31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %channel31, align 4
  %arrayidx32 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %54
  %55 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp33 = icmp eq i32 %56, 0
  br i1 %cmp33, label %if.then35, label %land.lhs.true51.3

if.then35:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

land.lhs.true51:                                  ; preds = %sw.bb19
  %channel39144 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %57 = ptrtoint ptr %channel39144 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %channel39144, align 4
  %arrayidx40145 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %58
  %59 = ptrtoint ptr %arrayidx40145 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx40145, align 4
  %61 = and i32 %60, 268435455
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp54 = icmp eq i32 %61, 0
  br i1 %cmp54, label %land.lhs.true51.if.then56_crit_edge, label %land.lhs.true51.1

land.lhs.true51.if.then56_crit_edge:              ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

if.then56:                                        ; preds = %land.lhs.true51.4.if.then56_crit_edge, %land.lhs.true51.4.if.then56_crit_edge164, %land.lhs.true51.3.if.then56_crit_edge, %land.lhs.true51.2.if.then56_crit_edge, %land.lhs.true51.2.if.then56_crit_edge163, %land.lhs.true51.1.if.then56_crit_edge, %land.lhs.true51.if.then56_crit_edge
  %62 = phi i32 [ %58, %land.lhs.true51.if.then56_crit_edge ], [ %58, %land.lhs.true51.1.if.then56_crit_edge ], [ %58, %land.lhs.true51.2.if.then56_crit_edge ], [ %91, %land.lhs.true51.3.if.then56_crit_edge ], [ %91, %land.lhs.true51.4.if.then56_crit_edge ], [ %58, %land.lhs.true51.2.if.then56_crit_edge163 ], [ %91, %land.lhs.true51.4.if.then56_crit_edge164 ]
  %i.1137.lcssa = phi i32 [ 0, %land.lhs.true51.if.then56_crit_edge ], [ 1, %land.lhs.true51.1.if.then56_crit_edge ], [ 2, %land.lhs.true51.2.if.then56_crit_edge ], [ 3, %land.lhs.true51.3.if.then56_crit_edge ], [ 4, %land.lhs.true51.4.if.then56_crit_edge ], [ 2, %land.lhs.true51.2.if.then56_crit_edge163 ], [ 4, %land.lhs.true51.4.if.then56_crit_edge164 ]
  %reg58 = getelementptr [5 x %struct.ads8688_ranges], ptr @ads8688_range_def, i32 0, i32 %i.1137.lcssa, i32 3
  %63 = ptrtoint ptr %reg58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %reg58, align 4
  %conv59 = zext i8 %64 to i32
  %65 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %priv.i, align 8
  %add.i114 = shl i32 %62, 17
  %67 = add i32 %add.i114, 655360
  %68 = shl nuw nsw i32 %conv59, 8
  %or1.i.i115 = or i32 %68, %67
  %shl2.i.i116 = or i32 %or1.i.i115, 65536
  %data.i.i117 = getelementptr inbounds %struct.ads8688_state, ptr %66, i32 0, i32 7
  %69 = ptrtoint ptr %data.i.i117 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %shl2.i.i116, ptr %data.i.i117, align 128
  %spi.i.i118 = getelementptr inbounds %struct.ads8688_state, ptr %66, i32 0, i32 2
  %70 = ptrtoint ptr %spi.i.i118 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %spi.i.i118, align 32
  %arrayidx5.i.i119 = getelementptr [4 x i8], ptr %data.i.i117, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i111) #8
  %72 = getelementptr inbounds i8, ptr %t.i.i.i111, i32 4
  %73 = call ptr @memset(ptr %72, i32 0, i32 92)
  %74 = ptrtoint ptr %t.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %arrayidx5.i.i119, ptr %t.i.i.i111, align 4
  %len1.i.i.i120 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i111, i32 0, i32 2
  %75 = ptrtoint ptr %len1.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 3, ptr %len1.i.i.i120, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i110) #8
  %76 = getelementptr inbounds i8, ptr %msg.i.i.i.i110, i32 8
  %77 = call ptr @memset(ptr %76, i32 0, i32 40)
  %78 = ptrtoint ptr %msg.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %msg.i.i.i.i110, ptr %msg.i.i.i.i110, align 4
  %prev.i.i.i.i.i.i.i.i121 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i110, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %msg.i.i.i.i110, ptr %prev.i.i.i.i.i.i.i.i121, align 4
  %resources.i.i.i.i.i.i.i122 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i110, i32 0, i32 10
  %80 = ptrtoint ptr %resources.i.i.i.i.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %resources.i.i.i.i.i.i.i122, ptr %resources.i.i.i.i.i.i.i122, align 4
  %prev.i2.i.i.i.i.i.i.i123 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i110, i32 0, i32 10, i32 1
  %81 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i123 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %resources.i.i.i.i.i.i.i122, ptr %prev.i2.i.i.i.i.i.i.i123, align 4
  %transfer_list.i.i.i.i.i.i124 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i111, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i125 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i124, ptr noundef nonnull %msg.i.i.i.i110, ptr noundef nonnull %msg.i.i.i.i110) #8
  br i1 %call.i.i.i.i.i.i.i.i125, label %if.end.i.i.i.i.i.i.i.i127, label %if.then56.ads8688_write_reg_range.exit129_crit_edge

if.then56.ads8688_write_reg_range.exit129_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  br label %ads8688_write_reg_range.exit129

if.end.i.i.i.i.i.i.i.i127:                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #10
  %82 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i.i.i.i.i124, ptr %prev.i.i.i.i.i.i.i.i121, align 4
  %83 = ptrtoint ptr %transfer_list.i.i.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i.i.i.i110, ptr %transfer_list.i.i.i.i.i.i124, align 4
  %prev3.i.i.i.i.i.i.i.i126 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i111, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i.i.i.i110, ptr %prev3.i.i.i.i.i.i.i.i126, align 4
  %85 = ptrtoint ptr %msg.i.i.i.i110 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i.i.i.i.i124, ptr %msg.i.i.i.i110, align 4
  br label %ads8688_write_reg_range.exit129

ads8688_write_reg_range.exit129:                  ; preds = %if.end.i.i.i.i.i.i.i.i127, %if.then56.ads8688_write_reg_range.exit129_crit_edge
  %call.i.i.i.i128 = call i32 @spi_sync(ptr noundef %71, ptr noundef nonnull %msg.i.i.i.i110) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i110) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i111) #8
  br label %sw.epilog

land.lhs.true51.1:                                ; preds = %land.lhs.true51
  %86 = and i32 %60, 268435453
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %86)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %land.lhs.true51.1.if.then56_crit_edge, label %land.lhs.true51.2

land.lhs.true51.1.if.then56_crit_edge:            ; preds = %land.lhs.true51.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.2:                                ; preds = %land.lhs.true51.1
  %88 = and i32 %60, 268435455
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %88, label %land.lhs.true51.2.if.end71_crit_edge [
    i32 4, label %land.lhs.true51.2.if.then56_crit_edge
    i32 2, label %land.lhs.true51.2.if.then56_crit_edge163
  ]

land.lhs.true51.2.if.then56_crit_edge163:         ; preds = %land.lhs.true51.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.2.if.then56_crit_edge:            ; preds = %land.lhs.true51.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.2.if.end71_crit_edge:             ; preds = %land.lhs.true51.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

land.lhs.true51.3:                                ; preds = %land.lhs.true29
  %channel39 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %90 = ptrtoint ptr %channel39 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %channel39, align 4
  %arrayidx40 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %91
  %92 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %arrayidx40, align 4
  %94 = and i32 %93, 268435453
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %land.lhs.true51.3.if.then56_crit_edge, label %land.lhs.true51.4

land.lhs.true51.3.if.then56_crit_edge:            ; preds = %land.lhs.true51.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.4:                                ; preds = %land.lhs.true51.3
  %96 = and i32 %93, 268435455
  %97 = zext i32 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %96, label %land.lhs.true51.4.if.end71_crit_edge [
    i32 4, label %land.lhs.true51.4.if.then56_crit_edge
    i32 2, label %land.lhs.true51.4.if.then56_crit_edge164
  ]

land.lhs.true51.4.if.then56_crit_edge164:         ; preds = %land.lhs.true51.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.4.if.then56_crit_edge:            ; preds = %land.lhs.true51.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then56

land.lhs.true51.4.if.end71_crit_edge:             ; preds = %land.lhs.true51.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

sw.epilog:                                        ; preds = %ads8688_write_reg_range.exit129, %ads8688_write_reg_range.exit
  %ret.0 = phi i32 [ %call.i.i.i.i128, %ads8688_write_reg_range.exit129 ], [ %call.i.i.i.i, %ads8688_write_reg_range.exit ]
  %i.2 = phi i32 [ %i.1137.lcssa, %ads8688_write_reg_range.exit129 ], [ %i.0139.lcssa, %ads8688_write_reg_range.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool.not = icmp eq i32 %ret.0, 0
  br i1 %tobool.not, label %if.then65, label %sw.epilog.if.end71_crit_edge

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

if.then65:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx66 = getelementptr [5 x %struct.ads8688_ranges], ptr @ads8688_range_def, i32 0, i32 %i.2
  %98 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx66, align 4
  %channel69 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 1
  %100 = ptrtoint ptr %channel69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %channel69, align 4
  %arrayidx70 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 5, i32 %101
  %102 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %99, ptr %arrayidx70, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.then65, %sw.epilog.if.end71_crit_edge, %land.lhs.true51.4.if.end71_crit_edge, %land.lhs.true51.2.if.end71_crit_edge, %land.lhs.true11.4.if.end71_crit_edge, %for.inc.3.if.end71_crit_edge, %entry.if.end71_crit_edge
  %ret.0133 = phi i32 [ 0, %if.then65 ], [ %ret.0, %sw.epilog.if.end71_crit_edge ], [ -22, %entry.if.end71_crit_edge ], [ -22, %land.lhs.true11.4.if.end71_crit_edge ], [ -22, %for.inc.3.if.end71_crit_edge ], [ -22, %land.lhs.true51.4.if.end71_crit_edge ], [ -22, %land.lhs.true51.2.if.end71_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then35, %if.then24, %if.then
  %retval.0 = phi i32 [ %ret.0133, %if.end71 ], [ -22, %if.then35 ], [ -22, %if.then24 ], [ -22, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ads8688_write_raw_get_fmt(ptr nocapture noundef readnone %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %mask) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %mask)
  %switch.selectcmp = icmp eq i32 %mask, 3
  %switch.select = select i1 %switch.selectcmp, i32 1, i32 -22
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mask)
  %switch.selectcmp2 = icmp eq i32 %mask, 2
  %switch.select3 = select i1 %switch.selectcmp2, i32 3, i32 %switch.select
  ret i32 %switch.select3
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_show_scales(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %vref_mv = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vref_mv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vref_mv, align 8
  %mul = mul i32 %3, 76295
  %mul3 = mul i32 %3, 38148
  %mul5 = mul i32 %3, 19074
  %call6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.9, i32 noundef %mul, i32 noundef %mul3, i32 noundef %mul5)
  ret i32 %call6
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ads8688_show_offsets(ptr nocapture noundef readnone %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.11, i32 noundef -32768, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ads8688_read(ptr nocapture noundef readonly %indio_dev, i32 noundef %chan) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %t = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %t) #8
  %2 = getelementptr inbounds i8, ptr %t, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %data = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %data, ptr %t, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 64, ptr %cs_change, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1
  %arrayidx4 = getelementptr %struct.ads8688_state, ptr %1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx4, ptr %arrayinit.element, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 1
  %8 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx4, ptr %rx_buf, align 4
  %len9 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 2
  %9 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %len9, align 4
  %mul = shl i32 %chan, 26
  %or = or i32 %mul, -1073741824
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or, ptr %data, align 128
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx4, align 4
  %spi = getelementptr inbounds %struct.ads8688_state, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi, align 32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %25, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.i.i.1, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.1, ptr %25, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge, label %if.end

spi_message_add_tail.exit.i.i.1.cleanup_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %31, 65535
  br label %cleanup

cleanup:                                          ; preds = %if.end, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge
  %retval.0 = phi i32 [ %and, %if.end ], [ %call.i, %spi_message_add_tail.exit.i.i.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %t) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_trigger_notify_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iio_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_ti_ads8688__290_518_ads8688_driver_init6, !1, !"__initcall__kmod_ti_ads8688__290_518_ads8688_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 518, i32 1}
!2 = !{ptr @__exitcall_ads8688_driver_exit, !1, !"__exitcall_ads8688_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 520, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 521, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 522, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 512, i32 11}
!12 = !{ptr @ads8688_driver, !13, !"ads8688_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 510, i32 26}
!14 = !{ptr @ads8688_id, !15, !"ads8688_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 496, i32 35}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 426, i32 51}
!18 = !{ptr @ads8688_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 458, i32 2}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 462, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @ads8688_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @ads8688_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @ads8688_chip_info_tbl, !30, !"ads8688_chip_info_tbl", i1 false, i1 false}
!30 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 403, i32 39}
!31 = !{ptr @ads8684_channels, !32, !"ads8684_channels", i1 false, i1 false}
!32 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 168, i32 35}
!33 = !{ptr @ads8688_channels, !34, !"ads8688_channels", i1 false, i1 false}
!34 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 175, i32 35}
!35 = !{ptr @ads8688_info, !36, !"ads8688_info", i1 false, i1 false}
!36 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 373, i32 30}
!37 = !{ptr @ads8688_attribute_group, !38, !"ads8688_attribute_group", i1 false, i1 false}
!38 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 147, i32 37}
!39 = !{ptr @ads8688_attributes, !40, !"ads8688_attributes", i1 false, i1 false}
!40 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 141, i32 26}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 136, i32 8}
!43 = !{ptr @iio_dev_attr_in_voltage_scale_available, !42, !"iio_dev_attr_in_voltage_scale_available", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 123, i32 22}
!46 = !{ptr @ads8688_range_def, !47, !"ads8688_range_def", i1 false, i1 false}
!47 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 89, i32 36}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 138, i32 8}
!50 = !{ptr @iio_dev_attr_in_voltage_offset_available, !49, !"iio_dev_attr_in_voltage_offset_available", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/iio/adc/ti-ads8688.c", i32 132, i32 22}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!62 = !{i8 0, i8 2}
