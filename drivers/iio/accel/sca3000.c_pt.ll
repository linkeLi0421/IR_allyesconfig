; ModuleID = '/llk/IR_all_yes/drivers/iio/accel/sca3000.c_pt.bc'
source_filename = "../drivers/iio/accel/sca3000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spi_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sca3000_chip_info = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], [7 x i32] }
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.71, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.71 = type { i8, i8, i8, i8, i8, i32 }
%struct.iio_buffer_setup_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.iio_dev_attr = type { %struct.device_attribute, i64, %struct.list_head, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.list_head = type { ptr, ptr }
%struct.iio_event_spec = type { i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.sca3000_state = type { ptr, ptr, i64, i32, %struct.mutex, [16 x i8], [384 x i8], [6 x i8], [122 x i8] }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }

@__initcall__kmod_sca3000__234_1559_sca3000_driver_init6 = internal global ptr @sca3000_driver_init, section ".initcall6.init", align 4
@sca3000_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr @sca3000_id, ptr @sca3000_probe, ptr @sca3000_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_sca3000_driver_exit = internal global ptr @sca3000_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [51 x i8] c"sca3000.author=Jonathan Cameron <jic23@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [65 x i8] c"sca3000.description=VTI SCA3000 Series Accelerometers SPI driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [39 x i8] c"sca3000.file=drivers/iio/accel/sca3000\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"sca3000.license=GPL v2\00", section ".modinfo", align 1
@sca3000_id = internal constant { [5 x %struct.spi_device_id], [44 x i8] } { [5 x %struct.spi_device_id] [%struct.spi_device_id { [32 x i8] c"sca3000_d01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.spi_device_id { [32 x i8] c"sca3000_e02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1 }, %struct.spi_device_id { [32 x i8] c"sca3000_e04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.spi_device_id { [32 x i8] c"sca3000_e05\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.spi_device_id zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sca3000\00", [24 x i8] zeroinitializer }, align 32
@sca3000_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&st->lock\00", [22 x i8] zeroinitializer }, align 32
@sca3000_spi_chip_info_tbl = internal constant { [4 x %struct.sca3000_chip_info], [80 x i8] } { [4 x %struct.sca3000_chip_info] [%struct.sca3000_chip_info { i32 7357, i8 1, i32 250, i32 45, i32 1, i32 250, i32 70, i32 0, i32 0, i32 0, [6 x i32] [i32 50, i32 100, i32 200, i32 350, i32 650, i32 1300], [7 x i32] [i32 50, i32 100, i32 150, i32 250, i32 450, i32 850, i32 1750] }, %struct.sca3000_chip_info { i32 9810, i8 0, i32 125, i32 40, i32 2, i32 63, i32 11, i32 0, i32 0, i32 0, [6 x i32] [i32 100, i32 150, i32 300, i32 550, i32 1050, i32 2050], [7 x i32] [i32 50, i32 100, i32 200, i32 350, i32 700, i32 1350, i32 2700] }, %struct.sca3000_chip_info { i32 19620, i8 0, i32 100, i32 38, i32 2, i32 50, i32 9, i32 4, i32 400, i32 70, [6 x i32] [i32 200, i32 300, i32 600, i32 1100, i32 2100, i32 4100], [7 x i32] [i32 100, i32 200, i32 400, i32 7000, i32 1400, i32 2700, i32 54000] }, %struct.sca3000_chip_info { i32 61313, i8 0, i32 200, i32 60, i32 2, i32 50, i32 9, i32 4, i32 400, i32 75, [6 x i32] [i32 600, i32 900, i32 1700, i32 3200, i32 6100, i32 11900], [7 x i32] [i32 300, i32 600, i32 1200, i32 2000, i32 4100, i32 7800, i32 15600] }], [80 x i8] zeroinitializer }, align 32
@sca3000_info = internal constant { %struct.iio_info, [56 x i8] } { %struct.iio_info { ptr null, ptr @sca3000_attribute_group, ptr @sca3000_read_raw, ptr null, ptr null, ptr @sca3000_write_raw, ptr null, ptr null, ptr @sca3000_read_event_config, ptr @sca3000_write_event_config, ptr @sca3000_read_event_value, ptr @sca3000_write_event_value, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@sca3000_channels_with_temp = internal constant { [5 x %struct.iio_chan_spec], [104 x i8] } { [5 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 1, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 2, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 9, i32 0, i32 0, i32 0, i32 -1, %struct.anon.71 { i8 117, i8 9, i8 16, i8 5, i8 0, i32 1 }, i32 1, i32 0, i32 12, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @sca3000_freefall_event_spec, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [104 x i8] zeroinitializer }, align 32
@sca3000_channels = internal constant { [4 x %struct.iio_chan_spec], [64 x i8] } { [4 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 3, i32 0, i32 1, i32 0, i32 0, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 2, i32 1, i32 1, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 3, i32 2, i32 2, %struct.anon.71 { i8 115, i8 13, i8 16, i8 3, i8 0, i32 1 }, i32 1, i32 0, i32 1028, i32 0, i32 0, i32 0, i32 4096, i32 0, ptr @sca3000_event, i32 1, ptr null, ptr null, ptr null, i8 -128 }, %struct.iio_chan_spec { i32 3, i32 0, i32 7, i32 0, i32 -1, %struct.anon.71 zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr @sca3000_freefall_event_spec, i32 1, ptr null, ptr null, ptr null, i8 -128 }], [64 x i8] zeroinitializer }, align 32
@sca3000_ring_setup_ops = internal constant { %struct.iio_buffer_setup_ops, [44 x i8] } { %struct.iio_buffer_setup_ops { ptr @sca3000_hw_ring_preenable, ptr null, ptr null, ptr @sca3000_hw_ring_postdisable, ptr null }, [44 x i8] zeroinitializer }, align 32
@sca3000_attribute_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @sca3000_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@sca3000_attributes = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, ptr @iio_dev_attr_sampling_frequency_available, ptr null], [20 x i8] zeroinitializer }, align 32
@iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sca3000_show_available_3db_freqs, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@iio_dev_attr_sampling_frequency_available = internal global { %struct.iio_dev_attr, [40 x i8] } { %struct.iio_dev_attr { %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sca3000_read_av_freq, ptr null }, i64 0, %struct.list_head zeroinitializer, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"in_accel_filter_low_pass_3db_frequency_available\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c" %d\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sampling_frequency_available\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d %d %d\0A\00", [22 x i8] zeroinitializer }, align 32
@sca3000_addresses = internal constant { [3 x [3 x i8]], [23 x i8] } { [3 x [3 x i8]] [[3 x i8] c"\05\04\02", [3 x i8] c"\07\03\01", [3 x i8] c"\09\05\04"], [23 x i8] zeroinitializer }, align 32
@sca3000_event = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 1, i32 1, i32 3, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@sca3000_freefall_event_spec = internal constant { %struct.iio_event_spec, [40 x i8] } { %struct.iio_event_spec { i32 1, i32 2, i32 9, i32 0, i32 0, i32 0 }, [40 x i8] zeroinitializer }, align 32
@__sca3000_hw_ring_state_set._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 1294, ptr @.str.11, ptr @.str.12 }, align 1
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"supposedly enabling ring buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__sca3000_hw_ring_state_set\00", [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/iio/accel/sca3000.c\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@__sca3000_hw_ring_state_set._entry_ptr = internal global ptr @__sca3000_hw_ring_state_set._entry, section ".printk_index", align 4
@sca3000_read_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 991, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"problem reading register\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sca3000_read_data\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sca3000_read_data._entry_ptr = internal global ptr @sca3000_read_data._entry, section ".printk_index", align 4
@sca3000_print_rev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.10, i32 441, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sca3000 revision major=%lu, minor=%lu\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sca3000_print_rev\00", [46 x i8] zeroinitializer }, align 32
@sca3000_print_rev._entry_ptr = internal global ptr @sca3000_print_rev._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 10, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 12]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 7]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"sca3000_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1551, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"sca3000_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1542, i32 35 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1553, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1460, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [26 x i8] c"sca3000_spi_chip_info_tbl\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 227, i32 39 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"sca3000_info\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1437, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"sca3000_channels_with_temp\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 526, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"sca3000_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 512, i32 35 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"sca3000_ring_setup_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1367, i32 42 }
@___asan_gen_.56 = private unnamed_addr constant [24 x i8] c"sca3000_attribute_group\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 968, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"sca3000_attributes\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 962, i32 26 }
@___asan_gen_.62 = private unnamed_addr constant [62 x i8] c"iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [42 x i8] c"iio_dev_attr_sampling_frequency_available\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 469, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 457, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 459, i32 29 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 868, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 841, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"sca3000_addresses\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 555, i32 11 }
@___asan_gen_.86 = private unnamed_addr constant [14 x i8] c"sca3000_event\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 473, i32 36 }
@___asan_gen_.89 = private unnamed_addr constant [28 x i8] c"sca3000_freefall_event_spec\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 505, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 1294, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 991, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [31 x i8] c"../drivers/iio/accel/sca3000.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 438, i32 2 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_sca3000_driver_exit, ptr @__initcall__kmod_sca3000__234_1559_sca3000_driver_init6, ptr @__sca3000_hw_ring_state_set._entry, ptr @__sca3000_hw_ring_state_set._entry_ptr, ptr @sca3000_driver_exit, ptr @sca3000_print_rev._entry, ptr @sca3000_print_rev._entry_ptr, ptr @sca3000_read_data._entry, ptr @sca3000_read_data._entry_ptr, ptr @sca3000_driver, ptr @sca3000_id, ptr @.str, ptr @sca3000_probe.__key, ptr @.str.1, ptr @sca3000_spi_chip_info_tbl, ptr @sca3000_info, ptr @sca3000_channels_with_temp, ptr @sca3000_channels, ptr @sca3000_ring_setup_ops, ptr @sca3000_attribute_group, ptr @sca3000_attributes, ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, ptr @iio_dev_attr_sampling_frequency_available, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @sca3000_addresses, ptr @sca3000_event, ptr @sca3000_freefall_event_spec, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_id to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_spi_chip_info_tbl to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_channels_with_temp to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_channels to i32), i32 352, i32 416, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_ring_setup_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_attribute_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_attributes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iio_dev_attr_sampling_frequency_available to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_addresses to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_event to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_freefall_event_spec to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_read_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sca3000_print_rev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @sca3000_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sca3000_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @sca3000_driver, i32 0, i32 4)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_probe(ptr noundef %spi) #2 align 64 {
entry:
  %msg.i.i.i76 = alloca %struct.spi_message, align 4
  %xfer.i.i77 = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i64.i = alloca %struct.spi_message, align 4
  %xfer.i65.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devm_iio_device_alloc(ptr noundef %spi, i32 noundef 640) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %spi, ptr %1, align 128
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @sca3000_probe.__key) #8
  %call2 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %driver_data = getelementptr inbounds %struct.spi_device_id, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [4 x %struct.sca3000_chip_info], ptr @sca3000_spi_chip_info_tbl, i32 0, i32 %5
  %info = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %arrayidx, ptr %info, align 4
  %call3 = tail call ptr @spi_get_device_id(ptr noundef %spi) #8
  %name4 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 15
  %7 = ptrtoint ptr %name4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %name4, align 8
  %info5 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 17
  %8 = ptrtoint ptr %info5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sca3000_info, ptr %info5, align 8
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %temp_output = getelementptr inbounds %struct.sca3000_chip_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %temp_output to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %temp_output, align 4, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  %spec.select = select i1 %tobool7.not, ptr @sca3000_channels, ptr @sca3000_channels_with_temp
  %spec.select103 = select i1 %tobool7.not, i32 4, i32 5
  %13 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select, ptr %13, align 8
  %15 = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 14
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select103, ptr %15, align 4
  %17 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %call, align 8
  %call13 = tail call i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef %spi, ptr noundef nonnull %call, i32 noundef 4, ptr noundef nonnull @sca3000_ring_setup_ops, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool17.not = icmp eq i32 %19, 0
  br i1 %tobool17.not, label %if.end16.if.end24_crit_edge, label %if.then18

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then18:                                        ; preds = %if.end16
  %call20 = tail call i32 @request_threaded_irq(i32 noundef %19, ptr noundef null, ptr noundef nonnull @sca3000_event_handler, i32 noundef 8194, ptr noundef nonnull @.str, ptr noundef nonnull %call) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then18.if.end24_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end16.if.end24_crit_edge
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %20 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %25 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %len4.i.i, align 4
  %26 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 88, ptr %tx.i.i, align 128
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %29 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %30 = call ptr @memset(ptr %29, i32 0, i32 40)
  %31 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end24.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.end24.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %38 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.end24.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %40, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %42 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %40, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %28, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sca3000_read_data_short.exit.i.error_free_irq.sink.split_crit_edge

sca3000_read_data_short.exit.i.error_free_irq.sink.split_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end.i:                                         ; preds = %sca3000_read_data_short.exit.i
  %call1.i = call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.error_free_irq.sink.split_crit_edge, label %if.end3.i

if.end.i.error_free_irq.sink.split_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %45 = trunc i32 %call1.i to i8
  %conv.i = and i8 %45, -64
  %call4.i = call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %conv.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.end3.i.error_free_irq.sink.split_crit_edge

if.end3.i.error_free_irq.sink.split_crit_edge:    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end7.i:                                        ; preds = %if.end3.i
  %call8.i = call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %if.end7.i.error_free_irq.sink.split_crit_edge, label %if.end12.i

if.end7.i.error_free_irq.sink.split_crit_edge:    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end12.i:                                       ; preds = %if.end7.i
  %46 = trunc i32 %call8.i to i8
  %47 = and i8 %46, -32
  %conv17.i = or i8 %47, 30
  %call18.i = call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext %conv17.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end21.i, label %if.end12.i.error_free_irq.sink.split_crit_edge

if.end12.i.error_free_irq.sink.split_crit_edge:   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end21.i:                                       ; preds = %if.end12.i
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i65.i) #8
  %48 = getelementptr inbounds i8, ptr %xfer.i65.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 188)
  %50 = ptrtoint ptr %xfer.i65.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tx.i.i, ptr %xfer.i65.i, align 4
  %len1.i67.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 0, i32 2
  %51 = ptrtoint ptr %len1.i67.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %len1.i67.i, align 4
  %rx_buf.i68.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 1, i32 1
  %52 = ptrtoint ptr %rx_buf.i68.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx.i.i, ptr %rx_buf.i68.i, align 4
  %len4.i70.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 1, i32 2
  %53 = ptrtoint ptr %len4.i70.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %len4.i70.i, align 4
  %54 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -124, ptr %tx.i.i, align 128
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i64.i) #8
  %57 = getelementptr inbounds i8, ptr %msg.i.i64.i, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %msg.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %msg.i.i64.i, ptr %msg.i.i64.i, align 4
  %prev.i.i.i.i.i.i71.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i64.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i64.i, ptr %prev.i.i.i.i.i.i71.i, align 4
  %resources.i.i.i.i.i72.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i64.i, i32 0, i32 10
  %61 = ptrtoint ptr %resources.i.i.i.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i.i72.i, ptr %resources.i.i.i.i.i72.i, align 4
  %prev.i2.i.i.i.i.i73.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i64.i, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i.i.i.i73.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i.i72.i, ptr %prev.i2.i.i.i.i.i73.i, align 4
  %transfer_list.i.i.i.i74.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 0, i32 18
  %call.i.i.i.i.i.i75.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i74.i, ptr noundef nonnull %msg.i.i64.i, ptr noundef nonnull %msg.i.i64.i) #8
  br i1 %call.i.i.i.i.i.i75.i, label %if.end.i.i.i.i.i.i77.i, label %if.end21.i.spi_message_add_tail.exit.i.i.i80.i_crit_edge

if.end21.i.spi_message_add_tail.exit.i.i.i80.i_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i80.i

if.end.i.i.i.i.i.i77.i:                           ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %transfer_list.i.i.i.i74.i, ptr %prev.i.i.i.i.i.i71.i, align 4
  %64 = ptrtoint ptr %transfer_list.i.i.i.i74.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i64.i, ptr %transfer_list.i.i.i.i74.i, align 4
  %prev3.i.i.i.i.i.i76.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i.i.i.i76.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i64.i, ptr %prev3.i.i.i.i.i.i76.i, align 4
  %66 = ptrtoint ptr %msg.i.i64.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %transfer_list.i.i.i.i74.i, ptr %msg.i.i64.i, align 4
  br label %spi_message_add_tail.exit.i.i.i80.i

spi_message_add_tail.exit.i.i.i80.i:              ; preds = %if.end.i.i.i.i.i.i77.i, %if.end21.i.spi_message_add_tail.exit.i.i.i80.i_crit_edge
  %transfer_list.i.i.i.1.i78.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 1, i32 18
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i.i.i.i71.i, align 4
  %call.i.i.i.i.i.1.i79.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i78.i, ptr noundef %68, ptr noundef nonnull %msg.i.i64.i) #8
  br i1 %call.i.i.i.i.i.1.i79.i, label %if.end.i.i.i.i.i.1.i82.i, label %spi_message_add_tail.exit.i.i.i80.i.sca3000_read_data_short.exit84.i_crit_edge

spi_message_add_tail.exit.i.i.i80.i.sca3000_read_data_short.exit84.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit84.i

if.end.i.i.i.i.i.1.i82.i:                         ; preds = %spi_message_add_tail.exit.i.i.i80.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %prev.i.i.i.i.i.i71.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i.i.i.1.i78.i, ptr %prev.i.i.i.i.i.i71.i, align 4
  %70 = ptrtoint ptr %transfer_list.i.i.i.1.i78.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i64.i, ptr %transfer_list.i.i.i.1.i78.i, align 4
  %prev3.i.i.i.i.i.1.i81.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i65.i, i32 1, i32 18, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i.i.1.i81.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i.i.i.1.i81.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i.i.i.1.i78.i, ptr %68, align 4
  br label %sca3000_read_data_short.exit84.i

sca3000_read_data_short.exit84.i:                 ; preds = %if.end.i.i.i.i.i.1.i82.i, %spi_message_add_tail.exit.i.i.i80.i.sca3000_read_data_short.exit84.i_crit_edge
  %call.i.i83.i = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i.i64.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i64.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i65.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i83.i)
  %tobool23.not.i = icmp eq i32 %call.i.i83.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %sca3000_read_data_short.exit84.i.error_free_irq.sink.split_crit_edge

sca3000_read_data_short.exit84.i.error_free_irq.sink.split_crit_edge: ; preds = %sca3000_read_data_short.exit84.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end25.i:                                       ; preds = %sca3000_read_data_short.exit84.i
  %call29.i = call fastcc i32 @sca3000_write_reg(ptr noundef %1, i8 noundef zeroext 33, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %if.end32.i, label %if.end25.i.error_free_irq.sink.split_crit_edge

if.end25.i.error_free_irq.sink.split_crit_edge:   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

if.end32.i:                                       ; preds = %if.end25.i
  %call33.i = call fastcc i32 @sca3000_read_data_short(ptr noundef %1, i8 noundef zeroext 20, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %sca3000_clean_setup.exit, label %if.end32.i.error_free_irq.sink.split_crit_edge

if.end32.i.error_free_irq.sink.split_crit_edge:   ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

sca3000_clean_setup.exit:                         ; preds = %if.end32.i
  %73 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rx.i.i, align 128
  %75 = and i8 %74, 40
  %call40.i = call fastcc i32 @sca3000_write_reg(ptr noundef %1, i8 noundef zeroext 20, i8 noundef zeroext %75) #8
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool26.not = icmp eq i32 %call40.i, 0
  br i1 %tobool26.not, label %if.end28, label %sca3000_clean_setup.exit.error_free_irq_crit_edge

sca3000_clean_setup.exit.error_free_irq_crit_edge: ; preds = %sca3000_clean_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq

if.end28:                                         ; preds = %sca3000_clean_setup.exit
  %76 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %priv.i, align 8
  %lock.i78 = getelementptr inbounds %struct.sca3000_state, ptr %77, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i78, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i77) #8
  %78 = getelementptr inbounds i8, ptr %xfer.i.i77, i32 4
  %79 = call ptr @memset(ptr %78, i32 0, i32 188)
  %tx.i.i79 = getelementptr inbounds %struct.sca3000_state, ptr %77, i32 0, i32 7
  %80 = ptrtoint ptr %xfer.i.i77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %tx.i.i79, ptr %xfer.i.i77, align 4
  %len1.i.i80 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 0, i32 2
  %81 = ptrtoint ptr %len1.i.i80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %len1.i.i80, align 4
  %rx_buf.i.i81 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 1, i32 1
  %rx.i.i82 = getelementptr inbounds %struct.sca3000_state, ptr %77, i32 0, i32 6
  %82 = ptrtoint ptr %rx_buf.i.i81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %rx.i.i82, ptr %rx_buf.i.i81, align 4
  %len4.i.i83 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 1, i32 2
  %83 = ptrtoint ptr %len4.i.i83 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %len4.i.i83, align 4
  %84 = ptrtoint ptr %tx.i.i79 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 0, ptr %tx.i.i79, align 128
  %85 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %77, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i76) #8
  %87 = getelementptr inbounds i8, ptr %msg.i.i.i76, i32 8
  %88 = call ptr @memset(ptr %87, i32 0, i32 40)
  %89 = ptrtoint ptr %msg.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %msg.i.i.i76, ptr %msg.i.i.i76, align 4
  %prev.i.i.i.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i76, i32 0, i32 1
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %msg.i.i.i76, ptr %prev.i.i.i.i.i.i.i84, align 4
  %resources.i.i.i.i.i.i85 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i76, i32 0, i32 10
  %91 = ptrtoint ptr %resources.i.i.i.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %resources.i.i.i.i.i.i85, ptr %resources.i.i.i.i.i.i85, align 4
  %prev.i2.i.i.i.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i76, i32 0, i32 10, i32 1
  %92 = ptrtoint ptr %prev.i2.i.i.i.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %resources.i.i.i.i.i.i85, ptr %prev.i2.i.i.i.i.i.i86, align 4
  %transfer_list.i.i.i.i.i87 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 0, i32 18
  %call.i.i.i.i.i.i.i88 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i87, ptr noundef nonnull %msg.i.i.i76, ptr noundef nonnull %msg.i.i.i76) #8
  br i1 %call.i.i.i.i.i.i.i88, label %if.end.i.i.i.i.i.i.i90, label %if.end28.spi_message_add_tail.exit.i.i.i.i93_crit_edge

if.end28.spi_message_add_tail.exit.i.i.i.i93_crit_edge: ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i93

if.end.i.i.i.i.i.i.i90:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %prev.i.i.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %transfer_list.i.i.i.i.i87, ptr %prev.i.i.i.i.i.i.i84, align 4
  %94 = ptrtoint ptr %transfer_list.i.i.i.i.i87 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i.i.i76, ptr %transfer_list.i.i.i.i.i87, align 4
  %prev3.i.i.i.i.i.i.i89 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 0, i32 18, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i.i.i.i89 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i.i.i76, ptr %prev3.i.i.i.i.i.i.i89, align 4
  %96 = ptrtoint ptr %msg.i.i.i76 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %transfer_list.i.i.i.i.i87, ptr %msg.i.i.i76, align 4
  br label %spi_message_add_tail.exit.i.i.i.i93

spi_message_add_tail.exit.i.i.i.i93:              ; preds = %if.end.i.i.i.i.i.i.i90, %if.end28.spi_message_add_tail.exit.i.i.i.i93_crit_edge
  %transfer_list.i.i.i.1.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 1, i32 18
  %97 = ptrtoint ptr %prev.i.i.i.i.i.i.i84 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %prev.i.i.i.i.i.i.i84, align 4
  %call.i.i.i.i.i.1.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i91, ptr noundef %98, ptr noundef nonnull %msg.i.i.i76) #8
  br i1 %call.i.i.i.i.i.1.i.i92, label %if.end.i.i.i.i.i.1.i.i95, label %spi_message_add_tail.exit.i.i.i.i93.sca3000_read_data_short.exit.i98_crit_edge

spi_message_add_tail.exit.i.i.i.i93.sca3000_read_data_short.exit.i98_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i98

if.end.i.i.i.i.i.1.i.i95:                         ; preds = %spi_message_add_tail.exit.i.i.i.i93
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %transfer_list.i.i.i.1.i.i91, ptr %prev.i.i.i.i.i.i.i84, align 4
  %100 = ptrtoint ptr %transfer_list.i.i.i.1.i.i91 to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %msg.i.i.i76, ptr %transfer_list.i.i.i.1.i.i91, align 4
  %prev3.i.i.i.i.i.1.i.i94 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i77, i32 1, i32 18, i32 1
  %101 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i94 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %98, ptr %prev3.i.i.i.i.i.1.i.i94, align 4
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %transfer_list.i.i.i.1.i.i91, ptr %98, align 4
  br label %sca3000_read_data_short.exit.i98

sca3000_read_data_short.exit.i98:                 ; preds = %if.end.i.i.i.i.i.1.i.i95, %spi_message_add_tail.exit.i.i.i.i93.sca3000_read_data_short.exit.i98_crit_edge
  %call.i.i.i96 = call i32 @spi_sync(ptr noundef %86, ptr noundef nonnull %msg.i.i.i76) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i76) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i77) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96)
  %cmp.i97 = icmp slt i32 %call.i.i.i96, 0
  br i1 %cmp.i97, label %sca3000_read_data_short.exit.i98.error_free_irq.sink.split_crit_edge, label %sca3000_print_rev.exit

sca3000_read_data_short.exit.i98.error_free_irq.sink.split_crit_edge: ; preds = %sca3000_read_data_short.exit.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq.sink.split

sca3000_print_rev.exit:                           ; preds = %sca3000_read_data_short.exit.i98
  %dev.i = getelementptr inbounds %struct.iio_dev, ptr %call, i32 0, i32 2
  %103 = ptrtoint ptr %rx.i.i82 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %rx.i.i82, align 128
  %conv.i99 = zext i8 %104 to i32
  %and.i = and i32 %conv.i99, 240
  %and5.i = and i32 %conv.i99, 15
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i, ptr noundef nonnull @.str.16, i32 noundef %and.i, i32 noundef %and5.i) #11
  call void @mutex_unlock(ptr noundef %lock.i78) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i96)
  %tobool30.not = icmp eq i32 %call.i.i.i96, 0
  br i1 %tobool30.not, label %if.end32, label %sca3000_print_rev.exit.error_free_irq_crit_edge

sca3000_print_rev.exit.error_free_irq_crit_edge:  ; preds = %sca3000_print_rev.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_free_irq

if.end32:                                         ; preds = %sca3000_print_rev.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 @__iio_device_register(ptr noundef nonnull %call, ptr noundef null) #8
  br label %cleanup

error_free_irq.sink.split:                        ; preds = %sca3000_read_data_short.exit.i98.error_free_irq.sink.split_crit_edge, %if.end32.i.error_free_irq.sink.split_crit_edge, %if.end25.i.error_free_irq.sink.split_crit_edge, %sca3000_read_data_short.exit84.i.error_free_irq.sink.split_crit_edge, %if.end12.i.error_free_irq.sink.split_crit_edge, %if.end7.i.error_free_irq.sink.split_crit_edge, %if.end3.i.error_free_irq.sink.split_crit_edge, %if.end.i.error_free_irq.sink.split_crit_edge, %sca3000_read_data_short.exit.i.error_free_irq.sink.split_crit_edge
  %lock.i78.sink = phi ptr [ %lock, %sca3000_read_data_short.exit.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end3.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end7.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end12.i.error_free_irq.sink.split_crit_edge ], [ %lock, %sca3000_read_data_short.exit84.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end25.i.error_free_irq.sink.split_crit_edge ], [ %lock, %if.end32.i.error_free_irq.sink.split_crit_edge ], [ %lock.i78, %sca3000_read_data_short.exit.i98.error_free_irq.sink.split_crit_edge ]
  %ret.0.ph = phi i32 [ %call.i.i.i, %sca3000_read_data_short.exit.i.error_free_irq.sink.split_crit_edge ], [ %call1.i, %if.end.i.error_free_irq.sink.split_crit_edge ], [ %call4.i, %if.end3.i.error_free_irq.sink.split_crit_edge ], [ %call8.i, %if.end7.i.error_free_irq.sink.split_crit_edge ], [ %call18.i, %if.end12.i.error_free_irq.sink.split_crit_edge ], [ %call.i.i83.i, %sca3000_read_data_short.exit84.i.error_free_irq.sink.split_crit_edge ], [ %call29.i, %if.end25.i.error_free_irq.sink.split_crit_edge ], [ %call33.i, %if.end32.i.error_free_irq.sink.split_crit_edge ], [ %call.i.i.i96, %sca3000_read_data_short.exit.i98.error_free_irq.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock.i78.sink) #8
  br label %error_free_irq

error_free_irq:                                   ; preds = %error_free_irq.sink.split, %sca3000_print_rev.exit.error_free_irq_crit_edge, %sca3000_clean_setup.exit.error_free_irq_crit_edge
  %ret.0 = phi i32 [ %call40.i, %sca3000_clean_setup.exit.error_free_irq_crit_edge ], [ %call.i.i.i96, %sca3000_print_rev.exit.error_free_irq_crit_edge ], [ %ret.0.ph, %error_free_irq.sink.split ]
  %105 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool35.not = icmp eq i32 %106, 0
  br i1 %tobool35.not, label %error_free_irq.cleanup_crit_edge, label %if.then36

error_free_irq.cleanup_crit_edge:                 ; preds = %error_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then36:                                        ; preds = %error_free_irq
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = call ptr @free_irq(i32 noundef %106, ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %error_free_irq.cleanup_crit_edge, %if.end32, %if.then18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call13, %if.end.cleanup_crit_edge ], [ %call20, %if.then18.cleanup_crit_edge ], [ %ret.0, %if.then36 ], [ %ret.0, %error_free_irq.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
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
  %lock.i = getelementptr inbounds %struct.sca3000_state, ptr %3, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %4 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %9 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %len4.i.i, align 4
  %10 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 -124, ptr %tx.i.i, align 128
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %13 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %14 = call ptr @memset(ptr %13, i32 0, i32 40)
  %15 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %17 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %18 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %24, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %26 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %24, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %12, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sca3000_read_data_short.exit.i.sca3000_stop_all_interrupts.exit_crit_edge

sca3000_read_data_short.exit.i.sca3000_stop_all_interrupts.exit_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_stop_all_interrupts.exit

if.end.i:                                         ; preds = %sca3000_read_data_short.exit.i
  %29 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %rx.i.i, align 128
  %31 = and i8 %30, 61
  %32 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -122, ptr %tx.i.i, align 128
  %arrayidx3.i.i = getelementptr %struct.sca3000_state, ptr %3, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %31, ptr %arrayidx3.i.i, align 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %3, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %36 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %37 = call ptr @memset(ptr %36, i32 0, i32 92)
  %38 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %tx.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %40 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %41 = call ptr @memset(ptr %40, i32 0, i32 40)
  %42 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %44 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %45 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.i.sca3000_write_reg.exit.i_crit_edge

if.end.i.sca3000_write_reg.exit.i_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %sca3000_write_reg.exit.i

sca3000_write_reg.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.i.sca3000_write_reg.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  br label %sca3000_stop_all_interrupts.exit

sca3000_stop_all_interrupts.exit:                 ; preds = %sca3000_write_reg.exit.i, %sca3000_read_data_short.exit.i.sca3000_stop_all_interrupts.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %irq = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %50 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  br i1 %tobool.not, label %sca3000_stop_all_interrupts.exit.if.end_crit_edge, label %if.then

sca3000_stop_all_interrupts.exit.if.end_crit_edge: ; preds = %sca3000_stop_all_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %sca3000_stop_all_interrupts.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call ptr @free_irq(i32 noundef %51, ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sca3000_stop_all_interrupts.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_device_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_iio_kfifo_buffer_setup_ext(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_event_handler(i32 noundef %irq, ptr noundef %private) #2 align 64 {
entry:
  %msg.i.i29.i = alloca %struct.spi_message, align 4
  %xfer.i30.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %private, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call i64 @iio_get_time_ns(ptr noundef %private) #8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 88, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx.i, align 128
  %conv = zext i8 %28 to i32
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sca3000_read_data_short.exit.done_crit_edge

sca3000_read_data_short.exit.done_crit_edge:      ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.end:                                           ; preds = %sca3000_read_data_short.exit
  %29 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %priv.i, align 8
  %lock.i = getelementptr inbounds %struct.sca3000_state, ptr %30, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %31 = and i8 %28, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end.sca3000_ring_int_process.exit_crit_edge, label %if.then.i

if.end.sca3000_ring_int_process.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_ring_int_process.exit

if.then.i:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %32 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %33 = call ptr @memset(ptr %32, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %30, i32 0, i32 7
  %34 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %30, i32 0, i32 6
  %36 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %37 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %len4.i.i, align 4
  %38 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 84, ptr %tx.i.i, align 128
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %30, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %41 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 40)
  %43 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %45 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %48 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %49 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.then.i.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %51 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %52, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %54 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %52, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %40, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i, label %if.end.i, label %sca3000_read_data_short.exit.i.sca3000_ring_int_process.exit_crit_edge

sca3000_read_data_short.exit.i.sca3000_ring_int_process.exit_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_ring_int_process.exit

if.end.i:                                         ; preds = %sca3000_read_data_short.exit.i
  %57 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %rx.i.i, align 128
  %conv4.i = zext i8 %58 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i30.i) #8
  %59 = getelementptr inbounds i8, ptr %xfer.i30.i, i32 4
  %60 = call ptr @memset(ptr %59, i32 0, i32 188)
  %61 = ptrtoint ptr %xfer.i30.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %tx.i.i, ptr %xfer.i30.i, align 4
  %len1.i32.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 0, i32 2
  %62 = ptrtoint ptr %len1.i32.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 1, ptr %len1.i32.i, align 4
  %rx_buf.i33.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 1, i32 1
  %63 = ptrtoint ptr %rx_buf.i33.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %rx.i.i, ptr %rx_buf.i33.i, align 4
  %len3.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 1, i32 2
  %64 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %mul.i, ptr %len3.i.i, align 4
  %65 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 60, ptr %tx.i.i, align 128
  %66 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %30, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i29.i) #8
  %68 = getelementptr inbounds i8, ptr %msg.i.i29.i, i32 8
  %69 = call ptr @memset(ptr %68, i32 0, i32 40)
  %70 = ptrtoint ptr %msg.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %msg.i.i29.i, ptr %msg.i.i29.i, align 4
  %prev.i.i.i.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i29.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %msg.i.i29.i, ptr %prev.i.i.i.i.i.i34.i, align 4
  %resources.i.i.i.i.i35.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i29.i, i32 0, i32 10
  %72 = ptrtoint ptr %resources.i.i.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %resources.i.i.i.i.i35.i, ptr %resources.i.i.i.i.i35.i, align 4
  %prev.i2.i.i.i.i.i36.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i29.i, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %prev.i2.i.i.i.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %resources.i.i.i.i.i35.i, ptr %prev.i2.i.i.i.i.i36.i, align 4
  %transfer_list.i.i.i.i37.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 0, i32 18
  %call.i.i.i.i.i.i38.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i37.i, ptr noundef nonnull %msg.i.i29.i, ptr noundef nonnull %msg.i.i29.i) #8
  br i1 %call.i.i.i.i.i.i38.i, label %if.end.i.i.i.i.i.i40.i, label %if.end.i.spi_message_add_tail.exit.i.i.i43.i_crit_edge

if.end.i.spi_message_add_tail.exit.i.i.i43.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i43.i

if.end.i.i.i.i.i.i40.i:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %74 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %transfer_list.i.i.i.i37.i, ptr %prev.i.i.i.i.i.i34.i, align 4
  %75 = ptrtoint ptr %transfer_list.i.i.i.i37.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i29.i, ptr %transfer_list.i.i.i.i37.i, align 4
  %prev3.i.i.i.i.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 0, i32 18, i32 1
  %76 = ptrtoint ptr %prev3.i.i.i.i.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %msg.i.i29.i, ptr %prev3.i.i.i.i.i.i39.i, align 4
  %77 = ptrtoint ptr %msg.i.i29.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %transfer_list.i.i.i.i37.i, ptr %msg.i.i29.i, align 4
  br label %spi_message_add_tail.exit.i.i.i43.i

spi_message_add_tail.exit.i.i.i43.i:              ; preds = %if.end.i.i.i.i.i.i40.i, %if.end.i.spi_message_add_tail.exit.i.i.i43.i_crit_edge
  %transfer_list.i.i.i.1.i41.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 1, i32 18
  %78 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %prev.i.i.i.i.i.i34.i, align 4
  %call.i.i.i.i.i.1.i42.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i41.i, ptr noundef %79, ptr noundef nonnull %msg.i.i29.i) #8
  br i1 %call.i.i.i.i.i.1.i42.i, label %if.end.i.i.i.i.i.1.i45.i, label %spi_message_add_tail.exit.i.i.i43.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge

spi_message_add_tail.exit.i.i.i43.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1.i.i

if.end.i.i.i.i.i.1.i45.i:                         ; preds = %spi_message_add_tail.exit.i.i.i43.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %prev.i.i.i.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %transfer_list.i.i.i.1.i41.i, ptr %prev.i.i.i.i.i.i34.i, align 4
  %81 = ptrtoint ptr %transfer_list.i.i.i.1.i41.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %msg.i.i29.i, ptr %transfer_list.i.i.i.1.i41.i, align 4
  %prev3.i.i.i.i.i.1.i44.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i30.i, i32 1, i32 18, i32 1
  %82 = ptrtoint ptr %prev3.i.i.i.i.i.1.i44.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %79, ptr %prev3.i.i.i.i.i.1.i44.i, align 4
  %83 = ptrtoint ptr %79 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %transfer_list.i.i.i.1.i41.i, ptr %79, align 4
  br label %spi_message_add_tail.exit.i.i.1.i.i

spi_message_add_tail.exit.i.i.1.i.i:              ; preds = %if.end.i.i.i.i.i.1.i45.i, %spi_message_add_tail.exit.i.i.i43.i.spi_message_add_tail.exit.i.i.1.i.i_crit_edge
  %call.i.i46.i = call i32 @spi_sync(ptr noundef %67, ptr noundef nonnull %msg.i.i29.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i29.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i46.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i46.i, 0
  br i1 %tobool.not.i.i, label %sca3000_read_data.exit.i, label %sca3000_read_data.exit.thread.i

sca3000_read_data.exit.thread.i:                  ; preds = %spi_message_add_tail.exit.i.i.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %30, align 128
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.13) #11
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i30.i) #8
  br label %sca3000_ring_int_process.exit

sca3000_read_data.exit.i:                         ; preds = %spi_message_add_tail.exit.i.i.1.i.i
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i30.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %58)
  %86 = icmp ult i8 %58, 3
  br i1 %86, label %sca3000_read_data.exit.i.sca3000_ring_int_process.exit_crit_edge, label %for.body.preheader.i

sca3000_read_data.exit.i.sca3000_ring_int_process.exit_crit_edge: ; preds = %sca3000_read_data.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_ring_int_process.exit

for.body.preheader.i:                             ; preds = %sca3000_read_data.exit.i
  %div49.i = udiv i8 %58, 3
  %umax.i = zext i8 %div49.i to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.048.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %mul14.i = mul nuw nsw i32 %i.048.i, 6
  %add.ptr.i = getelementptr i8, ptr %rx.i.i, i32 %mul14.i
  %call15.i = call i32 @iio_push_to_buffers(ptr noundef %private, ptr noundef %add.ptr.i) #8
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body.i.sca3000_ring_int_process.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.sca3000_ring_int_process.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_ring_int_process.exit

sca3000_ring_int_process.exit:                    ; preds = %for.body.i.sca3000_ring_int_process.exit_crit_edge, %sca3000_read_data.exit.i.sca3000_ring_int_process.exit_crit_edge, %sca3000_read_data.exit.thread.i, %sca3000_read_data_short.exit.i.sca3000_ring_int_process.exit_crit_edge, %if.end.sca3000_ring_int_process.exit_crit_edge
  call void @mutex_unlock(ptr noundef %lock.i) #8
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %sca3000_ring_int_process.exit.if.end8_crit_edge, label %if.then6

sca3000_ring_int_process.exit.if.end8_crit_edge:  ; preds = %sca3000_ring_int_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %sca3000_ring_int_process.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 72628253457645568, i64 noundef %call1) #8
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %sca3000_ring_int_process.exit.if.end8_crit_edge
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end13_crit_edge, label %if.then11

if.end8.if.end13_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 72341280922796032, i64 noundef %call1) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end8.if.end13_crit_edge
  %and14 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end13.if.end18_crit_edge, label %if.then16

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 72340181411168256, i64 noundef %call1) #8
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end13.if.end18_crit_edge
  %and19 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.done_crit_edge, label %if.then21

if.end18.done_crit_edge:                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %done

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 @iio_push_event(ptr noundef %private, i64 noundef 72342380434423808, i64 noundef %call1) #8
  br label %done

done:                                             ; preds = %if.then21, %if.end18.done_crit_edge, %sca3000_read_data_short.exit.done_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__iio_device_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_read_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i94 = alloca %struct.spi_message, align 4
  %xfer.i95 = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb38
    i32 3, label %sw.bb45
    i32 12, label %sw.bb46
    i32 10, label %sw.bb51
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %3 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %cmp = icmp eq i32 %4, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb
  %mo_det_use_count = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %mo_det_use_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mo_det_use_count, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %address3 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %7 = ptrtoint ptr %address3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %address3, align 4
  %arrayidx = getelementptr [3 x [3 x i8]], ptr @sca3000_addresses, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %11 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %14 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %16 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 2, ptr %len4.i, align 4
  %shl.i93 = shl i8 %10, 2
  %17 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %shl.i93, ptr %tx.i, align 128
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %20 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %31, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i.i.i.i.1.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %31, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp6 = icmp slt i32 %call.i.i, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end9:                                          ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %rx.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %rx.i, align 2
  %conv = zext i16 %37 to i32
  %shift = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %38 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %shift, align 1
  %conv11 = zext i8 %39 to i32
  %shr = lshr i32 %conv, %conv11
  %realbits = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %realbits to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %realbits, align 1
  %42 = sub i8 32, %41
  %conv1.i = zext i8 %42 to i32
  %shl.i = shl i32 %shr, %conv1.i
  %shr.i = ashr i32 %shl.i, %conv1.i
  br label %if.end36

if.else:                                          ; preds = %sw.bb
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i95) #8
  %43 = getelementptr inbounds i8, ptr %xfer.i95, i32 4
  %44 = call ptr @memset(ptr %43, i32 0, i32 188)
  %tx.i96 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %45 = ptrtoint ptr %xfer.i95 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tx.i96, ptr %xfer.i95, align 4
  %len1.i97 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 0, i32 2
  %46 = ptrtoint ptr %len1.i97 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %len1.i97, align 4
  %rx_buf.i98 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 1, i32 1
  %rx.i99 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %rx_buf.i98 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %rx.i99, ptr %rx_buf.i98, align 4
  %len4.i100 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 1, i32 2
  %48 = ptrtoint ptr %len4.i100 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %len4.i100, align 4
  %49 = ptrtoint ptr %tx.i96 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 76, ptr %tx.i96, align 128
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i94) #8
  %52 = getelementptr inbounds i8, ptr %msg.i.i94, i32 8
  %53 = call ptr @memset(ptr %52, i32 0, i32 40)
  %54 = ptrtoint ptr %msg.i.i94 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %msg.i.i94, ptr %msg.i.i94, align 4
  %prev.i.i.i.i.i.i101 = getelementptr inbounds %struct.list_head, ptr %msg.i.i94, i32 0, i32 1
  %55 = ptrtoint ptr %prev.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %msg.i.i94, ptr %prev.i.i.i.i.i.i101, align 4
  %resources.i.i.i.i.i102 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i94, i32 0, i32 10
  %56 = ptrtoint ptr %resources.i.i.i.i.i102 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %resources.i.i.i.i.i102, ptr %resources.i.i.i.i.i102, align 4
  %prev.i2.i.i.i.i.i103 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i94, i32 0, i32 10, i32 1
  %57 = ptrtoint ptr %prev.i2.i.i.i.i.i103 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %resources.i.i.i.i.i102, ptr %prev.i2.i.i.i.i.i103, align 4
  %transfer_list.i.i.i.i104 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 0, i32 18
  %call.i.i.i.i.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i104, ptr noundef nonnull %msg.i.i94, ptr noundef nonnull %msg.i.i94) #8
  br i1 %call.i.i.i.i.i.i105, label %if.end.i.i.i.i.i.i107, label %if.else.spi_message_add_tail.exit.i.i.i110_crit_edge

if.else.spi_message_add_tail.exit.i.i.i110_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i110

if.end.i.i.i.i.i.i107:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %prev.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i.i.i.i104, ptr %prev.i.i.i.i.i.i101, align 4
  %59 = ptrtoint ptr %transfer_list.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %msg.i.i94, ptr %transfer_list.i.i.i.i104, align 4
  %prev3.i.i.i.i.i.i106 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i94, ptr %prev3.i.i.i.i.i.i106, align 4
  %61 = ptrtoint ptr %msg.i.i94 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i.i.i.i104, ptr %msg.i.i94, align 4
  br label %spi_message_add_tail.exit.i.i.i110

spi_message_add_tail.exit.i.i.i110:               ; preds = %if.end.i.i.i.i.i.i107, %if.else.spi_message_add_tail.exit.i.i.i110_crit_edge
  %transfer_list.i.i.i.1.i108 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 1, i32 18
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i.i.i.i101, align 4
  %call.i.i.i.i.i.1.i109 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i108, ptr noundef %63, ptr noundef nonnull %msg.i.i94) #8
  br i1 %call.i.i.i.i.i.1.i109, label %if.end.i.i.i.i.i.1.i112, label %spi_message_add_tail.exit.i.i.i110.sca3000_read_data_short.exit114_crit_edge

spi_message_add_tail.exit.i.i.i110.sca3000_read_data_short.exit114_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit114

if.end.i.i.i.i.i.1.i112:                          ; preds = %spi_message_add_tail.exit.i.i.i110
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i101 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %transfer_list.i.i.i.1.i108, ptr %prev.i.i.i.i.i.i101, align 4
  %65 = ptrtoint ptr %transfer_list.i.i.i.1.i108 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i94, ptr %transfer_list.i.i.i.1.i108, align 4
  %prev3.i.i.i.i.i.1.i111 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i95, i32 1, i32 18, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i.i.i.1.i111 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i.i.i.1.i111, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %transfer_list.i.i.i.1.i108, ptr %63, align 4
  br label %sca3000_read_data_short.exit114

sca3000_read_data_short.exit114:                  ; preds = %if.end.i.i.i.i.i.1.i112, %spi_message_add_tail.exit.i.i.i110.sca3000_read_data_short.exit114_crit_edge
  %call.i.i113 = call i32 @spi_sync(ptr noundef %51, ptr noundef nonnull %msg.i.i94) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i94) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i95) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i113)
  %cmp16 = icmp slt i32 %call.i.i113, 0
  br i1 %cmp16, label %if.then18, label %if.end20

if.then18:                                        ; preds = %sca3000_read_data_short.exit114
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

if.end20:                                         ; preds = %sca3000_read_data_short.exit114
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %rx.i99 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %rx.i99, align 2
  %conv24 = zext i16 %69 to i32
  %shift26 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 3
  %70 = ptrtoint ptr %shift26 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %shift26, align 1
  %conv27 = zext i8 %71 to i32
  %shr28 = lshr i32 %conv24, %conv27
  %realbits30 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %realbits30 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %realbits30, align 1
  %conv31 = zext i8 %73 to i32
  %sub33 = sub nsw i32 32, %conv31
  %shr34 = lshr i32 -1, %sub33
  %and35 = and i32 %shr34, %shr28
  br label %if.end36

if.end36:                                         ; preds = %if.end20, %if.end9
  %storemerge92 = phi i32 [ %and35, %if.end20 ], [ %shr.i, %if.end9 ]
  %74 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge92, ptr %val, align 4
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  %75 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %val, align 4
  %76 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp40 = icmp eq i32 %77, 3
  br i1 %cmp40, label %if.then42, label %sw.bb38.if.end44_crit_edge

sw.bb38.if.end44_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end44

if.then42:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %78 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %info, align 4
  %80 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %79, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %sw.bb38.if.end44_crit_edge
  %storemerge = phi i32 [ %81, %if.then42 ], [ 555556, %sw.bb38.if.end44_crit_edge ]
  %82 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %val2, align 4
  br label %cleanup

sw.bb45:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -214, ptr %val, align 4
  %84 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 600000, ptr %val2, align 4
  br label %cleanup

sw.bb46:                                          ; preds = %entry
  %lock47 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock47, i32 noundef 0) #8
  %info.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info.i, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i.i) #8
  %87 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 4
  %88 = call ptr @memset(ptr %87, i32 0, i32 188)
  %tx.i.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %89 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %tx.i.i.i, ptr %xfer.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %90 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %len1.i.i.i, align 4
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 1
  %rx.i.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %91 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %rx.i.i.i, ptr %rx_buf.i.i.i, align 4
  %len4.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 2
  %92 = ptrtoint ptr %len4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 1, ptr %len4.i.i.i, align 4
  %93 = ptrtoint ptr %tx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 80, ptr %tx.i.i.i, align 128
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %96 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %97 = call ptr @memset(ptr %96, i32 0, i32 40)
  %98 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %100 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %101 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %sw.bb46.spi_message_add_tail.exit.i.i.i.i.i_crit_edge

sw.bb46.spi_message_add_tail.exit.i.i.i.i.i_crit_edge: ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %103 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %105 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i.i

spi_message_add_tail.exit.i.i.i.i.i:              ; preds = %if.end.i.i.i.i.i.i.i.i, %sw.bb46.spi_message_add_tail.exit.i.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 18
  %106 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i.i, ptr noundef %107, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i.i, label %if.end.i.i.i.i.i.1.i.i.i, label %spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i.i

if.end.i.i.i.i.i.1.i.i.i:                         ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %transfer_list.i.i.i.1.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %109 = ptrtoint ptr %transfer_list.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.1.i.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 18, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i.i.i.i.1.i.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %transfer_list.i.i.i.1.i.i.i, ptr %107, align 4
  br label %sca3000_read_data_short.exit.i.i

sca3000_read_data_short.exit.i.i:                 ; preds = %if.end.i.i.i.i.i.1.i.i.i, %spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %95, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sca3000_read_data_short.exit.i.i.sca3000_read_raw_samp_freq.exit_crit_edge

sca3000_read_data_short.exit.i.i.sca3000_read_raw_samp_freq.exit_crit_edge: ; preds = %sca3000_read_data_short.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_raw_samp_freq.exit

if.end.i.i:                                       ; preds = %sca3000_read_data_short.exit.i.i
  %112 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %rx.i.i.i, align 128
  %114 = and i8 %113, 3
  %and.i.i = zext i8 %114 to i32
  %115 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %115, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i.i, label %if.end.i.i.sca3000_read_raw_samp_freq.exit_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
  ]

if.end.i.i.sca3000_read_raw_samp_freq.exit_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_raw_samp_freq.exit

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %measurement_mode_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %86, i32 0, i32 2
  br label %if.end.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %option_mode_1_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %86, i32 0, i32 5
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %option_mode_2_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %86, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %measurement_mode_freq.sink.i.i = phi ptr [ %measurement_mode_freq.i.i, %sw.bb.i.i ], [ %option_mode_1_freq.i.i, %sw.bb1.i.i ], [ %option_mode_2_freq.i.i, %sw.bb2.i.i ]
  %116 = ptrtoint ptr %measurement_mode_freq.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %measurement_mode_freq.sink.i.i, align 4
  %118 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %val, align 4
  %call1.i = call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.sca3000_read_raw_samp_freq.exit_crit_edge, label %if.end3.i

if.end.i.sca3000_read_raw_samp_freq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_raw_samp_freq.exit

if.end3.i:                                        ; preds = %if.end.i
  %119 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp4.i = icmp sgt i32 %120, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end3.i._crit_edge

if.end3.i._crit_edge:                             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %122

if.then5.i:                                       ; preds = %if.end3.i
  %and.i = and i32 %call1.i, 3
  %and.i.off = add nsw i32 %and.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.off)
  %switch = icmp ult i32 %and.i.off, 2
  br i1 %switch, label %cleanup.sink.split.i, label %if.then5.i._crit_edge

if.then5.i._crit_edge:                            ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %122

cleanup.sink.split.i:                             ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %div72223.i = lshr i32 %120, %and.i
  %121 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %div72223.i, ptr %val, align 4
  br label %122

sca3000_read_raw_samp_freq.exit:                  ; preds = %if.end.i.sca3000_read_raw_samp_freq.exit_crit_edge, %if.end.i.i.sca3000_read_raw_samp_freq.exit_crit_edge, %sca3000_read_data_short.exit.i.i.sca3000_read_raw_samp_freq.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i.sca3000_read_raw_samp_freq.exit_crit_edge ], [ -22, %if.end.i.i.sca3000_read_raw_samp_freq.exit_crit_edge ], [ %call.i.i.i.i, %sca3000_read_data_short.exit.i.i.sca3000_read_raw_samp_freq.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock47) #8
  br label %cleanup

122:                                              ; preds = %cleanup.sink.split.i, %if.then5.i._crit_edge, %if.end3.i._crit_edge
  call void @mutex_unlock(ptr noundef %lock47) #8
  br label %cleanup

sw.bb51:                                          ; preds = %entry
  %lock52 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock52, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %123 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %124 = call ptr @memset(ptr %123, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %125 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %126 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %127 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %128 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 1, ptr %len4.i.i, align 4
  %129 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 80, ptr %tx.i.i, align 128
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %132 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %133 = call ptr @memset(ptr %132, i32 0, i32 40)
  %134 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %135 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %136 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %137 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb51.spi_message_add_tail.exit.i.i.i.i_crit_edge

sw.bb51.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #10
  %138 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %139 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %140 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %141 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb51.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %142 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %143, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %145 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %146 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %143, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %147)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %143, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %131, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i115, label %sca3000_read_data_short.exit.i.sca3000_read_3db_freq.exit_crit_edge

sca3000_read_data_short.exit.i.sca3000_read_3db_freq.exit_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_3db_freq.exit

if.end.i115:                                      ; preds = %sca3000_read_data_short.exit.i
  %148 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rx.i.i, align 128
  %150 = and i8 %149, 3
  store i8 %150, ptr %rx.i.i, align 128
  %conv4.i = zext i8 %150 to i32
  %151 = zext i32 %conv4.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %151, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %conv4.i, label %if.end.unreachabledefault.i [
    i32 0, label %sw.bb.i
    i32 3, label %if.end.i115.sca3000_read_3db_freq.exit_crit_edge
    i32 1, label %sw.bb6.i117
    i32 2, label %sw.bb8.i
  ]

if.end.i115.sca3000_read_3db_freq.exit_crit_edge: ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_3db_freq.exit

sw.bb.i:                                          ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %info.i116 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %152 = ptrtoint ptr %info.i116 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %info.i116, align 4
  %measurement_mode_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %153, i32 0, i32 3
  br label %cleanup.sink.split.i118

sw.bb6.i117:                                      ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %info7.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %154 = ptrtoint ptr %info7.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %info7.i, align 4
  %option_mode_1_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %155, i32 0, i32 6
  br label %cleanup.sink.split.i118

sw.bb8.i:                                         ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #10
  %info9.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %156 = ptrtoint ptr %info9.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %info9.i, align 4
  %option_mode_2_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %157, i32 0, i32 9
  br label %cleanup.sink.split.i118

if.end.unreachabledefault.i:                      ; preds = %if.end.i115
  unreachable

cleanup.sink.split.i118:                          ; preds = %sw.bb8.i, %sw.bb6.i117, %sw.bb.i
  %option_mode_2_3db_freq.sink.i = phi ptr [ %option_mode_2_3db_freq.i, %sw.bb8.i ], [ %option_mode_1_3db_freq.i, %sw.bb6.i117 ], [ %measurement_mode_3db_freq.i, %sw.bb.i ]
  %158 = ptrtoint ptr %option_mode_2_3db_freq.sink.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %option_mode_2_3db_freq.sink.i, align 4
  %160 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %val, align 4
  br label %sca3000_read_3db_freq.exit

sca3000_read_3db_freq.exit:                       ; preds = %cleanup.sink.split.i118, %if.end.i115.sca3000_read_3db_freq.exit_crit_edge, %sca3000_read_data_short.exit.i.sca3000_read_3db_freq.exit_crit_edge
  %retval.0.i119 = phi i32 [ %call.i.i.i, %sca3000_read_data_short.exit.i.sca3000_read_3db_freq.exit_crit_edge ], [ -16, %if.end.i115.sca3000_read_3db_freq.exit_crit_edge ], [ 1, %cleanup.sink.split.i118 ]
  call void @mutex_unlock(ptr noundef %lock52) #8
  br label %cleanup

cleanup:                                          ; preds = %sca3000_read_3db_freq.exit, %122, %sca3000_read_raw_samp_freq.exit, %sw.bb45, %if.end44, %if.end36, %if.then18, %if.then7, %if.then1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i119, %sca3000_read_3db_freq.exit ], [ 2, %sw.bb45 ], [ 2, %if.end44 ], [ -16, %if.then1 ], [ %call.i.i, %if.then7 ], [ 1, %if.end36 ], [ %call.i.i113, %if.then18 ], [ -22, %entry.cleanup_crit_edge ], [ 1, %122 ], [ %retval.0.i, %sca3000_read_raw_samp_freq.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_write_raw(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readnone %chan, i32 noundef %val, i32 noundef %val2, i32 noundef %mask) #2 align 64 {
entry:
  %msg.i.i.i.i19 = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %2 = zext i32 %mask to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %mask, label %entry.cleanup_crit_edge [
    i32 12, label %sw.bb
    i32 10, label %sw.bb3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool.not = icmp eq i32 %val2, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %info.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info.i, align 4
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i.i) #8
  %5 = getelementptr inbounds i8, ptr %xfer.i.i.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 188)
  %tx.i.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %xfer.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %tx.i.i.i, ptr %xfer.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %len1.i.i.i, align 4
  %rx_buf.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 1
  %rx.i.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %rx_buf.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %rx.i.i.i, ptr %rx_buf.i.i.i, align 4
  %len4.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 2
  %10 = ptrtoint ptr %len4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %len4.i.i.i, align 4
  %11 = ptrtoint ptr %tx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 80, ptr %tx.i.i.i, align 128
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %19 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %21 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 0, i32 18, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i.i

spi_message_add_tail.exit.i.i.i.i.i:              ; preds = %if.end.i.i.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 18
  %24 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i.i, ptr noundef %25, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i.i, label %if.end.i.i.i.i.i.1.i.i.i, label %spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i.i

if.end.i.i.i.i.i.1.i.i.i:                         ; preds = %spi_message_add_tail.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %transfer_list.i.i.i.1.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %transfer_list.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.1.i.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i.i, i32 1, i32 18, i32 1
  %28 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev3.i.i.i.i.i.1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %transfer_list.i.i.i.1.i.i.i, ptr %25, align 4
  br label %sca3000_read_data_short.exit.i.i

sca3000_read_data_short.exit.i.i:                 ; preds = %if.end.i.i.i.i.i.1.i.i.i, %spi_message_add_tail.exit.i.i.i.i.i.sca3000_read_data_short.exit.i.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %13, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %sca3000_read_data_short.exit.i.i.cleanup.sink.split_crit_edge

sca3000_read_data_short.exit.i.i.cleanup.sink.split_crit_edge: ; preds = %sca3000_read_data_short.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end.i.i:                                       ; preds = %sca3000_read_data_short.exit.i.i
  %30 = ptrtoint ptr %rx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx.i.i.i, align 128
  %32 = and i8 %31, 3
  %and.i.i = zext i8 %32 to i32
  %33 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %and.i.i, label %if.end.i.i.cleanup.sink.split_crit_edge [
    i32 0, label %sw.bb.i.i
    i32 1, label %sw.bb1.i.i
    i32 2, label %sw.bb2.i.i
  ]

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

sw.bb.i.i:                                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %measurement_mode_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %4, i32 0, i32 2
  br label %if.end.i

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %option_mode_1_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %4, i32 0, i32 5
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %option_mode_2_freq.i.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %4, i32 0, i32 8
  br label %if.end.i

if.end.i:                                         ; preds = %sw.bb2.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %measurement_mode_freq.sink.i.i = phi ptr [ %measurement_mode_freq.i.i, %sw.bb.i.i ], [ %option_mode_1_freq.i.i, %sw.bb1.i.i ], [ %option_mode_2_freq.i.i, %sw.bb2.i.i ]
  %34 = ptrtoint ptr %measurement_mode_freq.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %measurement_mode_freq.sink.i.i, align 4
  %call1.i = call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end3.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end3.i:                                        ; preds = %if.end.i
  %and.i = and i32 %call1.i, -4
  %div.i = sdiv i32 %35, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %val)
  %cmp4.i = icmp eq i32 %div.i, %val
  %or.i = zext i1 %cmp4.i to i32
  %spec.select.i = or i32 %and.i, %or.i
  %div7.i = sdiv i32 %35, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div7.i, i32 %val)
  %cmp8.i = icmp eq i32 %div7.i, %val
  br i1 %cmp8.i, label %if.then9.i, label %if.else.i

if.then9.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %spec.select.i, 2
  br label %if.end14.i

if.else.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %val)
  %cmp11.not.i = icmp eq i32 %35, %val
  br i1 %cmp11.not.i, label %if.else.i.if.end14.i_crit_edge, label %if.else.i.cleanup.sink.split_crit_edge

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.else.i.if.end14.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.else.i.if.end14.i_crit_edge, %if.then9.i
  %ctrlval.1.i = phi i32 [ %or10.i, %if.then9.i ], [ %spec.select.i, %if.else.i.if.end14.i_crit_edge ]
  %conv.i = trunc i32 %ctrlval.1.i to i8
  %call15.i = call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext %conv.i) #8
  br label %cleanup.sink.split

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val2)
  %tobool4.not = icmp eq i32 %val2, 0
  br i1 %tobool4.not, label %if.end6, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %sw.bb3
  %lock7 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock7, i32 noundef 0) #8
  %info.i20 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %36 = ptrtoint ptr %info.i20 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info.i20, align 4
  %measurement_mode_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %measurement_mode_3db_freq.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %measurement_mode_3db_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %val)
  %cmp.i21 = icmp eq i32 %39, %val
  br i1 %cmp.i21, label %if.end6.if.end14.i23_crit_edge, label %if.else.i22

if.end6.if.end14.i23_crit_edge:                   ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i23

if.else.i22:                                      ; preds = %if.end6
  %option_mode_1.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %37, i32 0, i32 4
  %40 = ptrtoint ptr %option_mode_1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %option_mode_1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.else.i22.if.else5.i_crit_edge, label %land.lhs.true.i

if.else.i22.if.else5.i_crit_edge:                 ; preds = %if.else.i22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else5.i

land.lhs.true.i:                                  ; preds = %if.else.i22
  %option_mode_1_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %37, i32 0, i32 6
  %42 = ptrtoint ptr %option_mode_1_3db_freq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %option_mode_1_3db_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %val)
  %cmp3.i = icmp eq i32 %43, %val
  br i1 %cmp3.i, label %land.lhs.true.i.if.end14.i23_crit_edge, label %land.lhs.true.i.if.else5.i_crit_edge

land.lhs.true.i.if.else5.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else5.i

land.lhs.true.i.if.end14.i23_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i23

if.else5.i:                                       ; preds = %land.lhs.true.i.if.else5.i_crit_edge, %if.else.i22.if.else5.i_crit_edge
  %option_mode_2.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %37, i32 0, i32 7
  %44 = ptrtoint ptr %option_mode_2.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %option_mode_2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool7.not.i = icmp eq i32 %45, 0
  br i1 %tobool7.not.i, label %if.else5.i.cleanup.sink.split_crit_edge, label %land.lhs.true8.i

if.else5.i.cleanup.sink.split_crit_edge:          ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true8.i:                                 ; preds = %if.else5.i
  %option_mode_2_3db_freq.i = getelementptr inbounds %struct.sca3000_chip_info, ptr %37, i32 0, i32 9
  %46 = ptrtoint ptr %option_mode_2_3db_freq.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %option_mode_2_3db_freq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %val)
  %cmp10.i = icmp eq i32 %47, %val
  br i1 %cmp10.i, label %land.lhs.true8.i.if.end14.i23_crit_edge, label %land.lhs.true8.i.cleanup.sink.split_crit_edge

land.lhs.true8.i.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

land.lhs.true8.i.if.end14.i23_crit_edge:          ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i23

if.end14.i23:                                     ; preds = %land.lhs.true8.i.if.end14.i23_crit_edge, %land.lhs.true.i.if.end14.i23_crit_edge, %if.end6.if.end14.i23_crit_edge
  %mode.0.i = phi i8 [ 0, %if.end6.if.end14.i23_crit_edge ], [ 1, %land.lhs.true.i.if.end14.i23_crit_edge ], [ 2, %land.lhs.true8.i.if.end14.i23_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %48 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %50 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %52 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %53 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %len4.i.i, align 4
  %54 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 80, ptr %tx.i.i, align 128
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %57 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %58 = call ptr @memset(ptr %57, i32 0, i32 40)
  %59 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %62 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end14.i23.spi_message_add_tail.exit.i.i.i.i_crit_edge

if.end14.i23.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %if.end14.i23
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end14.i23
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %66 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %if.end14.i23.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %68, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %70 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %71 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %68, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool15.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %sca3000_read_data_short.exit.i.cleanup.sink.split_crit_edge

sca3000_read_data_short.exit.i.cleanup.sink.split_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end17.i:                                       ; preds = %sca3000_read_data_short.exit.i
  %73 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %rx.i.i, align 128
  %75 = and i8 %74, -4
  %or.i24 = or i8 %75, %mode.0.i
  store i8 %or.i24, ptr %rx.i.i, align 128
  %76 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 82, ptr %tx.i.i, align 128
  %arrayidx3.i.i = getelementptr %struct.sca3000_state, ptr %1, i32 0, i32 7, i32 1
  %77 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %or.i24, ptr %arrayidx3.i.i, align 1
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %80 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %81 = call ptr @memset(ptr %80, i32 0, i32 92)
  %82 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %tx.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i25 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %83 = ptrtoint ptr %len1.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 2, ptr %len1.i.i.i25, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i19) #8
  %84 = getelementptr inbounds i8, ptr %msg.i.i.i.i19, i32 8
  %85 = call ptr @memset(ptr %84, i32 0, i32 40)
  %86 = ptrtoint ptr %msg.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %msg.i.i.i.i19, ptr %msg.i.i.i.i19, align 4
  %prev.i.i.i.i.i.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i19, i32 0, i32 1
  %87 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %msg.i.i.i.i19, ptr %prev.i.i.i.i.i.i.i.i26, align 4
  %resources.i.i.i.i.i.i.i27 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i19, i32 0, i32 10
  %88 = ptrtoint ptr %resources.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %resources.i.i.i.i.i.i.i27, ptr %resources.i.i.i.i.i.i.i27, align 4
  %prev.i2.i.i.i.i.i.i.i28 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i19, i32 0, i32 10, i32 1
  %89 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %resources.i.i.i.i.i.i.i27, ptr %prev.i2.i.i.i.i.i.i.i28, align 4
  %transfer_list.i.i.i.i.i.i29 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i30 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i29, ptr noundef nonnull %msg.i.i.i.i19, ptr noundef nonnull %msg.i.i.i.i19) #8
  br i1 %call.i.i.i.i.i.i.i.i30, label %if.end.i.i.i.i.i.i.i.i32, label %if.end17.i.sca3000_write_reg.exit.i_crit_edge

if.end17.i.sca3000_write_reg.exit.i_crit_edge:    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit.i

if.end.i.i.i.i.i.i.i.i32:                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %transfer_list.i.i.i.i.i.i29, ptr %prev.i.i.i.i.i.i.i.i26, align 4
  %91 = ptrtoint ptr %transfer_list.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %msg.i.i.i.i19, ptr %transfer_list.i.i.i.i.i.i29, align 4
  %prev3.i.i.i.i.i.i.i.i31 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %92 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i.i.i19, ptr %prev3.i.i.i.i.i.i.i.i31, align 4
  %93 = ptrtoint ptr %msg.i.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %transfer_list.i.i.i.i.i.i29, ptr %msg.i.i.i.i19, align 4
  br label %sca3000_write_reg.exit.i

sca3000_write_reg.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i32, %if.end17.i.sca3000_write_reg.exit.i_crit_edge
  %call.i.i.i.i33 = call i32 @spi_sync(ptr noundef %79, ptr noundef nonnull %msg.i.i.i.i19) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i19) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sca3000_write_reg.exit.i, %sca3000_read_data_short.exit.i.cleanup.sink.split_crit_edge, %land.lhs.true8.i.cleanup.sink.split_crit_edge, %if.else5.i.cleanup.sink.split_crit_edge, %if.end14.i, %if.else.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.end.i.i.cleanup.sink.split_crit_edge, %sca3000_read_data_short.exit.i.i.cleanup.sink.split_crit_edge
  %lock7.sink = phi ptr [ %lock, %sca3000_read_data_short.exit.i.i.cleanup.sink.split_crit_edge ], [ %lock, %if.end.i.i.cleanup.sink.split_crit_edge ], [ %lock, %if.end.i.cleanup.sink.split_crit_edge ], [ %lock, %if.else.i.cleanup.sink.split_crit_edge ], [ %lock, %if.end14.i ], [ %lock7, %if.else5.i.cleanup.sink.split_crit_edge ], [ %lock7, %land.lhs.true8.i.cleanup.sink.split_crit_edge ], [ %lock7, %sca3000_read_data_short.exit.i.cleanup.sink.split_crit_edge ], [ %lock7, %sca3000_write_reg.exit.i ]
  %retval.0.ph = phi i32 [ %call.i.i.i.i, %sca3000_read_data_short.exit.i.i.cleanup.sink.split_crit_edge ], [ -22, %if.end.i.i.cleanup.sink.split_crit_edge ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ], [ -22, %if.else.i.cleanup.sink.split_crit_edge ], [ %call15.i, %if.end14.i ], [ -22, %if.else5.i.cleanup.sink.split_crit_edge ], [ -22, %land.lhs.true8.i.cleanup.sink.split_crit_edge ], [ %call.i.i.i, %sca3000_read_data_short.exit.i.cleanup.sink.split_crit_edge ], [ %call.i.i.i.i33, %sca3000_write_reg.exit.i ]
  call void @mutex_unlock(ptr noundef %lock7.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb3.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_read_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sca3000_read_data_short.exit.error_ret_crit_edge

sca3000_read_data_short.exit.error_ret_crit_edge: ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end:                                           ; preds = %sca3000_read_data_short.exit
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %27 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %channel2, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %28, label %if.end.error_ret_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %if.end.sw.bb4_crit_edge
    i32 2, label %if.end.sw.bb4_crit_edge36
    i32 3, label %if.end.sw.bb4_crit_edge37
  ]

if.end.sw.bb4_crit_edge37:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge36:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb4

if.end.error_ret_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %rx.i, align 128
  %32 = lshr i8 %31, 4
  %.lobit = and i8 %32, 1
  %33 = zext i8 %.lobit to i32
  br label %error_ret

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge36, %if.end.sw.bb4_crit_edge37
  %34 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %rx.i, align 128
  %36 = and i8 %35, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %36)
  %cmp.not = icmp eq i8 %36, 3
  br i1 %cmp.not, label %if.else, label %sw.bb4.error_ret_crit_edge

sw.bb4.error_ret_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.else:                                          ; preds = %sw.bb4
  %call11 = call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.else.error_ret_crit_edge, label %if.end15

if.else.error_ret_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %37 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %address, align 4
  %arrayidx17 = getelementptr [3 x [3 x i8]], ptr @sca3000_addresses, i32 0, i32 %38, i32 2
  %39 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %40 to i32
  %and19 = and i32 %call11, %conv18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20 = icmp ne i32 %and19, 0
  %lnot.ext24 = zext i1 %tobool20 to i32
  br label %error_ret

error_ret:                                        ; preds = %if.end15, %if.else.error_ret_crit_edge, %sw.bb4.error_ret_crit_edge, %sw.bb, %if.end.error_ret_crit_edge, %sca3000_read_data_short.exit.error_ret_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sca3000_read_data_short.exit.error_ret_crit_edge ], [ %call11, %if.else.error_ret_crit_edge ], [ %lnot.ext24, %if.end15 ], [ %33, %sw.bb ], [ 0, %sw.bb4.error_ret_crit_edge ], [ -22, %if.end.error_ret_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_write_event_config(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %state) #2 align 64 {
entry:
  %msg.i.i.i102.i = alloca %struct.spi_message, align 4
  %t.i.i103.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i10 = alloca %struct.spi_message, align 4
  %t.i.i.i11 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i12 = alloca %struct.spi_message, align 4
  %xfer.i.i13 = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i35.i = alloca %struct.spi_message, align 4
  %t.i.i36.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 7, label %sw.bb
    i32 1, label %entry.sw.bb2_crit_edge
    i32 2, label %entry.sw.bb2_crit_edge50
    i32 3, label %entry.sw.bb2_crit_edge51
  ]

entry.sw.bb2_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i) #8
  %7 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 188)
  %tx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tx.i.i, ptr %xfer.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %len1.i.i, align 4
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 1
  %rx.i.i = getelementptr inbounds %struct.sca3000_state, ptr %6, i32 0, i32 6
  %11 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %rx.i.i, ptr %rx_buf.i.i, align 4
  %len4.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 2
  %12 = ptrtoint ptr %len4.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %len4.i.i, align 4
  %13 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 80, ptr %tx.i.i, align 128
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %6, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %16 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge

sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i

if.end.i.i.i.i.i.i.i:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i.i

spi_message_add_tail.exit.i.i.i.i:                ; preds = %if.end.i.i.i.i.i.i.i, %sw.bb.spi_message_add_tail.exit.i.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18
  %26 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i, ptr noundef %27, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.1.i.i, label %if.end.i.i.i.i.i.1.i.i, label %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge

spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i

if.end.i.i.i.i.i.1.i.i:                           ; preds = %spi_message_add_tail.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i.i.1.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.1.i.i, align 4
  %prev3.i.i.i.i.i.1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 1, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i.i.1.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i.i.1.i.i, ptr %27, align 4
  br label %sca3000_read_data_short.exit.i

sca3000_read_data_short.exit.i:                   ; preds = %if.end.i.i.i.i.i.1.i.i, %spi_message_add_tail.exit.i.i.i.i.sca3000_read_data_short.exit.i_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %15, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sca3000_read_data_short.exit.i.sw.epilog_crit_edge

sca3000_read_data_short.exit.i.sw.epilog_crit_edge: ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i:                                         ; preds = %sca3000_read_data_short.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2.not.i = icmp eq i32 %state, 0
  %32 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %rx.i.i, align 128
  %34 = and i8 %33, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool16.not.i = icmp eq i8 %34, 0
  br i1 %tobool2.not.i, label %land.lhs.true11.critedge.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i
  br i1 %tobool16.not.i, label %if.then4.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4.i:                                       ; preds = %land.lhs.true.i
  %or.i = or i8 %33, 16
  %35 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 82, ptr %tx.i.i, align 128
  %arrayidx3.i.i = getelementptr %struct.sca3000_state, ptr %6, i32 0, i32 7, i32 1
  %36 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %or.i, ptr %arrayidx3.i.i, align 1
  %37 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %6, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i) #8
  %39 = getelementptr inbounds i8, ptr %t.i.i.i, i32 4
  %40 = call ptr @memset(ptr %39, i32 0, i32 92)
  %41 = ptrtoint ptr %t.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %tx.i.i, ptr %t.i.i.i, align 4
  %len1.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 2
  %42 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %len1.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  %43 = getelementptr inbounds i8, ptr %msg.i.i.i.i, i32 8
  %44 = call ptr @memset(ptr %43, i32 0, i32 40)
  %45 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %msg.i.i.i.i, ptr %msg.i.i.i.i, align 4
  %prev.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i, ptr noundef nonnull %msg.i.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i.i, label %if.then4.i.sca3000_write_reg.exit.i_crit_edge

if.then4.i.sca3000_write_reg.exit.i_crit_edge:    ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit.i

if.end.i.i.i.i.i.i.i.i:                           ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i.i, align 4
  %50 = ptrtoint ptr %transfer_list.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i.i.i.i, ptr %transfer_list.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i.i.i.i, ptr %prev3.i.i.i.i.i.i.i.i, align 4
  %52 = ptrtoint ptr %msg.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i.i.i.i.i, ptr %msg.i.i.i.i, align 4
  br label %sca3000_write_reg.exit.i

sca3000_write_reg.exit.i:                         ; preds = %if.end.i.i.i.i.i.i.i.i, %if.then4.i.sca3000_write_reg.exit.i_crit_edge
  %call.i.i.i.i = call i32 @spi_sync(ptr noundef %38, ptr noundef nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i) #8
  br label %sw.epilog

land.lhs.true11.critedge.i:                       ; preds = %if.end.i
  br i1 %tobool16.not.i, label %land.lhs.true11.critedge.i.sw.epilog_crit_edge, label %if.then17.i

land.lhs.true11.critedge.i.sw.epilog_crit_edge:   ; preds = %land.lhs.true11.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then17.i:                                      ; preds = %land.lhs.true11.critedge.i
  %and21.i = and i8 %33, -17
  %53 = ptrtoint ptr %tx.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 82, ptr %tx.i.i, align 128
  %arrayidx3.i38.i = getelementptr %struct.sca3000_state, ptr %6, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %arrayidx3.i38.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %and21.i, ptr %arrayidx3.i38.i, align 1
  %55 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %6, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i36.i) #8
  %57 = getelementptr inbounds i8, ptr %t.i.i36.i, i32 4
  %58 = call ptr @memset(ptr %57, i32 0, i32 92)
  %59 = ptrtoint ptr %t.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %tx.i.i, ptr %t.i.i36.i, align 4
  %len1.i.i39.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i36.i, i32 0, i32 2
  %60 = ptrtoint ptr %len1.i.i39.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %len1.i.i39.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i35.i) #8
  %61 = getelementptr inbounds i8, ptr %msg.i.i.i35.i, i32 8
  %62 = call ptr @memset(ptr %61, i32 0, i32 40)
  %63 = ptrtoint ptr %msg.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %msg.i.i.i35.i, ptr %msg.i.i.i35.i, align 4
  %prev.i.i.i.i.i.i.i40.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i35.i, i32 0, i32 1
  %64 = ptrtoint ptr %prev.i.i.i.i.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %msg.i.i.i35.i, ptr %prev.i.i.i.i.i.i.i40.i, align 4
  %resources.i.i.i.i.i.i41.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i35.i, i32 0, i32 10
  %65 = ptrtoint ptr %resources.i.i.i.i.i.i41.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %resources.i.i.i.i.i.i41.i, ptr %resources.i.i.i.i.i.i41.i, align 4
  %prev.i2.i.i.i.i.i.i42.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i35.i, i32 0, i32 10, i32 1
  %66 = ptrtoint ptr %prev.i2.i.i.i.i.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %resources.i.i.i.i.i.i41.i, ptr %prev.i2.i.i.i.i.i.i42.i, align 4
  %transfer_list.i.i.i.i.i43.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i36.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i44.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i43.i, ptr noundef nonnull %msg.i.i.i35.i, ptr noundef nonnull %msg.i.i.i35.i) #8
  br i1 %call.i.i.i.i.i.i.i44.i, label %if.end.i.i.i.i.i.i.i46.i, label %if.then17.i.sca3000_write_reg.exit48.i_crit_edge

if.then17.i.sca3000_write_reg.exit48.i_crit_edge: ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit48.i

if.end.i.i.i.i.i.i.i46.i:                         ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %prev.i.i.i.i.i.i.i40.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %transfer_list.i.i.i.i.i43.i, ptr %prev.i.i.i.i.i.i.i40.i, align 4
  %68 = ptrtoint ptr %transfer_list.i.i.i.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %msg.i.i.i35.i, ptr %transfer_list.i.i.i.i.i43.i, align 4
  %prev3.i.i.i.i.i.i.i45.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i36.i, i32 0, i32 18, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %msg.i.i.i35.i, ptr %prev3.i.i.i.i.i.i.i45.i, align 4
  %70 = ptrtoint ptr %msg.i.i.i35.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %transfer_list.i.i.i.i.i43.i, ptr %msg.i.i.i35.i, align 4
  br label %sca3000_write_reg.exit48.i

sca3000_write_reg.exit48.i:                       ; preds = %if.end.i.i.i.i.i.i.i46.i, %if.then17.i.sca3000_write_reg.exit48.i_crit_edge
  %call.i.i.i47.i = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i.i.i35.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i35.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i36.i) #8
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge50, %entry.sw.bb2_crit_edge51
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %71 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %address, align 4
  %73 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %priv.i, align 8
  %call1.i = tail call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %74, i8 noundef zeroext 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %sw.bb2.sw.epilog_crit_edge, label %if.end.i16

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end.i16:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool.not.i15 = icmp eq i32 %state, 0
  %arrayidx16.i = getelementptr [3 x [3 x i8]], ptr @sca3000_addresses, i32 0, i32 %72, i32 2
  %75 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx16.i, align 1
  %conv17.i = zext i8 %76 to i32
  %and18.i = and i32 %call1.i, %conv17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not.i15, label %land.lhs.true14.critedge.i, label %land.lhs.true.i17

land.lhs.true.i17:                                ; preds = %if.end.i16
  br i1 %tobool19.not.i, label %if.then4.i18, label %land.lhs.true.i17.if.end32.i_crit_edge

land.lhs.true.i17.if.end32.i_crit_edge:           ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then4.i18:                                     ; preds = %land.lhs.true.i17
  %77 = trunc i32 %call1.i to i8
  %conv8.i = or i8 %76, %77
  %call9.i = tail call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %74, i8 noundef zeroext 2, i8 noundef zeroext %conv8.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then4.i18.if.end32.sink.split.i_crit_edge, label %if.then4.i18.sw.epilog_crit_edge

if.then4.i18.sw.epilog_crit_edge:                 ; preds = %if.then4.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then4.i18.if.end32.sink.split.i_crit_edge:     ; preds = %if.then4.i18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.sink.split.i

land.lhs.true14.critedge.i:                       ; preds = %if.end.i16
  br i1 %tobool19.not.i, label %land.lhs.true14.critedge.i.if.end32.i_crit_edge, label %if.then20.i

land.lhs.true14.critedge.i.if.end32.i_crit_edge:  ; preds = %land.lhs.true14.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.i

if.then20.i:                                      ; preds = %land.lhs.true14.critedge.i
  %neg.i = xor i32 %conv17.i, -1
  %and24.i = and i32 %call1.i, %neg.i
  %conv25.i = trunc i32 %and24.i to i8
  %call26.i = tail call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %74, i8 noundef zeroext 2, i8 noundef zeroext %conv25.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.then20.i.if.end32.sink.split.i_crit_edge, label %if.then20.i.sw.epilog_crit_edge

if.then20.i.sw.epilog_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20.i.if.end32.sink.split.i_crit_edge:      ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32.sink.split.i

if.end32.sink.split.i:                            ; preds = %if.then20.i.if.end32.sink.split.i_crit_edge, %if.then4.i18.if.end32.sink.split.i_crit_edge
  %.sink116.i = phi i32 [ 1, %if.then4.i18.if.end32.sink.split.i_crit_edge ], [ -1, %if.then20.i.if.end32.sink.split.i_crit_edge ]
  %mo_det_use_count.i = getelementptr inbounds %struct.sca3000_state, ptr %74, i32 0, i32 3
  %78 = ptrtoint ptr %mo_det_use_count.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %mo_det_use_count.i, align 16
  %dec.i = add i32 %79, %.sink116.i
  store i32 %dec.i, ptr %mo_det_use_count.i, align 16
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end32.sink.split.i, %land.lhs.true14.critedge.i.if.end32.i_crit_edge, %land.lhs.true.i17.if.end32.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i.i13) #8
  %80 = getelementptr inbounds i8, ptr %xfer.i.i13, i32 4
  %81 = call ptr @memset(ptr %80, i32 0, i32 188)
  %tx.i.i19 = getelementptr inbounds %struct.sca3000_state, ptr %74, i32 0, i32 7
  %82 = ptrtoint ptr %xfer.i.i13 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %tx.i.i19, ptr %xfer.i.i13, align 4
  %len1.i.i20 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 0, i32 2
  %83 = ptrtoint ptr %len1.i.i20 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 1, ptr %len1.i.i20, align 4
  %rx_buf.i.i21 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 1, i32 1
  %rx.i.i22 = getelementptr inbounds %struct.sca3000_state, ptr %74, i32 0, i32 6
  %84 = ptrtoint ptr %rx_buf.i.i21 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %rx.i.i22, ptr %rx_buf.i.i21, align 4
  %len4.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 1, i32 2
  %85 = ptrtoint ptr %len4.i.i23 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %len4.i.i23, align 4
  %86 = ptrtoint ptr %tx.i.i19 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 80, ptr %tx.i.i19, align 128
  %87 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %74, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i12) #8
  %89 = getelementptr inbounds i8, ptr %msg.i.i.i12, i32 8
  %90 = call ptr @memset(ptr %89, i32 0, i32 40)
  %91 = ptrtoint ptr %msg.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %msg.i.i.i12, ptr %msg.i.i.i12, align 4
  %prev.i.i.i.i.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i12, i32 0, i32 1
  %92 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %msg.i.i.i12, ptr %prev.i.i.i.i.i.i.i24, align 4
  %resources.i.i.i.i.i.i25 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i12, i32 0, i32 10
  %93 = ptrtoint ptr %resources.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %resources.i.i.i.i.i.i25, ptr %resources.i.i.i.i.i.i25, align 4
  %prev.i2.i.i.i.i.i.i26 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i12, i32 0, i32 10, i32 1
  %94 = ptrtoint ptr %prev.i2.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %resources.i.i.i.i.i.i25, ptr %prev.i2.i.i.i.i.i.i26, align 4
  %transfer_list.i.i.i.i.i27 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 0, i32 18
  %call.i.i.i.i.i.i.i28 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i27, ptr noundef nonnull %msg.i.i.i12, ptr noundef nonnull %msg.i.i.i12) #8
  br i1 %call.i.i.i.i.i.i.i28, label %if.end.i.i.i.i.i.i.i30, label %if.end32.i.spi_message_add_tail.exit.i.i.i.i33_crit_edge

if.end32.i.spi_message_add_tail.exit.i.i.i.i33_crit_edge: ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i.i33

if.end.i.i.i.i.i.i.i30:                           ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %transfer_list.i.i.i.i.i27, ptr %prev.i.i.i.i.i.i.i24, align 4
  %96 = ptrtoint ptr %transfer_list.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i.i.i12, ptr %transfer_list.i.i.i.i.i27, align 4
  %prev3.i.i.i.i.i.i.i29 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 0, i32 18, i32 1
  %97 = ptrtoint ptr %prev3.i.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %msg.i.i.i12, ptr %prev3.i.i.i.i.i.i.i29, align 4
  %98 = ptrtoint ptr %msg.i.i.i12 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %transfer_list.i.i.i.i.i27, ptr %msg.i.i.i12, align 4
  br label %spi_message_add_tail.exit.i.i.i.i33

spi_message_add_tail.exit.i.i.i.i33:              ; preds = %if.end.i.i.i.i.i.i.i30, %if.end32.i.spi_message_add_tail.exit.i.i.i.i33_crit_edge
  %transfer_list.i.i.i.1.i.i31 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 1, i32 18
  %99 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i.i.i.i.i.i24, align 4
  %call.i.i.i.i.i.1.i.i32 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i.i31, ptr noundef %100, ptr noundef nonnull %msg.i.i.i12) #8
  br i1 %call.i.i.i.i.i.1.i.i32, label %if.end.i.i.i.i.i.1.i.i35, label %spi_message_add_tail.exit.i.i.i.i33.sca3000_read_data_short.exit.i37_crit_edge

spi_message_add_tail.exit.i.i.i.i33.sca3000_read_data_short.exit.i37_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit.i37

if.end.i.i.i.i.i.1.i.i35:                         ; preds = %spi_message_add_tail.exit.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %transfer_list.i.i.i.1.i.i31, ptr %prev.i.i.i.i.i.i.i24, align 4
  %102 = ptrtoint ptr %transfer_list.i.i.i.1.i.i31 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %msg.i.i.i12, ptr %transfer_list.i.i.i.1.i.i31, align 4
  %prev3.i.i.i.i.i.1.i.i34 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i13, i32 1, i32 18, i32 1
  %103 = ptrtoint ptr %prev3.i.i.i.i.i.1.i.i34 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev3.i.i.i.i.i.1.i.i34, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %transfer_list.i.i.i.1.i.i31, ptr %100, align 4
  br label %sca3000_read_data_short.exit.i37

sca3000_read_data_short.exit.i37:                 ; preds = %if.end.i.i.i.i.i.1.i.i35, %spi_message_add_tail.exit.i.i.i.i33.sca3000_read_data_short.exit.i37_crit_edge
  %call.i.i.i36 = call i32 @spi_sync(ptr noundef %88, ptr noundef nonnull %msg.i.i.i12) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i12) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i.i13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i36)
  %tobool34.not.i = icmp eq i32 %call.i.i.i36, 0
  br i1 %tobool34.not.i, label %if.end36.i, label %sca3000_read_data_short.exit.i37.sw.epilog_crit_edge

sca3000_read_data_short.exit.i37.sw.epilog_crit_edge: ; preds = %sca3000_read_data_short.exit.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.end36.i:                                       ; preds = %sca3000_read_data_short.exit.i37
  %mo_det_use_count37.i = getelementptr inbounds %struct.sca3000_state, ptr %74, i32 0, i32 3
  %105 = ptrtoint ptr %mo_det_use_count37.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mo_det_use_count37.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool38.not.i = icmp eq i32 %106, 0
  %107 = ptrtoint ptr %rx.i.i22 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %rx.i.i22, align 128
  %109 = and i8 %108, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %109)
  %cmp61.i = icmp eq i8 %109, 3
  br i1 %tobool38.not.i, label %land.lhs.true56.i, label %land.lhs.true39.i

land.lhs.true39.i:                                ; preds = %if.end36.i
  br i1 %cmp61.i, label %land.lhs.true39.i.sw.epilog_crit_edge, label %if.then45.i

land.lhs.true39.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then45.i:                                      ; preds = %land.lhs.true39.i
  %or50.i = or i8 %108, 3
  %110 = ptrtoint ptr %tx.i.i19 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 82, ptr %tx.i.i19, align 128
  %arrayidx3.i.i38 = getelementptr %struct.sca3000_state, ptr %74, i32 0, i32 7, i32 1
  %111 = ptrtoint ptr %arrayidx3.i.i38 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %or50.i, ptr %arrayidx3.i.i38, align 1
  %112 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %74, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i.i11) #8
  %114 = getelementptr inbounds i8, ptr %t.i.i.i11, i32 4
  %115 = call ptr @memset(ptr %114, i32 0, i32 92)
  %116 = ptrtoint ptr %t.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %tx.i.i19, ptr %t.i.i.i11, align 4
  %len1.i.i.i39 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i11, i32 0, i32 2
  %117 = ptrtoint ptr %len1.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 2, ptr %len1.i.i.i39, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i.i10) #8
  %118 = getelementptr inbounds i8, ptr %msg.i.i.i.i10, i32 8
  %119 = call ptr @memset(ptr %118, i32 0, i32 40)
  %120 = ptrtoint ptr %msg.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %msg.i.i.i.i10, ptr %msg.i.i.i.i10, align 4
  %prev.i.i.i.i.i.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i.i10, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %msg.i.i.i.i10, ptr %prev.i.i.i.i.i.i.i.i40, align 4
  %resources.i.i.i.i.i.i.i41 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i10, i32 0, i32 10
  %122 = ptrtoint ptr %resources.i.i.i.i.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %resources.i.i.i.i.i.i.i41, ptr %resources.i.i.i.i.i.i.i41, align 4
  %prev.i2.i.i.i.i.i.i.i42 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i.i10, i32 0, i32 10, i32 1
  %123 = ptrtoint ptr %prev.i2.i.i.i.i.i.i.i42 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %resources.i.i.i.i.i.i.i41, ptr %prev.i2.i.i.i.i.i.i.i42, align 4
  %transfer_list.i.i.i.i.i.i43 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i11, i32 0, i32 18
  %call.i.i.i.i.i.i.i.i44 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i.i43, ptr noundef nonnull %msg.i.i.i.i10, ptr noundef nonnull %msg.i.i.i.i10) #8
  br i1 %call.i.i.i.i.i.i.i.i44, label %if.end.i.i.i.i.i.i.i.i46, label %if.then45.i.sca3000_write_reg.exit.i48_crit_edge

if.then45.i.sca3000_write_reg.exit.i48_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit.i48

if.end.i.i.i.i.i.i.i.i46:                         ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %prev.i.i.i.i.i.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %transfer_list.i.i.i.i.i.i43, ptr %prev.i.i.i.i.i.i.i.i40, align 4
  %125 = ptrtoint ptr %transfer_list.i.i.i.i.i.i43 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %msg.i.i.i.i10, ptr %transfer_list.i.i.i.i.i.i43, align 4
  %prev3.i.i.i.i.i.i.i.i45 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i.i11, i32 0, i32 18, i32 1
  %126 = ptrtoint ptr %prev3.i.i.i.i.i.i.i.i45 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %msg.i.i.i.i10, ptr %prev3.i.i.i.i.i.i.i.i45, align 4
  %127 = ptrtoint ptr %msg.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %transfer_list.i.i.i.i.i.i43, ptr %msg.i.i.i.i10, align 4
  br label %sca3000_write_reg.exit.i48

sca3000_write_reg.exit.i48:                       ; preds = %if.end.i.i.i.i.i.i.i.i46, %if.then45.i.sca3000_write_reg.exit.i48_crit_edge
  %call.i.i.i.i47 = call i32 @spi_sync(ptr noundef %113, ptr noundef nonnull %msg.i.i.i.i10) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i.i10) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i.i11) #8
  br label %sw.epilog

land.lhs.true56.i:                                ; preds = %if.end36.i
  br i1 %cmp61.i, label %if.then63.i, label %land.lhs.true56.i.sw.epilog_crit_edge

land.lhs.true56.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then63.i:                                      ; preds = %land.lhs.true56.i
  %128 = ptrtoint ptr %tx.i.i19 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 82, ptr %tx.i.i19, align 128
  %arrayidx3.i105.i = getelementptr %struct.sca3000_state, ptr %74, i32 0, i32 7, i32 1
  %129 = ptrtoint ptr %arrayidx3.i105.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 3, ptr %arrayidx3.i105.i, align 1
  %130 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %74, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i103.i) #8
  %132 = getelementptr inbounds i8, ptr %t.i.i103.i, i32 4
  %133 = call ptr @memset(ptr %132, i32 0, i32 92)
  %134 = ptrtoint ptr %t.i.i103.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %tx.i.i19, ptr %t.i.i103.i, align 4
  %len1.i.i106.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i103.i, i32 0, i32 2
  %135 = ptrtoint ptr %len1.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 2, ptr %len1.i.i106.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i102.i) #8
  %136 = getelementptr inbounds i8, ptr %msg.i.i.i102.i, i32 8
  %137 = call ptr @memset(ptr %136, i32 0, i32 40)
  %138 = ptrtoint ptr %msg.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store volatile ptr %msg.i.i.i102.i, ptr %msg.i.i.i102.i, align 4
  %prev.i.i.i.i.i.i.i107.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i102.i, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i.i.i.i.i.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %msg.i.i.i102.i, ptr %prev.i.i.i.i.i.i.i107.i, align 4
  %resources.i.i.i.i.i.i108.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i102.i, i32 0, i32 10
  %140 = ptrtoint ptr %resources.i.i.i.i.i.i108.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %resources.i.i.i.i.i.i108.i, ptr %resources.i.i.i.i.i.i108.i, align 4
  %prev.i2.i.i.i.i.i.i109.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i102.i, i32 0, i32 10, i32 1
  %141 = ptrtoint ptr %prev.i2.i.i.i.i.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %resources.i.i.i.i.i.i108.i, ptr %prev.i2.i.i.i.i.i.i109.i, align 4
  %transfer_list.i.i.i.i.i110.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i103.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i111.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i110.i, ptr noundef nonnull %msg.i.i.i102.i, ptr noundef nonnull %msg.i.i.i102.i) #8
  br i1 %call.i.i.i.i.i.i.i111.i, label %if.end.i.i.i.i.i.i.i113.i, label %if.then63.i.sca3000_write_reg.exit115.i_crit_edge

if.then63.i.sca3000_write_reg.exit115.i_crit_edge: ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit115.i

if.end.i.i.i.i.i.i.i113.i:                        ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #10
  %142 = ptrtoint ptr %prev.i.i.i.i.i.i.i107.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %transfer_list.i.i.i.i.i110.i, ptr %prev.i.i.i.i.i.i.i107.i, align 4
  %143 = ptrtoint ptr %transfer_list.i.i.i.i.i110.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %msg.i.i.i102.i, ptr %transfer_list.i.i.i.i.i110.i, align 4
  %prev3.i.i.i.i.i.i.i112.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i103.i, i32 0, i32 18, i32 1
  %144 = ptrtoint ptr %prev3.i.i.i.i.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %msg.i.i.i102.i, ptr %prev3.i.i.i.i.i.i.i112.i, align 4
  %145 = ptrtoint ptr %msg.i.i.i102.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store volatile ptr %transfer_list.i.i.i.i.i110.i, ptr %msg.i.i.i102.i, align 4
  br label %sca3000_write_reg.exit115.i

sca3000_write_reg.exit115.i:                      ; preds = %if.end.i.i.i.i.i.i.i113.i, %if.then63.i.sca3000_write_reg.exit115.i_crit_edge
  %call.i.i.i114.i = call i32 @spi_sync(ptr noundef %131, ptr noundef nonnull %msg.i.i.i102.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i102.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i103.i) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sca3000_write_reg.exit115.i, %land.lhs.true56.i.sw.epilog_crit_edge, %sca3000_write_reg.exit.i48, %land.lhs.true39.i.sw.epilog_crit_edge, %sca3000_read_data_short.exit.i37.sw.epilog_crit_edge, %if.then20.i.sw.epilog_crit_edge, %if.then4.i18.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %sca3000_write_reg.exit48.i, %land.lhs.true11.critedge.i.sw.epilog_crit_edge, %sca3000_write_reg.exit.i, %land.lhs.true.i.sw.epilog_crit_edge, %sca3000_read_data_short.exit.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -22, %entry.sw.epilog_crit_edge ], [ %call.i.i.i47.i, %sca3000_write_reg.exit48.i ], [ %call.i.i.i.i, %sca3000_write_reg.exit.i ], [ %call.i.i.i, %sca3000_read_data_short.exit.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true11.critedge.i.sw.epilog_crit_edge ], [ %call.i.i.i.i47, %sca3000_write_reg.exit.i48 ], [ %call.i.i.i114.i, %sca3000_write_reg.exit115.i ], [ %call1.i, %sw.bb2.sw.epilog_crit_edge ], [ %call9.i, %if.then4.i18.sw.epilog_crit_edge ], [ %call26.i, %if.then20.i.sw.epilog_crit_edge ], [ %call.i.i.i36, %sca3000_read_data_short.exit.i37.sw.epilog_crit_edge ], [ 0, %land.lhs.true56.i.sw.epilog_crit_edge ], [ 0, %land.lhs.true39.i.sw.epilog_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_read_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, ptr nocapture noundef %val, ptr nocapture noundef writeonly %val2) #2 align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %2 = zext i32 %info to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %info, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb24
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %address, align 4
  %arrayidx1 = getelementptr [3 x [3 x i8]], ptr @sca3000_addresses, i32 0, i32 %4, i32 1
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx1, align 1
  %call2 = tail call fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %1, i8 noundef zeroext %6)
  %7 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %ret, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %val, align 4
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp4 = icmp eq i32 %10, 2
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = call i32 @_find_next_bit_be(ptr noundef nonnull %ret, i32 noundef 7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call6)
  %cmp743 = icmp ult i32 %call6, 7
  br i1 %cmp743, label %for.body.lr.ph, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then5
  %info8 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ %call6, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  %11 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info8, align 4
  %arrayidx9 = getelementptr %struct.sca3000_chip_info, ptr %12, i32 0, i32 11, i32 %i.044
  %13 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx9, align 4
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %add = add i32 %16, %14
  store i32 %add, ptr %val, align 4
  %add10 = add nuw nsw i32 %i.044, 1
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %ret, i32 noundef 7, i32 noundef %add10) #8
  %cmp7 = icmp ult i32 %call11, 7
  br i1 %cmp7, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.else:                                          ; preds = %if.end
  %call12 = call i32 @_find_next_bit_be(ptr noundef nonnull %ret, i32 noundef 6, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call12)
  %cmp1441 = icmp ult i32 %call12, 6
  br i1 %cmp1441, label %for.body15.lr.ph, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15.lr.ph:                                 ; preds = %if.else
  %info16 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  br label %for.body15

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.body15.lr.ph
  %i.142 = phi i32 [ %call12, %for.body15.lr.ph ], [ %call21, %for.body15.for.body15_crit_edge ]
  %17 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info16, align 4
  %arrayidx17 = getelementptr %struct.sca3000_chip_info, ptr %18, i32 0, i32 10, i32 %i.142
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx17, align 4
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %add18 = add i32 %22, %20
  store i32 %add18, ptr %val, align 4
  %add20 = add nuw nsw i32 %i.142, 1
  %call21 = call i32 @_find_next_bit_be(ptr noundef nonnull %ret, i32 noundef 6, i32 noundef %add20) #8
  %cmp14 = icmp ult i32 %call21, 6
  br i1 %cmp14, label %for.body15.for.body15_crit_edge, label %for.body15.cleanup_crit_edge

for.body15.cleanup_crit_edge:                     ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

sw.bb24:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %val, align 4
  %24 = ptrtoint ptr %val2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 226000, ptr %val2, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb24, %for.body15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %for.body.cleanup_crit_edge, %if.then5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %sw.bb24 ], [ %call2, %sw.bb.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 1, %if.then5.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 1, %for.body15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_write_event_value(ptr nocapture noundef readonly %indio_dev, ptr nocapture noundef readonly %chan, i32 noundef %type, i32 noundef %dir, i32 noundef %info, i32 noundef %val, i32 noundef %val2) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %channel2 = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  %info2 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info2, align 4
  br i1 %cmp, label %while.cond.preheader, label %while.cond9.preheader

while.cond9.preheader:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx15 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 5
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %val)
  %cmp16.not = icmp sgt i32 %7, %val
  %sub26 = select i1 %cmp16.not, i32 0, i32 %7
  %val.addr.3 = sub i32 %val, %sub26
  %conv22 = select i1 %cmp16.not, i8 0, i8 32
  %arrayidx15.1 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 4
  %8 = ptrtoint ptr %arrayidx15.1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx15.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.3, i32 %9)
  %cmp16.not.1 = icmp slt i32 %val.addr.3, %9
  %sub26.1 = select i1 %cmp16.not.1, i32 0, i32 %9
  %val.addr.3.1 = sub i32 %val.addr.3, %sub26.1
  %conv22.1 = select i1 %cmp16.not.1, i8 0, i8 16
  %nonlinear.3.1 = or i8 %conv22.1, %conv22
  %arrayidx15.2 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 3
  %10 = ptrtoint ptr %arrayidx15.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx15.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.3.1, i32 %11)
  %cmp16.not.2 = icmp slt i32 %val.addr.3.1, %11
  %sub26.2 = select i1 %cmp16.not.2, i32 0, i32 %11
  %val.addr.3.2 = sub i32 %val.addr.3.1, %sub26.2
  %conv22.2 = select i1 %cmp16.not.2, i8 0, i8 8
  %nonlinear.3.2 = or i8 %conv22.2, %nonlinear.3.1
  %arrayidx15.3 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %arrayidx15.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx15.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.3.2, i32 %13)
  %cmp16.not.3 = icmp slt i32 %val.addr.3.2, %13
  %sub26.3 = select i1 %cmp16.not.3, i32 0, i32 %13
  %val.addr.3.3 = sub i32 %val.addr.3.2, %sub26.3
  %conv22.3 = select i1 %cmp16.not.3, i8 0, i8 4
  %nonlinear.3.3 = or i8 %conv22.3, %nonlinear.3.2
  %arrayidx15.4 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %arrayidx15.4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx15.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.3.3, i32 %15)
  %cmp16.not.4 = icmp slt i32 %val.addr.3.3, %15
  %sub26.4 = select i1 %cmp16.not.4, i32 0, i32 %15
  %val.addr.3.4 = sub i32 %val.addr.3.3, %sub26.4
  %conv22.4 = select i1 %cmp16.not.4, i8 0, i8 2
  %nonlinear.3.4 = or i8 %conv22.4, %nonlinear.3.3
  %arrayidx15.5 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 10, i32 0
  br label %if.end29

while.cond.preheader:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 6
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %val)
  %cmp3.not = icmp sgt i32 %17, %val
  %sub = select i1 %cmp3.not, i32 0, i32 %17
  %val.addr.1 = sub i32 %val, %sub
  %conv5 = select i1 %cmp3.not, i8 0, i8 64
  %arrayidx.1 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 5
  %18 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.1, i32 %19)
  %cmp3.not.1 = icmp slt i32 %val.addr.1, %19
  %sub.1 = select i1 %cmp3.not.1, i32 0, i32 %19
  %val.addr.1.1 = sub i32 %val.addr.1, %sub.1
  %conv5.1 = select i1 %cmp3.not.1, i8 0, i8 32
  %nonlinear.1.1 = or i8 %conv5.1, %conv5
  %arrayidx.2 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 4
  %20 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.1.1, i32 %21)
  %cmp3.not.2 = icmp slt i32 %val.addr.1.1, %21
  %sub.2 = select i1 %cmp3.not.2, i32 0, i32 %21
  %val.addr.1.2 = sub i32 %val.addr.1.1, %sub.2
  %conv5.2 = select i1 %cmp3.not.2, i8 0, i8 16
  %nonlinear.1.2 = or i8 %conv5.2, %nonlinear.1.1
  %arrayidx.3 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 3
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.1.2, i32 %23)
  %cmp3.not.3 = icmp slt i32 %val.addr.1.2, %23
  %sub.3 = select i1 %cmp3.not.3, i32 0, i32 %23
  %val.addr.1.3 = sub i32 %val.addr.1.2, %sub.3
  %conv5.3 = select i1 %cmp3.not.3, i8 0, i8 8
  %nonlinear.1.3 = or i8 %conv5.3, %nonlinear.1.2
  %arrayidx.4 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 2
  %24 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.1.3, i32 %25)
  %cmp3.not.4 = icmp slt i32 %val.addr.1.3, %25
  %sub.4 = select i1 %cmp3.not.4, i32 0, i32 %25
  %val.addr.1.4 = sub i32 %val.addr.1.3, %sub.4
  %conv5.4 = select i1 %cmp3.not.4, i8 0, i8 4
  %nonlinear.1.4 = or i8 %conv5.4, %nonlinear.1.3
  %arrayidx.5 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 1
  %26 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.1.4, i32 %27)
  %cmp3.not.5 = icmp slt i32 %val.addr.1.4, %27
  %sub.5 = select i1 %cmp3.not.5, i32 0, i32 %27
  %val.addr.1.5 = sub i32 %val.addr.1.4, %sub.5
  %conv5.5 = select i1 %cmp3.not.5, i8 0, i8 2
  %nonlinear.1.5 = or i8 %conv5.5, %nonlinear.1.4
  %arrayidx.6 = getelementptr %struct.sca3000_chip_info, ptr %5, i32 0, i32 11, i32 0
  br label %if.end29

if.end29:                                         ; preds = %while.cond.preheader, %while.cond9.preheader
  %arrayidx15.5.sink = phi ptr [ %arrayidx15.5, %while.cond9.preheader ], [ %arrayidx.6, %while.cond.preheader ]
  %val.addr.3.4.sink = phi i32 [ %val.addr.3.4, %while.cond9.preheader ], [ %val.addr.1.5, %while.cond.preheader ]
  %nonlinear.3.4.sink = phi i8 [ %nonlinear.3.4, %while.cond9.preheader ], [ %nonlinear.1.5, %while.cond.preheader ]
  %28 = ptrtoint ptr %arrayidx15.5.sink to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx15.5.sink, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %val.addr.3.4.sink, i32 %29)
  %cmp16.not.5 = icmp sge i32 %val.addr.3.4.sink, %29
  %conv22.5 = zext i1 %cmp16.not.5 to i8
  %nonlinear.3.5 = or i8 %nonlinear.3.4.sink, %conv22.5
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %address = getelementptr inbounds %struct.iio_chan_spec, ptr %chan, i32 0, i32 3
  %30 = ptrtoint ptr %address to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %address, align 4
  %arrayidx31 = getelementptr [3 x [3 x i8]], ptr @sca3000_addresses, i32 0, i32 %31, i32 1
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx31, align 1
  %call32 = tail call fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %1, i8 noundef zeroext %33, i8 noundef zeroext %nonlinear.3.5)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call32
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_show_available_3db_freqs(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %info = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %measurement_mode_3db_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %measurement_mode_3db_freq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %measurement_mode_3db_freq, align 4
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %5)
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %option_mode_1 = getelementptr inbounds %struct.sca3000_chip_info, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %option_mode_1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %option_mode_1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %buf, i32 %call2
  %option_mode_1_3db_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %7, i32 0, i32 6
  %10 = ptrtoint ptr %option_mode_1_3db_freq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %option_mode_1_3db_freq, align 4
  %call5 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr, ptr noundef nonnull @.str.4, i32 noundef %11)
  %add = add i32 %call5, %call2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.0 = phi i32 [ %add, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info, align 4
  %option_mode_2 = getelementptr inbounds %struct.sca3000_chip_info, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %option_mode_2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %option_mode_2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end.if.end13_crit_edge, label %if.then8

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr9 = getelementptr i8, ptr %buf, i32 %len.0
  %option_mode_2_3db_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %13, i32 0, i32 9
  %16 = ptrtoint ptr %option_mode_2_3db_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %option_mode_2_3db_freq, align 4
  %call11 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr9, ptr noundef nonnull @.str.4, i32 noundef %17)
  %add12 = add i32 %call11, %len.0
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %len.1 = phi i32 [ %add12, %if.then8 ], [ %len.0, %if.end.if.end13_crit_edge ]
  %add.ptr14 = getelementptr i8, ptr %buf, i32 %len.1
  %18 = ptrtoint ptr %add.ptr14 to i32
  call void @__asan_storeN_noabort(i32 %18, i32 2)
  store i16 2560, ptr %add.ptr14, align 1
  %add16 = add i32 %len.1, 1
  ret i32 %add16
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_read_av_freq(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr i8, ptr %dev, i32 1080
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx.i, align 128
  call void @mutex_unlock(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sca3000_read_data_short.exit.cleanup_crit_edge

sca3000_read_data_short.exit.cleanup_crit_edge:   ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sca3000_read_data_short.exit
  %29 = and i8 %28, 3
  %and = zext i8 %29 to i32
  %30 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %and, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb10
    i32 2, label %sw.bb21
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %info = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %measurement_mode_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %32, i32 0, i32 2
  br label %cleanup.sink.split

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %info12 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %info12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %info12, align 4
  %option_mode_1_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %34, i32 0, i32 5
  br label %cleanup.sink.split

sw.bb21:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %info23 = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %info23 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %info23, align 4
  %option_mode_2_freq = getelementptr inbounds %struct.sca3000_chip_info, ptr %36, i32 0, i32 8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb21, %sw.bb10, %sw.bb
  %option_mode_2_freq.sink = phi ptr [ %option_mode_2_freq, %sw.bb21 ], [ %option_mode_1_freq, %sw.bb10 ], [ %measurement_mode_freq, %sw.bb ]
  %37 = ptrtoint ptr %option_mode_2_freq.sink to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %option_mode_2_freq.sink, align 4
  %div = sdiv i32 %38, 2
  %div8 = sdiv i32 %38, 4
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.7, i32 noundef %38, i32 noundef %div, i32 noundef %div8)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %sca3000_read_data_short.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %call.i.i, %sca3000_read_data_short.exit.cleanup_crit_edge ], [ %call9, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3000_read_data_short(ptr noundef %st, i8 noundef zeroext %reg_address_high, i32 noundef %len) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer) #8
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %tx = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx, ptr %xfer, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len1, align 4
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 1
  %rx = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 6
  %4 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx, ptr %rx_buf, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %5 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %len, ptr %len4, align 4
  %shl = shl i8 %reg_address_high, 2
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %shl, ptr %tx, align 128
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %19 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %20, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i.i.i.1, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.1, ptr %20, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3000_read_ctrl_reg(ptr noundef %st, i8 noundef zeroext %ctrl_reg) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sca3000_reg_lock_on(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @__sca3000_unlock_reg_lock(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then1.cleanup_crit_edge

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 98, ptr %tx.i, align 128
  %arrayidx3.i = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %ctrl_reg, ptr %arrayidx3.i, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end6.sca3000_write_reg.exit_crit_edge

if.end6.sca3000_write_reg.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %sca3000_write_reg.exit

sca3000_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end6.sca3000_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %sca3000_write_reg.exit.cleanup_crit_edge

sca3000_write_reg.exit.cleanup_crit_edge:         ; preds = %sca3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %sca3000_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %18 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %19 = call ptr @memset(ptr %18, i32 0, i32 188)
  %20 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %21 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 6
  %22 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %23 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %len4.i, align 4
  %24 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -120, ptr %tx.i, align 128
  %25 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %27 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %31 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end10.spi_message_add_tail.exit.i.i.i_crit_edge

if.end10.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %34 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %36 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end10.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %37 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %38, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %39 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %40 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %41 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i.i.i.i.1.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %38, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %26, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool12.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool12.not, label %if.end14, label %sca3000_read_data_short.exit.cleanup_crit_edge

sca3000_read_data_short.exit.cleanup_crit_edge:   ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end14:                                         ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rx.i, align 128
  %conv = zext i8 %44 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %sca3000_read_data_short.exit.cleanup_crit_edge, %sca3000_write_reg.exit.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.end14 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then1.cleanup_crit_edge ], [ %call.i.i.i, %sca3000_write_reg.exit.cleanup_crit_edge ], [ %call.i.i, %sca3000_read_data_short.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3000_reg_lock_on(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %0 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %2 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %3 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 6
  %4 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %5 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len4.i, align 4
  %6 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 8, ptr %tx.i, align 128
  %7 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %9 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %11 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %19 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %20, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i.i.i.i.1.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %20, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %8, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %sca3000_read_data_short.exit.cleanup_crit_edge, label %if.end

sca3000_read_data_short.exit.cleanup_crit_edge:   ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rx.i, align 128
  %27 = lshr i8 %26, 5
  %.lobit = and i8 %27, 1
  %28 = xor i8 %.lobit, 1
  %29 = zext i8 %28 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sca3000_read_data_short.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %29, %if.end ], [ %call.i.i, %sca3000_read_data_short.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sca3000_unlock_reg_lock(ptr noundef %st) unnamed_addr #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %xfer = alloca [3 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %xfer) #8
  %0 = getelementptr inbounds i8, ptr %xfer, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 284)
  %tx = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %2 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tx, ptr %xfer, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 2
  %3 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %len, align 4
  %cs_change = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 7
  %4 = ptrtoint ptr %cs_change to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 64, ptr %cs_change, align 4
  %arrayinit.element = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1
  %add.ptr = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 2
  %5 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %arrayinit.element, align 4
  %len4 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 2
  %6 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %len4, align 4
  %cs_change6 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 7
  %7 = ptrtoint ptr %cs_change6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 64, ptr %cs_change6, align 4
  %arrayinit.element12 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 2
  %add.ptr16 = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 4
  %8 = ptrtoint ptr %arrayinit.element12 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr16, ptr %arrayinit.element12, align 4
  %len17 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 2, i32 2
  %9 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %len17, align 4
  %10 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 122, ptr %tx, align 128
  %arrayidx24 = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 1
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx24, align 1
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 122, ptr %add.ptr, align 2
  %arrayidx28 = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 80, ptr %arrayidx28, align 1
  %14 = ptrtoint ptr %add.ptr16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 122, ptr %add.ptr16, align 4
  %arrayidx32 = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 5
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -96, ptr %arrayidx32, align 1
  %16 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #8
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %msg.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 0, i32 18, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %msg.i, ptr %prev3.i.i.i.i.i, align 4
  %27 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i_crit_edge
  %transfer_list.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18
  %28 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1, ptr noundef %29, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.1, label %if.end.i.i.i.i.i.1, label %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge

spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge: ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.1

if.end.i.i.i.i.i.1:                               ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i.i.1, ptr %prev.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i, ptr %transfer_list.i.i.i.1, align 4
  %prev3.i.i.i.i.i.1 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 1, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i.i.i.1, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i.i.1, ptr %29, align 4
  br label %spi_message_add_tail.exit.i.i.1

spi_message_add_tail.exit.i.i.1:                  ; preds = %if.end.i.i.i.i.i.1, %spi_message_add_tail.exit.i.i.spi_message_add_tail.exit.i.i.1_crit_edge
  %transfer_list.i.i.i.2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 2, i32 18
  %34 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %call.i.i.i.i.i.2 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.2, ptr noundef %35, ptr noundef nonnull %msg.i) #8
  br i1 %call.i.i.i.i.i.2, label %if.end.i.i.i.i.i.2, label %spi_message_add_tail.exit.i.i.1.spi_message_add_tail.exit.i.i.2_crit_edge

spi_message_add_tail.exit.i.i.1.spi_message_add_tail.exit.i.i.2_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.2

if.end.i.i.i.i.i.2:                               ; preds = %spi_message_add_tail.exit.i.i.1
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %transfer_list.i.i.i.2, ptr %prev.i.i.i.i.i, align 4
  %37 = ptrtoint ptr %transfer_list.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %msg.i, ptr %transfer_list.i.i.i.2, align 4
  %prev3.i.i.i.i.i.2 = getelementptr inbounds %struct.spi_transfer, ptr %xfer, i32 2, i32 18, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i.i.2, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %transfer_list.i.i.i.2, ptr %35, align 4
  br label %spi_message_add_tail.exit.i.i.2

spi_message_add_tail.exit.i.i.2:                  ; preds = %if.end.i.i.i.i.i.2, %spi_message_add_tail.exit.i.i.1.spi_message_add_tail.exit.i.i.2_crit_edge
  %call.i = call i32 @spi_sync(ptr noundef %17, ptr noundef nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #8
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %xfer) #8
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3000_write_reg(ptr noundef %st, i8 noundef zeroext %address, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i8 %address, 2
  %or = or i8 %shl, 2
  %tx = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %or, ptr %tx, align 128
  %arrayidx3 = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %val, ptr %arrayidx3, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #8
  %4 = getelementptr inbounds i8, ptr %t.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_write.exit_crit_edge

entry.spi_write.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %entry.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #8
  ret i32 %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sca3000_write_ctrl_reg(ptr noundef %st, i8 noundef zeroext %sel, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg.i.i.i19 = alloca %struct.spi_message, align 4
  %t.i.i20 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sca3000_reg_lock_on(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.error_ret_crit_edge, label %if.end

entry.error_ret_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then1

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @__sca3000_unlock_reg_lock(ptr noundef %st)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then1.if.end6_crit_edge, label %if.then1.error_ret_crit_edge

if.then1.error_ret_crit_edge:                     ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %st, i32 0, i32 7
  %0 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 98, ptr %tx.i, align 128
  %arrayidx3.i = getelementptr %struct.sca3000_state, ptr %st, i32 0, i32 7, i32 1
  %1 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %sel, ptr %arrayidx3.i, align 1
  %2 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %4 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 92)
  %6 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %tx.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %8 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end6.sca3000_write_reg.exit_crit_edge

if.end6.sca3000_write_reg.exit_crit_edge:         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %sca3000_write_reg.exit

sca3000_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end6.sca3000_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %3, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool8.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool8.not, label %if.end10, label %sca3000_write_reg.exit.error_ret_crit_edge

sca3000_write_reg.exit.error_ret_crit_edge:       ; preds = %sca3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end10:                                         ; preds = %sca3000_write_reg.exit
  %18 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 -118, ptr %tx.i, align 128
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %val, ptr %arrayidx3.i, align 1
  %20 = ptrtoint ptr %st to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %st, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i20) #8
  %22 = getelementptr inbounds i8, ptr %t.i.i20, i32 4
  %23 = call ptr @memset(ptr %22, i32 0, i32 92)
  %24 = ptrtoint ptr %t.i.i20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tx.i, ptr %t.i.i20, align 4
  %len1.i.i23 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 2
  %25 = ptrtoint ptr %len1.i.i23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %len1.i.i23, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i19) #8
  %26 = getelementptr inbounds i8, ptr %msg.i.i.i19, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %msg.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %msg.i.i.i19, ptr %msg.i.i.i19, align 4
  %prev.i.i.i.i.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i19, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i.i.i19, ptr %prev.i.i.i.i.i.i.i24, align 4
  %resources.i.i.i.i.i.i25 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i19, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i.i.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i.i.i.i.i25, ptr %resources.i.i.i.i.i.i25, align 4
  %prev.i2.i.i.i.i.i.i26 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i19, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i.i.i.i.i26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i.i.i.i.i25, ptr %prev.i2.i.i.i.i.i.i26, align 4
  %transfer_list.i.i.i.i.i27 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 18
  %call.i.i.i.i.i.i.i28 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i27, ptr noundef nonnull %msg.i.i.i19, ptr noundef nonnull %msg.i.i.i19) #8
  br i1 %call.i.i.i.i.i.i.i28, label %if.end.i.i.i.i.i.i.i30, label %if.end10.sca3000_write_reg.exit32_crit_edge

if.end10.sca3000_write_reg.exit32_crit_edge:      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit32

if.end.i.i.i.i.i.i.i30:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %prev.i.i.i.i.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i.i.i.i.i27, ptr %prev.i.i.i.i.i.i.i24, align 4
  %33 = ptrtoint ptr %transfer_list.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %msg.i.i.i19, ptr %transfer_list.i.i.i.i.i27, align 4
  %prev3.i.i.i.i.i.i.i29 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i20, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %msg.i.i.i19, ptr %prev3.i.i.i.i.i.i.i29, align 4
  %35 = ptrtoint ptr %msg.i.i.i19 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i.i.i.i.i27, ptr %msg.i.i.i19, align 4
  br label %sca3000_write_reg.exit32

sca3000_write_reg.exit32:                         ; preds = %if.end.i.i.i.i.i.i.i30, %if.end10.sca3000_write_reg.exit32_crit_edge
  %call.i.i.i31 = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i.i.i19) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i19) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i20) #8
  br label %error_ret

error_ret:                                        ; preds = %sca3000_write_reg.exit32, %sca3000_write_reg.exit.error_ret_crit_edge, %if.then1.error_ret_crit_edge, %entry.error_ret_crit_edge
  %ret.0 = phi i32 [ %call, %entry.error_ret_crit_edge ], [ %call2, %if.then1.error_ret_crit_edge ], [ %call.i.i.i, %sca3000_write_reg.exit.error_ret_crit_edge ], [ %call.i.i.i31, %sca3000_write_reg.exit32 ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_hw_ring_preenable(ptr noundef %indio_dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -124, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sca3000_read_data_short.exit.error_unlock_crit_edge

sca3000_read_data_short.exit.error_unlock_crit_edge: ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

if.end:                                           ; preds = %sca3000_read_data_short.exit
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx.i, align 128
  %29 = or i8 %28, 64
  %30 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -122, ptr %tx.i, align 128
  %arrayidx3.i = getelementptr %struct.sca3000_state, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx3.i, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %34 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end.sca3000_write_reg.exit_crit_edge

if.end.sca3000_write_reg.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %sca3000_write_reg.exit

sca3000_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end.sca3000_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool4.not = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool4.not, label %if.end6, label %sca3000_write_reg.exit.error_unlock_crit_edge

sca3000_write_reg.exit.error_unlock_crit_edge:    ; preds = %sca3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_unlock

if.end6:                                          ; preds = %sca3000_write_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @mutex_unlock(ptr noundef %lock) #8
  %call8 = call fastcc i32 @__sca3000_hw_ring_state_set(ptr noundef %indio_dev, i1 noundef zeroext true)
  br label %cleanup

error_unlock:                                     ; preds = %sca3000_write_reg.exit.error_unlock_crit_edge, %sca3000_read_data_short.exit.error_unlock_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sca3000_read_data_short.exit.error_unlock_crit_edge ], [ %call.i.i.i, %sca3000_write_reg.exit.error_unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %error_unlock, %if.end6
  %retval.0 = phi i32 [ %ret.0, %error_unlock ], [ %call8, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sca3000_hw_ring_postdisable(ptr noundef %indio_dev) #2 align 64 {
entry:
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %call1 = tail call fastcc i32 @__sca3000_hw_ring_state_set(ptr noundef %indio_dev, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -124, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.spi_message_add_tail.exit.i.i.i_crit_edge

if.end.spi_message_add_tail.exit.i.i.i_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %if.end.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not, label %if.end5, label %sca3000_read_data_short.exit.unlock_crit_edge

sca3000_read_data_short.exit.unlock_crit_edge:    ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end5:                                          ; preds = %sca3000_read_data_short.exit
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx.i, align 128
  %29 = and i8 %28, -65
  %30 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 -122, ptr %tx.i, align 128
  %arrayidx3.i = getelementptr %struct.sca3000_state, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx3.i, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %34 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %if.end5.sca3000_write_reg.exit_crit_edge

if.end5.sca3000_write_reg.exit_crit_edge:         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %sca3000_write_reg.exit

sca3000_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %if.end5.sca3000_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %unlock

unlock:                                           ; preds = %sca3000_write_reg.exit, %sca3000_read_data_short.exit.unlock_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sca3000_read_data_short.exit.unlock_crit_edge ], [ %call.i.i.i, %sca3000_write_reg.exit ]
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %unlock ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__sca3000_hw_ring_state_set(ptr noundef %indio_dev, i1 noundef zeroext %state) unnamed_addr #6 align 64 {
entry:
  %msg.i.i.i22 = alloca %struct.spi_message, align 4
  %t.i.i23 = alloca %struct.spi_transfer, align 4
  %msg.i.i.i = alloca %struct.spi_message, align 4
  %t.i.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %xfer.i = alloca [2 x %struct.spi_transfer], align 4
  call void @__sanitizer_cov_trace_pc() #10
  %priv.i = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 19
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv.i, align 8
  %lock = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %xfer.i) #8
  %2 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %3 = call ptr @memset(ptr %2, i32 0, i32 188)
  %tx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %tx.i, ptr %xfer.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 2
  %5 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %len1.i, align 4
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 1
  %rx.i = getelementptr inbounds %struct.sca3000_state, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rx.i, ptr %rx_buf.i, align 4
  %len4.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 2
  %7 = ptrtoint ptr %len4.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %len4.i, align 4
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 80, ptr %tx.i, align 128
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #8
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 40)
  %13 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %entry.spi_message_add_tail.exit.i.i.i_crit_edge

entry.spi_message_add_tail.exit.i.i.i_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %spi_message_add_tail.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %20 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i.i

spi_message_add_tail.exit.i.i.i:                  ; preds = %if.end.i.i.i.i.i.i, %entry.spi_message_add_tail.exit.i.i.i_crit_edge
  %transfer_list.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18
  %21 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i.i.i.i.i, align 4
  %call.i.i.i.i.i.1.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.1.i, ptr noundef %22, ptr noundef nonnull %msg.i.i) #8
  br i1 %call.i.i.i.i.i.1.i, label %if.end.i.i.i.i.i.1.i, label %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge

spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_read_data_short.exit

if.end.i.i.i.i.i.1.i:                             ; preds = %spi_message_add_tail.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %transfer_list.i.i.i.1.i, ptr %prev.i.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %transfer_list.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.1.i, align 4
  %prev3.i.i.i.i.i.1.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 1, i32 18, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev3.i.i.i.i.i.1.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %transfer_list.i.i.i.1.i, ptr %22, align 4
  br label %sca3000_read_data_short.exit

sca3000_read_data_short.exit:                     ; preds = %if.end.i.i.i.i.i.1.i, %spi_message_add_tail.exit.i.i.i.sca3000_read_data_short.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %10, ptr noundef nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %xfer.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %if.end, label %sca3000_read_data_short.exit.error_ret_crit_edge

sca3000_read_data_short.exit.error_ret_crit_edge: ; preds = %sca3000_read_data_short.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_ret

if.end:                                           ; preds = %sca3000_read_data_short.exit
  br i1 %state, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  %dev = getelementptr inbounds %struct.iio_dev, ptr %indio_dev, i32 0, i32 2
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %rx.i, align 128
  %29 = or i8 %28, -128
  %30 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 82, ptr %tx.i, align 128
  %arrayidx3.i = getelementptr %struct.sca3000_state, ptr %1, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %arrayidx3.i, align 1
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i) #8
  %34 = getelementptr inbounds i8, ptr %t.i.i, i32 4
  %35 = call ptr @memset(ptr %34, i32 0, i32 92)
  %36 = ptrtoint ptr %t.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %tx.i, ptr %t.i.i, align 4
  %len1.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %len1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  %38 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 8
  %39 = call ptr @memset(ptr %38, i32 0, i32 40)
  %40 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %msg.i.i.i, ptr %msg.i.i.i, align 4
  %prev.i.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %msg.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10
  %42 = ptrtoint ptr %resources.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %resources.i.i.i.i.i.i, ptr %resources.i.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i, i32 0, i32 10, i32 1
  %43 = ptrtoint ptr %prev.i2.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %resources.i.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18
  %call.i.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i, ptr noundef nonnull %msg.i.i.i, ptr noundef nonnull %msg.i.i.i) #8
  br i1 %call.i.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.i, label %do.end.sca3000_write_reg.exit_crit_edge

do.end.sca3000_write_reg.exit_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit

if.end.i.i.i.i.i.i.i:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %prev.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i.i.i.i.i, ptr %prev.i.i.i.i.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %msg.i.i.i, ptr %transfer_list.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %msg.i.i.i, ptr %prev3.i.i.i.i.i.i.i, align 4
  %47 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i.i.i.i.i, ptr %msg.i.i.i, align 4
  br label %sca3000_write_reg.exit

sca3000_write_reg.exit:                           ; preds = %if.end.i.i.i.i.i.i.i, %do.end.sca3000_write_reg.exit_crit_edge
  %call.i.i.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i) #8
  br label %error_ret

if.else:                                          ; preds = %if.end
  %48 = ptrtoint ptr %rx.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %rx.i, align 128
  %50 = and i8 %49, 127
  %51 = ptrtoint ptr %tx.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 82, ptr %tx.i, align 128
  %arrayidx3.i25 = getelementptr %struct.sca3000_state, ptr %1, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %arrayidx3.i25 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %50, ptr %arrayidx3.i25, align 1
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 128
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i.i23) #8
  %55 = getelementptr inbounds i8, ptr %t.i.i23, i32 4
  %56 = call ptr @memset(ptr %55, i32 0, i32 92)
  %57 = ptrtoint ptr %t.i.i23 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tx.i, ptr %t.i.i23, align 4
  %len1.i.i26 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 2
  %58 = ptrtoint ptr %len1.i.i26 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 2, ptr %len1.i.i26, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i.i22) #8
  %59 = getelementptr inbounds i8, ptr %msg.i.i.i22, i32 8
  %60 = call ptr @memset(ptr %59, i32 0, i32 40)
  %61 = ptrtoint ptr %msg.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %msg.i.i.i22, ptr %msg.i.i.i22, align 4
  %prev.i.i.i.i.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %msg.i.i.i22, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i.i22, ptr %prev.i.i.i.i.i.i.i27, align 4
  %resources.i.i.i.i.i.i28 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i22, i32 0, i32 10
  %63 = ptrtoint ptr %resources.i.i.i.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %resources.i.i.i.i.i.i28, ptr %resources.i.i.i.i.i.i28, align 4
  %prev.i2.i.i.i.i.i.i29 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i.i22, i32 0, i32 10, i32 1
  %64 = ptrtoint ptr %prev.i2.i.i.i.i.i.i29 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %resources.i.i.i.i.i.i28, ptr %prev.i2.i.i.i.i.i.i29, align 4
  %transfer_list.i.i.i.i.i30 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 18
  %call.i.i.i.i.i.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i.i30, ptr noundef nonnull %msg.i.i.i22, ptr noundef nonnull %msg.i.i.i22) #8
  br i1 %call.i.i.i.i.i.i.i31, label %if.end.i.i.i.i.i.i.i33, label %if.else.sca3000_write_reg.exit35_crit_edge

if.else.sca3000_write_reg.exit35_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sca3000_write_reg.exit35

if.end.i.i.i.i.i.i.i33:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %prev.i.i.i.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %transfer_list.i.i.i.i.i30, ptr %prev.i.i.i.i.i.i.i27, align 4
  %66 = ptrtoint ptr %transfer_list.i.i.i.i.i30 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %msg.i.i.i22, ptr %transfer_list.i.i.i.i.i30, align 4
  %prev3.i.i.i.i.i.i.i32 = getelementptr inbounds %struct.spi_transfer, ptr %t.i.i23, i32 0, i32 18, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i.i.i.i.i32 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %msg.i.i.i22, ptr %prev3.i.i.i.i.i.i.i32, align 4
  %68 = ptrtoint ptr %msg.i.i.i22 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %transfer_list.i.i.i.i.i30, ptr %msg.i.i.i22, align 4
  br label %sca3000_write_reg.exit35

sca3000_write_reg.exit35:                         ; preds = %if.end.i.i.i.i.i.i.i33, %if.else.sca3000_write_reg.exit35_crit_edge
  %call.i.i.i34 = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %msg.i.i.i22) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i.i22) #8
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i.i23) #8
  br label %error_ret

error_ret:                                        ; preds = %sca3000_write_reg.exit35, %sca3000_write_reg.exit, %sca3000_read_data_short.exit.error_ret_crit_edge
  %ret.0 = phi i32 [ %call.i.i, %sca3000_read_data_short.exit.error_ret_crit_edge ], [ %call.i.i.i, %sca3000_write_reg.exit ], [ %call.i.i.i34, %sca3000_write_reg.exit35 ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @iio_get_time_ns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_event(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iio_push_to_buffers(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !57, !58, !59, !60, !61, !63, !64, !65, !66, !67, !69, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_sca3000__234_1559_sca3000_driver_init6, !1, !"__initcall__kmod_sca3000__234_1559_sca3000_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/iio/accel/sca3000.c", i32 1559, i32 1}
!2 = !{ptr @__exitcall_sca3000_driver_exit, !1, !"__exitcall_sca3000_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author235, !4, !"__UNIQUE_ID_author235", i1 false, i1 false}
!4 = !{!"../drivers/iio/accel/sca3000.c", i32 1561, i32 1}
!5 = !{ptr @__UNIQUE_ID_description236, !6, !"__UNIQUE_ID_description236", i1 false, i1 false}
!6 = !{!"../drivers/iio/accel/sca3000.c", i32 1562, i32 1}
!7 = !{ptr @__UNIQUE_ID_file237, !8, !"__UNIQUE_ID_file237", i1 false, i1 false}
!8 = !{!"../drivers/iio/accel/sca3000.c", i32 1563, i32 1}
!9 = !{ptr @__UNIQUE_ID_license238, !8, !"__UNIQUE_ID_license238", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/iio/accel/sca3000.c", i32 1553, i32 11}
!12 = !{ptr @sca3000_driver, !13, !"sca3000_driver", i1 false, i1 false}
!13 = !{!"../drivers/iio/accel/sca3000.c", i32 1551, i32 26}
!14 = !{ptr @sca3000_id, !15, !"sca3000_id", i1 false, i1 false}
!15 = !{!"../drivers/iio/accel/sca3000.c", i32 1542, i32 35}
!16 = !{ptr @sca3000_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/iio/accel/sca3000.c", i32 1460, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sca3000_spi_chip_info_tbl, !20, !"sca3000_spi_chip_info_tbl", i1 false, i1 false}
!20 = !{!"../drivers/iio/accel/sca3000.c", i32 227, i32 39}
!21 = !{ptr @sca3000_info, !22, !"sca3000_info", i1 false, i1 false}
!22 = !{!"../drivers/iio/accel/sca3000.c", i32 1437, i32 30}
!23 = !{ptr @sca3000_attribute_group, !24, !"sca3000_attribute_group", i1 false, i1 false}
!24 = !{!"../drivers/iio/accel/sca3000.c", i32 968, i32 37}
!25 = !{ptr @sca3000_attributes, !26, !"sca3000_attributes", i1 false, i1 false}
!26 = !{!"../drivers/iio/accel/sca3000.c", i32 962, i32 26}
!27 = !{ptr @.str.2, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/iio/accel/sca3000.c", i32 469, i32 8}
!29 = !{ptr @iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available, !28, !"iio_dev_attr_in_accel_filter_low_pass_3db_frequency_available", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/iio/accel/sca3000.c", i32 457, i32 21}
!32 = !{ptr @.str.4, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/iio/accel/sca3000.c", i32 459, i32 29}
!34 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/iio/accel/sca3000.c", i32 464, i32 28}
!36 = !{ptr @.str.6, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/iio/accel/sca3000.c", i32 868, i32 8}
!38 = !{ptr @iio_dev_attr_sampling_frequency_available, !37, !"iio_dev_attr_sampling_frequency_available", i1 false, i1 false}
!39 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/iio/accel/sca3000.c", i32 841, i32 29}
!41 = !{ptr @sca3000_addresses, !42, !"sca3000_addresses", i1 false, i1 false}
!42 = !{!"../drivers/iio/accel/sca3000.c", i32 555, i32 11}
!43 = !{ptr @sca3000_channels_with_temp, !44, !"sca3000_channels_with_temp", i1 false, i1 false}
!44 = !{!"../drivers/iio/accel/sca3000.c", i32 526, i32 35}
!45 = !{ptr @sca3000_event, !46, !"sca3000_event", i1 false, i1 false}
!46 = !{!"../drivers/iio/accel/sca3000.c", i32 473, i32 36}
!47 = !{ptr @sca3000_freefall_event_spec, !48, !"sca3000_freefall_event_spec", i1 false, i1 false}
!48 = !{!"../drivers/iio/accel/sca3000.c", i32 505, i32 36}
!49 = !{ptr @sca3000_channels, !50, !"sca3000_channels", i1 false, i1 false}
!50 = !{!"../drivers/iio/accel/sca3000.c", i32 512, i32 35}
!51 = !{ptr @sca3000_ring_setup_ops, !52, !"sca3000_ring_setup_ops", i1 false, i1 false}
!52 = !{!"../drivers/iio/accel/sca3000.c", i32 1367, i32 42}
!53 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/iio/accel/sca3000.c", i32 1294, i32 3}
!55 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.10, !54, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.11, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__sca3000_hw_ring_state_set._entry, !54, !"_entry", i1 false, i1 false}
!60 = !{ptr @__sca3000_hw_ring_state_set._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.13, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/iio/accel/sca3000.c", i32 991, i32 3}
!63 = !{ptr @.str.14, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @sca3000_read_data._entry, !62, !"_entry", i1 false, i1 false}
!66 = !{ptr @sca3000_read_data._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/iio/accel/sca3000.c", i32 438, i32 2}
!69 = !{ptr @.str.17, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @sca3000_print_rev._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @sca3000_print_rev._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!81 = !{i8 0, i8 2}
